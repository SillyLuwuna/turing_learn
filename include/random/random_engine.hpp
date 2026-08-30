#pragma once

#include <cstdint>

namespace turing_learning::random
{
	class RandomEngine
	{
	private:

	public:
		virtual ~RandomEngine() = default;
		virtual uint64_t next64() = 0;
	};
}
