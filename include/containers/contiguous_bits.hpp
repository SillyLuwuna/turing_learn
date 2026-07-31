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
			// return bits_.template from_bits<T>(idx * StepSize, StepSize);
			return bits_.template from_bits_fast<T, StepSize>(idx * StepSize);
		}

		inline constexpr void emplace_at(T&& item, uint64_t idx)
		{
			bits_.template to_bits_fast<T, false, StepSize>(idx * StepSize, std::move(item));
		}

		inline constexpr void emplace_at(const T& item, uint64_t idx)
		{
			bits_.template to_bits_fast<T, false, StepSize>(idx * StepSize, item);
		}

		inline constexpr void rewrite_at(T&& item, uint64_t idx)
		{
			bits_.template to_bits_fast<T, true, StepSize>(idx * StepSize, std::move(item));
		}

		inline constexpr void rewrite_at(const T& item, uint64_t idx)
		{
			bits_.template to_bits_fast<T, true, StepSize>(idx * StepSize, item);
		}

		inline constexpr T operator[](uint64_t idx)
		{
			return at(idx);
		}

		inline constexpr bool cmp(const ContiguousBits<T, Container, StepSize, Len>& other, uint64_t start, uint64_t len)
		{
			return bits_.cmp(other.bits_, start * StepSize, len * StepSize);
		}
	};
}

