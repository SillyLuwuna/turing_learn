#pragma once

#include "benchmark/byte_measurable.hpp"
#include "utm/head.hpp"
#include "utm/state_transition.hpp"
#include "utm/tape_state.hpp"

namespace turing_learning::utm
{
	template<typename Config>
	class Memory : benchmark::ByteMeasurable
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

		Tape<Config>* (&tapes_)[num_tapes];
		NumTapesType registered_tapes_;

		Head<Config>* (&heads_)[num_heads];
		NumTapesType registered_heads_;

		State state_;

		bool corrupted_;

		inline constexpr void write_heads(const StateTransition<Config>& transition)
		{
			for (NumHeadsType i = 0; i < num_heads; i++)
			{
				heads_[i]->write(transition.head_writes[i]);
			}
		}

		inline constexpr void apply_head_operations(const StateTransition<Config>& transition)
		{
			for (NumHeadsType i = 0; i < num_heads; i++)
			{
				move_head(*heads_[i], transition.get_head_operation(i));
			}
		}

		inline constexpr void move_head(Head<Config>& head, HeadOperation operation)
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

		inline constexpr void change_state(const StateTransition<Config>& transition)
		{
			state_ = transition.end_state;
		}

	public:
		inline constexpr Memory(Tape<Config>* (&tapes)[num_tapes], Head<Config>* (&heads)[num_heads]) :
			tapes_(tapes),
			registered_tapes_(num_tapes),
			heads_(heads),
			registered_heads_(num_heads),
			state_(0),
			corrupted_(false)
		{
		}

		inline constexpr void register_tape(Tape<Config>&& tape)
		{
			tapes_[registered_tapes_++] = std::move(tape);
		}

		inline constexpr void register_head(Head<Config>&& head)
		{
			heads_[registered_heads_++] = std::move(head);
		}

		inline constexpr TapeState<Config> get_tape_state()
		{
			TapeState<Config> tape_state;
			std::memset(tape_state.head_reads, 0, sizeof(tape_state.head_reads));

			tape_state.state = state_;
			for (NumHeadsType i = 0; i < num_heads; i++)
			{
				tape_state.head_reads[i] = heads_[i]->read();
			}

			return tape_state;
		}

		inline constexpr void apply(const StateTransition<Config>& transition)
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

			for (NumTapesType i = 0; i < registered_tapes_; i++)
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

			for (NumHeadsType i = 0; i < registered_heads_; i++)
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
			uint64_t single_tape_bytes = sizeof(Tape<Config>) + (Config::symbol_bits * tape_len);
			uint64_t tape_bytes = registered_tapes_ * single_tape_bytes;
			uint64_t head_bytes = registered_heads_ * sizeof(Head<Config>);
			return sizeof(*this) + tape_bytes + head_bytes;
		}
	};
}
