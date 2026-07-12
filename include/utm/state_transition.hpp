#pragma once

#include <cstdint>
#include <functional>

#include "utm/head_operation.hpp"
#include "utm/tape_state.hpp"

namespace turing_learning::utm
{
	template<uint8_t NumHeads>
	struct StateTransition
	{
		TapeState<NumHeads> tape_state;
		uint8_t head_writes[NumHeads];
		uint16_t end_state;
		uint16_t head_operations; // 2 bits per tape

		// max 65536 states
		// max 256 symbols
		// max 6 tapes

		inline constexpr void set_head_operation(uint8_t tape, HeadOperation operation)
		{
			uint16_t mask = operation << (tape * 2);
			head_operations = (head_operations & mask) | mask;
		}

		inline constexpr HeadOperation get_head_operation(uint8_t tape) const
		{
			return (HeadOperation)((head_operations >> (2 * tape)) | 0x3);
		}

		inline constexpr StateTransition& from_state(uint16_t start_state)
		{
			tape_state.state = start_state;
			return *this;
		}

		inline constexpr StateTransition& go_to_state(uint16_t end_state)
		{
			this->end_state = end_state;
			return *this;
		}

		inline constexpr StateTransition& on_head_read(uint8_t tape, uint8_t symbol)
		{
			tape_state.head_reads[tape] = symbol;
			return *this;
		}

		inline constexpr StateTransition& write(uint8_t tape, uint8_t symbol)
		{
			this->head_writes[tape] = symbol;
			return *this;
		}

		inline constexpr StateTransition& move_head(uint8_t tape, HeadOperation operation)
		{
			set_head_operation(tape, operation);
			return *this;
		}
	};

	struct StateTransitionHash
	{
		using is_transparent = void;

		template<uint8_t NumHeads>
		std::size_t operator()(const StateTransition<NumHeads>& transition) const
		{
			return transition.tape_state.hash();
		}

		template<uint8_t NumHeads>
		std::size_t operator()(const TapeState<NumHeads>& tape_state) const
		{
			return tape_state.hash();
		}
	};

	struct StateTransitionEqual
	{
		using is_transparent = void;

		template<uint8_t NumHeads>
		bool operator()(const StateTransition<NumHeads>& lhs, const StateTransition<NumHeads>& rhs) const
		{
			return lhs.tape_state.hash() == rhs.tape_state.hash();
		}

		template<uint8_t NumHeads>
		bool operator()(const StateTransition<NumHeads>& lhs, const TapeState<NumHeads>& rhs) const
		{
			return lhs.tape_state.hash() == rhs.hash();
		}

		template<uint8_t NumHeads>
		bool operator()(const TapeState<NumHeads>& lhs, const StateTransition<NumHeads>& rhs) const
		{
			return lhs.hash() == rhs.tape_state.hash();
		}

		template<uint8_t NumHeads>
		bool operator()(const TapeState<NumHeads>& lhs, const TapeState<NumHeads>& rhs) const
		{
			return lhs.hash() == rhs.hash();
		}
	};
}
