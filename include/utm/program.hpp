#pragma once

#include <iostream>
#include <optional>
#include <unordered_set>

#include "benchmark/byte_measurable.hpp"
#include "utm/state_transition.hpp"

namespace turing_learning::utm
{
	template<typename Config>
	class Program : public benchmark::ByteMeasurable
	{
	private:
		// std::vector<std::vector<StateTransition<Config>>> transitions_; // TODO optimize with this
		std::unordered_set<StateTransition<Config>, StateTransitionHash<Config>, StateTransitionEqual<Config>> transitions_;

	public:
		inline constexpr void add_transition(StateTransition<Config>&& transition)
		{
			transitions_.emplace(std::move(transition));
		}

		inline constexpr void remove_transition(const StateTransition<Config>& transition)
		{
			transitions_.erase(transition);
		}

		// efficient but dangerous. May become invalid after an insert/remove
		inline const StateTransition<Config>* get_transition_ptr(const TapeState<Config>& tape_state) const
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
		inline std::optional<StateTransition<Config>> get_transition(const TapeState<Config>& tape_state) const
		{
			return *get_transition_ptr(tape_state);
		}

		uint64_t num_bytes() const override
		{
			return sizeof(*this) + transitions_.size() * sizeof(StateTransition<Config>);
		}
	};
}
