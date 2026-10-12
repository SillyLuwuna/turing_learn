#pragma once

#include "utm/exit_code.hpp"
#include "utm/memory.hpp"

namespace turing_learning::utm
{
	using namespace fluff::types;

	template<typename Config>
	struct ExecutionResults
	{
		u64 cycles_elapsed;
		u64 size_bytes;
		ExitCode exit_code;
		Memory<Config> memory;
	};
}
