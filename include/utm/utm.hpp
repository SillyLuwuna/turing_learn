#pragma once

#include <cstdint>

#include "benchmark/byte_measurable.hpp"
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
		MaxIterationsReached
	};

	template<uint8_t NumHeads, uint8_t NumTapes, uint16_t TapeLen>
	class Utm : public benchmark::ByteMeasurable
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

#ifdef DEBUG
			std::cout << "\n       (state)\n";
			std::cout << memory_.to_str() << "\n";
#endif

			TapeState tape_state = memory_.get_tape_state();

			if (tape_state.state == 1)
			{
#ifdef DEBUG
				std::cout << "\nexited with code: Finished\n";
#endif
				exit_code_ = ExitCode::Finished;
				return;
			}

			const StateTransition<NumHeads>* transition = program_.get_transition_ptr(tape_state);

			if (transition == nullptr)
			{
#ifdef DEBUG
				std::cout << "\nexited with code: UnknownTransition\n";
#endif
				exit_code_ = ExitCode::UnknownTransition;
				return;
			}

#ifdef DEBUG
			std::cout << "\n     (transition)\n";
			std::cout << transition->to_str();
#endif

			memory_.apply(*transition);

			if (memory_.is_corrupted())
			{
#ifdef DEBUG
				std::cout << "\nexited with code: MemoryCorrupted\n";
#endif
				exit_code_ = ExitCode::MemoryCorrupted;
				return;
			}

#ifdef DEBUG
			std::cout << "\n";
#endif
		}

		constexpr void run(uint64_t max_iter)
		{
			uint64_t step_count = 0;
			while ((exit_code_ == ExitCode::None) && (step_count < max_iter))
			{
#ifdef DEBUG
				std::cout << "\n====== step " << step_count << " ======\n";
#endif
				step();
				step_count++;
			}

			if ((step_count >= max_iter) && (exit_code_ == ExitCode::None))
			{
				exit_code_ = ExitCode::MaxIterationsReached;
			}
		}

		inline constexpr ExitCode exit_code()
		{
			return exit_code_;
		}

		uint64_t num_bytes() const override
		{
			return sizeof(*this) + program_.num_bytes() + memory_.num_bytes();
		}
	};
}
