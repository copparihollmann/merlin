#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

extern void matmul(
    void *a_alloc, void *a_aligned, int64_t a_offset, int64_t a_size0,
    int64_t a_size1, int64_t a_stride0, int64_t a_stride1,
    void *b_alloc, void *b_aligned, int64_t b_offset, int64_t b_size0,
    int64_t b_size1, int64_t b_stride0, int64_t b_stride1,
    void *c_alloc, void *c_aligned, int64_t c_offset, int64_t c_size0,
    int64_t c_size1, int64_t c_stride0, int64_t c_stride1);

volatile int32_t matmul_sink;

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

int main(void) {
  const int64_t n = 64;
  const int64_t elems = n * n;

  int32_t *A = (int32_t *)malloc((size_t)elems * sizeof(int32_t));
  int32_t *B = (int32_t *)malloc((size_t)elems * sizeof(int32_t));
  int32_t *C = (int32_t *)malloc((size_t)elems * sizeof(int32_t));
  if (!A || !B || !C) return 2;

  for (int64_t i = 0; i < elems; ++i) {
    A[i] = (int32_t)(i & 0xFF);
    B[i] = (int32_t)((i * 3) & 0xFF);
    C[i] = 0;
  }

  const uint64_t c0 = rdcycle();
  const uint64_t i0 = rdinstret();

  matmul(
      A, A, 0, n, n, n, 1,
      B, B, 0, n, n, n, 1,
      C, C, 0, n, n, n, 1);

  const uint64_t c1 = rdcycle();
  const uint64_t i1 = rdinstret();

  int32_t acc = 0;
  for (int64_t i = 0; i < elems; ++i) acc ^= C[i];
  matmul_sink = acc;

    printf("matmul: cycles=%" PRIu64 " instret=%" PRIu64 " sink=%d\n",
      (uint64_t)(c1 - c0), (uint64_t)(i1 - i0), (int)matmul_sink);

  free(A);
  free(B);
  free(C);
  return 0;
}
