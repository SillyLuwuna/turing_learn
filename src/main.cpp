#include <iostream>

#include "benchmark/benchmark.hpp"
#include "utm/memory.hpp"
#include "utm/program.hpp"
#include "utm/state_transition.hpp"
#include "utm/utm.hpp"

using namespace turing_learning::utm;
using namespace turing_learning::benchmark;

int main()
{
	const uint8_t num_heads = 1;
	const uint8_t num_tapes = 1;
	const uint16_t tape_len = 1000;
	const uint64_t max_iters = 10000;

	Tape<tape_len> tape0 = Tape<tape_len>();
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

	Head<tape_len> head0 = Head<tape_len>(tape0);

	Tape<tape_len>* tapes[num_tapes] = { &tape0 };
	Head<tape_len>* heads[num_tapes] = { &head0 };

	Memory<num_heads, num_tapes, tape_len> memory(tapes, heads);

	Program<num_heads> program;

	program.add_transition(StateTransitionBuilder<num_heads>()
		.from_state(0)
		.on_head_read(1)
		.write(1)
		.move_head(HeadOperation::Right)
		.go_to_state(0)
		.build()
	);

	program.add_transition(StateTransitionBuilder<num_heads>()
		.from_state(0)
		.on_head_read(2)
		.write(1)
		.move_head(HeadOperation::Left)
		.go_to_state(2)
		.build()
	);

	program.add_transition(StateTransitionBuilder<num_heads>()
		.from_state(0)
		.on_head_read(0)
		.write(0)
		.move_head(HeadOperation::Left)
		.go_to_state(5)
		.build()
	);

	program.add_transition(StateTransitionBuilder<num_heads>()
		.from_state(2)
		.on_head_read(1)
		.write(1)
		.move_head(HeadOperation::Left)
		.go_to_state(2)
		.build()
	);

	program.add_transition(StateTransitionBuilder<num_heads>()
		.from_state(2)
		.on_head_read(0)
		.write(0)
		.move_head(HeadOperation::Left)
		.go_to_state(3)
		.build()
	);

	program.add_transition(StateTransitionBuilder<num_heads>()
		.from_state(3)
		.on_head_read(2)
		.write(1)
		.move_head(HeadOperation::Left)
		.go_to_state(3)
		.build()
	);

	program.add_transition(StateTransitionBuilder<num_heads>()
		.from_state(3)
		.on_head_read(0)
		.write(2)
		.move_head(HeadOperation::Right)
		.go_to_state(4)
		.build()
	);

	program.add_transition(StateTransitionBuilder<num_heads>()
		.from_state(3)
		.on_head_read(1)
		.write(2)
		.move_head(HeadOperation::Right)
		.go_to_state(4)
		.build()
	);

	program.add_transition(StateTransitionBuilder<num_heads>()
		.from_state(4)
		.on_head_read(1)
		.write(1)
		.move_head(HeadOperation::Right)
		.go_to_state(4)
		.build()
	);

	program.add_transition(StateTransitionBuilder<num_heads>()
		.from_state(4)
		.on_head_read(0)
		.write(0)
		.move_head(HeadOperation::Right)
		.go_to_state(0)
		.build()
	);

	program.add_transition(StateTransitionBuilder<num_heads>()
		.from_state(5)
		.on_head_read(1)
		.write(0)
		.move_head(HeadOperation::Left)
		.go_to_state(5)
		.build()
	);

	program.add_transition(StateTransitionBuilder<num_heads>()
		.from_state(5)
		.on_head_read(0)
		.write(0)
		.move_head(HeadOperation::Left)
		.go_to_state(1)
		.build()
	);

	Utm<num_heads, num_tapes, tape_len> utm(program, memory);

	utm.run(max_iters);

	Benchmark benchmark;
	uint64_t size_bytes = benchmark.test_size(utm);
	std::cout << "bits: " << size_bytes * 8 << "\n";
	std::cout << "bytes: " << size_bytes << "\n";
	std::cout << "kb: " << size_bytes / 1024.0 << "\n";

	return 0;
}
