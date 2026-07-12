#include <iostream>

#include "utm/state_transition.hpp"

using namespace turing_learning::utm;

int main()
{
	std::cout << "owo\n";

	StateTransition t = StateTransition().on_read(1).from_state(0).write(0).go_to_state(2).move_head(2, HeadOperation::Left);

	return 0;
}
