#pragma once

#include "utm/program.hpp"

namespace turing_learning::utm::synthesis
{
	template<typename Config>
	class NeighbourGenerator
	{
	private:
		const Program<Config>& origin_;
		// TODO make a memory pool to not allocate memory on every next() call

	public:
		inline constexpr NeighbourGenerator(const Program<Config>& program) :
			origin_(program)
		{ }

		inline constexpr Program<Config> next()
		{
			Program<Config> neighbour = origin_;
			// make it so somehow it's known what nodes already exist in a program and such without recalculating
			// make the constructor receive the hyperparameters such as maximum number of states (already in Config?)
			// optimize the UTM so that it skips repeating states
			// optimize the UTM so that it detects loops before the maximum iteration count is reached (worth the performance decrease?)
			// TODO
		}

		inline constexpr static Program<Config> start()
		{
			// TODO
		}
	};
}
