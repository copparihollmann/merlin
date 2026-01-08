#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

extern void matmul_128x256x256_i8_i32(
    void *a_alloc, void *a_aligned, int64_t a_offset, int64_t a_size0,
    int64_t a_size1, int64_t a_stride0, int64_t a_stride1,
    void *b_alloc, void *b_aligned, int64_t b_offset, int64_t b_size0,
    int64_t b_size1, int64_t b_stride0, int64_t b_stride1,
    void *c_alloc, void *c_aligned, int64_t c_offset, int64_t c_size0,
    int64_t c_size1, int64_t c_stride0, int64_t c_stride1);

static inline uint64_t rdcycle(void) {
  uint64_t x;
  __asm__ volatile("rdcycle %0" : "=r"(x));
  return x;
}

static inline uint64_t rdinstret(void) {
  uint64_t x;
  __asm__ volatile("rdinstret %0" : "=r"(x));
  return x;
}

volatile uint32_t matmul_norm_sink;

int main(void) {
  const int64_t I = 128;
  const int64_t J = 256;
  const int64_t K = 256;

  const int64_t a_elems = I * K;
  const int64_t b_elems = K * J;
  const int64_t c_elems = I * J;

  int8_t *A = (int8_t *)malloc((size_t)a_elems);
  int8_t *B = (int8_t *)malloc((size_t)b_elems);
  int32_t *C = (int32_t *)malloc((size_t)c_elems * sizeof(int32_t));
  if (!A || !B || !C) return 2;

    const uint64_t init_c0 = rdcycle();
    const uint64_t init_i0 = rdinstret();
    for (int64_t i = 0; i < a_elems; ++i) A[i] = (int8_t)((i * 13) & 0x7F);
    for (int64_t i = 0; i < b_elems; ++i) B[i] = (int8_t)((i * 7) & 0x7F);
    for (int64_t i = 0; i < c_elems; ++i) C[i] = 0;
    const uint64_t init_c1 = rdcycle();
    const uint64_t init_i1 = rdinstret();

    const uint64_t mm_c0 = rdcycle();
    const uint64_t mm_i0 = rdinstret();
  matmul_128x256x256_i8_i32(
      A, A, 0, I, K, K, 1,
      B, B, 0, K, J, J, 1,
      C, C, 0, I, J, J, 1);
    const uint64_t mm_c1 = rdcycle();
    const uint64_t mm_i1 = rdinstret();

    const uint64_t chk_c0 = rdcycle();
    const uint64_t chk_i0 = rdinstret();
  uint32_t acc = 0;
  for (int64_t i = 0; i < c_elems; ++i) acc ^= (uint32_t)C[i];
  matmul_norm_sink = acc;
    const uint64_t chk_c1 = rdcycle();
    const uint64_t chk_i1 = rdinstret();

    printf(
      "matmul_128x256x256_i8_i32: init(cyc=%" PRIu64 " ins=%" PRIu64 ") "
      "matmul(cyc=%" PRIu64 " ins=%" PRIu64 ") "
      "check(cyc=%" PRIu64 " ins=%" PRIu64 ") sink=0x%08" PRIx32 "\n",
      (uint64_t)(init_c1 - init_c0), (uint64_t)(init_i1 - init_i0),
      (uint64_t)(mm_c1 - mm_c0), (uint64_t)(mm_i1 - mm_i0),
      (uint64_t)(chk_c1 - chk_c0), (uint64_t)(chk_i1 - chk_i0),
      matmul_norm_sink);

  free(A);
  free(B);
  free(C);
  return 0;
}
