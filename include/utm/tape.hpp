#pragma once

#include "benchmark/byte_measurable.hpp"
#include "utm/symbol.hpp"
#include <cstdint>
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

		// could be allocated as needed, for memory efficiency
		std::unique_ptr<ContiguousBits<Symbol, uint8_t, symbol_bits, tape_len>> tape_;
		// uint8_t tape_[tape_len];
		TapeLenType low_;
		TapeLenType high_;

		inline constexpr void init_tape()
		{
			tape_ = std::make_unique<ContiguousBits<Symbol, uint8_t, symbol_bits, tape_len>>();
		}

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
			init_tape();
			low_ = std::numeric_limits<TapeLenType>::max();
			high_ = std::numeric_limits<TapeLenType>::min();
		}

		constexpr Tape(const Tape& other)
		{
			low_ = other.low_;
			high_ = other.high_;

			init_tape();
			for (TapeLenType i = 0; i < tape_len; i++)
			{
				tape_->rewrite_at(other.tape_->at(i), i);
			}
		}

		inline constexpr Tape& operator=(const Tape& other)
		{
			low_ = other.low_;
			high_ = other.high_;

			init_tape();
			for (TapeLenType i = 0; i < tape_len; i++)
			{
				tape_->rewrite_at(other.tape_->at(i), i);
			}

			return *this;
		}

		inline constexpr Tape(const std::vector<Symbol>& initial_symbols) : Tape()
		{
			uint64_t half_idx = tape_len / 2;
			uint64_t half_len = initial_symbols.size() / 2;

			low_ = half_idx - half_len;
			high_ = low_ + initial_symbols.size() - 1;

			uint64_t symbol_idx = 0;
			for (uint64_t i = low_; i <= high_; i++)
			{
				tape_->emplace_at(initial_symbols[symbol_idx++], i);
				// tape_[i] = initial_symbols[symbol_idx++];
			}
		}

		inline constexpr uint64_t size()
		{
			return high_ - low_ + 1;
		}

		inline constexpr Symbol read(TapeLenType idx) const
		{
			return tape_->at(idx);
			// return tape_[idx];
		}

		inline constexpr void write(TapeLenType idx, Symbol symbol)
		{
			update_bounds(idx, idx, symbol);
			tape_->rewrite_at(symbol, idx);
			// tape_[idx] = symbol;
		}

		inline constexpr void write(TapeLenType idx, Symbol symbol, TapeLenType len)
		{
			update_bounds(idx, idx + len, symbol);
			for (TapeLenType i = 0; i < tape_len; i++)
			{
				tape_->rewrite_at(symbol, idx);
				// tape_[idx] = symbol;
			}
		}

		inline constexpr Symbol operator[](TapeLenType idx)
		{
			return tape_->at(idx);
			// return tape_[idx];
		}

		inline constexpr bool is_equivalent(const Tape<Config>& other)
		{
			if (this->size() != other.size()) return false;

			// TODO make bit_array cmp for different starts
			for (uint64_t this_start = low_; this_start <= high_; this_start++)
			{

			}
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
			if (low_ > high_)
			{
				return "[-] (empty)";
			}

			std::string str;

			str += "[";
			str += std::to_string(low_);
			str += "-";
			str += std::to_string(high_);
			str += "] (";

			for (TapeLenType i = low_; i <= high_; i++)
			{
				str += SymbolBuilder<Config>::to_str(read(i));
			}

			str += ")";

			return str;
		}

		uint64_t num_bytes() const override
		{
			return sizeof(*this) + sizeof(*tape_);
			// return sizeof(*this);
		}
	};
}
