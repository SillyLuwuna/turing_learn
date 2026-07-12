#pragma once

#include <cstdint>
#include <functional>
#include <stdexcept>

namespace turing_learning::utm
{
	template<uint8_t NumHeads>
	struct TapeState
	{
		uint16_t state;
		uint8_t head_reads[NumHeads];

		inline constexpr uint64_t hash() const
		{
			if constexpr(NumHeads > 6)
			{
				throw std::runtime_error("cannot have more than 6 tapes in current implementation");
			}

			return *(uint64_t*)this;
		}
	};
}
