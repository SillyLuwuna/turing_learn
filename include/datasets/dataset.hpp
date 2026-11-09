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
		using MemType = typename Config::MemType;

		std::vector<MemType> inputs_;
		std::vector<MemType> outputs_;

	public:
		// PERF copying is inefficient
		constexpr void add_entry(std::pair<MemType, MemType> entry)
		{
			add_entry(entry.first, entry.second);
		}

		constexpr void add_entry(MemType entry_input, MemType entry_output)
		{
			inputs_.emplace_back(std::move(entry_input));
			outputs_.emplace_back(std::move(entry_output));
		}

		inline constexpr const MemType& get_input(u64 idx) const
		{
			return inputs_[idx];
		}

		inline constexpr const MemType& get_output(u64 idx) const
		{
			return outputs_[idx];
		}

		inline constexpr u64 size() const
		{
			return inputs_.size();
		}
	};
}
