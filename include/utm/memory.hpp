#pragma once

#include "benchmark/byte_measurable.hpp"
#include "utm/head.hpp"
#include "utm/state_transition.hpp"
#include "utm/tape_state.hpp"

namespace turing_learning::utm
{
	template<uint8_t NumHeads, uint8_t NumTapes, uint16_t TapeLen>
	class Memory : benchmark::ByteMeasurable
	{
	private:
		Tape<TapeLen>* (&tapes_)[NumTapes];
		uint8_t registered_tapes_;

		Head<TapeLen>* (&heads_)[NumHeads];
		uint8_t registered_heads_;

		uint16_t state_;

		bool corrupted_;

		inline constexpr void write_heads(const StateTransition<NumHeads>& transition)
		{
			for (uint8_t i = 0; i < NumHeads; i++)
			{
				heads_[i]->write(transition.head_writes[i]);
			}
		}

		inline constexpr void apply_head_operations(const StateTransition<NumHeads>& transition)
		{
			for (uint8_t i = 0; i < NumHeads; i++)
			{
				move_head(*heads_[i], transition.get_head_operation(i));
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
		inline constexpr Memory(Tape<TapeLen>* (&tapes)[NumTapes], Head<TapeLen>* (&heads)[NumHeads]) :
			tapes_(tapes),
			registered_tapes_(NumTapes),
			heads_(heads),
			registered_heads_(NumHeads),
			state_(0),
			corrupted_(false)
		{
			if constexpr (NumTapes > 6)
			{
				throw std::runtime_error("cannot have more than 6 tapes in current implementation");
			}
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
			std::memset(tape_state.head_reads, 0, sizeof(tape_state.head_reads));

			tape_state.state = state_;
			for (uint8_t i = 0; i < NumHeads; i++)
			{
				tape_state.head_reads[i] = heads_[i]->read();
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

		std::string to_str() const
		{
			std::string str;

			for (uint8_t i = 0; i < registered_tapes_; i++)
			{
				if (i > 0)
				{
					str += "\n";
				}
				str += "tape";
				str += std::to_string(i);
				str += ": ";
				str += (*tapes_[i]).to_str();
			}

			for (uint8_t i = 0; i < registered_heads_; i++)
			{
				str += "\n";
				str += "head";
				str += std::to_string(i);
				str += ": ";
				str += (*heads_[i]).to_str();
			}

			return str;
		}

		uint64_t num_bytes() const override
		{
			uint64_t single_tape_bytes = sizeof(Tape<TapeLen>) + (sizeof(Symbol) * TapeLen);
			uint64_t tape_bytes = registered_tapes_ * single_tape_bytes;
			uint64_t head_bytes = registered_heads_ * sizeof(Head<TapeLen>);
			return sizeof(*this) + tape_bytes + head_bytes;
		}
	};
}
