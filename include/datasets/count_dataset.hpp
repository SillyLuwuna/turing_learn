#pragma once

#include <fluff/random.hpp>
#include <fluff/types.hpp>
#include "utm/memory.hpp"
#include "utm/direct/contiguous_memory.hpp"
#include "utm/direct/contiguous_head.hpp"
#include "utm/direct/contiguous_tape.hpp"
#include "utm/program.hpp"
#include "utm/utm.hpp"
#include "datasets/dataset.hpp"

namespace turing_learning::datasets
{
	using namespace fluff::types;
	using namespace turing_learning::utm;

	template<typename Config>
	class CountDataset
	{
	private:
		using Symbol = typename Config::Symbol;
		using State = typename Config::State;
		using TapeLenType = typename Config::TapeLenType;
		using NumHeadsType = typename Config::NumHeadsType;
		using NumTapesType = typename Config::NumTapesType;

		using MemType = typename Config::MemType;
		using HeadType = typename Config::HeadType;
		using TapeType = typename Config::TapeType;


		static constexpr Symbol num_symbols = Config::NumSymbols;
		static constexpr State num_states = Config::NumStates;
		static constexpr TapeLenType tape_len = Config::tape_len;
		static constexpr NumTapesType num_tapes = Config::num_tapes;
		static constexpr NumHeadsType num_heads = Config::num_heads;
		static constexpr bool tape_compression = Config::tape_compression;


		// PERF should be static/constexpr
		const Program<Config> solution = gen_solution();
		fluff::random::RandomEngine& rng_;
		u64 max_len_;

	public:
		static constexpr Program<Config> gen_solution()
		{
			Program<Config> solution;

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(1)
				.on_head_read(1)
				.write(1)
				.move_head(HeadOperation::Right)
				.go_to_state(1)
				.build()
			);

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(1)
				.on_head_read(2)
				.write(1)
				.move_head(HeadOperation::Left)
				.go_to_state(2)
				.build()
			);

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(1)
				.on_head_read(0)
				.write(0)
				.move_head(HeadOperation::Left)
				.go_to_state(5)
				.build()
			);

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(2)
				.on_head_read(1)
				.write(1)
				.move_head(HeadOperation::Left)
				.go_to_state(2)
				.build()
			);

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(2)
				.on_head_read(0)
				.write(0)
				.move_head(HeadOperation::Left)
				.go_to_state(3)
				.build()
			);

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(3)
				.on_head_read(2)
				.write(1)
				.move_head(HeadOperation::Left)
				.go_to_state(3)
				.build()
			);

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(3)
				.on_head_read(0)
				.write(2)
				.move_head(HeadOperation::Right)
				.go_to_state(4)
				.build()
			);

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(3)
				.on_head_read(1)
				.write(2)
				.move_head(HeadOperation::Right)
				.go_to_state(4)
				.build()
			);

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(4)
				.on_head_read(1)
				.write(1)
				.move_head(HeadOperation::Right)
				.go_to_state(4)
				.build()
			);

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(4)
				.on_head_read(0)
				.write(0)
				.move_head(HeadOperation::Right)
				.go_to_state(1)
				.build()
			);

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(5)
				.on_head_read(1)
				.write(0)
				.move_head(HeadOperation::Left)
				.go_to_state(5)
				.build()
			);

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(5)
				.on_head_read(0)
				.write(0)
				.move_head(HeadOperation::Left)
				.go_to_state(0)
				.build()
			);

			return solution;
		}

		CountDataset(fluff::random::RandomEngine& rng, u64 max_len) :
			rng_(rng),
			max_len_(max_len)
		{ }

		// input/output
		// TODO use next64_high/med/low
		std::pair<MemType, MemType> gen_datapoint()
		{
			fluff::random::RandomStream rng_stream(rng_);

			u64 start = std::bit_width(max_len_);
			u64 len = rng_stream.next64(max_len_ - start) + 1;

			TapeType tape = TapeType(start);
			for (u64 i = start; i < (start + len); i++)
			{
				tape.write(i, rng_stream.next64(2) + 1);
			}

			HeadType head = HeadType(tape);

			TapeType* tapes[num_tapes] = { &tape };
			HeadType* heads[num_heads] = { &head };

			MemType input(tapes, heads);
			MemType output = input;

			Utm<Config> utm(solution, output);
			utm.run();

			return std::make_pair<MemType, MemType>(std::move(input), std::move(output));
		}

		Dataset<Config> gen_dataset(u64 num_entries)
		{
			// PERF VERY INEFFICIENT
			// FIX
			Dataset<Config> dataset;

			for (u64 i = 0; i < num_entries; i++)
			{
				dataset.add_entry(gen_datapoint());
			}

			return dataset;
		}
	};
}
