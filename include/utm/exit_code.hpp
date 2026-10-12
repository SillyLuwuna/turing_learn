#pragma once

#include <string>
#include <fluff/types.hpp>

namespace turing_learning::utm
{
	using namespace fluff::types;

	enum ExitCode : u8
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
