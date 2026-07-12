#pragma once

#include "utm/head.hpp"
#include "utm/state_transition.hpp"
#include "utm/tape_state.hpp"

namespace turing_learning::utm
{
	template<uint8_t NumHeads, uint8_t NumTapes, uint16_t TapeLen>
	class Memory
	{
	private:
		Tape<TapeLen> (&tapes_)[NumTapes];
		uint8_t registered_tapes_;

		Head<TapeLen> (&heads_)[NumHeads];
		uint8_t registered_heads_;

		uint16_t state_;

		bool corrupted_;

		inline constexpr void write_heads(const StateTransition<NumHeads>& transition)
		{
			for (uint8_t i = 0; i < NumHeads; i++)
			{
				heads_[i].write(transition.head_writes[i]);
			}
		}

		inline constexpr void apply_head_operations(const StateTransition<NumHeads>& transition)
		{
			for (uint8_t i = 0; i < NumHeads; i++)
			{
				move_head(heads_[i], transition.get_head_operation(i));
			}
		}

		inline constexpr void move_head(Head<TapeLen>& head, HeadOperation operation)
		{
			switch (operation)
			{
				case HeadOperation::Left:
					if (head.is_at_left_limit()) corrupted_ = true;
					head.move_left();

					break;

				case HeadOperation::Right:
					if (head.is_at_right_limit()) corrupted_ = true;
					head.move_right();

					break;

				default:
					break;
			}
		}

		inline constexpr void change_state(const StateTransition<NumHeads>& transition)
		{
			state_ = transition.end_state;
		}

	public:
		inline constexpr Memory(Tape<TapeLen> (&tapes)[NumTapes], Head<TapeLen> (&heads)[NumHeads]) :
			tapes_(tapes),
			heads_(heads)
		{
		}

		inline constexpr void register_tape(Tape<TapeLen>&& tape)
		{
			tapes_[registered_tapes_++] = std::move(tape);
		}

		inline constexpr void register_head(Head<TapeLen>&& head)
		{
			heads_[registered_heads_++] = std::move(head);
		}

		inline constexpr TapeState<NumHeads> get_tape_state()
		{
			TapeState<NumHeads> tape_state;

			tape_state.state = state_;
			for (uint8_t i = 0; i < NumHeads; i++)
			{
				tape_state.head_reads[i] = heads_[i].read();
			}

			return tape_state;
		}

		inline constexpr void apply(const StateTransition<NumHeads>& transition)
		{
			write_heads(transition);
			apply_head_operations(transition);
			change_state(transition);
		}

		inline constexpr bool is_corrupted()
		{
			return corrupted_;
		}
	};
}
