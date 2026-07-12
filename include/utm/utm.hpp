#pragma once

#include <cstdint>

#include "utm/memory.hpp"
#include "utm/program.hpp"

namespace turing_learning::utm
{
	template<uint8_t NumHeads, uint8_t NumTapes, uint16_t TapeLen>
	class Utm
	{
	private:
		Program<NumHeads>& program_;
		Memory<NumHeads, NumTapes, TapeLen>& memory_;

	public:
		inline constexpr Utm(Program<NumHeads>& program, Memory<NumHeads, NumTapes, TapeLen>& memory) :
			program_(program),
			memory_(memory)
		{ }

		inline constexpr void step()
		{
			TapeState<NumHeads> tape_state = memory_.get_tape_state();
			const StateTransition<NumHeads>* transition = program_.get_transition_ptr(tape_state);
			memory_.apply(*transition);
		}

		std::string to_str()
		{
			// TODO check if memory corrupted, maybe in a step() loop
			// TODO
		}
	};
}
