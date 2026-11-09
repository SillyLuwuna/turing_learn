#pragma once

#include <fluff/benchmark.hpp>
#include "utm/direct/contiguous_head.hpp"
#include "utm/memory.hpp"
#include "utm/state_transition.hpp"
#include "utm/head_operation.hpp"
#include "utm/tape_state.hpp"
#include "utm/direct/contiguous_tape.hpp"

namespace turing_learning::utm
{
	using namespace fluff::types;

	template<typename Config>
	class ChainMemory : public Memory<Config>
	{
	private:
		using Symbol = typename Config::Symbol;
		using State = typename Config::State;
		using TapeLenType = typename Config::TapeLenType;
		using NumHeadsType = typename Config::NumHeadsType;
		using NumTapesType = typename Config::NumTapesType;

		static constexpr TapeLenType tape_len = Config::tape_len;
		static constexpr NumTapesType num_tapes = Config::num_tapes;
		static constexpr NumHeadsType num_heads = Config::num_heads;

		static constexpr bool unsafe_step = Config::unsafe_step;

		using HeadsType = ContiguousTape<Config>;
		using TapesType = ContiguousHead<Config>;

		ContiguousTape<Config> tapes_[num_tapes];
		ContiguousHead<Config> heads_[num_heads];
		NumTapesType head_target_tape_idx_[num_heads];

		State state_;
		bool corrupted_;

		inline constexpr void write_heads(const StateTransition<Config>& transition)
		{
			for (NumHeadsType i = 0; i < num_heads; i++)
			{
				heads_[i].write(transition.head_writes[i]);
			}
		}

		inline constexpr void apply_head_operations(const StateTransition<Config>& transition)
		{
			for (NumHeadsType i = 0; i < num_heads; i++)
			{
				move_head(heads_[i], transition.get_head_operation(i));
			}
		}

		inline constexpr void move_head(ContiguousHead<Config>& head, HeadOperation operation)
		{
			// NOTE do NOT: instead of a switch case, to move it, just add a
			// signed value, i.e. -1 for left and +1 for right, 0 for noop.
			// because of branch prediction, the switch case is actually much faster
			// PERF however, for optimizations that include moving more than one
			// space at a time, it might be better with the first approach

			// head.move(operation);

			// PERF make a flag to define if memory corrupted should be checked for or not

			switch (operation)
			{
				case HeadOperation::Left:
					if constexpr(!unsafe_step)
					{
						if (head.is_at_left_limit())
						{
							corrupted_ = true;
							return;
						}
					}
					head.move_left();

					break;

				case HeadOperation::Right:
					if constexpr(!unsafe_step)
					{
						if (head.is_at_right_limit())
						{
							corrupted_ = true;
							return;
						}
					}
					head.move_right();

					break;

				default:
					break;
			}
		}

		inline constexpr void change_state(const StateTransition<Config>& transition)
		{
			state_ = transition.target_state;
		}

		inline constexpr ContiguousHead<Config> gen_local_head(std::size_t idx, const ContiguousHead<Config>& head, ContiguousTape<Config>* (&tapes)[num_tapes])
		{
			for (NumTapesType tape_idx = 0; tape_idx < num_tapes; tape_idx++)
			{
				if (&head.tape() == tapes[tape_idx])
				{
					head_target_tape_idx_[idx] = tape_idx;
					return ContiguousHead<Config>(tapes_[tape_idx], head.pos());
				}
			}

			throw std::runtime_error("No corresponding tape for head");
		}

		inline constexpr ContiguousHead<Config> gen_local_head(std::size_t idx, const NumTapesType (&head_target_tape_idx)[num_heads], TapeLenType pos)
		{
			return ContiguousHead<Config>(tapes_[head_target_tape_idx[idx]], pos);
		}

