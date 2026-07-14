#pragma once

#include "benchmark/byte_measurable.hpp"
#include "utm/symbol.hpp"
#include <bitset>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <memory>
#include <vector>
#include "containers/contiguous_bits.hpp"

namespace turing_learning::utm
{
	using namespace turing_learning::containers;

	template<typename Config>
	class Tape : benchmark::ByteMeasurable
	{
	private:
		using TapeLenType = typename Config::TapeLenType;
		using Symbol = typename Config::Symbol;

		static constexpr TapeLenType tape_len = Config::tape_len;
		static constexpr uint64_t symbol_bits = Config::symbol_bits;

		std::unique_ptr<ContiguousBits<Symbol, TapeLenType, symbol_bits, tape_len>> tape_;
		TapeLenType low_;
		TapeLenType high_;

		inline constexpr void update_low(TapeLenType idx)
		{
			if (idx < low_) low_ = idx;
		}

		inline constexpr void update_high(TapeLenType idx)
		{
			if (idx > high_) high_ = idx;
		}

		inline constexpr bool shrink_to_fit(TapeLenType low, TapeLenType high, Symbol symbol)
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

		inline constexpr void update_bounds(TapeLenType low, TapeLenType high, Symbol symbol)
		{
			if (shrink_to_fit(low, high, symbol)) return;

			update_low(low);
			update_high(high);
		}

	public:
		inline constexpr Tape()
		{
			tape_ = std::make_unique<ContiguousBits<Symbol, TapeLenType, 2, tape_len>>();
			low_ = std::numeric_limits<TapeLenType>::max();
			high_ = std::numeric_limits<TapeLenType>::min();
		}

		inline constexpr Symbol read(TapeLenType idx) const
		{
			return tape_->at(idx);
		}

		inline constexpr void write(TapeLenType idx, Symbol symbol)
		{
			update_bounds(idx, idx, symbol);
			tape_->rewrite_at(symbol, idx);
		}

		inline constexpr void write(TapeLenType idx, Symbol symbol, TapeLenType len)
		{
			update_bounds(idx, idx + len, symbol);
			for (TapeLenType i = 0; i < tape_len; i++)
			{
				tape_->rewrite_at(symbol, idx);
			}
			// std::memset(tape_.get() + idx, symbol, len * sizeof(TapeLenType));
		}

		// template<typename OtherConfig>
		// constexpr void write_to_middle(const Tape<Config>& other)
		// {
		// 	using OtherTapeLenType = typename OtherConfig::TapeLenType;
		// 	constexpr OtherTapeLenType other_tape_len = OtherConfig::tape_len;
		// 	constexpr TapeLenType start_idx = (tape_len / 2) - (other_tape_len / 2);
		//
		// 	if (std::is_constant_evaluated())
		// 	{
		// 		const std::vector<Symbol>& mid_tape = other.tape_;
		// 		for (TapeLenType i = start_idx; i < other_tape_len; i++)
		// 		{
		// 			tape_[i] = mid_tape[i];
		// 		}
		// 	}
		// 	else
		// 	{
		// 		std::memcpy(this->tape_.get() + start_idx, other.tape_.data(), other_tape_len * sizeof(TapeLenType));
		// 	}
		//
		// 	update_bounds(start_idx, start_idx + other_tape_len);
		// }

		inline const Symbol operator[](TapeLenType idx)
		{
			return tape_->at(idx);
		}

		inline constexpr TapeLenType low()
		{
			return low_;
		}

		inline constexpr TapeLenType high()
		{
			return high_;
		}

		std::string to_str() const
		{
			std::string str;
			// str.reserve(high_ - low_ + 1);

			str += "[";
			str += std::to_string(low_);
			str += "-";
			str += std::to_string(high_);
			str += "] (";

			if (low_ < high_)
			{
				for (TapeLenType i = low_; i <= high_; i++)
				{
					str += SymbolBuilder<Config>::to_str(read(i));
				}
			}

			str += ")";

			return str;
		}

		uint64_t num_bytes() const override
		{
			return sizeof(*this) + sizeof(*tape_);
		}
	};
}
