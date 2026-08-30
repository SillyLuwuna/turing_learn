#pragma once

#include <cstdint>
#include <functional>

#include "utm/head_operation.hpp"
#include "utm/symbol.hpp"
#include "utm/tape_state.hpp"
#include "containers/contiguous_bits.hpp"

namespace turing_learning::utm
{
	using namespace turing_learning::containers;

	// TODO could be made to exploit SIMD
	template<typename Config>
	struct StateTransition
	{
		using Symbol = typename Config::Symbol;
		using State = typename Config::State;
		using NumHeadsType = typename Config::NumHeadsType;
		using NumTapesType = typename Config::NumTapesType;

		static constexpr NumTapesType num_tapes = Config::num_tapes;
		static constexpr NumHeadsType num_heads = Config::num_heads;

		TapeState<Config> trigger_state;
		Symbol head_writes[num_heads];
		State end_state;
		ContiguousBits<uint8_t, uint8_t, 2, num_tapes> head_operations;

		inline constexpr void set_head_operation(NumTapesType tape, HeadOperation operation)
		{
			head_operations.rewrite_at(operation, tape);
		}

		inline constexpr HeadOperation get_head_operation(NumTapesType tape) const
		{
			return (HeadOperation)head_operations.at(tape);
		}

		std::string to_str() const
		{
			std::string str;

			str += "state[";
			str += std::to_string(trigger_state.state);
			str += "->";
			str += std::to_string(end_state);
			str += "]";

			for (NumHeadsType i = 0; i < num_heads; i++)
			{
				str += " head";
				str += std::to_string(i);
				str += "(";
				str += SymbolBuilder<Config>::to_str(trigger_state.head_reads[i]);
				str += "->";
				str += SymbolBuilder<Config>::to_str(head_writes[i]);
				str += ", ";
				str += HeadOperationConversion::to_str(get_head_operation(i));
				str += ")";
			}

			return str;
		}
	};

	template<typename Config>
	class StateTransitionBuilder
	{
	private:
		using Symbol = typename Config::Symbol;
		using State = typename Config::State;
		using NumTapesType = typename Config::NumTapesType;

		StateTransition<Config> state_transition_;

	public:
		inline constexpr StateTransition<Config>&& build()
		{
			return std::move(state_transition_);
		}

		inline constexpr StateTransitionBuilder<Config>& move_head(NumTapesType tape, HeadOperation operation)
		{
			state_transition_.set_head_operation(tape, operation);
			return *this;
		}

		inline constexpr StateTransitionBuilder<Config>& move_head(HeadOperation operation)
		{
			return move_head(0, operation);
		}

		inline constexpr StateTransitionBuilder<Config>& from_state(State start_state)
		{
			state_transition_.trigger_state.state = start_state;
			return *this;
		}

		inline constexpr StateTransitionBuilder<Config>& go_to_state(State end_state)
		{
			state_transition_.end_state = end_state;
			return *this;
		}

		inline constexpr StateTransitionBuilder<Config>& on_head_read(NumTapesType tape, Symbol symbol)
		{
			state_transition_.trigger_state.head_reads[tape] = symbol;
			return *this;
		}

		inline constexpr StateTransitionBuilder<Config>& on_head_read(Symbol symbol)
		{
			return on_head_read(0, symbol);
		}

		inline constexpr StateTransitionBuilder<Config>& write(NumTapesType tape, Symbol symbol)
		{
			state_transition_.head_writes[tape] = symbol;
			return *this;
		}

		inline constexpr StateTransitionBuilder<Config>& write(Symbol symbol)
		{
			return write(0, symbol);
		}
	};

	template<typename Config>
	struct StateTransitionHash
	{
		using is_transparent = void;

		std::size_t operator()(const StateTransition<Config>& transition) const
		{
			return transition.trigger_state.hash();
		}

		std::size_t operator()(const TapeState<Config>& tape_state) const
		{
			return tape_state.hash();
		}
	};

	template<typename Config>
	struct StateTransitionEqual
	{
		using is_transparent = void;

		bool operator()(const StateTransition<Config>& lhs, const StateTransition<Config>& rhs) const
		{
			return lhs.trigger_state == rhs.trigger_state;
		}

		bool operator()(const StateTransition<Config>& lhs, const TapeState<Config>& rhs) const
		{
			return lhs.trigger_state == rhs;
		}

		bool operator()(const TapeState<Config>& lhs, const StateTransition<Config>& rhs) const
		{
			return lhs == rhs.trigger_state;
		}

		bool operator()(const TapeState<Config>& lhs, const TapeState<Config>& rhs) const
		{
			return lhs == rhs;
		}
	};
}
