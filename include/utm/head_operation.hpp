#include <cstdint>

namespace turing_learning::utm
{
	enum HeadOperation : uint8_t // should be max 2 bits
	{
		Left,
		Right,
		NOP
	};
}
