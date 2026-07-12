#pragma once

#include <cstdint>
#include <cstring>
#include <memory>
#include <vector>

namespace turing_learning::utm
{
	template <uint16_t Len>
	class Tape
	{
	private:
		std::unique_ptr<uint8_t[]> tape_;
		uint16_t low_;
		uint16_t high_;

		inline constexpr void update_low(uint16_t idx)
		{
			if (idx < low_) low_ = idx;
		}

		inline constexpr void update_high(uint16_t idx)
		{
			if (idx > high_) high_ = idx;
		}

		inline constexpr void update_bounds(uint16_t low, uint16_t high)
		{
			update_low(low);
			update_high(high);
		}

	public:
		inline constexpr Tape<Len>()
		{
			tape_ = std::make_unique<uint8_t[]>(Len);
			// tape_.reserve(Len);
			low_ = std::numeric_limits<uint16_t>::max();
			high_ = std::numeric_limits<uint16_t>::min();
		}

		inline constexpr uint8_t read(uint16_t idx)
		{
			return tape_[idx];
		}

		inline constexpr void write(uint16_t idx, uint8_t symbol)
		{
			tape_[idx] = symbol;
		}

		inline constexpr void write(uint16_t idx, uint8_t symbol, uint16_t len)
		{
			update_bounds(idx, idx + len);
			std::memset(tape_.get() + idx, symbol, len * sizeof(uint16_t));
		}

		template<uint16_t MiddleLen>
		constexpr void write_to_middle(const Tape<MiddleLen>& middle)
		{
			constexpr uint16_t start_idx = (Len / 2) - (MiddleLen / 2);

			if (std::is_constant_evaluated())
			{
				const std::vector<uint8_t>& mid_tape = middle.tape_;
				for (uint16_t i = start_idx; i < MiddleLen; i++)
				{
					tape_[i] = mid_tape[i];
				}
			}
			else
			{
				std::memcpy(this->tape_.get() + start_idx, middle.tape_.data(), MiddleLen * sizeof(uint16_t));
			}

			update_bounds(start_idx, start_idx + MiddleLen);
		}

		inline const uint8_t& operator[](uint16_t idx)
		{
			return tape_[idx];
		}

		inline constexpr uint16_t low()
		{
			return low_;
		}

		inline constexpr uint16_t high()
		{
			return high_;
		}
	};
}
