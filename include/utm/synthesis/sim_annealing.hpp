#pragma once

#include "random/random_stream.hpp"
#include "utm/execution_results.hpp"
#include "utm/memory.hpp"
#include "utm/program.hpp"
#include "utm/synthesis/dataset.hpp"
#include "random/xoshiro256p.hpp"

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

		uint64_t num_symbols_;
		uint64_t num_heads_;
		uint64_t num_states_;
		uint64_t num_head_operations_;

	public:
		SimulatedAnnealing(
			random::RandomEngine& rng_engine,
			uint64_t num_symbols,
			uint64_t num_heads,
			uint64_t num_states,
			uint64_t num_head_operations
		) :
			rng_(rng_engine),
			rng_stream_(rng_),
			num_symbols_(num_symbols),
			num_heads_(num_heads),
			num_states_(num_states),
			num_head_operations_(num_head_operations)
		{ }

		inline constexpr float fitness(const Memory<Config>& output, const Memory<Config>& expected)
		{
			return 1.0f / (1.0f + output.cmp(expected));
		}

		inline constexpr float fitness(const std::vector<ExecutionResults<Config>>& results, const Dataset<Config>& dataset)
		{
			float curr_fitness = 0;

			for (uint64_t i = 0; i < results.size(); i++)
			{
				curr_fitness += fitness(results[i].memory, dataset.get_output(i));
			}

			return curr_fitness;
		}

		// TODO make changes destructive for simulated annealing
		// TODO use next64_med/low/high depending on generator
		// instead of copying. More efficient
		inline constexpr Program<Config> neighbour(const Program<Config>& origin)
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
				transition.head_operations.rewrite_at(rng_stream_.next64(num_head_operations_), i);
			}

			result.overwrite_transition(transition);

			return origin;
		}

		void run()
		{
			// save best solution so far
		}
	};
}
