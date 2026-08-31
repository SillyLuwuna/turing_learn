#pragma once

#include <cstdint>

#include "utm/symbol.hpp"
#include "utm/tape.hpp"

namespace turing_learning::utm
{
	template<typename Config>
	class Head
	{
	private:
		using Symbol = typename Config::Symbol;
		using TapeLenType = typename Config::TapeLenType;

		static constexpr TapeLenType tape_len = Config::tape_len;

		Tape<Config>& tape_;
		TapeLenType pos_;

	public:
		inline constexpr Head(Tape<Config>& tape, TapeLenType pos) :
			tape_(tape),
			pos_(pos)
		{ }

		inline constexpr Head(const Head<Config>& other) :
			tape_(other.tape_),
			pos_(other.pos_)
		{ }

		inline constexpr Head<Config>& operator=(const Head<Config>&& other)
		{
			tape_ = other.tape_;
			pos_ = other.pos_;

			return *this;
		}

		inline constexpr Head(Tape<Config>& tape) :
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

		inline constexpr TapeLenType pos() const
		{
			return pos_;
		}

		inline constexpr bool is_at_limit() const
		{
			return is_at_left_limit() || is_at_right_limit();
		}

		inline constexpr bool is_at_left_limit() const
		{
			return pos_ == 0;
		}

		inline constexpr bool is_at_right_limit() const
		{
			return pos_ == (tape_len - 1);
		}

		inline constexpr const Tape<Config>& tape() const
		{
			return tape_;
		}

		std::string to_str() const
		{
			std::string str;

			str += "[";
			str += std::to_string(pos_);
			str += "] (";
			Symbol symbol = read();
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
