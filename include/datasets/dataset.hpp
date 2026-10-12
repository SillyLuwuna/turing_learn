#pragma once

#include <vector>
#include "utm/memory.hpp"

namespace turing_learning::datasets
{
	using namespace fluff::types;
	using namespace turing_learning::utm;

	// TODO implement operator []
	template<typename Config>
	class Dataset
	{
	private:
		std::vector<Memory<Config>> inputs_;
		std::vector<Memory<Config>> outputs_;

	public:
		// PERF copying is inefficient
		constexpr void add_entry(std::pair<Memory<Config>, Memory<Config>> entry)
		{
			add_entry(entry.first, entry.second);
		}

		constexpr void add_entry(Memory<Config> entry_input, Memory<Config> entry_output)
		{
			inputs_.emplace_back(std::move(entry_input));
			outputs_.emplace_back(std::move(entry_output));
		}

		inline constexpr const Memory<Config>& get_input(u64 idx) const
		{
			return inputs_[idx];
		}

		inline constexpr const Memory<Config>& get_output(u64 idx) const
		{
			return outputs_[idx];
		}

		inline constexpr u64 size() const
		{
			return inputs_.size();
		}
	};
}
