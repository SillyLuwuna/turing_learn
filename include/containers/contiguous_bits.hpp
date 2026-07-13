#pragma once

#include <bitset>
#include <cstdint>

#include "containers/bit_array.hpp"

namespace turing_learning::containers
{
	template <typename T, uint64_t StepSize, uint64_t Len>
	class ContiguousBits
	{
	private:
		BitArray<StepSize * Len> bits_;

	public:
		ContiguousBits()
		{ }

		inline constexpr T get(uint64_t idx)
		{
			return bits_.template from_bits<T>(idx * StepSize, StepSize);
		}

		inline constexpr void emplace_at(T&& item, uint64_t idx)
		{
			bits_.template to_bits<T, false>(idx * StepSize, std::move(item), StepSize);
		}

		inline constexpr void rewrite_at(T&& item, uint64_t idx)
		{
			bits_.template to_bits<T, true>(idx * StepSize, std::move(item), StepSize);
		}
	};
}

