#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

extern void batch_matmul_4x64x64(
    void *a_alloc, void *a_aligned, int64_t a_offset, int64_t a_size0,
    int64_t a_size1, int64_t a_size2, int64_t a_stride0, int64_t a_stride1,
    int64_t a_stride2,
    void *b_alloc, void *b_aligned, int64_t b_offset, int64_t b_size0,
    int64_t b_size1, int64_t b_size2, int64_t b_stride0, int64_t b_stride1,
    int64_t b_stride2,
    void *c_alloc, void *c_aligned, int64_t c_offset, int64_t c_size0,
    int64_t c_size1, int64_t c_size2, int64_t c_stride0, int64_t c_stride1,
    int64_t c_stride2);

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

volatile int32_t batch_sink;

int main(void) {
  const int64_t B = 4;
  const int64_t M = 64;
  const int64_t N = 64;
  const int64_t K = 64;

  const int64_t a_elems = B * M * K;
  const int64_t b_elems = B * K * N;
  const int64_t c_elems = B * M * N;

  int8_t *A = (int8_t *)malloc((size_t)a_elems);
  int8_t *Bv = (int8_t *)malloc((size_t)b_elems);
  int8_t *C = (int8_t *)malloc((size_t)c_elems);
  if (!A || !Bv || !C) return 2;

  for (int64_t i = 0; i < a_elems; ++i) A[i] = (int8_t)(i & 0x7F);
  for (int64_t i = 0; i < b_elems; ++i) Bv[i] = (int8_t)((i * 3) & 0x7F);
  for (int64_t i = 0; i < c_elems; ++i) C[i] = 0;

  const uint64_t c0 = rdcycle();
  const uint64_t i0 = rdinstret();
  batch_matmul_4x64x64(
      A, A, 0, B, M, K, M * K, K, 1,
      Bv, Bv, 0, B, K, N, K * N, N, 1,
      C, C, 0, B, M, N, M * N, N, 1);
  const uint64_t c1 = rdcycle();
  const uint64_t i1 = rdinstret();

  int32_t acc = 0;
  for (int64_t i = 0; i < c_elems; ++i) acc ^= (int32_t)C[i];
  batch_sink = acc;

  printf("batch_matmul_4x64x64: cycles=%" PRIu64 " instret=%" PRIu64 " sink=%d\n",
         (uint64_t)(c1 - c0), (uint64_t)(i1 - i0), (int)batch_sink);

  free(A);
  free(Bv);
  free(C);
  return 0;
}
