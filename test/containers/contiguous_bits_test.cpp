#include "doctest.h"
#include "containers/contiguous_bits.hpp"

using turing_learning::containers::ContiguousBits;

TEST_CASE("should contain aligned items")
{
	const uint64_t amount = 64;
	std::srand(137);
	std::vector<uint16_t> saved_bits(amount);
	ContiguousBits<uint16_t, uint16_t, 16, amount> bits;

	for (uint64_t i = 0; i < amount; i++)
	{
		uint16_t random_value = std::rand();

		bits.rewrite_at(random_value, i);
		saved_bits[i] = random_value;
	}

	for (uint64_t i = 0; i < amount; i++)
	{
		CHECK(bits[i] == saved_bits[i]);
	}
}

TEST_CASE("should contain shorter misaligned items")
{
	const uint64_t amount = 64;
	std::srand(137);
	std::vector<uint8_t> saved_bits(amount);
	ContiguousBits<uint8_t, uint8_t, 5, amount> bits;

	for (uint64_t i = 0; i < amount; i++)
	{
		uint8_t random_value = std::rand();

		bits.rewrite_at(random_value, i);
		saved_bits[i] = random_value;
	}

	for (uint64_t i = 0; i < amount; i++)
	{
		CHECK(bits[i] == saved_bits[i]);
	}
}

TEST_CASE("should contain longer misaligned items")
{
	const uint64_t amount = 64;
	std::srand(137);
	std::vector<uint32_t> saved_bits(amount);
	ContiguousBits<uint32_t, uint8_t, 23, amount> bits;

	for (uint64_t i = 0; i < amount; i++)
	{
		uint32_t random_value = std::rand();

		bits.rewrite_at(random_value, i);
		saved_bits[i] = random_value;
	}

	for (uint64_t i = 0; i < amount; i++)
	{
		CHECK(bits[i] == saved_bits[i]);
	}
}
