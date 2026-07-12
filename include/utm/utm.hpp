#pragma once

#include <cstdint>

#include "utm/memory.hpp"
#include "utm/program.hpp"

namespace turing_learning::utm
{
	enum ExitCode : uint8_t
	{
		None,
		Finished,
		MemoryCorrupted,
		UnknownTransition,
	};

	template<uint8_t NumHeads, uint8_t NumTapes, uint16_t TapeLen>
	class Utm
	{
	private:
		Program<NumHeads>& program_;
		Memory<NumHeads, NumTapes, TapeLen>& memory_;
		ExitCode exit_code_;

	public:
		// state 0 is the entry point
		// state 1 is reserved for final state
		inline constexpr Utm(Program<NumHeads>& program, Memory<NumHeads, NumTapes, TapeLen>& memory) :
			program_(program),
			memory_(memory),
			exit_code_(ExitCode::None)
		{ }

		constexpr void step()
		{
			if (exit_code_ != ExitCode::None) return;

			std::cout << "\n       (state)\n";
			std::cout << memory_.to_str() << "\n";

			TapeState tape_state = memory_.get_tape_state();

			if (tape_state.state == 1)
			{
				std::cout << "\nexited with code: Finished\n";
				exit_code_ = ExitCode::Finished;
				return;
			}

			const StateTransition<NumHeads>* transition = program_.get_transition_ptr(tape_state);

			if (transition == nullptr)
			{
				std::cout << "\nexited with code: UnknownTransition\n";
				exit_code_ = ExitCode::UnknownTransition;
				return;
			}

			std::cout << "\n     (transition)\n";
			// std::cout << tape_state.to_str() << " | " << transition->to_str();
			std::cout << transition->to_str();

			memory_.apply(*transition);

			if (memory_.is_corrupted())
			{
				std::cout << "\nexited with code: MemoryCorrupted\n";
				exit_code_ = ExitCode::MemoryCorrupted;
				return;
			}

			std::cout << "\n";
		}

		constexpr void run()
		{
			uint64_t step_count = 0;
			while (exit_code_ == ExitCode::None)
			{
				// TODO enforce step limit
				std::cout << "\n====== step " << step_count << " ======\n";
				step();
				step_count++;
			}
		}

		inline constexpr ExitCode exit_code()
		{
			return exit_code_;
		}
	};
}
