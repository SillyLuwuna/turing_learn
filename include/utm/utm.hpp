#pragma once

#include <cstdint>

#include "benchmark/byte_measurable.hpp"
#include "utm/exit_code.hpp"
#include "utm/memory.hpp"
#include "utm/program.hpp"
#include "utm/execution_results.hpp"
#include "utm/synthesis/dataset.hpp"

namespace turing_learning::utm
{
	template<typename Config>
	class Utm : public benchmark::ByteMeasurable
	{
	private:
		static constexpr uint64_t max_iterations_ = Config::max_iterations;

		const Program<Config>& program_;
		Memory<Config>& memory_;
		ExitCode exit_code_;
		uint64_t cycle_count_;

	public:
		// state 0 is the entry point
		// state 1 is reserved for final state
		inline constexpr Utm(const Program<Config>& program, Memory<Config>& memory) :
			program_(program),
			memory_(memory),
			exit_code_(ExitCode::None),
			cycle_count_(0)
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

			const StateTransition<Config>* transition = program_.get_transition_ptr(tape_state);

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

		constexpr void run()
		{
			cycle_count_ = 0;
			while ((exit_code_ == ExitCode::None) && (cycle_count_ < max_iterations_))
			{
#ifdef DEBUG
				std::cout << "\n====== step " << cycle_count_ << " ======\n";
#endif
				step();
				cycle_count_++;
			}

			if ((cycle_count_ >= max_iterations_) && (exit_code_ == ExitCode::None))
			{
				exit_code_ = ExitCode::MaxIterationsReached;
			}
		}

		static constexpr std::vector<ExecutionResults<Config>> run_dataset(const Program<Config>& program, const synthesis::Dataset<Config>& dataset)
		{
			std::vector<ExecutionResults<Config>> all_stats;
			all_stats.reserve(dataset.size());

			for (uint64_t i = 0; i < dataset.size(); i++)
			{
				Memory<Config> memory(dataset.get_input(i));
				Utm<Config> utm(program, memory);
				utm.run();

				ExecutionResults stats {
					.cycles_elapsed = utm.cycles_elapsed(),
					.size_bytes = utm.num_bytes(),
					.exit_code = utm.exit_code(),
					.memory = memory
				};
				all_stats.emplace_back(stats);
			}

			return all_stats;
		}

		inline constexpr ExitCode exit_code() const
		{
			return exit_code_;
		}

		inline constexpr uint64_t cycles_elapsed() const
		{
			return cycle_count_;
		}

		uint64_t num_bytes() const override
		{
			return sizeof(*this) + program_.num_bytes() + memory_.num_bytes();
		}
	};
}