		template <std::size_t... TapeIs, std::size_t... HeadIs>
		inline constexpr ChainMemory(
			ContiguousTape<Config>* (&tapes)[num_tapes],
			ContiguousHead<Config>* (&heads)[num_heads],
			std::index_sequence<TapeIs...>,
			std::index_sequence<HeadIs...>) :
				tapes_{ *tapes[TapeIs]... },
				heads_{ gen_local_head(HeadIs, *heads[HeadIs], tapes)... },
				state_(Config::entry_state),
				corrupted_(false)
		{ }

		// for copying
		template <std::size_t... TapeIs, std::size_t... HeadIs>
		inline constexpr ChainMemory(
			const ContiguousTape<Config> (&tapes)[num_tapes],
			const NumTapesType (&head_target_tape_idx)[num_heads],
			const ContiguousHead<Config> (&heads)[num_heads],
			State state,
			bool corrupted,
			std::index_sequence<TapeIs...>,
			std::index_sequence<HeadIs...>) :
				tapes_{ tapes[TapeIs]... },
				heads_{ gen_local_head(HeadIs, head_target_tape_idx, heads[HeadIs].pos())... },
				state_(state),
				corrupted_(corrupted)
		{ }

	public:
		inline constexpr ChainMemory(ContiguousTape<Config>* (&tapes)[num_tapes], ContiguousHead<Config>* (&heads)[num_heads]) :
			ChainMemory(tapes, heads, std::make_index_sequence<num_tapes>{}, std::make_index_sequence<num_heads>{})
		{ }

		inline constexpr ChainMemory(const ChainMemory& other) :
			ChainMemory(other.tapes_, other.head_target_tape_idx_, other.heads_, other.state_, other.corrupted_, std::make_index_sequence<num_tapes>{}, std::make_index_sequence<num_heads>{})
		{
			std::memcpy(head_target_tape_idx_, other.head_target_tape_idx_, num_heads * sizeof(NumTapesType));
		}

		inline constexpr TapeState<Config> get_tape_state() const override
		{
			// PERF prepare many tape states beforehand
			TapeState<Config> tape_state;
			std::memset(tape_state.core.head_reads, 0, sizeof(tape_state.core.head_reads));

			tape_state.core.state = state_;
			for (NumHeadsType i = 0; i < num_heads; i++)
			{
				tape_state.core.head_reads[i] = heads_[i].read();
			}

			return tape_state;
		}

		inline constexpr void apply(const StateTransition<Config>& transition) override
		{
			write_heads(transition);
			apply_head_operations(transition);
			change_state(transition);
		}

		inline constexpr bool is_corrupted() const override
		{
			return corrupted_;
		}

		inline constexpr std::string to_str() const override
		{
			std::string str;

			for (NumTapesType i = 0; i < num_tapes; i++)
			{
				if (i > 0)
				{
					str += "\n";
				}
				str += "tape";
				str += std::to_string(i);
				str += ": ";
				str += tapes_[i].to_str();
			}

			for (NumHeadsType i = 0; i < num_heads; i++)
			{
				str += "\n";
				str += "head";
				str += std::to_string(i);
				str += ": ";
				str += heads_[i].to_str();
			}

			return str;
		}

		u64 num_bytes() const override
		{
			u64 tape_bytes = num_tapes * tapes_[0].num_bytes();
			u64 head_bytes = num_heads * sizeof(ContiguousHead<Config>);
			return sizeof(*this) + tape_bytes + head_bytes;
		}

		inline constexpr bool is_equivalent(const Memory<Config>& other) const
		{
			for (TapeLenType i = 0; i < num_tapes; i++)
			{
				if (!tapes_[i].is_equivalent(other.tapes_[i]))
				{
					return false;
				}
			}

			return true;
		}

		inline constexpr u64 cmp(const ChainMemory<Config>& other) const
		{
			u64 diff = 0;

			for (TapeLenType i = 0; i < num_tapes; i++)
			{
				diff += tapes_[i].cmp(other.tapes_[i]);
			}

			return diff;
		}
	};
}
