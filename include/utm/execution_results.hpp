#pragma once

#include "utm/exit_code.hpp"
#include "utm/memory.hpp"
#include <cstdint>

namespace turing_learning::utm
{
	template<typename Config>
	struct ExecutionResults
	{
		uint64_t cycles_elapsed;
		uint64_t size_bytes;
		ExitCode exit_code;
		Memory<Config> memory;
	};
}
