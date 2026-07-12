#include <cstdint>

#include "utm/tape.hpp"

namespace turing_learning::utm
{
	class Head
	{
	private:
		Tape& tape_;
		uint16_t pos_;

	public:
		inline constexpr Head(Tape& tape, uint16_t pos) :
			tape_(tape),
			pos_(pos) { }

		inline constexpr void left()
		{
			pos_--;
		}

		inline constexpr void right()
		{
			pos_++;
		}

		inline constexpr uint16_t read()
		{
			return tape_.read(pos_);
		}

		inline constexpr void write(uint16_t symbol)
		{
			tape_.write(pos_, symbol);
		}
	};
}
