#pragma once

#include <vector>
#include "random/random_stream.hpp"
#include "utm/memory.hpp"
#include "utm/program.hpp"
#include "random/random_engine.hpp"
#include "utm/utm.hpp"


namespace turing_learning::utm::synthesis::datasets
{
	template<typename Config>
	class CountDataset
	{
	private:
		using Symbol = typename Config::Symbol;
		using State = typename Config::State;
		using TapeLenType = typename Config::TapeLenType;
		using NumHeadsType = typename Config::NumHeadsType;
		using NumTapesType = typename Config::NumTapesType;


		static constexpr Symbol num_symbols = Config::NumSymbols;
		static constexpr State num_states = Config::NumStates;
		static constexpr TapeLenType tape_len = Config::tape_len;
		static constexpr NumTapesType num_tapes = Config::num_tapes;
		static constexpr NumHeadsType num_heads = Config::num_heads;

		static constexpr Program<Config> gen_solution()
		{
			Program<Config> solution;

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(0)
				.on_head_read(1)
				.write(1)
				.move_head(HeadOperation::Right)
				.go_to_state(0)
				.build()
			);

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(0)
				.on_head_read(2)
				.write(1)
				.move_head(HeadOperation::Left)
				.go_to_state(2)
				.build()
			);

			solution.add_transition(StateTransitionBuilder<Config>()
				.from_state(0)
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
				.go_to_state(0)
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
				.go_to_state(1)
				.build()
			);

			return solution;
		}

		// TODO should be static/constexpr
		const Program<Config> solution = gen_solution();
		random::RandomEngine& rng_;
		uint64_t max_len_;

	public:
		CountDataset(random::RandomEngine& rng, uint64_t max_len) :
			rng_(rng),
			max_len_(max_len)
		{ }

		// input/output
		// TODO use next64_high/med/low
		std::pair<Memory<Config>, Memory<Config>> gen_datapoint()
		{
			random::RandomStream rng_stream(rng_);

			Tape<Config> tape = Tape<Config>();
			uint64_t start = std::bit_width(max_len_);
			uint64_t len = rng_stream.next64(max_len_) + 1;

			for (uint64_t i = start; i < (start + len); i++)
			{
				tape.write(i, rng_stream.next64(2) + 1);
			}

			Head<Config> head = Head<Config>(tape);

			Tape<Config>* tapes[num_tapes] = { &tape };
			Head<Config>* heads[num_heads] = { &head };

			Memory<Config> input(tapes, heads);

			Memory<Config> output = input;
			Utm<Config> utm(solution, output);
			utm.run();

			return std::make_pair<Memory<Config>, Memory<Config>>(std::move(input), std::move(output));
		}

		Dataset<Config> gen_dataset(uint64_t num_entries)
		{
			Dataset<Config> dataset;

			for (uint64_t i = 0; i < num_entries; i++)
			{
				dataset.add_entry(gen_datapoint());
			}

			return dataset;
		}
	};
}
