#pragma once

#include "utm/symbol.hpp"
#include <cstdint>
#include <cstring>
#include <iostream>
#include <memory>
#include <vector>

namespace turing_learning::utm
{
	template<typename Config>
	class Tape
	{
	private:
		using TapeLenType = typename Config::TapeLenType;
		using Symbol = typename Config::Symbol;

		static constexpr TapeLenType tape_len = Config::tape_len;

		std::unique_ptr<Symbol[]> tape_;
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

		inline constexpr bool shrink_to_fit(uint16_t low, uint16_t high, Symbol symbol)
		{
			if (symbol == 0)
			{
				if ((low <= low_) && (high >= low_))
				{
					low_ = high + 1;
				}
				else if ((high >= high_) && (low <= high_))
				{
					high_ = low - 1;
				}

				return true;
			}

			return false;
		}

		inline constexpr void update_bounds(uint16_t low, uint16_t high, Symbol symbol)
		{
			if (shrink_to_fit(low, high, symbol)) return;

			update_low(low);
			update_high(high);
		}

	public:
		inline constexpr Tape()
		{
			tape_ = std::make_unique<uint8_t[]>(tape_len);
			low_ = std::numeric_limits<uint16_t>::max();
			high_ = std::numeric_limits<uint16_t>::min();
		}

		inline constexpr Symbol read(uint16_t idx) const
		{
			return tape_[idx];
		}

		inline constexpr void write(uint16_t idx, Symbol symbol)
		{
			update_bounds(idx, idx, symbol);
			tape_[idx] = symbol;
		}

		inline constexpr void write(uint16_t idx, Symbol symbol, uint16_t len)
		{
			update_bounds(idx, idx + len, symbol);
			std::memset(tape_.get() + idx, symbol, len * sizeof(uint16_t));
		}

		template<typename OtherConfig>
		constexpr void write_to_middle(const Tape<Config>& other)
		{
			using OtherTapeLenType = typename OtherConfig::TapeLenType;
			constexpr OtherTapeLenType other_tape_len = OtherConfig::tape_len;

			constexpr uint16_t start_idx = (tape_len / 2) - (other_tape_len / 2);

			if (std::is_constant_evaluated())
			{
				const std::vector<uint8_t>& mid_tape = other.tape_;
				for (uint16_t i = start_idx; i < other_tape_len; i++)
				{
					tape_[i] = mid_tape[i];
				}
			}
			else
			{
				std::memcpy(this->tape_.get() + start_idx, other.tape_.data(), other_tape_len * sizeof(uint16_t));
			}

			update_bounds(start_idx, start_idx + other_tape_len);
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

		std::string to_str() const
		{
			std::string str;
			str.reserve(high_ - low_ + 1);

			str += "[";
			str += std::to_string(low_);
			str += "-";
			str += std::to_string(high_);
			str += "] (";

			if (low_ < high_)
			{
				for (uint16_t i = low_; i <= high_; i++)
				{
					str += SymbolBuilder<Config>::to_str(read(i));
				}
			}

			str += ")";

			return str;
		}
	};
}
