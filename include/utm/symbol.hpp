#pragma once

#include "utm/size_selector.hpp"
#include <cstdint>
#include <string>

namespace turing_learning::utm
{
	template<typename Config>
	struct SymbolBuilder
	{
		using Symbol = typename Config::Symbol;
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
