#include <iostream>

#include "benchmark/benchmark.hpp"
#include "benchmark/timer.hpp"
#include "random/mt19937_64.hpp"
#include "utm/config.hpp"
#include "utm/memory.hpp"
#include "utm/program.hpp"
#include "utm/state_transition.hpp"
#include "utm/synthesis/dataset.hpp"
#include "utm/synthesis/sim_annealing.hpp"
#include "utm/synthesis/datasets/count_dataset.hpp"
#include "utm/synthesis/tree_normal_form.hpp"
#include "utm/utm.hpp"
#include "containers/bit_array.hpp"
#include "containers/contiguous_bits.hpp"

using namespace turing_learning;
using namespace turing_learning::containers;
using namespace turing_learning::utm;
using namespace turing_learning::utm::synthesis;
using namespace turing_learning::utm::synthesis::datasets;
using namespace turing_learning::benchmark;
using namespace turing_learning::random;


int main()
{
	const uint64_t seed = 137;
	std::cout << "seed: " << std::to_string(seed) << "\n";
	benchmark::Timer::restart();

	const uint64_t num_symbols_effective = 3;
	const uint64_t max_dataset_entry_len = 100;
	const uint64_t train_dataset_len = 50;
	const uint64_t test_dataset_len = 1;
	// const uint64_t max_solution_steps = 1000000;
	const uint64_t max_solution_steps = 100000;

	// treat as maximums
	const uint64_t num_heads = 1;
	const uint64_t num_tapes = 1;
	// const uint64_t tape_len = 10001;
	const uint64_t tape_len = 100;
	const uint64_t num_symbols = 255; // 255 for performance (1 byte alignment) // TODO scuffed since there's technically 256 values but only 255 symbols
	const uint64_t num_states = 6;
	const uint64_t max_iterations = 5000;
	using InstanceConfig = Config<num_heads, num_tapes, tape_len, num_symbols, num_states, max_iterations>;

	Xoshiro256p rng(seed);

	// TODO way to calculate required max_iterations automatically
	CountDataset<InstanceConfig> count_dataset(rng, max_dataset_entry_len);
	Dataset<InstanceConfig> train_dataset = count_dataset.gen_dataset(train_dataset_len);
	Dataset<InstanceConfig> test_dataset = count_dataset.gen_dataset(test_dataset_len);

	// SimulatedAnnealing<InstanceConfig> sim_ann(rng, num_symbols_effective, num_heads, num_states);
	// Program<InstanceConfig> solution = sim_ann.run(max_solution_steps, train_dataset);


	TreeNormalForm<InstanceConfig> tnf(num_symbols_effective, num_heads, num_states);
	Program<InstanceConfig> solution = tnf.run(max_solution_steps, train_dataset);


	// std::cout << "program:\n" << solution.to_str();
	//
	std::vector<ExecutionResults<InstanceConfig>> results = Utm<InstanceConfig>::run_dataset(solution, train_dataset);
	// for (uint64_t i = 0; i < results.size() ; i++)
	// {
	// 	const ExecutionResults<InstanceConfig>& curr_results = results[i];
	// 	std::cout << "kb: " << curr_results.size_bytes / 1024.0 << "\n";
	// 	std::cout << "exit code: " << ExitCodeBuilder::to_str(curr_results.exit_code) << "\n";
	// 	std::cout << "cycles: " << std::to_string(curr_results.cycles_elapsed) << "\n";
	// 	std::cout << "memory: " << curr_results.memory.to_str() << "\n";
	// 	std::cout << "expected_memory: " << train_dataset.get_output(i).to_str() << "\n";
	// 	std::cout << "cmp: " << curr_results.memory.cmp(train_dataset.get_output(i)) << "\n";
	// 	std::cout << "energy: " << SimulatedAnnealing<InstanceConfig>::energy(curr_results.memory, train_dataset.get_output(i)) << "\n";
	// 	std::cout << "=============================\n";
	// }
	// std::cout << "energy_dataset: " << SimulatedAnnealing<InstanceConfig>::energy(results, train_dataset) << "\n";
	std::cout << "training error: " << TreeNormalForm<InstanceConfig>::error(results, train_dataset) << "\n";

	// results = Utm<InstanceConfig>::run_dataset(solution, test_dataset);
	// for (uint64_t i = 0; i < results.size() ; i++)
	// {
	// 	const ExecutionResults<InstanceConfig>& curr_results = results[i];
	// 	std::cout << "kb: " << curr_results.size_bytes / 1024.0 << "\n";
	// 	std::cout << "exit code: " << ExitCodeBuilder::to_str(curr_results.exit_code) << "\n";
	// 	std::cout << "cycles: " << std::to_string(curr_results.cycles_elapsed) << "\n";
	// 	std::cout << "input: " << test_dataset.get_input(i).to_str() << "\n";
	// 	std::cout << "output: " << curr_results.memory.to_str() << "\n";
	// 	std::cout << "expected output: " << test_dataset.get_output(i).to_str() << "\n";
	// 	std::cout << "cmp: " << curr_results.memory.cmp(test_dataset.get_output(i)) << "\n";
	// 	std::cout << "energy: " << SimulatedAnnealing<InstanceConfig>::energy(curr_results.memory, test_dataset.get_output(i)) << "\n";
	// 	std::cout << "=============================\n";
	// }
	// std::cout << "energy_dataset: " << SimulatedAnnealing<InstanceConfig>::energy(results, test_dataset) << "\n";

	// std::cout << "timer: " << std::to_string(Timer::total_elapsed_ms()) << "ms\n";

	// std::cout << std::to_string(sizeof(InstanceConfig::Symbol)) << "\n";
	// std::cout << std::to_string(InstanceConfig::num_symbols) << "\n";
	// std::cout << std::to_string(InstanceConfig::symbol_bits) << "\n";

	return 0;
}
