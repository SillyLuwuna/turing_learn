#pragma once

#include <mpfr.h>
#include "benchmark/timer.hpp"
#include "utm/program.hpp"
#include "utm/synthesis/dataset.hpp"
#include "utm/utm.hpp"
#include "math/math_mpfr.hpp"
#include <chrono>
#include <thread>
#include <cassert>

using namespace std::chrono_literals;
using namespace std::chrono;

namespace turing_learning::utm::synthesis
{
	template<typename Config>
	class TreeNormalForm
	{
	private:
		using Symbol = typename Config::Symbol;
		using State = typename Config::State;
		// using TapeLenType = typename Config::TapeLenType;
		using NumHeadsType = typename Config::NumHeadsType;
		// using NumTapesType = typename Config::NumTapesType;
		//
		//
		// static constexpr Symbol num_symbols = Config::NumSymbols;
		// static constexpr State num_states = Config::NumStates;
		// static constexpr TapeLenType tape_len = Config::tape_len;
		// static constexpr NumTapesType num_tapes = Config::num_tapes;
		// static constexpr NumHeadsType num_heads = Config::num_heads;

		static constexpr mpfr_prec_t bit_precision_ = 512;

		static inline const Program<Config> init_ = Program<Config>();

		Symbol num_symbols_;
		NumHeadsType num_heads_;
		State num_states_;

		const Dataset<Config>* dataset_;
		uint64_t max_iterations_;
		uint64_t iteration_;

		Program<Config> best_tm_;
		uint64_t best_total_error_;

		uint64_t next_new_state_;

		uint64_t known_state_combinations_num_;

		// TODO class/object just for stats
		uint64_t expansion_depth_;
		std::vector<uint64_t> individual_progress_;
		mpfr_t tm_simulated_count_;
		mpfr_t tm_static_count_;
		time_point<steady_clock, duration<long, std::ratio<1, 1000000000>>> timer_start_;
		time_point<steady_clock, duration<long, std::ratio<1, 1000000000>>> timer_deadline_;

		inline StateTransition<Config> gen_terminal_state_transition(const TapeState<Config>& trigger_state)
		{
			StateTransition<Config> final_state_transition {
				.trigger_state = trigger_state, // PERF copy
				.head_writes = {},
				.target_state = 0,
				.head_operations = {},
			};

			return final_state_transition;
		}

		// PERF avoid constant pointer copy and function calling, make them member variables?
		void gen_known_state_combinations(
			const Program<Config>& tm_spec,
			std::vector<Program<Config>>& children,
			StateTransition<Config>& state_transition,
			NumHeadsType head
		)
		{
			if (head >= num_heads_)
			{
				Program<Config> known_state_child = tm_spec;
				StateTransition<Config> known_state_transition = state_transition; // PERF copy not needed? (struct)
				known_state_child.add_transition(std::move(known_state_transition));
				children.emplace_back(std::move(known_state_child));
				return;
			}

			if (head >= std::size(state_transition.head_writes)) __builtin_unreachable(); // to appease compiler

			for (Symbol symbol = 0; symbol < num_symbols_; symbol++)
			{
				state_transition.head_writes[head] = symbol; // PERF use state_transition directly in loop?
				for (HeadOperation head_operation = (HeadOperation)0; head_operation < HeadOperation::NUM_OPERATIONS; head_operation = (HeadOperation)((uint8_t)head_operation + 1))
				{
					state_transition.head_operations.rewrite_at(head, head_operation);
					gen_known_state_combinations(tm_spec, children, state_transition, head + 1);
				}
			}
		}

		inline uint64_t children_num()
		{
			return 1 + std::min(next_new_state_, (uint64_t)num_states_) * known_state_combinations_num_;
		}

		const std::vector<Program<Config>> gen_children(
			const Program<Config>& tm_spec,
			const TapeState<Config>& trigger_state,
			uint64_t* out_new_state_idx // TODO very scuffed, and inefficient, possibly fixed by generating on demand
		)
		{
			// PERF gen children on demand instead of generating all possibilities at the same time
			std::vector<Program<Config>> children;
			children.reserve(children_num());
			
			Program<Config> terminal_state_child = tm_spec;
			terminal_state_child.add_transition(gen_terminal_state_transition(trigger_state));
			children.emplace_back(std::move(terminal_state_child));

			for (State target_state = 1; target_state <= next_new_state_; target_state++)
			{
				if (target_state == next_new_state_)
				{
					*out_new_state_idx = children.size();
					if (next_new_state_ > num_states_)
					{
						return children;
					}
				}

				StateTransition<Config> known_state_transition {
					.trigger_state = trigger_state, // PERF copy
					.head_writes = {},
					.target_state = target_state,
					.head_operations = {},
				};

				// PERF there is simmetry here. No need to make every single child every single time.
				// Make it once and then copy it, changing the end states. This would further benefit
				// from the whole thing being more SIMD friendly
				gen_known_state_combinations(tm_spec, children, known_state_transition, 0);
			}

			return children;
		}

