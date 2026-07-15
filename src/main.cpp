#include <iostream>

#include "benchmark/benchmark.hpp"
#include "utm/config.hpp"
#include "utm/memory.hpp"
#include "utm/program.hpp"
#include "utm/state_transition.hpp"
#include "utm/utm.hpp"
#include "containers/bit_array.hpp"
#include "containers/contiguous_bits.hpp"

using namespace turing_learning;
using namespace turing_learning::containers;
using namespace turing_learning::utm;
using namespace turing_learning::benchmark;


int main()
{
	const uint8_t num_heads = 1;
	const uint8_t num_tapes = 1;
	const uint16_t tape_len = 10001;
	const uint64_t num_symbols = 256;
	const uint64_t num_states = 3;
	using InstanceConfig = Config<num_heads, num_tapes, tape_len, num_symbols, num_states>;

	const uint64_t max_iters = 100000000;

	std::srand(137);
	Tape<InstanceConfig> tape0 = Tape<InstanceConfig>();
	for (uint64_t i = 9999; i >= 16; i--)
	{
		uint8_t random_value = (std::rand() % 2) + 1;
		tape0.write(i, random_value);
	}

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
	std::cout << "exit code: " << exit_code_str(utm.exit_code()) << "\n";

	std::cout << tape0.to_str() << "\n";

	// BitArray<uint8_t, 128> arr;
	//
	// std::cout << arr.to_str() << "\n";
	// arr[0] = 1;
	// arr[1] = 1;
	// arr[63] = 1;
	// std::cout << arr.to_str() << "\n";
	// arr <<= 63;
	// std::cout << arr.to_str() << "\n";
	// arr >>= 63;
	// std::cout << arr.to_str() << "\n";
	//
	// uint64_t obj = 137;
	// arr.to_bits<uint64_t, true, 8>(5, obj);
	//
	// std::cout << arr.to_str() << "\n";
	//
	// std::cout << arr.from_bits<uint64_t>(5, 8) << "\n";
	//
	// ContiguousBits<uint8_t, uint8_t, 2, 4> contiguous;
	// for (uint8_t i = 0; i < 4; i++)
	// {
	// 	contiguous.emplace_at(i, i);
	// }
	//
	// for (uint8_t i = 0; i < 4; i++)
	// {
	// 	std::cout << std::to_string(contiguous.at(i)) << "\n";
	// }
	//
	// std::cout << sizeof(contiguous) * 8 << "\n";

	// ContiguousBits<uint8_t, uint8_t, 2, 1000> bits;
	//
	// bits.rewrite_at(2, 500);
	// std::cout << std::to_string(bits.at(500)) << "\n";

	// BitArray<uint8_t, 128> bits;
	//
	// std::cout << bits.to_str() << "\n";
	//
	// bits.to_bits<uint8_t, true, 2>(3, 2);
	//
	// std::cout << bits.to_str() << "\n";
	//
	// std::cout << std::to_string(bits.from_bits<uint8_t>(3, 2)) << "\n";

	return 0;
}
