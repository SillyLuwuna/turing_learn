#pragma once

#include "utm/execution_results.hpp"
#include "utm/memory.hpp"
#include "utm/synthesis/dataset.hpp"

namespace turing_learning::utm::synthesis
{
	template<typename Config>
	class SimulatedAnnealing
	{
	private:
	public:
		inline constexpr float fitness(const Memory<Config>& output, const Memory<Config>& expected)
		{
			return 1.0f / (1.0f + output.cmp(expected));
		}

		inline constexpr float fitness(const std::vector<ExecutionResults<Config>>& results, const Dataset<Config>& dataset)
		{
			float curr_fitness = 0;

			for (uint64_t i = 0; i < results.size(); i++)
			{
				curr_fitness += fitness(results[i].memory, dataset.get_output(i));
			}

			return curr_fitness;
		}
	};
}
