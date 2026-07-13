#pragma once

#include <bitset>
#include <cstdint>

namespace turing_learning::containers
{
	template <typename T, uint64_t StepSize, uint64_t Len>
	class ContiguousBits
	{
	private:
		static constexpr uint64_t gen_mask(uint64_t bits_per_item)
		{
			uint64_t mask = 0;
			for (uint64_t i = 0; i < bits_per_item; i++)
			{
				mask = (mask << 1) + 1;
			}
			return mask;
		}

		static constexpr uint64_t mask = gen_mask(StepSize);

		std::bitset<StepSize * Len> bits_;

	public:
		ContiguousBits()
		{ }

		inline constexpr T& get(uint64_t idx)
		{

		}

		inline constexpr void emplace_at(T&& item, uint64_t idx)
		{

		}

		inline constexpr T& operator[](uint64_t idx)
		{
			return get(idx);
		}
	};
}

