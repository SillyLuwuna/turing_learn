#pragma once

#include "utm/symbol.hpp"
#include "hashing/hasher.hpp"
#include <cstdint>

namespace turing_learning::utm
{
	template<typename Config>
	struct TapeState
	{
		using State = typename Config::State;
		using Symbol = typename Config::Symbol;
		using NumHeadsType = typename Config::NumHeadsType;

		static constexpr NumHeadsType num_heads = Config::num_heads;

		State state;
		Symbol head_reads[num_heads]; // doesn't use NumHeads

		inline constexpr uint64_t hash() const
		{
			uint64_t seed = 0;
			Hasher::hash_combine(seed, state);
			for (NumHeadsType i = 0; i < num_heads; i++)
			{
				Hasher::hash_combine(seed, head_reads[i]);
			}
			return seed;
		}

		std::string to_str() const
		{
			std::string str;

			str += std::to_string(state);
			str += ": [";

			for (int i = 0; i < num_heads; i++)
			{
				str += SymbolBuilder<Config>::to_str(head_reads[i]);
			}

			str += "]";

			return str;
		}
	};
}
