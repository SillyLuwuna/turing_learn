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

		std::vector<Tape<Config>> inputs_;
		std::vector<Tape<Config>> outputs_;

	public:
		void add_entry(const std::vector<Symbol>& entry_input, const std::vector<Symbol>& entry_output)
		{
			inputs_.emplace_back(Tape<Config>(entry_input));
			outputs_.emplace_back(Tape<Config>(entry_output));
		}

		const Tape<Config>& get_input(uint64_t idx)
		{
			return inputs_[idx];
		}

		const Tape<Config>& get_output(uint64_t idx)
		{
			return outputs_[idx];
		}

		uint64_t num_entries()
		{
			return inputs_.size();
		}
	};
}
