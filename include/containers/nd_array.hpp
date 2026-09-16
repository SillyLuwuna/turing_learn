#pragma once

#include <cstdint>
#include <utility>

namespace turing_learning::containers
{
	template <typename T, uint64_t N, uint64_t Dim>
	struct NDArrayImpl
	{
		using type = typename NDArrayImpl<T, N, Dim - 1>::type[N];
	};

	template <typename T, uint64_t N>
	struct NDArrayImpl<T, N, 1>
	{
		using type = T[N];
	};

	template <typename T, uint64_t N, uint64_t Dim>
	using NDArray = typename NDArrayImpl<T, N, Dim>::type;

	template <typename Array>
	decltype(auto) nd_idx(Array&& arr)
	{
		return std::forward<Array>(arr);
	}

	template <typename Array, typename First, typename... Rest>
	decltype(auto) nd_idx(Array&& arr, First first, Rest... rest)
	{
		return nd_idx(arr[first], rest...);
	}

	template <std::size_t I = 0, typename Array, std::size_t N>
	decltype(auto) ndIndexRest(Array&& arr, const std::array<std::size_t, N>& idx)
	{
		if constexpr (I == N)
		{
			return std::forward<Array>(arr);
		}
		else
		{
			return ndIndexRest<I + 1>(arr[idx[I]], idx);
		}
	}

	template <typename Array, std::size_t N>
	decltype(auto) ndIndex(Array&& arr, std::size_t arbitrary_num, const std::array<std::size_t, N>& a)
	{
		return ndIndexRest(arr[arbitrary_num], a);
	}
}
