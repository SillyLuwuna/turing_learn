#pragma once

#include <cstdint>

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

		inline constexpr uint8_t read()
		{
			return tape_.read(pos_);
		}

		inline constexpr void write(uint8_t symbol)
		{
			tape_.write(pos_, symbol);
		}

		inline constexpr uint16_t pos()
		{
			return pos_;
		}

		inline constexpr bool is_at_limit()
		{
			return is_at_left_limit() || is_at_right_limit();
		}

		inline constexpr bool is_at_left_limit()
		{
			return (pos_ == 0);
		}

		inline constexpr bool is_at_right_limit()
		{
			return (pos_ == (TapeLen - 1));
		}
	};
}
