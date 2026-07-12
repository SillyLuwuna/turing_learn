#include <cstdint>
#include <cstring>
#include <vector>

namespace turing_learning::utm
{
	class Tape
	{
	private:
		std::vector<uint16_t> tape_;
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

		inline constexpr Tape(uint16_t length)
		{
			tape_.reserve(length);
			low_ = std::numeric_limits<uint16_t>::max();
			high_ = std::numeric_limits<uint16_t>::min();
		}

		inline constexpr uint16_t read(uint16_t idx)
		{
			return tape_[idx];
		}

		inline constexpr void write(uint16_t idx, uint16_t symbol)
		{
			tape_[idx] = symbol;
		}

		inline constexpr void write(uint16_t idx, uint16_t symbol, uint16_t len)
		{
			update_bounds(idx, idx + len);
			std::memset(tape_.data() + idx, symbol, len * sizeof(uint16_t));
		}

		constexpr void write_to_middle(const Tape& middle)
		{
			uint16_t mid_len = middle.tape_.size();
			uint16_t start_idx = (this->tape_.size() / 2) - (mid_len / 2);

			if (std::is_constant_evaluated())
			{
				const std::vector<uint16_t>& mid_tape = middle.tape_;
				for (uint16_t i = start_idx; i < mid_len; i++)
				{
					tape_[i] = mid_tape[i];
				}
			}
			else
			{
				std::memcpy(this->tape_.data() + start_idx, middle.tape_.data(), mid_len * sizeof(uint16_t));
			}

			update_bounds(start_idx, start_idx + mid_len);
		}

		inline const uint16_t& operator[](uint16_t idx)
		{
			return tape_[idx];
		}
	};
}
