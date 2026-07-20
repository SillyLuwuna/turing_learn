#pragma once

#include <vector>
#include "utm/tape.hpp"


namespace turing_learning::utm::synthesis
{
	template<typename Config>
	class Dataset
	{
	private:
		using Symbol = typename Config::Symbol;

		std::vector<std::vector<Symbol>> inputs_;
		std::vector<std::vector<Symbol>> outputs_;

	public:
		void add_entry(std::vector<Symbol>&& entry_input, std::vector<Symbol>&& entry_output)
		{
			inputs_.emplace_back(std::move(entry_input));
			outputs_.emplace_back(std::move(entry_output));
		}

		std::pair<const std::vector<Symbol>&, const std::vector<Symbol>&> get_entry(uint64_t idx)
		{
			return std::pair<const std::vector<Symbol>&, const std::vector<Symbol>&>(inputs_[idx], outputs_[idx]);
		}

		const std::vector<Symbol>& get_input(uint64_t idx)
		{
			return inputs_[idx];
		}

		const std::vector<Symbol>& get_output(uint64_t idx)
		{
			return outputs_[idx];
		}

		uint64_t num_entries()
		{
			return inputs_.size();
		}
	};
}
