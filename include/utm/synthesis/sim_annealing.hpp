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


	public:
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

		inline constexpr float energy(const Memory<Config>& output, const Memory<Config>& expected)
		{
			// return 1.0f / (1.0f + output.cmp(expected));
			return output.cmp(expected);
		}

		inline constexpr float energy(const std::vector<ExecutionResults<Config>>& results, const Dataset<Config>& dataset)
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

			return origin;
		}

		inline constexpr float acceptance_probability(float solution_energy, float candidate_energy, float temperature)
		{
			return candidate_energy < solution_energy ? 1.0 : std::exp(-(candidate_energy - solution_energy) / temperature);
		}

		// TODO return statistics and other useful things
		Program<Config> run(uint64_t max_iterations, const Dataset<Config>& dataset)
		{
			// TODO save best solution so far
			float best_energy = std::numeric_limits<float>::max();

			Program<Config> solution = init_program();
			float solution_energy = energy(Utm<Config>::run_dataset(solution, dataset), dataset);

			for (uint64_t i = 0; i < max_iterations; i++)
			{
				float temperature = temperature_schedule(i, max_iterations);
				// std::cout << std::to_string(temperature) << "\n";
				Program<Config> candidate = neighbour(solution);
				float curr_energy = energy(Utm<Config>::run_dataset(candidate, dataset), dataset);
				if (acceptance_probability(solution_energy, curr_energy, temperature) >= rng_.nextf32())
				{
					solution = std::move(candidate); // WARN assignment operation
					solution_energy = curr_energy;

					if (curr_energy < best_energy)
					{
						best_energy = curr_energy;
						std::cout << std::to_string(best_energy) << "\n";
					}

					if (solution_energy == 0.0f) // FIXME
					{
						std::cout << "found solution\n";
						break;
					}
				}
			}

			return solution;
		}
	};
}
