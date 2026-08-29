#pragma once

#include <cstdint>
#include <string>

namespace turing_learning::utm
{
	enum ExitCode : uint8_t
	{
		None,
		Finished,
		MemoryCorrupted,
		UnknownTransition,
		MaxIterationsReached
	};

	struct ExitCodeBuilder
	{
		static inline constexpr std::string to_str(ExitCode code)
		{
			switch (code)
			{
				case ExitCode::None:
					return "None";
					break;
				case ExitCode::Finished:
					return "Finished";
					break;
				case ExitCode::MemoryCorrupted:
					return "MemoryCorrupted";
					break;
				case ExitCode::UnknownTransition:
					return "UnknownTransition";
					break;
				case ExitCode::MaxIterationsReached:
					return "MaxIterationsReached";
					break;
				default:
					return "Unknown";
					break;
			}
		}
	};
}
