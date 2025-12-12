#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

extern void conv_2x2x5x5_f32(
    void *in_alloc, void *in_aligned, int64_t in_offset, int64_t in_size0,
    int64_t in_size1, int64_t in_size2, int64_t in_size3, int64_t in_stride0,
    int64_t in_stride1, int64_t in_stride2, int64_t in_stride3,
    void *w_alloc, void *w_aligned, int64_t w_offset, int64_t w_size0,
    int64_t w_size1, int64_t w_size2, int64_t w_size3, int64_t w_stride0,
    int64_t w_stride1, int64_t w_stride2, int64_t w_stride3,
    void *out_alloc, void *out_aligned, int64_t out_offset, int64_t out_size0,
    int64_t out_size1, int64_t out_size2, int64_t out_size3, int64_t out_stride0,
    int64_t out_stride1, int64_t out_stride2, int64_t out_stride3);

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

volatile uint32_t conv_sink;

int main(void) {
  const int64_t N = 2;
  const int64_t C = 2;
  const int64_t H = 5;
  const int64_t W = 5;

  const int64_t O = 2;
  const int64_t KH = 3;
  const int64_t KW = 3;

  const int64_t OH = 3;
  const int64_t OW = 3;

  const int64_t in_elems = N * C * H * W;
  const int64_t w_elems = O * C * KH * KW;
  const int64_t out_elems = N * O * OH * OW;

  float *input = (float *)malloc((size_t)in_elems * sizeof(float));
  float *weight = (float *)malloc((size_t)w_elems * sizeof(float));
  float *output = (float *)malloc((size_t)out_elems * sizeof(float));
  if (!input || !weight || !output) return 2;

  for (int64_t i = 0; i < in_elems; ++i) input[i] = (float)((i % 5) - 2);
  for (int64_t i = 0; i < w_elems; ++i) weight[i] = (float)((i % 7) - 3);
  for (int64_t i = 0; i < out_elems; ++i) output[i] = 0.0f;

  const uint64_t c0 = rdcycle();
  const uint64_t i0 = rdinstret();
  conv_2x2x5x5_f32(
      input, input, 0, N, C, H, W, C * H * W, H * W, W, 1,
      weight, weight, 0, O, C, KH, KW, C * KH * KW, KH * KW, KW, 1,
      output, output, 0, N, O, OH, OW, O * OH * OW, OH * OW, OW, 1);
  const uint64_t c1 = rdcycle();
  const uint64_t i1 = rdinstret();

  uint32_t acc = 0;
  const uint32_t *out_u32 = (const uint32_t *)output;
  for (int64_t i = 0; i < out_elems; ++i) acc ^= out_u32[i];
  conv_sink = acc;

  printf("conv_2x2x5x5_f32: cycles=%" PRIu64 " instret=%" PRIu64 " sink=0x%08" PRIx32 "\n",
         (uint64_t)(c1 - c0), (uint64_t)(i1 - i0), conv_sink);

  free(input);
  free(weight);
  free(output);
  return 0;
}
