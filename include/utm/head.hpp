#pragma once

#include <cstdint>

#include "utm/symbol.hpp"
#include "utm/tape.hpp"

namespace turing_learning::utm
{
	template <uint16_t TapeLen>
	class Head
	{
	private:
		Tape<TapeLen>& tape_;
		uint16_t pos_;

	public:
		inline constexpr Head(Tape<TapeLen>& tape, uint16_t pos) :
			tape_(tape),
			pos_(pos)
		{ }

		inline constexpr Head(Tape<TapeLen>& tape) :
			Head(tape, tape.low())
		{ }

		inline constexpr void move_left()
		{
			pos_--;
		}

		inline constexpr void move_right()
		{
			pos_++;
		}

		inline constexpr Symbol read() const
		{
			return tape_.read(pos_);
		}

		inline constexpr void write(Symbol symbol) const
		{
			tape_.write(pos_, symbol);
		}

		inline constexpr uint16_t pos() const
		{
			return pos_;
		}

		inline constexpr bool is_at_limit() const
		{
			return is_at_left_limit() || is_at_right_limit();
		}

		inline constexpr bool is_at_left_limit() const
		{
			return (pos_ == 0);
		}

		inline constexpr bool is_at_right_limit() const
		{
			return (pos_ == (TapeLen - 1));
		}

		std::string to_str() const
		{
			std::string str;

			str += "[";
			str += std::to_string(pos_);
			str += "] (";
			uint16_t symbol = read();
			if (symbol == 0)
			{
				str += "_";
			}
			else
			{
				str += std::to_string(symbol - 1);
			}
			str += ")";

			return str;
		}
	};
}
