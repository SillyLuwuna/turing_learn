#pragma once

#include <fluff/hashing.hpp>
#include "utm/symbol.hpp"
#include <cstring>

namespace turing_learning::utm
{
	using namespace fluff::types;

	template<typename Config>
	struct __attribute__((packed)) TapeStateCore
	{
		using State = typename Config::State;
		using Symbol = typename Config::Symbol;
		using NumHeadsType = typename Config::NumHeadsType;

		static constexpr NumHeadsType num_heads = Config::num_heads;
		State state;
		Symbol head_reads[num_heads];
	};
	

	template<typename Config>
	struct TapeState
	{
	private:
		mutable u64 hash_cache_ = ~0ull;

	public:

		using State = typename Config::State;
		using Symbol = typename Config::Symbol;
		using NumHeadsType = typename Config::NumHeadsType;

		static constexpr NumHeadsType num_heads = Config::num_heads;

		// TODO change name "core" or code architecture, ugly code
		TapeStateCore<Config> core;

		inline constexpr u64 hash() const
		{
			const constexpr u64 bytes = sizeof(core.state) + sizeof(core.head_reads);

			// PERF could be further optimized for combinations with different bytes
			if constexpr (bytes == 2)
			{
				return *(u16*)&core;
			}
			else if constexpr (bytes == 4)
			{
				return *(u32*)&core;
			}
			else if constexpr (bytes == 8)
			{
				return *(u64*)&core;
			}

			if (hash_cache_ == ~0ull)
			{
				hash_cache_ = core.state;
				// PERF could combine multiple head_reads in a smarter approach, by combining several with a cast to a byte multiple
				// i.e. 4 * u8 = 1 * u32
				for (NumHeadsType i = 0; i < num_heads; i++)
				{
					fluff::hashing::hash_combine(hash_cache_, core.head_reads[i]);
				}
			}
			return hash_cache_;
		}

		inline constexpr bool operator==(const TapeState<Config>& rhs) const
		{
			// can't because padding makes the struct weird
			const constexpr u64 bytes = sizeof(core.state) + sizeof(core.head_reads);
			return std::memcmp(&core, &rhs.core, bytes) == 0;

			// if (state != rhs.state) return false;
			// return std::memcmp(head_reads, rhs.head_reads, num_heads * sizeof(Symbol)) == 0;
		}

		std::string to_str() const
		{
			std::string str;

			str += std::to_string(core.state);
			str += ": [";

			for (NumHeadsType i = 0; i < num_heads; i++)
			{
				str += SymbolBuilder<Config>::to_str(core.head_reads[i]);
			}

			str += "]";

			return str;
		}
	};
}
