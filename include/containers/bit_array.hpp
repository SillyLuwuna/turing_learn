#pragma once

#include "hashing/hasher.hpp"
#include <cstdint>
#include <cstring>
#include <string>
#include <vector>

namespace turing_learning::containers
{
	template <uint64_t NumBits>
	class BitArray
	{
	private:
		static constexpr uint64_t chunk_size_ = ((NumBits - 1) / 64) + 1;
		uint64_t bit_chunks_[chunk_size_];

		static inline constexpr uint64_t chunk(uint64_t idx)
		{
			return idx >> 6; // idx / 64
		}

		static inline constexpr uint64_t chunk_idx(uint64_t idx)
		{
			return idx & 63; // idx % 64
		}

	public:
		class BitRef
		{
		private:
			BitArray& origin_;
			uint64_t idx_;

		public:
			constexpr BitRef(BitArray& origin, uint64_t idx) :
				origin_(origin),
				idx_(idx)
			{ }

			inline constexpr operator bool() const
			{
				return origin_.get(idx_);
			}

			inline constexpr BitRef& operator=(const BitRef& other)
			{
				origin_.set(idx_, other);
				return *this;
			}

			inline constexpr BitRef& operator=(bool other)
			{
				origin_.set(idx_, other);
				return *this;
			}

			inline constexpr BitRef& operator=(BitRef&& other)
			{
				origin_.set(idx_, std::move(other));
				return *this;
			}
		};

		constexpr BitArray()
		{
			std::memset(bit_chunks_, 0, chunk_size_ * sizeof(uint64_t));
		}

		constexpr BitArray(const BitArray& other)
		{
			std::memcpy(bit_chunks_, other.bit_chunks_, chunk_size_ * sizeof(uint64_t));
		}

		constexpr BitArray& operator=(const BitArray& other)
		{
			std::memcpy(bit_chunks_, other.bit_chunks_, chunk_size_ * sizeof(uint64_t));
		}

		constexpr BitArray(BitArray&& other)
		{
			bit_chunks_ = other.bit_chunks_;
		}

		constexpr BitArray& operator=(BitArray&& other)
		{
			bit_chunks_ = other.bit_chunks_;
		}

		inline constexpr void increment(uint64_t chunk_start)
		{
			for (uint64_t i = chunk_start; i < chunk_size_; i++)
			{
				if (++bit_chunks_[i] != 0) break;
			}
		}

		inline constexpr BitArray& operator++(int)
		{
			increment(0);
			return *this;
		}

		inline constexpr bool get(uint64_t idx) const
		{
			return bit_chunks_[chunk(idx)] & (1ull << chunk_idx(idx));
		}

		inline constexpr BitRef operator[](uint64_t idx)
		{
			return BitRef(*this, idx);
		}

		inline constexpr void set(uint64_t idx, bool val)
		{
			if (val == true)
			{
				bit_chunks_[chunk(idx)] |= 1ull << chunk_idx(idx);
			}
			else
			{

				bit_chunks_[chunk(idx)] &= ~(1ull << chunk_idx(idx));
			}
		}

		inline constexpr void flip(uint64_t idx)
		{
			bit_chunks_[chunk(idx)] ^=  1ull << chunk_idx(idx);
		}

		template <uint64_t OtherNumBits>
		inline constexpr bool operator==(const BitArray<OtherNumBits>& other) const
		{
			if (NumBits != OtherNumBits) return false;
			return std::memcmp(bit_chunks_, other.bit_chunks_, chunk_size_ * sizeof(uint64_t));
		}

		inline constexpr uint64_t hash() const
		{
			uint64_t seed = 0;
			for (uint64_t i = 0; i < chunk_size_; i++)
			{
				Hasher::hash_combine(&seed, bit_chunks_[i]);
			}
			return seed;
		}

		inline constexpr uint64_t size() const
		{
			return NumBits;
		}

		constexpr std::string to_str() const
		{
			std::string str;
			str.reserve(NumBits);

			for (uint64_t i = NumBits - 1; i > 0; i--)
			{
				str += std::to_string(get(i));
			}
			str += std::to_string(get(0));

			return str;
		}

		constexpr BitArray& operator<<=(uint64_t shift)
		{
			uint64_t left_chunk = chunk(shift);
			uint64_t right_chunk = left_chunk + 1;
			uint64_t right_chunk_amount = chunk_idx(shift);
			uint64_t left_chunk_amount = 64 - right_chunk_amount;

			for (uint64_t i = chunk_size_ - 1; i != ~0ull; i--)
			{
				uint64_t shifted_chunk_left = left_chunk > i ? 0 : bit_chunks_[i - left_chunk] << right_chunk_amount;
				uint64_t shifted_chunk_right = right_chunk > i ? 0 : bit_chunks_[i - right_chunk] >> left_chunk_amount;
				bit_chunks_[i] = (shifted_chunk_left + shifted_chunk_right);
			}

			return *this;
		}

		constexpr BitArray& operator>>=(uint64_t shift)
		{
			uint64_t right_chunk = chunk(shift);
			uint64_t left_chunk = right_chunk + 1;
			uint64_t left_chunk_amount = chunk_idx(shift);
			uint64_t right_chunk_amount = 64 - left_chunk_amount;

			for (uint64_t i = 0; i < chunk_size_; i++)
			{
				uint64_t shifted_chunk_left = (i + left_chunk) >= chunk_size_ ? 0 : bit_chunks_[i + left_chunk] << right_chunk_amount;
				uint64_t shifted_chunk_right = (i + right_chunk) >= chunk_size_ ? 0 : bit_chunks_[i + right_chunk] >> left_chunk_amount;
				bit_chunks_[i] = (shifted_chunk_left + shifted_chunk_right);
			}

			return *this;
		}

