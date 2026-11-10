#pragma once

#include <fluff/benchmark.hpp>
#include "utm/state_transition.hpp"

namespace turing_learning::utm
{
	using namespace fluff::types;

	template<typename Config>
	class Memory : fluff::benchmark::ByteMeasurable
	{
	public:
		virtual ~Memory() = default;

		using HeadsType = void;
		using TapesType = void;

		virtual TapeState<Config> get_tape_state() const = 0;
		virtual void apply(const StateTransition<Config>& transition) = 0;
		virtual bool is_corrupted() const = 0;
		virtual std::string to_str() const = 0;
		virtual u64 num_bytes() const override = 0;
		// virtual bool is_equivalent(const Memory<Config>& other) const = 0;
		// virtual u64 cmp(const Memory<Config>& other) const = 0;
	};
}