		inline void inc_expansion()
		{
			expansion_depth_++;
		}

		inline void dec_expansion()
		{
			expansion_depth_--;
		}

		void print_progress_str(uint64_t total)
		{
			auto elapsed = steady_clock::now() - timer_start_;
			uint64_t elapsed_us = duration_cast<nanoseconds>(elapsed).count();

			// PERF reuse variables
			mpfr_t known_total, tmp, progress, speed_raw, speed, efficiency, waste, estimated;
			mpfr_inits2(bit_precision_, known_total, tmp, progress, speed_raw, speed, efficiency, waste, estimated, (mpfr_ptr)0);


			mpfr_ui_pow_ui(known_total, total, individual_progress_.size(), MPFR_RNDN);

			mpfr_set_ui(tm_static_count_, 0, MPFR_RNDN);
			for (uint64_t i = 0; i < individual_progress_.size(); i++)
			{
				mpfr_ui_pow_ui(tmp, total, individual_progress_.size() - i - 1, MPFR_RNDN);
				mpfr_mul_ui(tmp, tmp, individual_progress_[i], MPFR_RNDN);
				mpfr_add(tm_static_count_, tm_static_count_, tmp, MPFR_RNDN);
			}
			mpfr_div(progress, tm_static_count_, known_total, MPFR_RNDN);
			mpfr_mul_ui(progress, progress, 100, MPFR_RNDN);

			mpfr_div_ui(speed, tm_static_count_, elapsed_us, MPFR_RNDN);
			mpfr_mul_ui(speed, speed, 1000000000, MPFR_RNDN);

			mpfr_div_ui(speed_raw, tm_simulated_count_, elapsed_us, MPFR_RNDN);
			mpfr_mul_ui(speed_raw, speed_raw, 1000000000, MPFR_RNDN);

			mpfr_div(waste, speed_raw, speed, MPFR_RNDN);
			mpfr_ui_sub(efficiency, 1, waste, MPFR_RNDN);
			mpfr_mul_ui(waste, waste, 100, MPFR_RNDN);
			mpfr_mul_ui(efficiency, efficiency, 100, MPFR_RNDN);

			mpfr_sub(tmp, known_total, tm_static_count_, MPFR_RNDN);
			mpfr_div(estimated, tmp, speed, MPFR_RNDN);
			mpfr_mul_ui(estimated, estimated, 1000000000, MPFR_RNDN);

			std::cout << "====================================================\n";
			std::cout << "progress:\t" << MathMpfr::to_str(progress, 32) << " %\n";
			std::cout << "speed:\t\t" << MathMpfr::to_str(speed, 0) << " (" << MathMpfr::to_str_scientific(speed, 0) << ") TMs/s\n";
			std::cout << "speed (raw):\t" << MathMpfr::to_str(speed_raw, 0) << " (" << MathMpfr::to_str_scientific(speed_raw, 0) << ") TMs/s\n";
			// std::cout << "efficiency:\t" << MathMpfr::to_str(efficiency, 32) << " (1 - " << MathMpfr::to_str_scientific(efficiency_inv, 32) << ") %\n";
			std::cout << "efficiency:\t" << MathMpfr::to_str(efficiency, 32) << " %\n";
			std::cout << "waste:\t\t" << MathMpfr::to_str_scientific(waste, 5) << " %\n";
			std::cout << "estimated:\t" << MathMpfr::to_str(estimated, 0) << " s | ";
			mpfr_div_ui(estimated, estimated, 60, MPFR_RNDN);
			std::cout << MathMpfr::to_str(estimated, 0) << " m | ";
			mpfr_div_ui(estimated, estimated, 60, MPFR_RNDN);
			std::cout << MathMpfr::to_str(estimated, 0) << " h | ";
			mpfr_div_ui(estimated, estimated, 24, MPFR_RNDN);
			std::cout << MathMpfr::to_str(estimated, 0) << " d | ";
			mpfr_div_ui(estimated, estimated, 365, MPFR_RNDN);
			std::cout << MathMpfr::to_str(estimated, 0) << " y\n";

			// TODO averages in (avg: )


			// uint64_t digit_size = std::to_string(total).size();
			// for (uint64_t i = 0; i < individual_progress_.size(); i++)
			// {
			// 	std::cout << std::format("[{:{}}/{}] ", individual_progress_[i], digit_size, total);
			// }
			// std::cout << "\n";

			mpfr_set_ui(tm_simulated_count_, 0, MPFR_RNDN);

			mpfr_clears(known_total, tmp, progress, speed_raw, speed, efficiency, waste, estimated, (mpfr_ptr)0);
		}

