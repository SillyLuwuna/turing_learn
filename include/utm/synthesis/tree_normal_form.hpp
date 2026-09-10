#pragma once

#include "utm/program.hpp"
#include "utm/synthesis/dataset.hpp"
#include "utm/utm.hpp"
#include <thread>

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

		static inline const Program<Config> init = Program<Config>();

		Symbol num_symbols_;
		NumHeadsType num_heads_;
		State num_states_;

		const Dataset<Config>* dataset_;
		uint64_t max_iterations_;
		uint64_t iteration_;

		Program<Config> best_tm_;
		uint64_t best_total_error_;

		uint64_t next_new_state_;

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

		const std::vector<Program<Config>> gen_children(
			const Program<Config>& tm_spec,
			const TapeState<Config>& trigger_state,
			uint64_t* out_new_state_idx // TODO very scuffed, and inefficient, possibly fixed by generating on demand
		)
		{
			// PERF gen children on demand instead of generating all possibilities at the same time
			std::vector<Program<Config>> children; // PERF reserve
			
			Program<Config> terminal_state_child = tm_spec;
			terminal_state_child.add_transition(gen_terminal_state_transition(trigger_state));
			children.emplace_back(std::move(terminal_state_child));

			for (State target_state = 1; target_state <= next_new_state_; target_state++)
			{
				if (target_state == next_new_state_)
				{
					*out_new_state_idx = children.size();
					if (next_new_state_ >= num_states_)
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

		void expand(const Program<Config>& parent)
		{
			if ((iteration_ >= max_iterations_) || (best_total_error_ == 0))
			{
				return;
			}

			// std::cout << "tm:\n";
			// std::cout << parent.to_str() << "\n";
			// using namespace std::chrono_literals;
			// std::this_thread::sleep_for(1000ms);
			// std::cout << std::to_string(iteration_) << "\n";
			// std::cout << "parent:\n";
			// std::cout << parent.to_str() << "\n";
			iteration_++;
			uint64_t total_error = 0;

			for (uint64_t i = 0; i < dataset_->size(); i++)
			{
				Memory<Config> working_tape = dataset_->get_input(i);
				Utm<Config> tm(parent, working_tape);

				tm.run(); // PERF don't run the tm from the beginning. Maybe even rollback changes
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

					bool incremented_new_state = false;
					// PERF instead of children.size() calculate number of children in constexpr
					for (uint64_t i = 0; i < children.size(); i++)
					{
						if (i == new_state_idx)
						{
							next_new_state_++;
							incremented_new_state = true;
						}

						expand(children[i]);

						if ((iteration_ >= max_iterations_) || (best_total_error_ == 0))
						{
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
			next_new_state_(2)
		{ }

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
			best_tm_ = init;

			expand(init);

			std::cout << "iterations: " << std::to_string(iteration_) << "\n";

			return best_tm_;
		}
	};
}
