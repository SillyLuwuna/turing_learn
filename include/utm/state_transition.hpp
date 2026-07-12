#pragma once

#include <cstdint>
#include <functional>

#include "utm/head_operation.hpp"
#include "utm/symbol.hpp"
#include "utm/tape_state.hpp"

namespace turing_learning::utm
{
	template<uint8_t NumHeads>
	struct StateTransition
	{
		// TapeState<NumHeads> tape_state;
		TapeState<NumHeads> tape_state;
		Symbol head_writes[NumHeads];
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
			return (HeadOperation)((head_operations >> (2 * tape)) & 0x3);
		}

		std::string to_str() const
		{
			std::string str;

			str += "state[";
			str += std::to_string(tape_state.state);
			str += "->";
			str += std::to_string(end_state);
			str += "]";

			for (uint8_t i = 0; i < NumHeads; i++)
			{
				str += " head";
				str += std::to_string(i);
				str += "(";
				str += SymbolBuilder::to_str(tape_state.head_reads[i]);
				str += "->";
				str += SymbolBuilder::to_str(head_writes[i]);
				str += ", ";
				str += HeadOperationConversion::to_str(get_head_operation(i));
				str += ")";
			}

			return str;
		}
	};

	template<uint8_t NumHeads>
	class StateTransitionBuilder
	{
	private:
		StateTransition<NumHeads> state_transition_;

	public:
		inline constexpr StateTransition<NumHeads>&& build()
		{
			return std::move(state_transition_);
		}

		inline constexpr StateTransitionBuilder<NumHeads>& move_head(uint8_t tape, HeadOperation operation)
		{
			state_transition_.set_head_operation(tape, operation);
			return *this;
		}

		inline constexpr StateTransitionBuilder<NumHeads>& move_head(HeadOperation operation)
		{
			return move_head(0, operation);
		}

		inline constexpr StateTransitionBuilder<NumHeads>& from_state(uint16_t start_state)
		{
			state_transition_.tape_state.state = start_state;
			return *this;
		}

		inline constexpr StateTransitionBuilder<NumHeads>& go_to_state(uint16_t end_state)
		{
			state_transition_.end_state = end_state;
			return *this;
		}

		inline constexpr StateTransitionBuilder<NumHeads>& on_head_read(uint8_t tape, Symbol symbol)
		{
			state_transition_.tape_state.head_reads[tape] = symbol;
			return *this;
		}

		inline constexpr StateTransitionBuilder<NumHeads>& on_head_read(Symbol symbol)
		{
			return on_head_read(0, symbol);
		}

		inline constexpr StateTransitionBuilder<NumHeads>& write(uint8_t tape, Symbol symbol)
		{
			state_transition_.head_writes[tape] = symbol;
			return *this;
		}

		inline constexpr StateTransitionBuilder<NumHeads>& write(Symbol symbol)
		{
			return write(0, symbol);
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
