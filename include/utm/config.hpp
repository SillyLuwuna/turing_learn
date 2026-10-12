#pragma once

#include <fluff/memory.hpp>

namespace turing_learning::utm
{
	using namespace fluff::types;

	template<
		u64 NumHeads,
		u64 NumTapes,
		u64 TapeLen,
		u64 NumSymbols,
		u64 NumStates,
		u64 MaxIterations,
		bool AlignTape,
		bool UnsafeStep
	>
		requires(NumHeads > 0 && NumTapes > 0 && TapeLen > 0 && NumSymbols > 0 && NumStates >= 2 && MaxIterations > 0)
	struct Config
	{
		// -1 because: for i.e. 5 heads, we need at most the number 4, because 0 is included
		using NumHeadsType = typename fluff::memory::SizeSelector<NumHeads>::type;
		using NumTapesType = typename fluff::memory::SizeSelector<NumTapes>::type;
		using TapeLenType = typename fluff::memory::SizeSelector<TapeLen>::type;
		using Symbol = typename fluff::memory::SizeSelector<NumSymbols>::type;
		using State = typename fluff::memory::SizeSelector<NumStates>::type;

		// FIXME NumHeads will be greater than NumHeadsType can support, and same for the others
		// this requires fixing in every other class that uses this. Make them just use the original
		// template parameters by changing all of this to u64, first remove it to see where it errors
		static constexpr NumHeadsType num_heads = NumHeads;
		static constexpr NumTapesType num_tapes = NumTapes;
		static constexpr TapeLenType tape_len = TapeLen;
		static constexpr Symbol num_symbols = NumSymbols;
		static constexpr State num_states = NumStates;
		static constexpr u64 max_iterations = MaxIterations;
		static constexpr bool align_tape = AlignTape;
		static constexpr bool unsafe_step = UnsafeStep;

		static constexpr State terminal_state = 0;
		static constexpr State entry_state = 1;

		// TODO change for std::bit_width
		static constexpr u64 get_required_bits(u64 size)
		{
			u64 bits = 1;
			u64 max_size = 2;

			while (max_size < size)
			{
				max_size *= 2;
				bits++;
			}

			return bits;
		}

		static constexpr u64 symbol_bits = get_required_bits(NumSymbols);
	};
}
