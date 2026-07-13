#include <iostream>

#include "benchmark/benchmark.hpp"
#include "utm/config.hpp"
#include "utm/memory.hpp"
#include "utm/program.hpp"
#include "utm/state_transition.hpp"
#include "utm/utm.hpp"
#include "containers/bit_array.hpp"

using namespace turing_learning;
using namespace turing_learning::containers;
using namespace turing_learning::utm;
using namespace turing_learning::benchmark;

int main()
{
	// TODO state_transition::head_operations

	const uint8_t num_heads = 1;
	const uint8_t num_tapes = 1;
	const uint16_t tape_len = 1000;
	const uint64_t num_symbols = 3;
	const uint64_t num_states = 3;
	using InstanceConfig = Config<num_heads, num_tapes, tape_len, num_symbols, num_states>;

	const uint64_t max_iters = 10000;

	Tape<InstanceConfig> tape0 = Tape<InstanceConfig>();
	tape0.write(500, 2);
	tape0.write(501, 2);
	tape0.write(502, 2);
	tape0.write(503, 2);
	tape0.write(504, 1);
	tape0.write(505, 2);
	tape0.write(506, 2);
	tape0.write(507, 1);
	tape0.write(508, 1);
	tape0.write(509, 1);
	tape0.write(510, 2);
	tape0.write(511, 2);
	tape0.write(512, 1);
	tape0.write(513, 2);
	tape0.write(514, 2);

	Head<InstanceConfig> head0 = Head<InstanceConfig>(tape0);

	Tape<InstanceConfig>* tapes[num_tapes] = { &tape0 };
	Head<InstanceConfig>* heads[num_tapes] = { &head0 };

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

	utm.run(max_iters);

	Benchmark benchmark;
	uint64_t size_bytes = benchmark.test_size(utm);
	std::cout << "bits: " << size_bytes * 8 << "\n";
	std::cout << "bytes: " << size_bytes << "\n";
	std::cout << "kb: " << size_bytes / 1024.0 << "\n";

	BitArray<128> arr;

	std::cout << arr.to_str() << "\n";
	arr[0] = 1;
	arr[1] = 1;
	arr[63] = 1;
	std::cout << arr.to_str() << "\n";
	arr <<= 63;
	std::cout << arr.to_str() << "\n";
	arr >>= 63;
	std::cout << arr.to_str() << "\n";

	uint64_t obj = 137;
	arr.to_bits<uint64_t, true>(5, obj);
	std::cout << arr.to_str() << "\n";
	std::cout << arr.from_bits<uint64_t>(10) << "\n";

	return 0;
}
