#pragma once

#include <cstdint>
#include <string>

namespace turing_learning::utm
{
	enum HeadOperation : uint8_t // should be max 2 bits
	{
		Left,
		NOP,
		Right,
		NUM_OPERATIONS
		// Left = -1,
		// NOP = 0,
		// Right = 1,
		// NUM_OPERATIONS = 3
	};

	struct HeadOperationConversion
	{
		static inline constexpr std::string to_str(HeadOperation operation)
		{
			switch (operation)
			{
				case HeadOperation::Left:
					return "L";
				case HeadOperation::Right:
					return "R";
				default:
					return "NOP";
			}
		}
	};
}
