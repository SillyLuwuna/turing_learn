#pragma once

#include <cstdint>

#include "benchmark/byte_measurable.hpp"

namespace turing_learning::benchmark
{
	class Benchmark
	{
	private:
	public:

		static uint64_t test_size(const ByteMeasurable& utm)
		{
			return utm.num_bytes();
		}
	};
}
