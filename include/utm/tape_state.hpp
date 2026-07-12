#pragma once

#include "utm/symbol.hpp"
#include <cstdint>
#include <stdexcept>

namespace turing_learning::utm
{
	template<uint8_t NumHeads>
	struct TapeState
	{
		uint16_t state;
		Symbol head_reads[6]; // doesn't use NumHeads

		inline uint64_t hash() const
		{
			if constexpr(NumHeads > 6)
			{
				throw std::runtime_error("cannot have more than 6 tapes in current implementation");
			}

			return *reinterpret_cast<const uint64_t*>(this);
		}

		std::string to_str() const
		{
			std::string str;

			str += std::to_string(state);
			str += ": [";

			for (int i = 0; i < NumHeads; i++)
			{
				str += SymbolBuilder::to_str(head_reads[i]);
			}

			str += "]";

			return str;
		}
	};
}
