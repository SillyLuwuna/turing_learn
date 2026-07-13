#pragma once

#include <cstdint>

namespace turing_learning::benchmark
{
	class ByteMeasurable
	{
	public:
		virtual uint64_t num_bytes() const = 0;
	};
}
