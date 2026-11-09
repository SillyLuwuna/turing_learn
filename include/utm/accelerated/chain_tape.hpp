#pragma once

#include <fluff/containers.hpp>
#include <fluff/benchmark.hpp>
#include "utm/symbol.hpp"
#include <vector>

namespace turing_learning::utm
{
	using namespace fluff::types;

	template <typename Config>
	struct RepeatedSymbol
	{
		using TapeLenType = typename Config::TapeLenType;
		using Symbol = typename Config::Symbol;

		u32 count; // FIXME might not fit into 32 bits
		Symbol symbol; // FIXME this will mess up alignment for the struct
	};

	template<typename Config>
	class ChainTape : fluff::benchmark::ByteMeasurable
	{
	private:
		using TapeLenType = typename Config::TapeLenType;
		using Symbol = typename Config::Symbol;

		static constexpr TapeLenType tape_len = Config::tape_len;
		static constexpr u64 symbol_bits = Config::symbol_bits;
		static constexpr bool align_tape = Config::align_tape;

		// PERF for heap allocation, there has to be a memory pool that distributes the contiguous bits
		// else, each malloc becomes extremely expensive

		// using contiguous_bits_type = std::conditional_t<
		// 	align_tape,
		// 	fluff::ContiguousArray<RepeatedSymbol, RepeatedSymbol, sizeof(RepeatedSymbol) * 8, tape_len>,
		// 	fluff::ContiguousArray<RepeatedSymbol, u8, symbol_bits + count_bits, tape_len>
		// >;
		// contiguous_bits_type tape_; // TODO with generic struct-like ContiguousArray but with parameters for each type like a struct.
										// this way each struct has contiguous bits

		using contiguous_bits_type = std::conditional_t<
			align_tape,
			fluff::ContiguousArray<Symbol, Symbol, sizeof(Symbol) * 8, tape_len>,
			fluff::ContiguousArray<Symbol, u8, symbol_bits, tape_len>
		>;
		contiguous_bits_type tape_; // FIXME remove me

		RepeatedSymbol<Config> left_[tape_len];
		RepeatedSymbol<Config> right_[tape_len];
		u64 left_count_;
		u64 right_count_;

		TapeLenType low_;
		TapeLenType high_;

		inline constexpr void init_tape()
		{
		}

		// inline constexpr void update_low(TapeLenType idx)
		// {
		// 	if (idx < low_) low_ = idx;
		// }
		//
		// inline constexpr void update_high(TapeLenType idx)
		// {
		// 	if (idx > high_) high_ = idx;
		// }
		//
		// inline constexpr bool shrink_to_fit(TapeLenType low, TapeLenType high, Symbol symbol)
		// {
		// 	if (symbol != 0)
		// 	{
		// 		return false;
		// 	}
		//
		// 	if ((low <= low_) && (high >= high_))
		// 	{
		// 		high_ = 0;
		// 		low_ = 1;
		//
		// 		return true;
		// 	}
		//
		// 	if ((low <= low_) && (high >= low_))
		// 	{
		// 		low_ = high + 1; // goes one above the max index
		// 	}
		// 	else if ((high >= high_) && (low <= high_))
		// 	{
		// 		high_ = low - 1;
		// 	}
		//
		// 	return true;
		// }
		//
		// inline constexpr void update_bounds(TapeLenType low, TapeLenType high, Symbol symbol)
		// {
		// 	if (shrink_to_fit(low, high, symbol)) return;
		// 	// if (symbol == 0) return;
		//
		// 	update_low(low);
		// 	update_high(high);
		// }

	public:
		inline constexpr ChainTape(TapeLenType start)
		{
			init_tape();
			low_ = start + 1;
			high_ = start;
			// FIXME not done for ChainTape
		}

		constexpr ChainTape(const ChainTape& other)
		{
			low_ = other.low_;
			high_ = other.high_;

			init_tape();
			memcpy(left_, other.left_, tape_len * sizeof(RepeatedSymbol<Config>));
			memcpy(right_, other.right_, tape_len * sizeof(RepeatedSymbol<Config>));
			left_count_ = other.left_count_;
			right_count_ = other.right_count_;
		}

		inline constexpr ChainTape& operator=(const ChainTape& other)
		{
			low_ = other.low_;
			high_ = other.high_;

			init_tape();
			memcpy(left_, other.left_, tape_len * sizeof(RepeatedSymbol<Config>));
			memcpy(right_, other.right_, tape_len * sizeof(RepeatedSymbol<Config>));
			left_count_ = other.left_count_;
			right_count_ = other.right_count_;

			return *this;
		}

		inline constexpr ChainTape(const std::vector<Symbol>& initial_symbols) : ChainTape()
		{
			constexpr u64 half_idx = tape_len / 2;
			u64 half_len = initial_symbols.size() / 2;

			low_ = half_idx - half_len;
			high_ = low_ + initial_symbols.size() - 1;

			u64 symbol_idx = 0;
			for (u64 i = low_; i <= high_; i++)
			{
				tape_.emplace_at(i, initial_symbols[symbol_idx++]);
			}
		}

		inline constexpr u64 size() const
		{
			return high_ - low_ + 1;
		}

		inline constexpr Symbol read(TapeLenType idx) const
		{
			return tape_.at(idx);
		}

		inline constexpr void write(TapeLenType idx, Symbol symbol)
		{
			// PERF add flag for bounds check

			update_bounds(idx, idx, symbol);

			tape_.rewrite_at(idx, symbol);
		}

		inline constexpr void write(TapeLenType idx, Symbol symbol, TapeLenType len)
		{
			update_bounds(idx, idx + len, symbol);
			for (TapeLenType i = 0; i < len; i++)
			{
				tape_.rewrite_at(idx, symbol);
			}
		}

		inline constexpr Symbol operator[](TapeLenType idx)
		{
			return tape_.at(idx);
		}

		inline constexpr bool is_equivalent(const ChainTape<Config>& other) const
		{
			if (this->size() != other.size()) return false;

			// PERF make bit_array cmp for different starts
			for (u64 i = 0; i < this->size(); i++)
			{
				if (this->tape_.at(i + this->low_) != other.tape_.at(i + other.low_))
				{
					return false;
				}
			}

			return true;
		}

		inline constexpr u64 cmp(const ChainTape<Config>& other) const
		{
			u64 max_len = std::max(this->size(), other.size());
			u64 min_len = std::min(this->size(), other.size());

			u64 diff = max_len - min_len;

			// PERF make bit_array cmp for different starts
			for (u64 i = 0; i < min_len; i++)
			{
				if (this->tape_.at(i + this->low_) != other.tape_.at(i + other.low_))
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
			return sizeof(*this) + sizeof(tape_);
		}
	};
}
