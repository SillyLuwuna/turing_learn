#pragma once

#include "utm/symbol.hpp"
#include "hashing/hasher.hpp"
#include <cstdint>
#include <cstring>
#include <iostream>

namespace turing_learning::utm
{
	template<typename Config>
	struct TapeState
	{
	private:
		mutable uint64_t hash_cache_ = ~0ull;

	public:

		using State = typename Config::State;
		using Symbol = typename Config::Symbol;
		using NumHeadsType = typename Config::NumHeadsType;

		static constexpr NumHeadsType num_heads = Config::num_heads;

		State state;
		Symbol head_reads[num_heads];

		inline constexpr uint64_t hash() const
		{
			if (hash_cache_ == ~0ull)
			{
				Hasher::hash_combine(hash_cache_, state);
				for (NumHeadsType i = 0; i < num_heads; i++)
				{
					Hasher::hash_combine(hash_cache_, head_reads[i]);
				}
			}
			return hash_cache_;
		}

		inline constexpr bool operator==(const TapeState<Config>& rhs) const
		{
			if (state != rhs.state) return false;

			for (NumHeadsType i = 0; i < num_heads; i++)
			{
				if (head_reads[i] != rhs.head_reads[i]) return false;
			}

			return true;
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
