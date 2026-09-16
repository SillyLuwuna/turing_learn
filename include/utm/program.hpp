#pragma once

#include <iostream>
#include <optional>
#include <unordered_set>

#include "benchmark/byte_measurable.hpp"
#include "containers/nd_array.hpp"
#include "utm/state_transition.hpp"
#include "math/math.hpp"

namespace turing_learning::utm
{
	template<typename Config>
	class Program : public benchmark::ByteMeasurable
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
		static constexpr State num_states = Config::num_states;
		static constexpr Symbol num_symbols = Config::num_symbols;

		static constexpr uint64_t step_size_ = Math::fast_pow(num_symbols, num_heads);
		// PERF saves too much info (trigger states) which are alread encoded in the array
		// PERF SIMD using different arrays for each component

		// StateTransition<Config> transitions_[num_states * step_size_];
		StateTransition<Config> transitions_[6 * 3];
		// StateTransition<Config> transitions_[6][3];
		// StateTransition<Config> transitions_[num_states][num_symbols];
		// NDArray<StateTransition<Config>, num_symbols, num_heads> transitions_[num_states];
		// uint8_t valid_transitions_

		// PERF array instead of hashtable
		// std::unordered_set<StateTransition<Config>, StateTransitionHash<Config>, StateTransitionEqual<Config>> transitions_;

		static inline constexpr uint64_t get_idx(const TapeStateCore<Config>& state)
		{
			// TODO check if code is correct

			uint64_t idx = state.state * step_size_;
			for (uint64_t i = 0; i < num_heads; i++)
			{
				// PERF can be done faster if done in reverse order, each time multiplying the base to obtain the power of it
				idx += state.head_reads[i] * Math::fast_pow(num_symbols, num_heads - i - 1);
			}
			return idx;
		}

	public:
		inline constexpr void add_transition(StateTransition<Config>&& transition)
		{
			// transitions_[transition.trigger_state.core.state][transition.trigger_state.core.head_reads[0]] = transition;
			transitions_[get_idx(transition.trigger_state.core)] = transition;
			// transitions_.emplace(std::move(transition));
		}

		inline constexpr void remove_transition(const StateTransition<Config>& transition)
		{
			// FIXME

			// transitions_.erase(transition);
		}

		inline constexpr void overwrite_transition(StateTransition<Config>&& transition)
		{
			// FIXME

			// auto node = transitions_.extract(transition);
			// if (!node.empty())
			// {
			// 	node.value() = std::move(transition);
			// 	transitions_.insert(std::move(node));
			// }
			// else
			// {
			// 	transitions_.emplace(std::move(transition));
			// }
		}

		// efficient but dangerous. May become invalid after an insert/remove
		inline const StateTransition<Config>* get_transition_ptr(const TapeState<Config>& tape_state) const
		{
			// FIXME

			// return &transitions_[tape_state.core.state][tape_state.core.head_reads[0]];
			return transitions_ + get_idx(tape_state.core);

			// auto found = transitions_.find(tape_state);
			//
			// return found == transitions_.end() ? nullptr : &*found;
		}

		// less efficient but not dangerous. State transition may be saved elsewhere
		inline std::optional<StateTransition<Config>> get_transition(const TapeState<Config>& tape_state) const
		{
			// FIXME

			return nullptr;

			// return *get_transition_ptr(tape_state);
		}

		uint64_t num_bytes() const override
		{
			// FIXME

			return sizeof(*this);

			// return sizeof(*this) + transitions_.size() * sizeof(StateTransition<Config>);
		}

		std::string to_str() const
		{
			std::string result;

			for (const StateTransition<Config>& transition : transitions_)
			{
				result += "\t" + transition.to_str() + "\n";
			}

			return result;
		}
	};
}
