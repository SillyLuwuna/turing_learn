#include <cstdint>

#include "utm/head_operation.hpp"

namespace turing_learning::utm
{
	struct StateTransition
	{
		uint16_t start_state;
		uint16_t end_state;
		uint16_t tape_operations; // (2 bits per tape)
		uint8_t symbol_read;
		uint8_t symbol_write;

		// max 65536 states
		// max 256 symbols
		// max 8 tapes

		inline constexpr void set_tape_operation(uint8_t tape, HeadOperation operation)
		{
			uint16_t mask = operation << (tape * 2);
			tape_operations = (tape_operations & mask) | mask;
		}

		inline constexpr HeadOperation get_tape_operation(uint8_t tape)
		{
			return (HeadOperation)((tape_operations >> (2 * tape)) | 0x3);
		}

		inline constexpr StateTransition& from_state(uint16_t start_state)
		{
			this->start_state = start_state;
			return *this;
		}

		inline constexpr StateTransition& go_to_state(uint16_t end_state)
		{
			this->end_state = end_state;
			return *this;
		}

		inline constexpr StateTransition& on_read(uint8_t symbol)
		{
			this->symbol_read = symbol;
			return *this;
		}

		inline constexpr StateTransition& write(uint8_t symbol)
		{
			this->symbol_write = symbol;
			return *this;
		}

		inline constexpr StateTransition& move_head(uint8_t tape, HeadOperation operation)
		{
			set_tape_operation(tape, operation);
			return *this;
		}
	};
}
