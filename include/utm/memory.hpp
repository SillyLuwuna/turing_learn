#pragma once

#include "benchmark/byte_measurable.hpp"
#include "utm/head.hpp"
#include "utm/state_transition.hpp"
#include "utm/tape_state.hpp"
#include <unordered_set>

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

		Tape<Config> tapes_[num_tapes];
		Head<Config> heads_[num_heads];
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

		inline constexpr void move_head(Head<Config>& head, HeadOperation operation)
		{
			switch (operation)
			{
				case HeadOperation::Left:
					if (head.is_at_left_limit()) corrupted_ = true;
					else head.move_left();

					break;

				case HeadOperation::Right:
					if (head.is_at_right_limit()) corrupted_ = true;
					else head.move_right();

					break;

				default:
					break;
			}
		}

		inline constexpr void change_state(const StateTransition<Config>& transition)
		{
			state_ = transition.end_state;
		}

		inline constexpr Head<Config> gen_local_head(std::size_t idx, const Head<Config>& head, Tape<Config>* (&tapes)[num_tapes])
		{
			for (NumTapesType tape_idx = 0; tape_idx < num_tapes; tape_idx++)
			{
				if (&head.tape() == tapes[tape_idx])
				{
					head_target_tape_idx_[idx] = tape_idx;
					return Head<Config>(tapes_[tape_idx], head.pos());
				}
			}

			throw std::runtime_error("No corresponding tape for head");
		}

		inline constexpr Head<Config> gen_local_head(std::size_t idx, const NumTapesType (&head_target_tape_idx)[num_heads], TapeLenType pos)
		{
			return Head<Config>(tapes_[head_target_tape_idx[idx]], pos);
		}

		template <std::size_t... TapeIs, std::size_t... HeadIs>
		inline constexpr Memory(
			Tape<Config>* (&tapes)[num_tapes],
			Head<Config>* (&heads)[num_heads],
			std::index_sequence<TapeIs...>,
			std::index_sequence<HeadIs...>) :
				tapes_{ *tapes[TapeIs]... },
				heads_{ gen_local_head(HeadIs, *heads[HeadIs], tapes)... },
				state_(0),
				corrupted_(false)
		{ }

		template <std::size_t... TapeIs, std::size_t... HeadIs>
		inline constexpr Memory(
			const Tape<Config> (&tapes)[num_tapes],
			const NumTapesType (&head_target_tape_idx)[num_heads],
			const Head<Config> (&heads)[num_heads],
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
		inline constexpr Memory(Tape<Config>* (&tapes)[num_tapes], Head<Config>* (&heads)[num_heads]) :
			Memory(tapes, heads, std::make_index_sequence<num_tapes>{}, std::make_index_sequence<num_heads>{})
		{ }

		inline constexpr Memory(const Memory& other) :
			Memory(other.tapes_, other.head_target_tape_idx_, other.heads_, other.state_, other.corrupted_, std::make_index_sequence<num_tapes>{}, std::make_index_sequence<num_heads>{})
		{
			std::memcpy(head_target_tape_idx_, other.head_target_tape_idx_, num_heads * sizeof(NumTapesType));
		}

		inline constexpr TapeState<Config> get_tape_state() const
		{
			TapeState<Config> tape_state;
			std::memset(tape_state.head_reads, 0, sizeof(tape_state.head_reads));

			tape_state.state = state_;
			for (NumHeadsType i = 0; i < num_heads; i++)
			{
				tape_state.head_reads[i] = heads_[i].read();
			}

			return tape_state;
		}

		inline constexpr void apply(const StateTransition<Config>& transition)
		{
			write_heads(transition);
			apply_head_operations(transition);
			change_state(transition);
		}

		inline constexpr bool is_corrupted() const
		{
			return corrupted_;
		}

		std::string to_str() const
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

		uint64_t num_bytes() const override
		{
			uint64_t tape_bytes = num_tapes * tapes_[0].num_bytes();
			uint64_t head_bytes = num_heads * sizeof(Head<Config>);
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

		inline constexpr uint64_t cmp(const Memory<Config>& other) const
		{
			uint64_t diff = 0;

			for (TapeLenType i = 0; i < num_tapes; i++)
			{
				diff += tapes_[i].cmp(other.tapes_[i]);
			}

			return diff;
		}
	};
}
