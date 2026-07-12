#include <iostream>

#include "utm/memory.hpp"
#include "utm/program.hpp"
#include "utm/state_transition.hpp"
#include "utm/utm.hpp"

using namespace turing_learning::utm;

int main()
{
	const uint8_t num_heads = 1;
	const uint8_t num_tapes = 1;
	const uint16_t tape_len = 1000;

	Tape<tape_len> tape0 = Tape<tape_len>();
	Tape<tape_len> tapes[num_tapes] = { std::move(tape0) };

	Head<tape_len> heads[num_tapes] = { tapes[0] };

	Memory<num_heads, num_tapes, tape_len> memory(tapes, heads);

	StateTransition<num_heads> t = StateTransition<num_heads>()
		.from_state(0)
		.on_head_read(0, 1)
		.on_head_read(1, 1)
		.write(0, 0)
		.write(1, 0)
		.move_head(0, HeadOperation::Right)
		.move_head(1, HeadOperation::Right)
		.go_to_state(2);

	Program<num_heads> program;
	program.add_transition(std::move(t));

	Utm<num_heads, num_tapes, tape_len> utm(program, memory);

	utm.step();

	return 0;
}
