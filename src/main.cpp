#include <iostream>

#include "benchmark/benchmark.hpp"
#include "random/mt19937_64.hpp"
#include "utm/config.hpp"
#include "utm/memory.hpp"
#include "utm/program.hpp"
#include "utm/state_transition.hpp"
#include "utm/synthesis/dataset.hpp"
#include "utm/synthesis/sim_annealing.hpp"
#include "utm/utm.hpp"
#include "containers/bit_array.hpp"
#include "containers/contiguous_bits.hpp"

using namespace turing_learning;
using namespace turing_learning::containers;
using namespace turing_learning::utm;
using namespace turing_learning::utm::synthesis;
using namespace turing_learning::benchmark;
using namespace turing_learning::random;


int main()
{
	const uint64_t seed = 137;
	std::cout << "seed: " << std::to_string(seed) << "\n";

	// const uint64_t allowed_num_symbols = 3;
	//
	// // treat as maximums
	// const uint64_t num_heads = 1;
	// const uint64_t num_tapes = 1;
	// const uint64_t tape_len = 10001;
	// const uint64_t num_symbols = 256; // 256 for performance
	// const uint64_t num_states = 6;
	// const uint64_t max_iterations = 10000000000;
	// using InstanceConfig = Config<num_heads, num_tapes, tape_len, num_symbols, num_states, max_iterations>;
	//
	Xoshiro256p rng(seed);
	//
	// std::srand(seed);
	// Tape<InstanceConfig> tape0 = Tape<InstanceConfig>();
	// for (uint64_t i = 9999; i >= 32; i--)
	// {
	// 	uint64_t random_value = (std::rand() % 2) + 1;
	// 	tape0.write(i, random_value);
	// }
	//
	// Head<InstanceConfig> head0 = Head<InstanceConfig>(tape0);
	//
	// Tape<InstanceConfig>* tapes[num_tapes] = { &tape0 };
	// Head<InstanceConfig>* heads[num_heads] = { &head0 };
	//
	// Memory<InstanceConfig> memory(tapes, heads);
	//
	// Program<InstanceConfig> program;
	//
	// program.add_transition(StateTransitionBuilder<InstanceConfig>()
	// 	.from_state(0)
	// 	.on_head_read(1)
	// 	.write(1)
	// 	.move_head(HeadOperation::Right)
	// 	.go_to_state(0)
	// 	.build()
	// );
	//
	// program.add_transition(StateTransitionBuilder<InstanceConfig>()
	// 	.from_state(0)
	// 	.on_head_read(2)
	// 	.write(1)
	// 	.move_head(HeadOperation::Left)
	// 	.go_to_state(2)
	// 	.build()
	// );
	//
	// program.add_transition(StateTransitionBuilder<InstanceConfig>()
	// 	.from_state(0)
	// 	.on_head_read(0)
	// 	.write(0)
	// 	.move_head(HeadOperation::Left)
	// 	.go_to_state(5)
	// 	.build()
	// );
	//
	// program.add_transition(StateTransitionBuilder<InstanceConfig>()
	// 	.from_state(2)
	// 	.on_head_read(1)
	// 	.write(1)
	// 	.move_head(HeadOperation::Left)
	// 	.go_to_state(2)
	// 	.build()
	// );
	//
	// program.add_transition(StateTransitionBuilder<InstanceConfig>()
	// 	.from_state(2)
	// 	.on_head_read(0)
	// 	.write(0)
	// 	.move_head(HeadOperation::Left)
	// 	.go_to_state(3)
	// 	.build()
	// );
	//
	// program.add_transition(StateTransitionBuilder<InstanceConfig>()
	// 	.from_state(3)
	// 	.on_head_read(2)
	// 	.write(1)
	// 	.move_head(HeadOperation::Left)
	// 	.go_to_state(3)
	// 	.build()
	// );
	//
	// program.add_transition(StateTransitionBuilder<InstanceConfig>()
	// 	.from_state(3)
	// 	.on_head_read(0)
	// 	.write(2)
	// 	.move_head(HeadOperation::Right)
	// 	.go_to_state(4)
	// 	.build()
	// );
	//
	// program.add_transition(StateTransitionBuilder<InstanceConfig>()
	// 	.from_state(3)
	// 	.on_head_read(1)
	// 	.write(2)
	// 	.move_head(HeadOperation::Right)
	// 	.go_to_state(4)
	// 	.build()
	// );
	//
	// program.add_transition(StateTransitionBuilder<InstanceConfig>()
	// 	.from_state(4)
	// 	.on_head_read(1)
	// 	.write(1)
	// 	.move_head(HeadOperation::Right)
	// 	.go_to_state(4)
	// 	.build()
	// );
	//
	// program.add_transition(StateTransitionBuilder<InstanceConfig>()
	// 	.from_state(4)
	// 	.on_head_read(0)
	// 	.write(0)
	// 	.move_head(HeadOperation::Right)
	// 	.go_to_state(0)
	// 	.build()
	// );
	//
	// program.add_transition(StateTransitionBuilder<InstanceConfig>()
	// 	.from_state(5)
	// 	.on_head_read(1)
	// 	.write(0)
	// 	.move_head(HeadOperation::Left)
	// 	.go_to_state(5)
	// 	.build()
	// );
	//
	// program.add_transition(StateTransitionBuilder<InstanceConfig>()
	// 	.from_state(5)
	// 	.on_head_read(0)
	// 	.write(0)
	// 	.move_head(HeadOperation::Left)
	// 	.go_to_state(1)
	// 	.build()
	// );
	//
	// Utm<InstanceConfig> utm(program, memory);
	//
	// // utm.run();
	//
	// // Benchmark benchmark;
	// // uint64_t size_bytes = benchmark.test_size(utm);
	// // std::cout << "kb: " << size_bytes / 1024.0 << "\n";
	// // std::cout << "exit code: " << ExitCodeBuilder::to_str(utm.exit_code()) << "\n";
	// // std::cout << "cycles: " << std::to_string(utm.cycles_elapsed()) << "\n";
	// // std::cout << "tape: " << tape0.to_str() << "\n";
	//
	// Tape<InstanceConfig> test_tape = Tape<InstanceConfig>();
	// test_tape.write(0, 2);
	// test_tape.write(1, 1);
	// test_tape.write(2, 1);
	// test_tape.write(3, 2);
	// test_tape.write(4, 2);
	// test_tape.write(5, 2);
	// test_tape.write(6, 1);
	// test_tape.write(7, 2);
	// test_tape.write(8, 1);
	// test_tape.write(9, 2);
	// test_tape.write(10, 2);
	// test_tape.write(11, 2);
	// test_tape.write(12, 2);
	//
	// Head<InstanceConfig> test_head = Head<InstanceConfig>(test_tape);
	// Tape<InstanceConfig>* test_tapes[num_tapes] = { &test_tape };
	// Head<InstanceConfig>* test_heads[num_heads] = { &test_head };
	// Memory<InstanceConfig> test_memory(test_tapes, test_heads);
	//
	// Dataset<InstanceConfig> dataset;
	// dataset.add_entry(memory, test_memory);
	// dataset.add_entry(memory, test_memory);
	// dataset.add_entry(memory, test_memory);
	//
	// std::vector<ExecutionResults<InstanceConfig>> results = Utm<InstanceConfig>::run_dataset(program, dataset);
	//
	// for (const ExecutionResults<InstanceConfig>& curr_results : results)
	// {
	// 	std::cout << "kb: " << curr_results.size_bytes / 1024.0 << "\n";
	// 	std::cout << "exit code: " << ExitCodeBuilder::to_str(curr_results.exit_code) << "\n";
	// 	std::cout << "cycles: " << std::to_string(curr_results.cycles_elapsed) << "\n";
	// 	std::cout << "memory: " << curr_results.memory.to_str() << "\n";
	// }
	//
	//
	//
	// std::cout << "outcome: " << std::to_string(results[0].memory.cmp(test_memory)) << "\n";
	// std::cout << "outcome: " << std::to_string(results[0].memory.cmp(results[0].memory)) << "\n";
	// std::cout << "outcome: " << std::to_string(results[0].memory.cmp(results[1].memory)) << "\n";
	//
	// std::cout << "is equivalent: " << std::to_string(results[0].memory.is_equivalent(test_memory)) << "\n";
	// std::cout << "is equivalent: " << std::to_string(results[0].memory.is_equivalent(results[0].memory)) << "\n";
	// std::cout << "is equivalent: " << std::to_string(results[0].memory.is_equivalent(results[1].memory)) << "\n";
	//
	// SimulatedAnnealing<InstanceConfig> sim_ann(rng, allowed_num_symbols, num_heads, num_states, 3);
	//
	// std::cout << "fitness: " << std::to_string(sim_ann.fitness(results, dataset)) << "\n";

	RandomStream rng_stream(rng);

	for (uint64_t i = 0; i < 1000; i++)
	{
		std::cout << std::to_string(rng_stream.next64_high(2)) << " ";
	}

	return 0;
}
