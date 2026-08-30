#pragma once

#include "utm/size_selector.hpp"
#include <cmath>
#include <cstdint>

namespace turing_learning::utm
{
	template<uint64_t NumHeads, uint64_t NumTapes, uint64_t TapeLen, uint64_t NumSymbols, uint64_t NumStates, uint64_t MaxIterations>
		requires(NumHeads > 0 && NumTapes > 0 && TapeLen > 0 && NumSymbols > 0 && NumStates >= 2 && MaxIterations > 0)
	struct Config
	{
		using NumHeadsType = typename SizeSelector<NumHeads>::type;
		using NumTapesType = typename SizeSelector<NumTapes>::type;
		using TapeLenType = typename SizeSelector<TapeLen>::type;
		using Symbol = typename SizeSelector<NumSymbols>::type;
		using State = typename SizeSelector<NumStates>::type;

		static constexpr NumHeadsType num_heads = NumHeads;
		static constexpr NumTapesType num_tapes = NumTapes;
		static constexpr TapeLenType tape_len = TapeLen;
		static constexpr Symbol num_symbols = NumSymbols;
		static constexpr State num_states = NumStates;
		static constexpr uint64_t max_iterations = MaxIterations;

		static constexpr uint64_t get_required_bits(uint64_t size)
		{
			uint64_t bits = 1;
			uint64_t max_size = 2;

			while (max_size < size)
			{
				max_size *= 2;
				bits++;
			}

			return bits;
		}

		static constexpr uint64_t symbol_bits = get_required_bits(NumSymbols);
	};
}
