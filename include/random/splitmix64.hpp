#pragma once

#include "random/random_engine.hpp"
#include <cstdint>
#include <random>

namespace turing_learning::random
{
	class SplitMix64 : public RandomEngine
	{
	private:
		uint64_t s;

	public:
		inline constexpr SplitMix64(uint64_t seed)
		{
			s = seed;
		}

		inline SplitMix64()
		{
			std::random_device rd;
			s = rd();
		}

		inline constexpr uint64_t next64() override
		{
			uint64_t result = (s += 0x9E3779B97F4A7C15);
			result = (result ^ (result >> 30)) * 0xBF58476D1CE4E5B9;
			result = (result ^ (result >> 27)) * 0x94D049BB133111EB;
			return result ^ (result >> 31);
		}
	};
}
