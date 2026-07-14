#pragma once

#include <bitset>
#include <cstdint>

#include "containers/bit_array.hpp"

namespace turing_learning::containers
{
	template <typename T, typename Container, uint64_t StepSize, uint64_t Len>
	class ContiguousBits
	{
	private:
		BitArray<Container, StepSize * Len> bits_;

	public:
		ContiguousBits()
		{ }

		inline constexpr T at(uint64_t idx) const
		{
			return bits_.template from_bits<T>(idx * StepSize, StepSize);
		}

		inline constexpr void emplace_at(T&& item, uint64_t idx)
		{
			bits_.template to_bits<T, false, StepSize>(idx * StepSize, std::move(item));
		}

		inline constexpr void emplace_at(T& item, uint64_t idx)
		{
			bits_.template to_bits<T, false, StepSize>(idx * StepSize, item);
		}

		inline constexpr void rewrite_at(T&& item, uint64_t idx)
		{
			bits_.template to_bits<T, true, StepSize>(idx * StepSize, std::move(item));
		}

		inline constexpr void rewrite_at(T& item, uint64_t idx)
		{
			bits_.template to_bits<T, true, StepSize>(idx * StepSize, item);
		}
	};
}

