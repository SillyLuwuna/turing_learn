#pragma once

#include "random/random_stream.hpp"
#include "utm/execution_results.hpp"
#include "utm/memory.hpp"
#include "utm/program.hpp"
#include "utm/synthesis/dataset.hpp"
#include "random/xoshiro256p.hpp"
#include "utm/utm.hpp"

namespace turing_learning::utm::synthesis
{
	template<typename Config>
	class SimulatedAnnealing
	{
	private:
		// using Symbol = typename Config::Symbol;
		// using State = typename Config::State;
		// using TapeLenType = typename Config::TapeLenType;
		// using NumHeadsType = typename Config::NumHeadsType;
		// using NumTapesType = typename Config::NumTapesType;
		//
		//
		// static constexpr Symbol num_symbols = Config::NumSymbols;
		// static constexpr State num_states = Config::NumStates;
		// static constexpr TapeLenType tape_len = Config::tape_len;
		// static constexpr NumTapesType num_tapes = Config::num_tapes;
		// static constexpr NumHeadsType num_heads = Config::num_heads;

		random::RandomEngine& rng_;
		random::RandomStream rng_stream_;

		const uint64_t num_symbols_;
		const uint64_t num_heads_;
		const uint64_t num_states_;

		// static constexpr float inv_log2_8 = 1.0f / std::log2f(8.0f);
		static constexpr float inv_log2_8 = 1.0f / 3.0f;

		static inline constexpr float log8(float n)
		{
			// TODO make fast log8/log2
			return std::log2f(n) * inv_log2_8;
		}

	public:
		// TODO limit maximum connections / transitions
		SimulatedAnnealing(
			random::RandomEngine& rng_engine,
			uint64_t num_symbols,
			uint64_t num_heads,
			uint64_t num_states
		) :
			rng_(rng_engine),
			rng_stream_(rng_),
			num_symbols_(num_symbols),
			num_heads_(num_heads),
			num_states_(num_states)
		{ }

		static inline constexpr float energy(const Memory<Config>& output, const Memory<Config>& expected)
		{
			return log8(output.cmp(expected) + 1);
		}

		static inline constexpr float energy(const std::vector<ExecutionResults<Config>>& results, const Dataset<Config>& dataset)
		{
			float curr_energy = 0;

			for (uint64_t i = 0; i < results.size(); i++)
			{
				curr_energy += energy(results[i].memory, dataset.get_output(i));
			}

			return curr_energy;
		}

		inline constexpr float temperature_schedule(uint64_t curr_iteration, uint64_t max_iterations)
		{
			return 1.0f - ((float)(curr_iteration + 1) / (float)max_iterations);
		}

		Program<Config> init_program()
		{
			return Program<Config>();
		}

		// TODO make changes destructive for simulated annealing
		// TODO use next64_med/low/high depending on generator
		// instead of copying. More efficient
		Program<Config> neighbour(const Program<Config>& origin)
		{
			// deleting transitions is fundamentally the same of having random unused transitions
			Program<Config> result = origin;

			StateTransition<Config> transition;
			transition.trigger_state.state = rng_stream_.next64(num_states_);
			transition.end_state = rng_stream_.next64(num_states_);
			for (uint64_t i = 0; i < num_heads_; i++)
			{
				transition.trigger_state.head_reads[i] = rng_stream_.next64(num_symbols_);
				transition.head_writes[i] = rng_stream_.next64(num_symbols_);
				transition.head_operations.rewrite_at(rng_stream_.next64(HeadOperation::NUM_OPERATIONS), i);
			}

			result.overwrite_transition(std::move(transition));

			return result;
		}

		inline constexpr float acceptance_probability(float solution_energy, float candidate_energy, float temperature)
		{
			// TODO < triggers even when they're the same value due to floating point precision error
			return candidate_energy < solution_energy ? 1.0 : std::exp(-(candidate_energy - solution_energy) / temperature);
		}

		// TODO return statistics and other useful things
		Program<Config> run(uint64_t max_iterations, const Dataset<Config>& dataset)
		{
			Program<Config> curr_solution = init_program();
			float curr_solution_energy = energy(Utm<Config>::run_dataset(curr_solution, dataset), dataset);

			float best_energy = curr_solution_energy;
			Program<Config> best_solution = curr_solution;

			for (uint64_t i = 0; i < max_iterations; i++)
			{
				float temperature = temperature_schedule(i, max_iterations);
				Program<Config> candidate = neighbour(curr_solution);
				// TODO vector is being moved on run_dataset(), optimize
				float curr_energy = energy(Utm<Config>::run_dataset(candidate, dataset), dataset);
				// std::cout << "temperature: " << std::to_string(temperature) << "\n";
				// std::cout << "program:\n" << candidate.to_str();
				// std::cout << "energy: " << std::to_string(curr_energy) << "\n";
				// std::cout << "solution energy: " << std::to_string(solution_energy) << "\n";
				// std::cout << "probability: " << std::to_string(acceptance_probability(solution_energy, curr_energy, temperature)) << "\n";
				// std::cout << "=========================\n";
				if (acceptance_probability(curr_solution_energy, curr_energy, temperature) >= rng_.nextf32())
				{
					curr_solution = std::move(candidate); // WARN assignment operation
					curr_solution_energy = curr_energy;

					if (curr_energy < best_energy)
					{
						best_energy = curr_energy;
						best_solution = curr_solution;
						std::cout << "E: " << std::to_string(best_energy) << "\tT: " << std::to_string(temperature) << "\n";
					}

					if (curr_solution_energy - 0.0001 < 0.0f) // FIXME
					{
						std::cout << "found solution\n";
						break;
					}
				}
			}

			return best_solution;
		}
	};
}
