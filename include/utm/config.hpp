#pragma once

#include "utm/size_selector.hpp"
#include <cstdint>

namespace turing_learning::utm
{
	template<uint64_t NumHeads, uint64_t NumTapes, uint64_t TapeLen, uint64_t NumSymbols, uint64_t NumStates>
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
	};
}
