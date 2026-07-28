#include <iostream>

#include "benchmark/benchmark.hpp"
#include "utm/config.hpp"
#include "utm/memory.hpp"
#include "utm/program.hpp"
#include "utm/state_transition.hpp"
#include "utm/synthesis/dataset.hpp"
#include "utm/utm.hpp"
#include "containers/bit_array.hpp"
#include "containers/contiguous_bits.hpp"

using namespace turing_learning;
using namespace turing_learning::containers;
using namespace turing_learning::utm;
using namespace turing_learning::benchmark;


int main()
{
	// treat as maximums
	const uint64_t num_heads = 1;
	const uint64_t num_tapes = 1;
	const uint64_t tape_len = 10001;
	const uint64_t num_symbols = 3;
	const uint64_t num_states = 6;
	const uint64_t max_iterations = 10000000000;
	using InstanceConfig = Config<num_heads, num_tapes, tape_len, num_symbols, num_states, max_iterations>;


	std::srand(137);
	Tape<InstanceConfig> tape0 = Tape<InstanceConfig>();
	for (uint64_t i = 9999; i >= 32; i--)
	{
		uint64_t random_value = (std::rand() % 2) + 1;
		tape0.write(i, random_value);
	}

	// std::cout << tape0.to_str() << "\n";

	Head<InstanceConfig> head0 = Head<InstanceConfig>(tape0);

	Tape<InstanceConfig>* tapes[num_tapes] = { &tape0 };
	Head<InstanceConfig>* heads[num_heads] = { &head0 };

	Memory<InstanceConfig> memory(tapes, heads);

	Program<InstanceConfig> program;

	program.add_transition(StateTransitionBuilder<InstanceConfig>()
		.from_state(0)
		.on_head_read(1)
		.write(1)
		.move_head(HeadOperation::Right)
		.go_to_state(0)
		.build()
	);

	program.add_transition(StateTransitionBuilder<InstanceConfig>()
		.from_state(0)
		.on_head_read(2)
		.write(1)
		.move_head(HeadOperation::Left)
		.go_to_state(2)
		.build()
	);

	program.add_transition(StateTransitionBuilder<InstanceConfig>()
		.from_state(0)
		.on_head_read(0)
		.write(0)
		.move_head(HeadOperation::Left)
		.go_to_state(5)
		.build()
	);

	program.add_transition(StateTransitionBuilder<InstanceConfig>()
		.from_state(2)
		.on_head_read(1)
		.write(1)
		.move_head(HeadOperation::Left)
		.go_to_state(2)
		.build()
	);

	program.add_transition(StateTransitionBuilder<InstanceConfig>()
		.from_state(2)
		.on_head_read(0)
		.write(0)
		.move_head(HeadOperation::Left)
		.go_to_state(3)
		.build()
	);

	program.add_transition(StateTransitionBuilder<InstanceConfig>()
		.from_state(3)
		.on_head_read(2)
		.write(1)
		.move_head(HeadOperation::Left)
		.go_to_state(3)
		.build()
	);

	program.add_transition(StateTransitionBuilder<InstanceConfig>()
		.from_state(3)
		.on_head_read(0)
		.write(2)
		.move_head(HeadOperation::Right)
		.go_to_state(4)
		.build()
	);

	program.add_transition(StateTransitionBuilder<InstanceConfig>()
		.from_state(3)
		.on_head_read(1)
		.write(2)
		.move_head(HeadOperation::Right)
		.go_to_state(4)
		.build()
	);

	program.add_transition(StateTransitionBuilder<InstanceConfig>()
		.from_state(4)
		.on_head_read(1)
		.write(1)
		.move_head(HeadOperation::Right)
		.go_to_state(4)
		.build()
	);

	program.add_transition(StateTransitionBuilder<InstanceConfig>()
		.from_state(4)
		.on_head_read(0)
		.write(0)
		.move_head(HeadOperation::Right)
		.go_to_state(0)
		.build()
	);

	program.add_transition(StateTransitionBuilder<InstanceConfig>()
		.from_state(5)
		.on_head_read(1)
		.write(0)
		.move_head(HeadOperation::Left)
		.go_to_state(5)
		.build()
	);

	program.add_transition(StateTransitionBuilder<InstanceConfig>()
		.from_state(5)
		.on_head_read(0)
		.write(0)
		.move_head(HeadOperation::Left)
		.go_to_state(1)
		.build()
	);

	Utm<InstanceConfig> utm(program, memory);

	utm.run();

	Benchmark benchmark;
	uint64_t size_bytes = benchmark.test_size(utm);
	std::cout << "kb: " << size_bytes / 1024.0 << "\n";
	std::cout << "exit code: " << exit_code_str(utm.exit_code()) << "\n";

	std::cout << "tape: " << tape0.to_str() << "\n";


	std::vector<InstanceConfig::Symbol> dataset_input0;
	dataset_input0.emplace_back(1);
	dataset_input0.emplace_back(2);
	dataset_input0.emplace_back(2);
	dataset_input0.emplace_back(1);
	dataset_input0.emplace_back(2);
	dataset_input0.emplace_back(2);
	dataset_input0.emplace_back(1);

	std::vector<InstanceConfig::Symbol> dataset_output0;
	dataset_output0.emplace_back(2);
	dataset_output0.emplace_back(1);
	dataset_output0.emplace_back(1);

	synthesis::Dataset<InstanceConfig> dataset;
	dataset.add_entry(dataset_input0, dataset_output0);

	Tape<InstanceConfig> tape(dataset_input0);
	std::cout << tape.to_str() << "\n";

	return 0;
}
