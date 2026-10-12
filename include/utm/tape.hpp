#pragma once

#include <fluff/containers.hpp>
#include <fluff/benchmark.hpp>
#include "utm/symbol.hpp"
#include <vector>

namespace turing_learning::utm
{
	using namespace fluff::types;

	template<typename Config>
	class Tape : fluff::benchmark::ByteMeasurable
	{
	private:
		using TapeLenType = typename Config::TapeLenType;
		using Symbol = typename Config::Symbol;

		static constexpr TapeLenType tape_len = Config::tape_len;
		static constexpr u64 symbol_bits = Config::symbol_bits;
		static constexpr bool align_tape = Config::align_tape;

		// PERF could be allocated as needed, for memory efficiency
		// PERF for heap allocation, there has to be a memory pool that distributes the contiguous bits
		// else, each malloc becomes extremely expensive

		using contiguous_bits_type = std::conditional_t<
			align_tape,
			fluff::ContiguousArray<Symbol, Symbol, sizeof(Symbol) * 8, tape_len>,
			fluff::ContiguousArray<Symbol, u8, symbol_bits, tape_len>
		>;
		contiguous_bits_type tape_;

		// std::unique_ptr<ContiguousBits<Symbol, u8, symbol_bits, tape_len>> tape_;
		// ContiguousBits<Symbol, u8, symbol_bits, tape_len> tape_;
		// std::unique_ptr<u8[]> tape_;
		// Symbol tape_[tape_len];

		TapeLenType low_;
		TapeLenType high_;

		inline constexpr void init_tape()
		{
			// tape_ = std::make_unique<ContiguousBits<Symbol, u8, symbol_bits, tape_len>>();
			// tape_ = std::make_unique<u8[]>(tape_len);
			// std::memset(tape_, 0, tape_len * sizeof(Symbol));
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
				if ((low <= low_) && (high >= high_))
				{
					high_ = 0;
					low_ = 1;

					return true;
				}

				if ((low <= low_) && (high >= low_))
				{
					low_ = high + 1; // goes one above the max index
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
			// if (symbol == 0) return;

			update_low(low);
			update_high(high);
		}

	public:
		inline constexpr Tape(TapeLenType start)
		{
			init_tape();
			low_ = start + 1;
			high_ = start;
		}

		constexpr Tape(const Tape& other)
		{
			low_ = other.low_;
			high_ = other.high_;

			init_tape();
			// for (TapeLenType i = 0; i < tape_len; i++)
			// {
			// 	// tape_->rewrite_at(i, other.tape_->at(i));
			// 	// tape_.rewrite_at(i, other.tape_.at(i));
			// 	tape_[i] = other.tape_[i];
			// }
			// std::memcpy(tape_, other.tape_, tape_len * sizeof(Symbol));
			tape_ = other.tape_;
		}

		inline constexpr Tape& operator=(const Tape& other)
		{
			low_ = other.low_;
			high_ = other.high_;

			init_tape();
			// for (TapeLenType i = 0; i < tape_len; i++)
			// {
			// 	// tape_->rewrite_at(i, other.tape_->at(i));
			// 	// tape_.rewrite_at(i, other.tape_.at(i));
			// 	tape_[i] = other.tape_[i];
			// }
			// std::memcpy(tape_, other.tape_, tape_len * sizeof(Symbol));
			tape_ = other.tape_;

			return *this;
		}

		inline constexpr Tape(const std::vector<Symbol>& initial_symbols) : Tape()
		{
			constexpr u64 half_idx = tape_len / 2;
			u64 half_len = initial_symbols.size() / 2;

			low_ = half_idx - half_len;
			high_ = low_ + initial_symbols.size() - 1;

			u64 symbol_idx = 0;
			for (u64 i = low_; i <= high_; i++)
			{
				// tape_->emplace_at(i, initial_symbols[symbol_idx++]);
				tape_.emplace_at(i, initial_symbols[symbol_idx++]);
				// tape_[i] = initial_symbols[symbol_idx++];
			}
		}

		inline constexpr u64 size() const
		{
			return high_ - low_ + 1;
		}

		inline constexpr Symbol read(TapeLenType idx) const
		{
			// return tape_->at(idx);
			return tape_.at(idx);
			// return tape_[idx];
		}

		inline constexpr void write(TapeLenType idx, Symbol symbol)
		{
			// PERF add flag for bounds check

			update_bounds(idx, idx, symbol);

			// tape_->rewrite_at(idx, symbol);
			tape_.rewrite_at(idx, symbol);
			// tape_[idx] = symbol;
		}

		inline constexpr void write(TapeLenType idx, Symbol symbol, TapeLenType len)
		{
			update_bounds(idx, idx + len, symbol);
			for (TapeLenType i = 0; i < len; i++)
			{
				// tape_->rewrite_at(idx, symbol);
				tape_.rewrite_at(idx, symbol);
				// tape_[idx] = symbol;
			}
		}

		inline constexpr Symbol operator[](TapeLenType idx)
		{
			// return tape_->at(idx);
			return tape_.at(idx);
			// return tape_[idx];
		}

		inline constexpr bool is_equivalent(const Tape<Config>& other) const
		{
			if (this->size() != other.size()) return false;

			// PERF make bit_array cmp for different starts
			for (u64 i = 0; i < this->size(); i++)
			{
				// if (this->tape_->at(i + this->low_) != other.tape_->at(i + other.low_))
				if (this->tape_.at(i + this->low_) != other.tape_.at(i + other.low_))
				// if (this->tape_[i + this->low_ ]!= other.tape_[i + other.low_])
				{
					return false;
				}
			}

			return true;
		}

		inline constexpr u64 cmp(const Tape<Config>& other) const
		{
			u64 max_len = std::max(this->size(), other.size());
			u64 min_len = std::min(this->size(), other.size());

			u64 diff = max_len - min_len;

			// PERF make bit_array cmp for different starts
			for (u64 i = 0; i < min_len; i++)
			{
				// if (this->tape_->at(i + this->low_) != other.tape_->at(i + other.low_))
				if (this->tape_.at(i + this->low_) != other.tape_.at(i + other.low_))
				// if (this->tape_[i + this->low_] != other.tape_[i + other.low_])
				{
					diff++;
				}
			}

			return diff;
		}

		inline constexpr TapeLenType low() const
		{
			return low_;
		}

		inline constexpr TapeLenType high() const
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

		u64 num_bytes() const override
		{
			// return sizeof(*this) + sizeof(*tape_);
			return sizeof(*this) + sizeof(tape_);
		}
	};
}