		template <uint64_t OtherNumBits>
		constexpr BitArray& operator+=(const BitArray<OtherNumBits>& other)
		{
			uint64_t min_num_chunks = std::min(chunk_size_, other.chunk_size_);
			bool this_is_bigger = chunk_size_ > other.chunk_size_;

			uint64_t old_val;
			uint64_t new_val;
			uint64_t carry = 0;
			for(uint64_t i = 0; i < min_num_chunks; i++)
			{
				old_val = bit_chunks_[i];
				new_val = (bit_chunks_[i] += other.bit_chunks_[i] + carry);

				if (new_val < old_val)
				{
					carry = 1;
				}
				else
				{
					carry = 0;
				}
			}

			if (this_is_bigger)
			{
				increment(min_num_chunks);
			}

			return *this;
		}

		template <uint64_t OtherNumBits>
		constexpr BitArray& operator|=(const BitArray<OtherNumBits>& other)
		{
			uint64_t min_num_chunks = std::min(chunk_size_, other.chunk_size_);

			for(uint64_t i = 0; i < min_num_chunks; i++)
			{
				bit_chunks_[i] |= other.bit_chunks_[i];
			}

			return *this;
		}

		template <uint64_t OtherNumBits>
		constexpr BitArray& operator&=(const BitArray<OtherNumBits>& other)
		{
			uint64_t min_num_chunks = std::min(chunk_size_, other.chunk_size_);

			for(uint64_t i = 0; i < min_num_chunks; i++)
			{
				bit_chunks_[i] &= other.bit_chunks_[i];
			}

			return *this;
		}

		template <uint64_t OtherNumBits>
		constexpr BitArray& operator^=(const BitArray<OtherNumBits>& other)
		{
			uint64_t min_num_chunks = std::min(chunk_size_, other.chunk_size_);

			for(uint64_t i = 0; i < min_num_chunks; i++)
			{
				bit_chunks_[i] ^= other.bit_chunks_[i];
			}

			return *this;
		}

		constexpr BitArray& operator~()
		{
			for(uint64_t i = 0; i < chunk_size_; i++)
			{
				bit_chunks_[i] = ~bit_chunks_[i];
			}

			return *this;
		}

		// clearing is inefficient
		template <typename T, bool Clear>
		constexpr void to_bits(uint64_t start, const T& obj, uint64_t len_bits)
		{
			static_assert(std::is_trivially_copyable_v<T>, "type must be trivially copyable for set_bits()");
			uint64_t len_bytes = len_bits >> 3; // len_bits / 8
			uint64_t overflow_bits = len_bits & 7; // len_bits % 8
			uint8_t overflow_mask = 0xff >> (8 - overflow_bits);

			if constexpr (Clear)
			{
				BitArray<NumBits> mask;
				std::memset(mask.bit_chunks_, 0xff, len_bytes);

				uint8_t* mask_overflow_target = (uint8_t*)mask.bit_chunks_ + len_bytes;
				*mask_overflow_target |= overflow_mask;

				mask <<= start;
				*this &= ~mask;
			}

			BitArray<NumBits> obj_bits;
			std::memcpy(obj_bits.bit_chunks_, &obj, len_bytes);

			uint8_t copy_source = (*((uint8_t*)&obj + len_bytes)) & overflow_mask;
			uint8_t* copy_target = (uint8_t*)obj_bits.bit_chunks_ + len_bytes;
			*copy_target |= copy_source;

			obj_bits <<= start;
			*this |= obj_bits;
		}

		template <typename T, bool Clear>
		constexpr void to_bits(uint64_t start, const T& obj)
		{
			static_assert(std::is_trivially_copyable_v<T>, "type must be trivially copyable for set_bits()");

			if constexpr (Clear)
			{
				BitArray<NumBits> mask;
				std::memset(mask.bit_chunks_, 0xff, sizeof(T));
				mask <<= start;
				*this &= ~mask;
			}

			BitArray<NumBits> obj_bits;
			std::memcpy(obj_bits.bit_chunks_, &obj, sizeof(T));
			obj_bits <<= start;
			*this |= obj_bits;
		}

		template <typename T>
		T from_bits(uint64_t start, uint64_t len_bits)
		{
			static_assert(std::is_trivially_copyable_v<T>, "type must be trivially copyable for set_bits()");
			uint64_t len_bytes = len_bits >> 3; // len_bits / 8
			uint64_t overflow_bits = len_bits & 7; // len_bits % 8
			uint8_t overflow_mask = 0xff >> (8 - overflow_bits);

			BitArray<NumBits> mask;
			std::memset(mask.bit_chunks_, 0xff, len_bytes);

			uint8_t* mask_overflow_target = (uint8_t*)mask.bit_chunks_ + len_bytes;
			*mask_overflow_target |= overflow_mask;

			BitArray<NumBits> obj_bits = *this;
			obj_bits >>= start;
			obj_bits &= mask;

			return *reinterpret_cast<T*>(obj_bits.bit_chunks_);
		}

		template <typename T>
		T from_bits(uint64_t start)
		{
			static_assert(std::is_trivially_copyable_v<T>, "type must be trivially copyable for set_bits()");

			BitArray<NumBits> mask;
			std::memset(mask.bit_chunks_, 0xff, sizeof(T));

			BitArray<NumBits> obj_bits = *this;
			obj_bits >>= start;
			obj_bits &= mask;

			return *reinterpret_cast<T*>(obj_bits.bit_chunks_);
		}
	};

}

