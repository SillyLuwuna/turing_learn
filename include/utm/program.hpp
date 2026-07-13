#pragma once

#include <iostream>
#include <optional>
#include <unordered_set>

#include "benchmark/byte_measurable.hpp"
#include "utm/state_transition.hpp"

namespace turing_learning::utm
{
	template<uint8_t NumHeads>
	class Program : public benchmark::ByteMeasurable
	{
	private:
		std::unordered_set<StateTransition<NumHeads>, StateTransitionHash, StateTransitionEqual> transitions_;

	public:
		inline constexpr void add_transition(StateTransition<NumHeads>&& transition)
		{
			// std::cout << "registered transition: " << transition.to_str() << "\n";
			transitions_.emplace(std::move(transition));
		}

		inline constexpr void remove_transition(const StateTransition<NumHeads>& transition)
		{
			transitions_.erase(transition);
		}

		// efficient but dangerous. May become invalid after an insert/remove
		inline const StateTransition<NumHeads>* get_transition_ptr(const TapeState<NumHeads>& tape_state) const
		{
			auto found = transitions_.find(tape_state);

			if (found == transitions_.end())
			{
				return nullptr;
			}
			else
			{
				return &*found;
			}
		}

		// less efficient but not dangerous. State transition may be saved elsewhere
		inline std::optional<StateTransition<NumHeads>> get_transition(const TapeState<NumHeads>& tape_state) const
		{
			return *get_transition_ptr(tape_state);
		}

		uint64_t num_bytes() const override
		{
			return sizeof(*this) + transitions_.size() * sizeof(StateTransition<NumHeads>);
		}
	};
}