		// PERF don't use recursion
		void expand(const Program<Config>& parent)
		{
			if ((iteration_ >= max_iterations_) || (best_total_error_ == 0))
			{
				return;
			}

			if (expansion_depth_ >= individual_progress_.size())
			{
				individual_progress_.emplace_back(0);
			}
			
			// std::cout << std::to_string(iteration_) << "\n";
			// std::cout << "tm:\n";
			// std::cout << parent.to_str() << "\n";
			// std::this_thread::sleep_for(1000ms);

			iteration_++;
			uint64_t total_error = 0;

			uint64_t curr_children_num = children_num();
			uint64_t total_expansions = curr_children_num * dataset_->size();

			for (uint64_t i = 0; i < dataset_->size(); i++)
			{
				if (steady_clock::now() >= timer_deadline_)
				{
					timer_deadline_ = steady_clock::now() + 1s;
					print_progress_str(total_expansions);
					timer_start_ = steady_clock::now();
				}
				individual_progress_[expansion_depth_] = curr_children_num * i;

				Memory<Config> working_tape = dataset_->get_input(i);
				Utm<Config> tm(parent, working_tape);

				tm.run(); // PERF don't run the tm from the beginning. Maybe even rollback changes
				mpfr_add_ui(tm_simulated_count_, tm_simulated_count_, 1, MPFR_RNDN);
				ExitCode exit_code = tm.exit_code();

				if (exit_code == Finished)
				{
					total_error += working_tape.cmp(dataset_->get_output(i));
					if (total_error >= best_total_error_)
					{
						return;
					}
					continue;
				}

				if (exit_code == UnknownTransition)
				{
					// PERF tape state copy, inefficient
					TapeState<Config> tape_state = working_tape.get_tape_state();
					uint64_t new_state_idx = 0;
					const std::vector<Program<Config>> children = gen_children(parent, tape_state, &new_state_idx);
					// std::cout << std::to_string(benchmark::Timer::total_elapsed_ms()) << "\n";

					bool incremented_new_state = false;
					// PERF instead of children.size() calculate number of children in constexpr
					for (uint64_t i = 0; i < children.size(); i++)
					{
						individual_progress_[expansion_depth_]++;

						if (i == new_state_idx)
						{
							next_new_state_++;
							incremented_new_state = true;
						}
						// std::this_thread::sleep_for(200ms);

						inc_expansion();
						expand(children[i]);
						dec_expansion();

						if ((iteration_ >= max_iterations_) || (best_total_error_ == 0))
						{
							if (incremented_new_state)
							{
								next_new_state_--;
							}
							return;
						}
					}

					if (incremented_new_state)
					{
						next_new_state_--;
					}
				}

				return;
			}

			if (total_error < best_total_error_)
			{
				// std::cout << "new best: " << std::to_string(total_error) << "\n";
				best_total_error_ = total_error;
				best_tm_ = parent;
			}
		}

	public:
		TreeNormalForm(Symbol num_symbols, NumHeadsType num_heads, State num_states) :
			num_symbols_(num_symbols),
			num_heads_(num_heads),
			num_states_(num_states),
			best_total_error_(std::numeric_limits<uint64_t>::max()),
			next_new_state_(2),
			known_state_combinations_num_(Math::fast_pow(num_symbols * HeadOperation::NUM_OPERATIONS, num_heads)),
			expansion_depth_(0)
		{
			mpfr_init2(tm_simulated_count_, bit_precision_);
			mpfr_init2(tm_static_count_, bit_precision_);

			mpfr_set_ui(tm_simulated_count_, 0, MPFR_RNDN);
		}

		~TreeNormalForm()
		{
			mpfr_clear(tm_simulated_count_);
			mpfr_clear(tm_static_count_);
		}

		static inline constexpr uint64_t error(const std::vector<ExecutionResults<Config>>& results, const Dataset<Config>& dataset)
		{
			uint64_t total_error = 0;

			for (uint64_t i = 0; i < results.size(); i++)
			{
				total_error += error(results[i].memory, dataset.get_output(i));
			}

			return total_error;
		}

		static inline constexpr uint64_t error(const Memory<Config>& output, const Memory<Config>& expected)
		{
			return output.cmp(expected);
		}

		Program<Config> run(uint64_t max_iterations, const Dataset<Config>& dataset)
		{
			dataset_ = &dataset;
			max_iterations_ = max_iterations;
			iteration_ = 0;

			best_total_error_ = std::numeric_limits<uint64_t>::max();
			best_tm_ = init_;

			timer_start_ = steady_clock::now();
			timer_deadline_ = steady_clock::now() + 1s;
			expand(init_);

			// std::cout << "iterations: " << std::to_string(iteration_) << "\n";

			return best_tm_;
		}
	};
}
