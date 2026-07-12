#pragma once

#include <cstdint>
#include <string>

namespace turing_learning::utm
{
	using Symbol = uint8_t;

	struct SymbolBuilder
	{
		static inline constexpr std::string to_str(Symbol symbol)
		{
			if (symbol == 0)
			{
				return std::string("_");
			}
			else
			{
				return std::to_string(symbol - 1);
			}
		}
	};
}
