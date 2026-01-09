; ModuleID = 'fastdepth_linked'
source_filename = "fastdepth_linked"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%iree_hal_executable_library_header_t = type { i32, ptr, i32, i32 }
%iree_hal_executable_dispatch_attrs_v0_t = type { i64, i16, i8, i8, i32, i32, i16, i16, i64, i64, i64, i64, i64 }
%iree_hal_executable_source_location_v0_t = type { i32, i32, ptr }
%iree_hal_executable_stage_location_table_v0_t = type { i32, ptr, ptr }
%iree_hal_executable_library_v0_t = type { ptr, %iree_hal_executable_import_table_v0_t, %iree_hal_executable_export_table_v0_t, %iree_hal_executable_constant_table_v0_t, %iree_hal_executable_source_file_table_v0_t }
%iree_hal_executable_import_table_v0_t = type { i32, ptr }
%iree_hal_executable_export_table_v0_t = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%iree_hal_executable_constant_table_v0_t = type { i32 }
%iree_hal_executable_source_file_table_v0_t = type { i32, ptr }
%iree_hal_executable_dispatch_state_v0_t = type { i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr }
%iree_hal_executable_workgroup_state_v0_t = type { i32, i32, i16, i16, i32, ptr, i32 }

@__constant_32xf32 = private constant [32 x float] [float 0xBFC32CA860000000, float 0xBFC353BC00000000, float 0x3FB3916980000000, float 0xBFC135FDC0000000, float 0xBFBE48F860000000, float 0x3FADF3AF00000000, float 0x3FC0624A60000000, float 0xBFA30202C0000000, float 0xBFB5F69AC0000000, float 0x3FAC527B60000000, float 0xBFB0FF1720000000, float 0xBFB22716E0000000, float 0x3FBE75FE00000000, float 0x3FC11D0700000000, float 0xBFB8F69600000000, float 0x3FC0DE65A0000000, float 0xBFB4A68320000000, float 0x3FC5AD2B20000000, float 0x3FB27EC620000000, float 0xBFC212E980000000, float 0x3FB5DA9380000000, float 0xBF64E788C0000000, float 0x3F9E4DE940000000, float 0x3F9D050240000000, float 0xBFAFADC460000000, float 0x3F687F08A0000000, float 0x3FC073DCC0000000, float 0xBFB22F9F60000000, float 0xBFC171E120000000, float 0xBFBD165600000000, float 0x3FACA0CD40000000, float 0xBFB3DC9CC0000000], align 64
@0 = private constant [17 x i8] c"fastdepth_linked\00", align 1
@iree_hal_executable_library_query_v0_header = private constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = private constant [38 x ptr] [ptr @"main_graph$async_dispatch_0_slow_memcpy", ptr @"main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32", ptr @"main_graph$async_dispatch_2_conv_112x112x32x3x3_f32", ptr @"main_graph$async_dispatch_3_matmul_like_64x12544x32_f32", ptr @"main_graph$async_dispatch_4_slow_memcpy", ptr @"main_graph$async_dispatch_5_conv_56x56x64x3x3_f32", ptr @"main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32", ptr @"main_graph$async_dispatch_7_conv_56x56x128x3x3_f32", ptr @"main_graph$async_dispatch_8_matmul_like_128x3136x128_f32", ptr @"main_graph$async_dispatch_9_slow_memcpy", ptr @"main_graph$async_dispatch_10_conv_28x28x128x3x3_f32", ptr @"main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32", ptr @"main_graph$async_dispatch_12_conv_28x28x256x3x3_f32", ptr @"main_graph$async_dispatch_13_matmul_like_256x784x256_f32", ptr @"main_graph$async_dispatch_14_slow_memcpy", ptr @"main_graph$async_dispatch_15_conv_14x14x256x3x3_f32", ptr @"main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32", ptr @"main_graph$async_dispatch_17_conv_14x14x512x3x3_f32", ptr @"main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32", ptr @"main_graph$async_dispatch_27_conv_7x7x512x3x3_f32", ptr @"main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32", ptr @"main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32", ptr @"main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32", ptr @"main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32", ptr @"main_graph$async_dispatch_32_matmul_like_512x49x1024_f32", ptr @"main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32", ptr @"main_graph$async_dispatch_34_conv_14x14x512x5x5_f32", ptr @"main_graph$async_dispatch_35_matmul_like_256x196x512_f32", ptr @"main_graph$async_dispatch_36_elementwise_256x28x28_f32", ptr @"main_graph$async_dispatch_37_conv_28x28x256x5x5_f32", ptr @"main_graph$async_dispatch_38_matmul_like_128x784x256_f32", ptr @"main_graph$async_dispatch_39_elementwise_128x56x56_f32", ptr @"main_graph$async_dispatch_40_conv_56x56x128x5x5_f32", ptr @"main_graph$async_dispatch_41_matmul_like_64x3136x128_f32", ptr @"main_graph$async_dispatch_42_elementwise_64x112x112_f32", ptr @"main_graph$async_dispatch_43_conv_112x112x64x5x5_f32", ptr @"main_graph$async_dispatch_44_matmul_like_32x12544x64_f32", ptr @"main_graph$async_dispatch_45_matvec_like_50176x32_f32"]
@iree_hal_executable_library_query_v0_attrs = private constant [38 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [40 x i8] c"main_graph$async_dispatch_0_slow_memcpy\00", align 1
@2 = private constant [54 x i8] c"main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32\00", align 1
@3 = private constant [52 x i8] c"main_graph$async_dispatch_2_conv_112x112x32x3x3_f32\00", align 1
@4 = private constant [56 x i8] c"main_graph$async_dispatch_3_matmul_like_64x12544x32_f32\00", align 1
@5 = private constant [40 x i8] c"main_graph$async_dispatch_4_slow_memcpy\00", align 1
@6 = private constant [50 x i8] c"main_graph$async_dispatch_5_conv_56x56x64x3x3_f32\00", align 1
@7 = private constant [57 x i8] c"main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32\00", align 1
@8 = private constant [51 x i8] c"main_graph$async_dispatch_7_conv_56x56x128x3x3_f32\00", align 1
@9 = private constant [57 x i8] c"main_graph$async_dispatch_8_matmul_like_128x3136x128_f32\00", align 1
@10 = private constant [40 x i8] c"main_graph$async_dispatch_9_slow_memcpy\00", align 1
@11 = private constant [52 x i8] c"main_graph$async_dispatch_10_conv_28x28x128x3x3_f32\00", align 1
@12 = private constant [59 x i8] c"main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32\00", align 1
@13 = private constant [52 x i8] c"main_graph$async_dispatch_12_conv_28x28x256x3x3_f32\00", align 1
@14 = private constant [57 x i8] c"main_graph$async_dispatch_13_matmul_like_256x784x256_f32\00", align 1
@15 = private constant [41 x i8] c"main_graph$async_dispatch_14_slow_memcpy\00", align 1
@16 = private constant [52 x i8] c"main_graph$async_dispatch_15_conv_14x14x256x3x3_f32\00", align 1
@17 = private constant [59 x i8] c"main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32\00", align 1
@18 = private constant [52 x i8] c"main_graph$async_dispatch_17_conv_14x14x512x3x3_f32\00", align 1
@19 = private constant [59 x i8] c"main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32\00", align 1
@20 = private constant [50 x i8] c"main_graph$async_dispatch_27_conv_7x7x512x3x3_f32\00", align 1
@21 = private constant [58 x i8] c"main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32\00", align 1
@22 = private constant [51 x i8] c"main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32\00", align 1
@23 = private constant [59 x i8] c"main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32\00", align 1
@24 = private constant [51 x i8] c"main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32\00", align 1
@25 = private constant [57 x i8] c"main_graph$async_dispatch_32_matmul_like_512x49x1024_f32\00", align 1
@26 = private constant [65 x i8] c"main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32\00", align 1
@27 = private constant [52 x i8] c"main_graph$async_dispatch_34_conv_14x14x512x5x5_f32\00", align 1
@28 = private constant [57 x i8] c"main_graph$async_dispatch_35_matmul_like_256x196x512_f32\00", align 1
@29 = private constant [55 x i8] c"main_graph$async_dispatch_36_elementwise_256x28x28_f32\00", align 1
@30 = private constant [52 x i8] c"main_graph$async_dispatch_37_conv_28x28x256x5x5_f32\00", align 1
@31 = private constant [57 x i8] c"main_graph$async_dispatch_38_matmul_like_128x784x256_f32\00", align 1
@32 = private constant [55 x i8] c"main_graph$async_dispatch_39_elementwise_128x56x56_f32\00", align 1
@33 = private constant [52 x i8] c"main_graph$async_dispatch_40_conv_56x56x128x5x5_f32\00", align 1
@34 = private constant [57 x i8] c"main_graph$async_dispatch_41_matmul_like_64x3136x128_f32\00", align 1
@35 = private constant [56 x i8] c"main_graph$async_dispatch_42_elementwise_64x112x112_f32\00", align 1
@36 = private constant [53 x i8] c"main_graph$async_dispatch_43_conv_112x112x64x5x5_f32\00", align 1
@37 = private constant [57 x i8] c"main_graph$async_dispatch_44_matmul_like_32x12544x64_f32\00", align 1
@38 = private constant [54 x i8] c"main_graph$async_dispatch_45_matvec_like_50176x32_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [38 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4, ptr @5, ptr @6, ptr @7, ptr @8, ptr @9, ptr @10, ptr @11, ptr @12, ptr @13, ptr @14, ptr @15, ptr @16, ptr @17, ptr @18, ptr @19, ptr @20, ptr @21, ptr @22, ptr @23, ptr @24, ptr @25, ptr @26, ptr @27, ptr @28, ptr @29, ptr @30, ptr @31, ptr @32, ptr @33, ptr @34, ptr @35, ptr @36, ptr @37, ptr @38]
@39 = private constant [142 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_0.mlir\00", align 1
@40 = private constant [142 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_1.mlir\00", align 1
@41 = private constant [142 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_2.mlir\00", align 1
@42 = private constant [142 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_3.mlir\00", align 1
@43 = private constant [142 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_4.mlir\00", align 1
@44 = private constant [142 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_5.mlir\00", align 1
@45 = private constant [142 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_6.mlir\00", align 1
@46 = private constant [142 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_7.mlir\00", align 1
@47 = private constant [142 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_8.mlir\00", align 1
@48 = private constant [142 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_9.mlir\00", align 1
@49 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_10.mlir\00", align 1
@50 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_11.mlir\00", align 1
@51 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_12.mlir\00", align 1
@52 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_13.mlir\00", align 1
@53 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_14.mlir\00", align 1
@54 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_15.mlir\00", align 1
@55 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_16.mlir\00", align 1
@56 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_17.mlir\00", align 1
@57 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_18.mlir\00", align 1
@58 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_27.mlir\00", align 1
@59 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_28.mlir\00", align 1
@60 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_29.mlir\00", align 1
@61 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_30.mlir\00", align 1
@62 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_31.mlir\00", align 1
@63 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_32.mlir\00", align 1
@64 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_33.mlir\00", align 1
@65 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_34.mlir\00", align 1
@66 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_35.mlir\00", align 1
@67 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_36.mlir\00", align 1
@68 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_37.mlir\00", align 1
@69 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_38.mlir\00", align 1
@70 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_39.mlir\00", align 1
@71 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_40.mlir\00", align 1
@72 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_41.mlir\00", align 1
@73 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_42.mlir\00", align 1
@74 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_43.mlir\00", align 1
@75 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_44.mlir\00", align 1
@76 = private constant [143 x i8] c"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_45.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [38 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 141, ptr @39 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 141, ptr @40 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 141, ptr @41 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 141, ptr @42 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 141, ptr @43 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 141, ptr @44 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 141, ptr @45 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 141, ptr @46 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 141, ptr @47 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 141, ptr @48 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @49 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @50 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @51 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @52 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @53 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @54 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @55 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @56 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @57 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @58 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @59 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @60 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @61 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @62 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @63 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @64 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @65 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @66 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @67 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @68 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @69 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @70 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @71 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @72 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @73 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @74 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @75 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 142, ptr @76 }]
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [38 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_source_locations" }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 38, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

define internal i32 @"main_graph$async_dispatch_0_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !77 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !153
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !153
  %6 = load ptr, ptr %5, align 8, !dbg !153
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !154
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !155
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !155
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !155
  %10 = load ptr, ptr %9, align 8, !dbg !155
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !156
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !157
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !157
  %13 = zext i32 %12 to i64, !dbg !157
  %14 = sdiv i64 %13, 4, !dbg !157
  %15 = mul i64 %14, 4, !dbg !157
  %16 = icmp ne i64 %13, %15, !dbg !157
  %17 = icmp slt i64 %13, 0, !dbg !157
  %18 = and i1 %16, %17, !dbg !157
  %19 = add i64 %14, -1, !dbg !157
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !157
  %21 = srem i64 %13, 4, !dbg !157
  %22 = icmp slt i64 %21, 0, !dbg !157
  %23 = add nsw i64 %21, 4, !dbg !157
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !157
  %25 = mul nsw i64 %20, 56, !dbg !157
  %26 = mul nsw i64 %24, 56, !dbg !157
  br label %27, !dbg !157

27:                                               ; preds = %55, %3
  %28 = phi i64 [ %56, %55 ], [ 0, %3 ], !dbg !157
  %29 = icmp slt i64 %28, 3, !dbg !157
  br i1 %29, label %30, label %57, !dbg !157

30:                                               ; preds = %53, %27
  %31 = phi i64 [ %54, %53 ], [ 0, %27 ], !dbg !157
  %32 = icmp slt i64 %31, 56, !dbg !157
  br i1 %32, label %33, label %55, !dbg !157

33:                                               ; preds = %36, %30
  %34 = phi i64 [ %52, %36 ], [ 0, %30 ], !dbg !157
  %35 = icmp slt i64 %34, 56, !dbg !157
  br i1 %35, label %36, label %53, !dbg !157

36:                                               ; preds = %33
  %37 = add i64 %25, %31, !dbg !157
  %38 = add i64 %26, %34, !dbg !157
  %39 = mul i64 %28, 50176, !dbg !157
  %40 = mul i64 %37, 224, !dbg !157
  %41 = add i64 %39, %40, !dbg !157
  %42 = add i64 %41, %38, !dbg !157
  %43 = getelementptr float, ptr %6, i64 %42, !dbg !157
  %44 = load <8 x float>, ptr %43, align 4, !dbg !157
  %45 = add i64 %37, 1, !dbg !157
  %46 = add i64 %38, 1, !dbg !157
  %47 = mul i64 %28, 51076, !dbg !157
  %48 = mul i64 %45, 226, !dbg !157
  %49 = add i64 %47, %48, !dbg !157
  %50 = add i64 %49, %46, !dbg !157
  %51 = getelementptr float, ptr %10, i64 %50, !dbg !157
  store <8 x float> %44, ptr %51, align 4, !dbg !157
  %52 = add i64 %34, 8, !dbg !157
  br label %33, !dbg !157

53:                                               ; preds = %33
  %54 = add i64 %31, 1, !dbg !157
  br label %30, !dbg !157

55:                                               ; preds = %30
  %56 = add i64 %28, 1, !dbg !157
  br label %27, !dbg !157

57:                                               ; preds = %27
  ret i32 0, !dbg !158
}

define internal i32 @"main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !159 {
  %4 = alloca float, i64 8, align 64, !dbg !160
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !161
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !161
  %7 = load ptr, ptr %6, align 8, !dbg !161
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !161
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !162
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !162
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !162
  %11 = load ptr, ptr %10, align 8, !dbg !162
  %12 = getelementptr float, ptr %11, i64 3932192, !dbg !162
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !162
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !163
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !163
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !163
  %16 = load ptr, ptr %15, align 8, !dbg !163
  %17 = getelementptr float, ptr %16, i64 153232, !dbg !163
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !163
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !164
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !164
  %20 = zext i32 %19 to i64, !dbg !164
  %21 = sdiv i64 %20, 4, !dbg !164
  %22 = mul i64 %21, 4, !dbg !164
  %23 = icmp ne i64 %20, %22, !dbg !164
  %24 = icmp slt i64 %20, 0, !dbg !164
  %25 = and i1 %23, %24, !dbg !164
  %26 = add i64 %21, -1, !dbg !164
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !164
  %28 = srem i64 %20, 4, !dbg !164
  %29 = icmp slt i64 %28, 0, !dbg !164
  %30 = add nsw i64 %28, 4, !dbg !164
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !164
  %32 = mul nsw i64 %27, 28, !dbg !164
  %33 = mul nsw i64 %31, 28, !dbg !164
  br label %34, !dbg !164

34:                                               ; preds = %124, %3
  %35 = phi i64 [ %125, %124 ], [ 0, %3 ], !dbg !164
  %36 = icmp slt i64 %35, 32, !dbg !164
  br i1 %36, label %37, label %126, !dbg !164

37:                                               ; preds = %122, %34
  %38 = phi i64 [ %123, %122 ], [ 0, %34 ], !dbg !164
  %39 = icmp slt i64 %38, 28, !dbg !164
  br i1 %39, label %40, label %124, !dbg !164

40:                                               ; preds = %120, %37
  %41 = phi i64 [ %121, %120 ], [ 0, %37 ], !dbg !164
  %42 = icmp slt i64 %41, 28, !dbg !164
  br i1 %42, label %43, label %122, !dbg !164

43:                                               ; preds = %40
  %44 = sub i64 28, %41, !dbg !164
  %45 = icmp slt i64 %44, 8, !dbg !164
  %46 = select i1 %45, i64 %44, i64 8, !dbg !164
  %47 = trunc i64 %46 to i32, !dbg !165
  %48 = insertelement <8 x i32> poison, i32 %47, i32 0, !dbg !165
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !165
  %50 = icmp sgt <8 x i32> %49, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !165
  %51 = getelementptr float, ptr %4, i64 0, !dbg !165
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %51, i32 4, <8 x i1> %50), !dbg !165
  %52 = mul nsw i64 %41, 2, !dbg !164
  %53 = mul nsw i64 %31, 56, !dbg !164
  %54 = add i64 %52, %53, !dbg !164
  br label %55, !dbg !164

55:                                               ; preds = %100, %43
  %56 = phi i64 [ %101, %100 ], [ 0, %43 ], !dbg !164
  %57 = icmp slt i64 %56, 3, !dbg !164
  br i1 %57, label %58, label %102, !dbg !164

58:                                               ; preds = %98, %55
  %59 = phi i64 [ %99, %98 ], [ 0, %55 ], !dbg !164
  %60 = icmp slt i64 %59, 3, !dbg !164
  br i1 %60, label %61, label %100, !dbg !164

61:                                               ; preds = %58
  %62 = mul nsw i64 %38, 2, !dbg !164
  %63 = mul nsw i64 %27, 56, !dbg !164
  %64 = add i64 %62, %63, !dbg !164
  %65 = add i64 %64, %59, !dbg !164
  br label %66, !dbg !164

66:                                               ; preds = %96, %61
  %67 = phi i64 [ %97, %96 ], [ 0, %61 ], !dbg !164
  %68 = icmp slt i64 %67, %46, !dbg !164
  br i1 %68, label %69, label %98, !dbg !164

69:                                               ; preds = %72, %66
  %70 = phi i64 [ %95, %72 ], [ 0, %66 ], !dbg !164
  %71 = icmp slt i64 %70, 3, !dbg !164
  br i1 %71, label %72, label %96, !dbg !164

72:                                               ; preds = %69
  %73 = mul nsw i64 %67, 2, !dbg !164
  %74 = add i64 %54, %73, !dbg !164
  %75 = add i64 %74, %70, !dbg !164
  %76 = mul nuw nsw i64 %56, 51076, !dbg !164
  %77 = mul nuw nsw i64 %65, 226, !dbg !164
  %78 = add nuw nsw i64 %76, %77, !dbg !164
  %79 = add nuw nsw i64 %78, %75, !dbg !164
  %80 = getelementptr inbounds nuw float, ptr %7, i64 %79, !dbg !164
  %81 = load float, ptr %80, align 4, !dbg !164
  %82 = mul nuw nsw i64 %35, 27, !dbg !164
  %83 = mul nuw nsw i64 %56, 9, !dbg !164
  %84 = add nuw nsw i64 %82, %83, !dbg !164
  %85 = mul nuw nsw i64 %59, 3, !dbg !164
  %86 = add nuw nsw i64 %84, %85, !dbg !164
  %87 = add nuw nsw i64 %86, %70, !dbg !164
  %88 = getelementptr inbounds nuw float, ptr %12, i64 %87, !dbg !164
  %89 = load float, ptr %88, align 4, !dbg !164
  %90 = add nuw nsw i64 0, %67, !dbg !164
  %91 = getelementptr inbounds nuw float, ptr %4, i64 %90, !dbg !164
  %92 = load float, ptr %91, align 4, !dbg !164
  %93 = fmul contract float %81, %89, !dbg !166
  %94 = fadd contract float %92, %93, !dbg !167
  store float %94, ptr %91, align 4, !dbg !164
  %95 = add i64 %70, 1, !dbg !164
  br label %69, !dbg !164

96:                                               ; preds = %69
  %97 = add i64 %67, 1, !dbg !164
  br label %66, !dbg !164

98:                                               ; preds = %66
  %99 = add i64 %59, 1, !dbg !164
  br label %58, !dbg !164

100:                                              ; preds = %58
  %101 = add i64 %56, 1, !dbg !164
  br label %55, !dbg !164

102:                                              ; preds = %55
  %103 = icmp sgt i64 %46, 0, !dbg !168
  br i1 %103, label %104, label %120, !dbg !168

104:                                              ; preds = %102
  %105 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %51, i32 4, <8 x i1> %50, <8 x float> poison), !dbg !168
  %106 = fadd contract <8 x float> %105, zeroinitializer, !dbg !169
  %107 = fcmp ult <8 x float> %106, zeroinitializer, !dbg !170
  %108 = select <8 x i1> %107, <8 x float> zeroinitializer, <8 x float> %106, !dbg !171
  %109 = fcmp ugt <8 x float> %108, splat (float 6.000000e+00), !dbg !172
  %110 = select <8 x i1> %109, <8 x float> splat (float 6.000000e+00), <8 x float> %108, !dbg !173
  %111 = add i64 %32, %38, !dbg !173
  %112 = add i64 %111, 1, !dbg !173
  %113 = add i64 %33, %41, !dbg !173
  %114 = add i64 %113, 1, !dbg !173
  %115 = mul i64 %35, 12996, !dbg !173
  %116 = mul i64 %112, 114, !dbg !173
  %117 = add i64 %115, %116, !dbg !173
  %118 = add i64 %117, %114, !dbg !173
  %119 = getelementptr float, ptr %17, i64 %118, !dbg !173
  call void @llvm.masked.store.v8f32.p0(<8 x float> %110, ptr %119, i32 4, <8 x i1> %50), !dbg !173
  br label %120, !dbg !168

120:                                              ; preds = %104, %102
  %121 = add i64 %41, 8, !dbg !164
  br label %40, !dbg !164

122:                                              ; preds = %40
  %123 = add i64 %38, 1, !dbg !164
  br label %37, !dbg !164

124:                                              ; preds = %37
  %125 = add i64 %35, 1, !dbg !164
  br label %34, !dbg !164

126:                                              ; preds = %34
  ret i32 0, !dbg !174
}

define internal i32 @"main_graph$async_dispatch_2_conv_112x112x32x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !175 {
  %4 = alloca float, i64 8, align 64, !dbg !176
  %5 = alloca float, i64 8, align 64, !dbg !176
  %6 = alloca float, i64 8, align 64, !dbg !177
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !178
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !178
  %9 = load ptr, ptr %8, align 8, !dbg !178
  %10 = getelementptr float, ptr %9, i64 153232, !dbg !178
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !178
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !179
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !179
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !179
  %14 = load ptr, ptr %13, align 8, !dbg !179
  %15 = getelementptr float, ptr %14, i64 3931904, !dbg !179
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !179
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !180
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !180
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !180
  %19 = load ptr, ptr %18, align 8, !dbg !180
  %20 = getelementptr float, ptr %19, i64 569104, !dbg !180
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !180
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !176
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !176
  %23 = zext i32 %22 to i64, !dbg !176
  %24 = sdiv i64 %23, 4, !dbg !176
  %25 = mul i64 %24, 4, !dbg !176
  %26 = icmp ne i64 %23, %25, !dbg !176
  %27 = icmp slt i64 %23, 0, !dbg !176
  %28 = and i1 %26, %27, !dbg !176
  %29 = add i64 %24, -1, !dbg !176
  %30 = select i1 %28, i64 %29, i64 %24, !dbg !176
  %31 = srem i64 %23, 4, !dbg !176
  %32 = icmp slt i64 %31, 0, !dbg !176
  %33 = add nsw i64 %31, 4, !dbg !176
  %34 = select i1 %32, i64 %33, i64 %31, !dbg !176
  %35 = mul nsw i64 %30, 28, !dbg !176
  %36 = mul nsw i64 %34, 28, !dbg !176
  br label %37, !dbg !176

37:                                               ; preds = %145, %3
  %38 = phi i64 [ %146, %145 ], [ 0, %3 ], !dbg !176
  %39 = icmp slt i64 %38, 28, !dbg !176
  br i1 %39, label %40, label %147, !dbg !176

40:                                               ; preds = %143, %37
  %41 = phi i64 [ %144, %143 ], [ 0, %37 ], !dbg !176
  %42 = icmp slt i64 %41, 28, !dbg !176
  br i1 %42, label %43, label %145, !dbg !176

43:                                               ; preds = %40
  %44 = sub i64 28, %41, !dbg !176
  %45 = icmp slt i64 %44, 8, !dbg !176
  %46 = select i1 %45, i64 %44, i64 8, !dbg !176
  %47 = trunc i64 %46 to i32, !dbg !181
  %48 = insertelement <8 x i32> poison, i32 %47, i32 0, !dbg !181
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !181
  %50 = icmp sgt <8 x i32> %49, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !181
  %51 = getelementptr float, ptr %6, i64 0, !dbg !181
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %51, i32 4, <8 x i1> %50), !dbg !181
  %52 = add i64 %41, %36, !dbg !176
  br label %53, !dbg !176

53:                                               ; preds = %141, %43
  %54 = phi i64 [ %142, %141 ], [ 0, %43 ], !dbg !176
  %55 = icmp slt i64 %54, 32, !dbg !176
  br i1 %55, label %56, label %143, !dbg !176

56:                                               ; preds = %59, %53
  %57 = phi i64 [ %64, %59 ], [ 0, %53 ], !dbg !176
  %58 = icmp slt i64 %57, %46, !dbg !176
  br i1 %58, label %59, label %65, !dbg !176

59:                                               ; preds = %56
  %60 = add nuw nsw i64 0, %57, !dbg !176
  %61 = getelementptr inbounds nuw float, ptr %6, i64 %60, !dbg !176
  %62 = load float, ptr %61, align 4, !dbg !176
  %63 = getelementptr inbounds nuw float, ptr %5, i64 %60, !dbg !176
  store float %62, ptr %63, align 4, !dbg !176
  %64 = add i64 %57, 1, !dbg !176
  br label %56, !dbg !176

65:                                               ; preds = %100, %56
  %66 = phi i64 [ %101, %100 ], [ 0, %56 ], !dbg !176
  %67 = icmp slt i64 %66, 3, !dbg !176
  br i1 %67, label %68, label %102, !dbg !176

68:                                               ; preds = %65
  %69 = add i64 %66, %38, !dbg !176
  %70 = add i64 %69, %35, !dbg !176
  br label %71, !dbg !176

71:                                               ; preds = %98, %68
  %72 = phi i64 [ %99, %98 ], [ 0, %68 ], !dbg !176
  %73 = icmp slt i64 %72, %46, !dbg !176
  br i1 %73, label %74, label %100, !dbg !176

74:                                               ; preds = %77, %71
  %75 = phi i64 [ %97, %77 ], [ 0, %71 ], !dbg !176
  %76 = icmp slt i64 %75, 3, !dbg !176
  br i1 %76, label %77, label %98, !dbg !176

77:                                               ; preds = %74
  %78 = add i64 %52, %72, !dbg !176
  %79 = add i64 %78, %75, !dbg !176
  %80 = mul nuw nsw i64 %54, 12996, !dbg !176
  %81 = mul nuw nsw i64 %70, 114, !dbg !176
  %82 = add nuw nsw i64 %80, %81, !dbg !176
  %83 = add nuw nsw i64 %82, %79, !dbg !176
  %84 = getelementptr inbounds nuw float, ptr %10, i64 %83, !dbg !176
  %85 = load float, ptr %84, align 4, !dbg !176
  %86 = mul nuw nsw i64 %54, 9, !dbg !176
  %87 = mul nuw nsw i64 %66, 3, !dbg !176
  %88 = add nuw nsw i64 %86, %87, !dbg !176
  %89 = add nuw nsw i64 %88, %75, !dbg !176
  %90 = getelementptr inbounds nuw float, ptr %15, i64 %89, !dbg !176
  %91 = load float, ptr %90, align 4, !dbg !176
  %92 = add nuw nsw i64 0, %72, !dbg !176
  %93 = getelementptr inbounds nuw float, ptr %5, i64 %92, !dbg !176
  %94 = load float, ptr %93, align 4, !dbg !176
  %95 = fmul contract float %85, %91, !dbg !182
  %96 = fadd contract float %94, %95, !dbg !183
  store float %96, ptr %93, align 4, !dbg !176
  %97 = add i64 %75, 1, !dbg !176
  br label %74, !dbg !176

98:                                               ; preds = %74
  %99 = add i64 %72, 1, !dbg !176
  br label %71, !dbg !176

100:                                              ; preds = %71
  %101 = add i64 %66, 1, !dbg !176
  br label %65, !dbg !176

102:                                              ; preds = %105, %65
  %103 = phi i64 [ %110, %105 ], [ 0, %65 ], !dbg !176
  %104 = icmp slt i64 %103, %46, !dbg !176
  br i1 %104, label %105, label %111, !dbg !176

105:                                              ; preds = %102
  %106 = add nuw nsw i64 0, %103, !dbg !176
  %107 = getelementptr inbounds nuw float, ptr %6, i64 %106, !dbg !176
  %108 = load float, ptr %107, align 4, !dbg !176
  %109 = getelementptr inbounds nuw float, ptr %4, i64 %106, !dbg !176
  store float %108, ptr %109, align 4, !dbg !176
  %110 = add i64 %103, 1, !dbg !176
  br label %102, !dbg !176

111:                                              ; preds = %114, %102
  %112 = phi i64 [ %119, %114 ], [ 0, %102 ], !dbg !176
  %113 = icmp slt i64 %112, %46, !dbg !176
  br i1 %113, label %114, label %120, !dbg !176

114:                                              ; preds = %111
  %115 = add nuw nsw i64 0, %112, !dbg !176
  %116 = getelementptr inbounds nuw float, ptr %5, i64 %115, !dbg !176
  %117 = load float, ptr %116, align 4, !dbg !176
  %118 = getelementptr inbounds nuw float, ptr %4, i64 %115, !dbg !176
  store float %117, ptr %118, align 4, !dbg !176
  %119 = add i64 %112, 1, !dbg !176
  br label %111, !dbg !176

120:                                              ; preds = %123, %111
  %121 = phi i64 [ %140, %123 ], [ 0, %111 ], !dbg !184
  %122 = icmp slt i64 %121, %46, !dbg !184
  br i1 %122, label %123, label %141, !dbg !184

123:                                              ; preds = %120
  %124 = add i64 0, %121, !dbg !184
  %125 = getelementptr float, ptr %4, i64 %124, !dbg !184
  %126 = load <1 x float>, ptr %125, align 4, !dbg !184
  %127 = fadd contract <1 x float> %126, zeroinitializer, !dbg !185
  %128 = fcmp ult <1 x float> %127, zeroinitializer, !dbg !186
  %129 = select <1 x i1> %128, <1 x float> zeroinitializer, <1 x float> %127, !dbg !187
  %130 = fcmp ugt <1 x float> %129, splat (float 6.000000e+00), !dbg !188
  %131 = select <1 x i1> %130, <1 x float> splat (float 6.000000e+00), <1 x float> %129, !dbg !189
  %132 = extractelement <1 x float> %131, i64 0, !dbg !184
  %133 = add i64 %35, %38, !dbg !184
  %134 = add i64 %52, %121, !dbg !184
  %135 = mul nuw nsw i64 %54, 12544, !dbg !184
  %136 = mul nuw nsw i64 %133, 112, !dbg !184
  %137 = add nuw nsw i64 %135, %136, !dbg !184
  %138 = add nuw nsw i64 %137, %134, !dbg !184
  %139 = getelementptr inbounds nuw float, ptr %20, i64 %138, !dbg !184
  store float %132, ptr %139, align 4, !dbg !184
  %140 = add i64 %121, 1, !dbg !184
  br label %120, !dbg !184

141:                                              ; preds = %120
  %142 = add i64 %54, 1, !dbg !176
  br label %53, !dbg !176

143:                                              ; preds = %53
  %144 = add i64 %41, 8, !dbg !176
  br label %40, !dbg !176

145:                                              ; preds = %40
  %146 = add i64 %38, 1, !dbg !176
  br label %37, !dbg !176

147:                                              ; preds = %37
  ret i32 0, !dbg !190
}

define internal i32 @"main_graph$async_dispatch_3_matmul_like_64x12544x32_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !191 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !192
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !192
  %6 = load ptr, ptr %5, align 8, !dbg !192
  %7 = getelementptr float, ptr %6, i64 569104, !dbg !192
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !192
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !193
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !193
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !193
  %11 = load ptr, ptr %10, align 8, !dbg !193
  %12 = getelementptr float, ptr %11, i64 3835904, !dbg !193
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !193
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !194
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !194
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !194
  %16 = load ptr, ptr %15, align 8, !dbg !194
  %17 = getelementptr float, ptr %16, i64 970512, !dbg !194
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !194
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !195
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !195
  %20 = zext i32 %19 to i64, !dbg !195
  %21 = mul nsw i64 %20, 64, !dbg !195
  br label %22, !dbg !195

22:                                               ; preds = %127, %3
  %23 = phi i64 [ %128, %127 ], [ 0, %3 ], !dbg !195
  %24 = icmp slt i64 %23, 64, !dbg !195
  br i1 %24, label %25, label %129, !dbg !195

25:                                               ; preds = %116, %22
  %26 = phi i64 [ %126, %116 ], [ 0, %22 ], !dbg !195
  %27 = icmp slt i64 %26, 64, !dbg !195
  br i1 %27, label %28, label %127, !dbg !195

28:                                               ; preds = %25
  %29 = add i64 %26, %21, !dbg !195
  br label %30, !dbg !195

30:                                               ; preds = %34, %28
  %31 = phi i64 [ %115, %34 ], [ 0, %28 ], !dbg !195
  %32 = phi <1 x float> [ %114, %34 ], [ zeroinitializer, %28 ], !dbg !195
  %33 = icmp slt i64 %31, 32, !dbg !195
  br i1 %33, label %34, label %116, !dbg !195

34:                                               ; preds = %30
  %35 = mul i64 %31, 12544, !dbg !195
  %36 = add i64 %35, %29, !dbg !195
  %37 = getelementptr float, ptr %7, i64 %36, !dbg !195
  %38 = load <1 x float>, ptr %37, align 4, !dbg !195
  %39 = add i64 %31, 1, !dbg !195
  %40 = mul i64 %39, 12544, !dbg !195
  %41 = add i64 %40, %29, !dbg !195
  %42 = getelementptr float, ptr %7, i64 %41, !dbg !195
  %43 = load <1 x float>, ptr %42, align 4, !dbg !195
  %44 = add i64 %31, 2, !dbg !195
  %45 = mul i64 %44, 12544, !dbg !195
  %46 = add i64 %45, %29, !dbg !195
  %47 = getelementptr float, ptr %7, i64 %46, !dbg !195
  %48 = load <1 x float>, ptr %47, align 4, !dbg !195
  %49 = add i64 %31, 3, !dbg !195
  %50 = mul i64 %49, 12544, !dbg !195
  %51 = add i64 %50, %29, !dbg !195
  %52 = getelementptr float, ptr %7, i64 %51, !dbg !195
  %53 = load <1 x float>, ptr %52, align 4, !dbg !195
  %54 = add i64 %31, 4, !dbg !195
  %55 = mul i64 %54, 12544, !dbg !195
  %56 = add i64 %55, %29, !dbg !195
  %57 = getelementptr float, ptr %7, i64 %56, !dbg !195
  %58 = load <1 x float>, ptr %57, align 4, !dbg !195
  %59 = add i64 %31, 5, !dbg !195
  %60 = mul i64 %59, 12544, !dbg !195
  %61 = add i64 %60, %29, !dbg !195
  %62 = getelementptr float, ptr %7, i64 %61, !dbg !195
  %63 = load <1 x float>, ptr %62, align 4, !dbg !195
  %64 = add i64 %31, 6, !dbg !195
  %65 = mul i64 %64, 12544, !dbg !195
  %66 = add i64 %65, %29, !dbg !195
  %67 = getelementptr float, ptr %7, i64 %66, !dbg !195
  %68 = load <1 x float>, ptr %67, align 4, !dbg !195
  %69 = add i64 %31, 7, !dbg !195
  %70 = mul i64 %69, 12544, !dbg !195
  %71 = add i64 %70, %29, !dbg !195
  %72 = getelementptr float, ptr %7, i64 %71, !dbg !195
  %73 = load <1 x float>, ptr %72, align 4, !dbg !195
  %74 = mul nuw nsw i64 %23, 32, !dbg !196
  %75 = add nuw nsw i64 %74, %31, !dbg !196
  %76 = getelementptr inbounds nuw float, ptr %12, i64 %75, !dbg !196
  %77 = load float, ptr %76, align 4, !dbg !196
  %78 = insertelement <1 x float> poison, float %77, i32 0, !dbg !196
  %79 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %38, <1 x float> %78, <1 x float> %32), !dbg !196
  %80 = add nuw nsw i64 %74, %39, !dbg !196
  %81 = getelementptr inbounds nuw float, ptr %12, i64 %80, !dbg !196
  %82 = load float, ptr %81, align 4, !dbg !196
  %83 = insertelement <1 x float> poison, float %82, i32 0, !dbg !196
  %84 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %43, <1 x float> %83, <1 x float> %79), !dbg !196
  %85 = add nuw nsw i64 %74, %44, !dbg !196
  %86 = getelementptr inbounds nuw float, ptr %12, i64 %85, !dbg !196
  %87 = load float, ptr %86, align 4, !dbg !196
  %88 = insertelement <1 x float> poison, float %87, i32 0, !dbg !196
  %89 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %48, <1 x float> %88, <1 x float> %84), !dbg !196
  %90 = add nuw nsw i64 %74, %49, !dbg !196
  %91 = getelementptr inbounds nuw float, ptr %12, i64 %90, !dbg !196
  %92 = load float, ptr %91, align 4, !dbg !196
  %93 = insertelement <1 x float> poison, float %92, i32 0, !dbg !196
  %94 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %53, <1 x float> %93, <1 x float> %89), !dbg !196
  %95 = add nuw nsw i64 %74, %54, !dbg !196
  %96 = getelementptr inbounds nuw float, ptr %12, i64 %95, !dbg !196
  %97 = load float, ptr %96, align 4, !dbg !196
  %98 = insertelement <1 x float> poison, float %97, i32 0, !dbg !196
  %99 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %58, <1 x float> %98, <1 x float> %94), !dbg !196
  %100 = add nuw nsw i64 %74, %59, !dbg !196
  %101 = getelementptr inbounds nuw float, ptr %12, i64 %100, !dbg !196
  %102 = load float, ptr %101, align 4, !dbg !196
  %103 = insertelement <1 x float> poison, float %102, i32 0, !dbg !196
  %104 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %63, <1 x float> %103, <1 x float> %99), !dbg !196
  %105 = add nuw nsw i64 %74, %64, !dbg !196
  %106 = getelementptr inbounds nuw float, ptr %12, i64 %105, !dbg !196
  %107 = load float, ptr %106, align 4, !dbg !196
  %108 = insertelement <1 x float> poison, float %107, i32 0, !dbg !196
  %109 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %68, <1 x float> %108, <1 x float> %104), !dbg !196
  %110 = add nuw nsw i64 %74, %69, !dbg !196
  %111 = getelementptr inbounds nuw float, ptr %12, i64 %110, !dbg !196
  %112 = load float, ptr %111, align 4, !dbg !196
  %113 = insertelement <1 x float> poison, float %112, i32 0, !dbg !196
  %114 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %113, <1 x float> %109), !dbg !196
  %115 = add i64 %31, 8, !dbg !195
  br label %30, !dbg !195

116:                                              ; preds = %30
  %117 = fadd contract <1 x float> %32, zeroinitializer, !dbg !197
  %118 = fcmp ult <1 x float> %117, zeroinitializer, !dbg !198
  %119 = select <1 x i1> %118, <1 x float> zeroinitializer, <1 x float> %117, !dbg !199
  %120 = fcmp ugt <1 x float> %119, splat (float 6.000000e+00), !dbg !200
  %121 = select <1 x i1> %120, <1 x float> splat (float 6.000000e+00), <1 x float> %119, !dbg !201
  %122 = extractelement <1 x float> %121, i64 0, !dbg !195
  %123 = mul nuw nsw i64 %23, 12544, !dbg !195
  %124 = add nuw nsw i64 %123, %29, !dbg !195
  %125 = getelementptr inbounds nuw float, ptr %17, i64 %124, !dbg !195
  store float %122, ptr %125, align 4, !dbg !195
  %126 = add i64 %26, 1, !dbg !195
  br label %25, !dbg !195

127:                                              ; preds = %25
  %128 = add i64 %23, 1, !dbg !195
  br label %22, !dbg !195

129:                                              ; preds = %22
  ret i32 0, !dbg !202
}

define internal i32 @"main_graph$async_dispatch_4_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !203 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !204
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !204
  %6 = load ptr, ptr %5, align 8, !dbg !204
  %7 = getelementptr float, ptr %6, i64 970512, !dbg !205
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !205
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !206
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !206
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !206
  %11 = load ptr, ptr %10, align 8, !dbg !206
  %12 = getelementptr float, ptr %11, i64 1773328, !dbg !207
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !207
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !208
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !208
  %15 = zext i32 %14 to i64, !dbg !208
  %16 = sdiv i64 %15, 4, !dbg !208
  %17 = mul i64 %16, 4, !dbg !208
  %18 = icmp ne i64 %15, %17, !dbg !208
  %19 = icmp slt i64 %15, 0, !dbg !208
  %20 = and i1 %18, %19, !dbg !208
  %21 = add i64 %16, -1, !dbg !208
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !208
  %23 = srem i64 %15, 4, !dbg !208
  %24 = icmp slt i64 %23, 0, !dbg !208
  %25 = add nsw i64 %23, 4, !dbg !208
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !208
  %27 = sdiv i64 %26, 2, !dbg !208
  %28 = srem i64 %15, 2, !dbg !208
  %29 = icmp slt i64 %28, 0, !dbg !208
  %30 = add nsw i64 %28, 2, !dbg !208
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !208
  %32 = mul nsw i64 %22, 16, !dbg !208
  %33 = mul nsw i64 %27, 56, !dbg !208
  %34 = mul nsw i64 %31, 56, !dbg !208
  br label %35, !dbg !208

35:                                               ; preds = %64, %3
  %36 = phi i64 [ %65, %64 ], [ 0, %3 ], !dbg !208
  %37 = icmp slt i64 %36, 16, !dbg !208
  br i1 %37, label %38, label %66, !dbg !208

38:                                               ; preds = %62, %35
  %39 = phi i64 [ %63, %62 ], [ 0, %35 ], !dbg !208
  %40 = icmp slt i64 %39, 56, !dbg !208
  br i1 %40, label %41, label %64, !dbg !208

41:                                               ; preds = %44, %38
  %42 = phi i64 [ %61, %44 ], [ 0, %38 ], !dbg !208
  %43 = icmp slt i64 %42, 56, !dbg !208
  br i1 %43, label %44, label %62, !dbg !208

44:                                               ; preds = %41
  %45 = add i64 %32, %36, !dbg !208
  %46 = add i64 %33, %39, !dbg !208
  %47 = add i64 %34, %42, !dbg !208
  %48 = mul i64 %45, 12544, !dbg !208
  %49 = mul i64 %46, 112, !dbg !208
  %50 = add i64 %48, %49, !dbg !208
  %51 = add i64 %50, %47, !dbg !208
  %52 = getelementptr float, ptr %7, i64 %51, !dbg !208
  %53 = load <8 x float>, ptr %52, align 4, !dbg !208
  %54 = add i64 %46, 1, !dbg !208
  %55 = add i64 %47, 1, !dbg !208
  %56 = mul i64 %45, 12996, !dbg !208
  %57 = mul i64 %54, 114, !dbg !208
  %58 = add i64 %56, %57, !dbg !208
  %59 = add i64 %58, %55, !dbg !208
  %60 = getelementptr float, ptr %12, i64 %59, !dbg !208
  store <8 x float> %53, ptr %60, align 4, !dbg !208
  %61 = add i64 %42, 8, !dbg !208
  br label %41, !dbg !208

62:                                               ; preds = %41
  %63 = add i64 %39, 1, !dbg !208
  br label %38, !dbg !208

64:                                               ; preds = %38
  %65 = add i64 %36, 1, !dbg !208
  br label %35, !dbg !208

66:                                               ; preds = %35
  ret i32 0, !dbg !209
}

define internal i32 @"main_graph$async_dispatch_5_conv_56x56x64x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !210 {
  %4 = alloca float, i64 8, align 64, !dbg !211
  %5 = alloca float, i64 8, align 64, !dbg !211
  %6 = alloca float, i64 8, align 64, !dbg !212
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !213
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !213
  %9 = load ptr, ptr %8, align 8, !dbg !213
  %10 = getelementptr float, ptr %9, i64 1773328, !dbg !213
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !213
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !214
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !214
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !214
  %14 = load ptr, ptr %13, align 8, !dbg !214
  %15 = getelementptr float, ptr %14, i64 3931328, !dbg !214
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !214
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !215
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !215
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !215
  %19 = load ptr, ptr %18, align 8, !dbg !215
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !215
  %20 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !211
  %21 = extractvalue %iree_hal_executable_workgroup_state_v0_t %20, 0, !dbg !211
  %22 = zext i32 %21 to i64, !dbg !211
  %23 = sdiv i64 %22, 4, !dbg !211
  %24 = mul i64 %23, 4, !dbg !211
  %25 = icmp ne i64 %22, %24, !dbg !211
  %26 = icmp slt i64 %22, 0, !dbg !211
  %27 = and i1 %25, %26, !dbg !211
  %28 = add i64 %23, -1, !dbg !211
  %29 = select i1 %27, i64 %28, i64 %23, !dbg !211
  %30 = srem i64 %22, 4, !dbg !211
  %31 = icmp slt i64 %30, 0, !dbg !211
  %32 = add nsw i64 %30, 4, !dbg !211
  %33 = select i1 %31, i64 %32, i64 %30, !dbg !211
  %34 = sdiv i64 %33, 2, !dbg !211
  %35 = srem i64 %22, 2, !dbg !211
  %36 = icmp slt i64 %35, 0, !dbg !211
  %37 = add nsw i64 %35, 2, !dbg !211
  %38 = select i1 %36, i64 %37, i64 %35, !dbg !211
  %39 = mul nsw i64 %29, 14, !dbg !211
  %40 = mul nsw i64 %34, 28, !dbg !211
  %41 = mul nsw i64 %38, 32, !dbg !211
  br label %42, !dbg !211

42:                                               ; preds = %158, %3
  %43 = phi i64 [ %159, %158 ], [ 0, %3 ], !dbg !211
  %44 = icmp slt i64 %43, 14, !dbg !211
  br i1 %44, label %45, label %160, !dbg !211

45:                                               ; preds = %156, %42
  %46 = phi i64 [ %157, %156 ], [ 0, %42 ], !dbg !211
  %47 = icmp slt i64 %46, 28, !dbg !211
  br i1 %47, label %48, label %158, !dbg !211

48:                                               ; preds = %45
  %49 = sub i64 28, %46, !dbg !211
  %50 = icmp slt i64 %49, 8, !dbg !211
  %51 = select i1 %50, i64 %49, i64 8, !dbg !211
  %52 = trunc i64 %51 to i32, !dbg !216
  %53 = insertelement <8 x i32> poison, i32 %52, i32 0, !dbg !216
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !216
  %55 = icmp sgt <8 x i32> %54, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !216
  %56 = getelementptr float, ptr %6, i64 0, !dbg !216
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %56, i32 4, <8 x i1> %55), !dbg !216
  %57 = mul nsw i64 %46, 2, !dbg !211
  %58 = mul nsw i64 %34, 56, !dbg !211
  %59 = add i64 %57, %58, !dbg !211
  br label %60, !dbg !211

60:                                               ; preds = %154, %48
  %61 = phi i64 [ %155, %154 ], [ 0, %48 ], !dbg !211
  %62 = icmp slt i64 %61, 32, !dbg !211
  br i1 %62, label %63, label %156, !dbg !211

63:                                               ; preds = %60
  %64 = add i64 %61, %41, !dbg !211
  br label %65, !dbg !211

65:                                               ; preds = %68, %63
  %66 = phi i64 [ %73, %68 ], [ 0, %63 ], !dbg !211
  %67 = icmp slt i64 %66, %51, !dbg !211
  br i1 %67, label %68, label %74, !dbg !211

68:                                               ; preds = %65
  %69 = add nuw nsw i64 0, %66, !dbg !211
  %70 = getelementptr inbounds nuw float, ptr %6, i64 %69, !dbg !211
  %71 = load float, ptr %70, align 4, !dbg !211
  %72 = getelementptr inbounds nuw float, ptr %5, i64 %69, !dbg !211
  store float %71, ptr %72, align 4, !dbg !211
  %73 = add i64 %66, 1, !dbg !211
  br label %65, !dbg !211

74:                                               ; preds = %112, %65
  %75 = phi i64 [ %113, %112 ], [ 0, %65 ], !dbg !211
  %76 = icmp slt i64 %75, 3, !dbg !211
  br i1 %76, label %77, label %114, !dbg !211

77:                                               ; preds = %74
  %78 = mul nsw i64 %43, 2, !dbg !211
  %79 = mul nsw i64 %29, 28, !dbg !211
  %80 = add i64 %78, %79, !dbg !211
  %81 = add i64 %80, %75, !dbg !211
  br label %82, !dbg !211

82:                                               ; preds = %110, %77
  %83 = phi i64 [ %111, %110 ], [ 0, %77 ], !dbg !211
  %84 = icmp slt i64 %83, %51, !dbg !211
  br i1 %84, label %85, label %112, !dbg !211

85:                                               ; preds = %88, %82
  %86 = phi i64 [ %109, %88 ], [ 0, %82 ], !dbg !211
  %87 = icmp slt i64 %86, 3, !dbg !211
  br i1 %87, label %88, label %110, !dbg !211

88:                                               ; preds = %85
  %89 = mul nsw i64 %83, 2, !dbg !211
  %90 = add i64 %59, %89, !dbg !211
  %91 = add i64 %90, %86, !dbg !211
  %92 = mul nuw nsw i64 %64, 12996, !dbg !211
  %93 = mul nuw nsw i64 %81, 114, !dbg !211
  %94 = add nuw nsw i64 %92, %93, !dbg !211
  %95 = add nuw nsw i64 %94, %91, !dbg !211
  %96 = getelementptr inbounds nuw float, ptr %10, i64 %95, !dbg !211
  %97 = load float, ptr %96, align 4, !dbg !211
  %98 = mul nuw nsw i64 %64, 9, !dbg !211
  %99 = mul nuw nsw i64 %75, 3, !dbg !211
  %100 = add nuw nsw i64 %98, %99, !dbg !211
  %101 = add nuw nsw i64 %100, %86, !dbg !211
  %102 = getelementptr inbounds nuw float, ptr %15, i64 %101, !dbg !211
  %103 = load float, ptr %102, align 4, !dbg !211
  %104 = add nuw nsw i64 0, %83, !dbg !211
  %105 = getelementptr inbounds nuw float, ptr %5, i64 %104, !dbg !211
  %106 = load float, ptr %105, align 4, !dbg !211
  %107 = fmul contract float %97, %103, !dbg !217
  %108 = fadd contract float %106, %107, !dbg !218
  store float %108, ptr %105, align 4, !dbg !211
  %109 = add i64 %86, 1, !dbg !211
  br label %85, !dbg !211

110:                                              ; preds = %85
  %111 = add i64 %83, 1, !dbg !211
  br label %82, !dbg !211

112:                                              ; preds = %82
  %113 = add i64 %75, 1, !dbg !211
  br label %74, !dbg !211

114:                                              ; preds = %117, %74
  %115 = phi i64 [ %122, %117 ], [ 0, %74 ], !dbg !211
  %116 = icmp slt i64 %115, %51, !dbg !211
  br i1 %116, label %117, label %123, !dbg !211

117:                                              ; preds = %114
  %118 = add nuw nsw i64 0, %115, !dbg !211
  %119 = getelementptr inbounds nuw float, ptr %6, i64 %118, !dbg !211
  %120 = load float, ptr %119, align 4, !dbg !211
  %121 = getelementptr inbounds nuw float, ptr %4, i64 %118, !dbg !211
  store float %120, ptr %121, align 4, !dbg !211
  %122 = add i64 %115, 1, !dbg !211
  br label %114, !dbg !211

123:                                              ; preds = %126, %114
  %124 = phi i64 [ %131, %126 ], [ 0, %114 ], !dbg !211
  %125 = icmp slt i64 %124, %51, !dbg !211
  br i1 %125, label %126, label %132, !dbg !211

126:                                              ; preds = %123
  %127 = add nuw nsw i64 0, %124, !dbg !211
  %128 = getelementptr inbounds nuw float, ptr %5, i64 %127, !dbg !211
  %129 = load float, ptr %128, align 4, !dbg !211
  %130 = getelementptr inbounds nuw float, ptr %4, i64 %127, !dbg !211
  store float %129, ptr %130, align 4, !dbg !211
  %131 = add i64 %124, 1, !dbg !211
  br label %123, !dbg !211

132:                                              ; preds = %135, %123
  %133 = phi i64 [ %153, %135 ], [ 0, %123 ], !dbg !219
  %134 = icmp slt i64 %133, %51, !dbg !219
  br i1 %134, label %135, label %154, !dbg !219

135:                                              ; preds = %132
  %136 = add i64 0, %133, !dbg !219
  %137 = getelementptr float, ptr %4, i64 %136, !dbg !219
  %138 = load <1 x float>, ptr %137, align 4, !dbg !219
  %139 = fadd contract <1 x float> %138, zeroinitializer, !dbg !220
  %140 = fcmp ult <1 x float> %139, zeroinitializer, !dbg !221
  %141 = select <1 x i1> %140, <1 x float> zeroinitializer, <1 x float> %139, !dbg !222
  %142 = fcmp ugt <1 x float> %141, splat (float 6.000000e+00), !dbg !223
  %143 = select <1 x i1> %142, <1 x float> splat (float 6.000000e+00), <1 x float> %141, !dbg !224
  %144 = extractelement <1 x float> %143, i64 0, !dbg !219
  %145 = add i64 %39, %43, !dbg !219
  %146 = add i64 %40, %46, !dbg !219
  %147 = add i64 %146, %133, !dbg !219
  %148 = mul nuw nsw i64 %64, 3136, !dbg !219
  %149 = mul nuw nsw i64 %145, 56, !dbg !219
  %150 = add nuw nsw i64 %148, %149, !dbg !219
  %151 = add nuw nsw i64 %150, %147, !dbg !219
  %152 = getelementptr inbounds nuw float, ptr %19, i64 %151, !dbg !219
  store float %144, ptr %152, align 4, !dbg !219
  %153 = add i64 %133, 1, !dbg !219
  br label %132, !dbg !219

154:                                              ; preds = %132
  %155 = add i64 %61, 1, !dbg !211
  br label %60, !dbg !211

156:                                              ; preds = %60
  %157 = add i64 %46, 8, !dbg !211
  br label %45, !dbg !211

158:                                              ; preds = %45
  %159 = add i64 %43, 1, !dbg !211
  br label %42, !dbg !211

160:                                              ; preds = %42
  ret i32 0, !dbg !225
}

define internal i32 @"main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !226 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !227
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !227
  %6 = load ptr, ptr %5, align 8, !dbg !227
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !227
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !228
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !228
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !228
  %10 = load ptr, ptr %9, align 8, !dbg !228
  %11 = getelementptr float, ptr %10, i64 3827712, !dbg !228
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !228
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !229
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !229
  %14 = getelementptr ptr, ptr %13, i32 2, !dbg !229
  %15 = load ptr, ptr %14, align 8, !dbg !229
  %16 = getelementptr float, ptr %15, i64 200704, !dbg !229
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !229
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !230
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !230
  %19 = zext i32 %18 to i64, !dbg !230
  %20 = sdiv i64 %19, 7, !dbg !230
  %21 = mul i64 %20, 7, !dbg !230
  %22 = icmp ne i64 %19, %21, !dbg !230
  %23 = icmp slt i64 %19, 0, !dbg !230
  %24 = and i1 %22, %23, !dbg !230
  %25 = add i64 %20, -1, !dbg !230
  %26 = select i1 %24, i64 %25, i64 %20, !dbg !230
  %27 = srem i64 %19, 7, !dbg !230
  %28 = icmp slt i64 %27, 0, !dbg !230
  %29 = add nsw i64 %27, 7, !dbg !230
  %30 = select i1 %28, i64 %29, i64 %27, !dbg !230
  %31 = mul nsw i64 %26, 64, !dbg !230
  %32 = mul nsw i64 %30, 8, !dbg !230
  br label %33, !dbg !230

33:                                               ; preds = %157, %3
  %34 = phi i64 [ %158, %157 ], [ 0, %3 ], !dbg !230
  %35 = icmp slt i64 %34, 64, !dbg !230
  br i1 %35, label %36, label %159, !dbg !230

36:                                               ; preds = %33
  %37 = add i64 %34, %31, !dbg !230
  br label %38, !dbg !230

38:                                               ; preds = %155, %36
  %39 = phi i64 [ %156, %155 ], [ 0, %36 ], !dbg !230
  %40 = icmp slt i64 %39, 8, !dbg !230
  br i1 %40, label %41, label %157, !dbg !230

41:                                               ; preds = %140, %38
  %42 = phi i64 [ %149, %140 ], [ 0, %38 ], !dbg !230
  %43 = icmp slt i64 %42, 56, !dbg !230
  br i1 %43, label %44, label %155, !dbg !230

44:                                               ; preds = %48, %41
  %45 = phi i64 [ %139, %48 ], [ 0, %41 ], !dbg !230
  %46 = phi <1 x float> [ %138, %48 ], [ zeroinitializer, %41 ], !dbg !230
  %47 = icmp slt i64 %45, 64, !dbg !230
  br i1 %47, label %48, label %140, !dbg !230

48:                                               ; preds = %44
  %49 = add i64 %39, %32, !dbg !230
  %50 = mul i64 %45, 3136, !dbg !230
  %51 = mul i64 %49, 56, !dbg !230
  %52 = add i64 %50, %51, !dbg !230
  %53 = add i64 %52, %42, !dbg !230
  %54 = getelementptr float, ptr %6, i64 %53, !dbg !230
  %55 = load <1 x float>, ptr %54, align 4, !dbg !230
  %56 = add i64 %45, 1, !dbg !230
  %57 = mul i64 %56, 3136, !dbg !230
  %58 = add i64 %57, %51, !dbg !230
  %59 = add i64 %58, %42, !dbg !230
  %60 = getelementptr float, ptr %6, i64 %59, !dbg !230
  %61 = load <1 x float>, ptr %60, align 4, !dbg !230
  %62 = add i64 %45, 2, !dbg !230
  %63 = mul i64 %62, 3136, !dbg !230
  %64 = add i64 %63, %51, !dbg !230
  %65 = add i64 %64, %42, !dbg !230
  %66 = getelementptr float, ptr %6, i64 %65, !dbg !230
  %67 = load <1 x float>, ptr %66, align 4, !dbg !230
  %68 = add i64 %45, 3, !dbg !230
  %69 = mul i64 %68, 3136, !dbg !230
  %70 = add i64 %69, %51, !dbg !230
  %71 = add i64 %70, %42, !dbg !230
  %72 = getelementptr float, ptr %6, i64 %71, !dbg !230
  %73 = load <1 x float>, ptr %72, align 4, !dbg !230
  %74 = add i64 %45, 4, !dbg !230
  %75 = mul i64 %74, 3136, !dbg !230
  %76 = add i64 %75, %51, !dbg !230
  %77 = add i64 %76, %42, !dbg !230
  %78 = getelementptr float, ptr %6, i64 %77, !dbg !230
  %79 = load <1 x float>, ptr %78, align 4, !dbg !230
  %80 = add i64 %45, 5, !dbg !230
  %81 = mul i64 %80, 3136, !dbg !230
  %82 = add i64 %81, %51, !dbg !230
  %83 = add i64 %82, %42, !dbg !230
  %84 = getelementptr float, ptr %6, i64 %83, !dbg !230
  %85 = load <1 x float>, ptr %84, align 4, !dbg !230
  %86 = add i64 %45, 6, !dbg !230
  %87 = mul i64 %86, 3136, !dbg !230
  %88 = add i64 %87, %51, !dbg !230
  %89 = add i64 %88, %42, !dbg !230
  %90 = getelementptr float, ptr %6, i64 %89, !dbg !230
  %91 = load <1 x float>, ptr %90, align 4, !dbg !230
  %92 = add i64 %45, 7, !dbg !230
  %93 = mul i64 %92, 3136, !dbg !230
  %94 = add i64 %93, %51, !dbg !230
  %95 = add i64 %94, %42, !dbg !230
  %96 = getelementptr float, ptr %6, i64 %95, !dbg !230
  %97 = load <1 x float>, ptr %96, align 4, !dbg !230
  %98 = mul nuw nsw i64 %37, 64, !dbg !231
  %99 = add nuw nsw i64 %98, %45, !dbg !231
  %100 = getelementptr inbounds nuw float, ptr %11, i64 %99, !dbg !231
  %101 = load float, ptr %100, align 4, !dbg !231
  %102 = insertelement <1 x float> poison, float %101, i32 0, !dbg !231
  %103 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %55, <1 x float> %102, <1 x float> %46), !dbg !231
  %104 = add nuw nsw i64 %98, %56, !dbg !231
  %105 = getelementptr inbounds nuw float, ptr %11, i64 %104, !dbg !231
  %106 = load float, ptr %105, align 4, !dbg !231
  %107 = insertelement <1 x float> poison, float %106, i32 0, !dbg !231
  %108 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %107, <1 x float> %103), !dbg !231
  %109 = add nuw nsw i64 %98, %62, !dbg !231
  %110 = getelementptr inbounds nuw float, ptr %11, i64 %109, !dbg !231
  %111 = load float, ptr %110, align 4, !dbg !231
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !231
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %112, <1 x float> %108), !dbg !231
  %114 = add nuw nsw i64 %98, %68, !dbg !231
  %115 = getelementptr inbounds nuw float, ptr %11, i64 %114, !dbg !231
  %116 = load float, ptr %115, align 4, !dbg !231
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !231
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %117, <1 x float> %113), !dbg !231
  %119 = add nuw nsw i64 %98, %74, !dbg !231
  %120 = getelementptr inbounds nuw float, ptr %11, i64 %119, !dbg !231
  %121 = load float, ptr %120, align 4, !dbg !231
  %122 = insertelement <1 x float> poison, float %121, i32 0, !dbg !231
  %123 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %79, <1 x float> %122, <1 x float> %118), !dbg !231
  %124 = add nuw nsw i64 %98, %80, !dbg !231
  %125 = getelementptr inbounds nuw float, ptr %11, i64 %124, !dbg !231
  %126 = load float, ptr %125, align 4, !dbg !231
  %127 = insertelement <1 x float> poison, float %126, i32 0, !dbg !231
  %128 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %85, <1 x float> %127, <1 x float> %123), !dbg !231
  %129 = add nuw nsw i64 %98, %86, !dbg !231
  %130 = getelementptr inbounds nuw float, ptr %11, i64 %129, !dbg !231
  %131 = load float, ptr %130, align 4, !dbg !231
  %132 = insertelement <1 x float> poison, float %131, i32 0, !dbg !231
  %133 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %91, <1 x float> %132, <1 x float> %128), !dbg !231
  %134 = add nuw nsw i64 %98, %92, !dbg !231
  %135 = getelementptr inbounds nuw float, ptr %11, i64 %134, !dbg !231
  %136 = load float, ptr %135, align 4, !dbg !231
  %137 = insertelement <1 x float> poison, float %136, i32 0, !dbg !231
  %138 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %97, <1 x float> %137, <1 x float> %133), !dbg !231
  %139 = add i64 %45, 8, !dbg !230
  br label %44, !dbg !230

140:                                              ; preds = %44
  %141 = fadd contract <1 x float> %46, zeroinitializer, !dbg !232
  %142 = fcmp ult <1 x float> %141, zeroinitializer, !dbg !233
  %143 = select <1 x i1> %142, <1 x float> zeroinitializer, <1 x float> %141, !dbg !234
  %144 = fcmp ugt <1 x float> %143, splat (float 6.000000e+00), !dbg !235
  %145 = select <1 x i1> %144, <1 x float> splat (float 6.000000e+00), <1 x float> %143, !dbg !236
  %146 = extractelement <1 x float> %145, i64 0, !dbg !230
  %147 = add i64 %32, %39, !dbg !230
  %148 = add i64 %147, 1, !dbg !230
  %149 = add i64 %42, 1, !dbg !230
  %150 = mul nuw nsw i64 %37, 3364, !dbg !230
  %151 = mul nuw nsw i64 %148, 58, !dbg !230
  %152 = add nuw nsw i64 %150, %151, !dbg !230
  %153 = add nuw nsw i64 %152, %149, !dbg !230
  %154 = getelementptr inbounds nuw float, ptr %16, i64 %153, !dbg !230
  store float %146, ptr %154, align 4, !dbg !230
  br label %41, !dbg !230

155:                                              ; preds = %41
  %156 = add i64 %39, 1, !dbg !230
  br label %38, !dbg !230

157:                                              ; preds = %38
  %158 = add i64 %34, 1, !dbg !230
  br label %33, !dbg !230

159:                                              ; preds = %33
  ret i32 0, !dbg !237
}

define internal i32 @"main_graph$async_dispatch_7_conv_56x56x128x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !238 {
  %4 = alloca float, i64 8, align 64, !dbg !239
  %5 = alloca float, i64 8, align 64, !dbg !239
  %6 = alloca float, i64 8, align 64, !dbg !240
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !241
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !241
  %9 = load ptr, ptr %8, align 8, !dbg !241
  %10 = getelementptr float, ptr %9, i64 200704, !dbg !241
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !241
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !242
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !242
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !242
  %14 = load ptr, ptr %13, align 8, !dbg !242
  %15 = getelementptr float, ptr %14, i64 3930176, !dbg !242
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !242
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !243
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !243
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !243
  %19 = load ptr, ptr %18, align 8, !dbg !243
  %20 = getelementptr float, ptr %19, i64 1773328, !dbg !243
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !243
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !239
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !239
  %23 = zext i32 %22 to i64, !dbg !239
  %24 = sdiv i64 %23, 8, !dbg !239
  %25 = mul i64 %24, 8, !dbg !239
  %26 = icmp ne i64 %23, %25, !dbg !239
  %27 = icmp slt i64 %23, 0, !dbg !239
  %28 = and i1 %26, %27, !dbg !239
  %29 = add i64 %24, -1, !dbg !239
  %30 = select i1 %28, i64 %29, i64 %24, !dbg !239
  %31 = srem i64 %23, 8, !dbg !239
  %32 = icmp slt i64 %31, 0, !dbg !239
  %33 = add nsw i64 %31, 8, !dbg !239
  %34 = select i1 %32, i64 %33, i64 %31, !dbg !239
  %35 = sdiv i64 %34, 4, !dbg !239
  %36 = srem i64 %23, 4, !dbg !239
  %37 = icmp slt i64 %36, 0, !dbg !239
  %38 = add nsw i64 %36, 4, !dbg !239
  %39 = select i1 %37, i64 %38, i64 %36, !dbg !239
  %40 = mul nsw i64 %30, 28, !dbg !239
  %41 = mul nsw i64 %35, 28, !dbg !239
  %42 = mul nsw i64 %39, 32, !dbg !239
  br label %43, !dbg !239

43:                                               ; preds = %153, %3
  %44 = phi i64 [ %154, %153 ], [ 0, %3 ], !dbg !239
  %45 = icmp slt i64 %44, 28, !dbg !239
  br i1 %45, label %46, label %155, !dbg !239

46:                                               ; preds = %151, %43
  %47 = phi i64 [ %152, %151 ], [ 0, %43 ], !dbg !239
  %48 = icmp slt i64 %47, 28, !dbg !239
  br i1 %48, label %49, label %153, !dbg !239

49:                                               ; preds = %46
  %50 = sub i64 28, %47, !dbg !239
  %51 = icmp slt i64 %50, 8, !dbg !239
  %52 = select i1 %51, i64 %50, i64 8, !dbg !239
  %53 = trunc i64 %52 to i32, !dbg !244
  %54 = insertelement <8 x i32> poison, i32 %53, i32 0, !dbg !244
  %55 = shufflevector <8 x i32> %54, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !244
  %56 = icmp sgt <8 x i32> %55, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !244
  %57 = getelementptr float, ptr %6, i64 0, !dbg !244
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %57, i32 4, <8 x i1> %56), !dbg !244
  %58 = add i64 %47, %41, !dbg !239
  br label %59, !dbg !239

59:                                               ; preds = %149, %49
  %60 = phi i64 [ %150, %149 ], [ 0, %49 ], !dbg !239
  %61 = icmp slt i64 %60, 32, !dbg !239
  br i1 %61, label %62, label %151, !dbg !239

62:                                               ; preds = %59
  %63 = add i64 %60, %42, !dbg !239
  br label %64, !dbg !239

64:                                               ; preds = %67, %62
  %65 = phi i64 [ %72, %67 ], [ 0, %62 ], !dbg !239
  %66 = icmp slt i64 %65, %52, !dbg !239
  br i1 %66, label %67, label %73, !dbg !239

67:                                               ; preds = %64
  %68 = add nuw nsw i64 0, %65, !dbg !239
  %69 = getelementptr inbounds nuw float, ptr %6, i64 %68, !dbg !239
  %70 = load float, ptr %69, align 4, !dbg !239
  %71 = getelementptr inbounds nuw float, ptr %5, i64 %68, !dbg !239
  store float %70, ptr %71, align 4, !dbg !239
  %72 = add i64 %65, 1, !dbg !239
  br label %64, !dbg !239

73:                                               ; preds = %108, %64
  %74 = phi i64 [ %109, %108 ], [ 0, %64 ], !dbg !239
  %75 = icmp slt i64 %74, 3, !dbg !239
  br i1 %75, label %76, label %110, !dbg !239

76:                                               ; preds = %73
  %77 = add i64 %74, %44, !dbg !239
  %78 = add i64 %77, %40, !dbg !239
  br label %79, !dbg !239

79:                                               ; preds = %106, %76
  %80 = phi i64 [ %107, %106 ], [ 0, %76 ], !dbg !239
  %81 = icmp slt i64 %80, %52, !dbg !239
  br i1 %81, label %82, label %108, !dbg !239

82:                                               ; preds = %85, %79
  %83 = phi i64 [ %105, %85 ], [ 0, %79 ], !dbg !239
  %84 = icmp slt i64 %83, 3, !dbg !239
  br i1 %84, label %85, label %106, !dbg !239

85:                                               ; preds = %82
  %86 = add i64 %58, %80, !dbg !239
  %87 = add i64 %86, %83, !dbg !239
  %88 = mul nuw nsw i64 %63, 3364, !dbg !239
  %89 = mul nuw nsw i64 %78, 58, !dbg !239
  %90 = add nuw nsw i64 %88, %89, !dbg !239
  %91 = add nuw nsw i64 %90, %87, !dbg !239
  %92 = getelementptr inbounds nuw float, ptr %10, i64 %91, !dbg !239
  %93 = load float, ptr %92, align 4, !dbg !239
  %94 = mul nuw nsw i64 %63, 9, !dbg !239
  %95 = mul nuw nsw i64 %74, 3, !dbg !239
  %96 = add nuw nsw i64 %94, %95, !dbg !239
  %97 = add nuw nsw i64 %96, %83, !dbg !239
  %98 = getelementptr inbounds nuw float, ptr %15, i64 %97, !dbg !239
  %99 = load float, ptr %98, align 4, !dbg !239
  %100 = add nuw nsw i64 0, %80, !dbg !239
  %101 = getelementptr inbounds nuw float, ptr %5, i64 %100, !dbg !239
  %102 = load float, ptr %101, align 4, !dbg !239
  %103 = fmul contract float %93, %99, !dbg !245
  %104 = fadd contract float %102, %103, !dbg !246
  store float %104, ptr %101, align 4, !dbg !239
  %105 = add i64 %83, 1, !dbg !239
  br label %82, !dbg !239

106:                                              ; preds = %82
  %107 = add i64 %80, 1, !dbg !239
  br label %79, !dbg !239

108:                                              ; preds = %79
  %109 = add i64 %74, 1, !dbg !239
  br label %73, !dbg !239

110:                                              ; preds = %113, %73
  %111 = phi i64 [ %118, %113 ], [ 0, %73 ], !dbg !239
  %112 = icmp slt i64 %111, %52, !dbg !239
  br i1 %112, label %113, label %119, !dbg !239

113:                                              ; preds = %110
  %114 = add nuw nsw i64 0, %111, !dbg !239
  %115 = getelementptr inbounds nuw float, ptr %6, i64 %114, !dbg !239
  %116 = load float, ptr %115, align 4, !dbg !239
  %117 = getelementptr inbounds nuw float, ptr %4, i64 %114, !dbg !239
  store float %116, ptr %117, align 4, !dbg !239
  %118 = add i64 %111, 1, !dbg !239
  br label %110, !dbg !239

119:                                              ; preds = %122, %110
  %120 = phi i64 [ %127, %122 ], [ 0, %110 ], !dbg !239
  %121 = icmp slt i64 %120, %52, !dbg !239
  br i1 %121, label %122, label %128, !dbg !239

122:                                              ; preds = %119
  %123 = add nuw nsw i64 0, %120, !dbg !239
  %124 = getelementptr inbounds nuw float, ptr %5, i64 %123, !dbg !239
  %125 = load float, ptr %124, align 4, !dbg !239
  %126 = getelementptr inbounds nuw float, ptr %4, i64 %123, !dbg !239
  store float %125, ptr %126, align 4, !dbg !239
  %127 = add i64 %120, 1, !dbg !239
  br label %119, !dbg !239

128:                                              ; preds = %131, %119
  %129 = phi i64 [ %148, %131 ], [ 0, %119 ], !dbg !247
  %130 = icmp slt i64 %129, %52, !dbg !247
  br i1 %130, label %131, label %149, !dbg !247

131:                                              ; preds = %128
  %132 = add i64 0, %129, !dbg !247
  %133 = getelementptr float, ptr %4, i64 %132, !dbg !247
  %134 = load <1 x float>, ptr %133, align 4, !dbg !247
  %135 = fadd contract <1 x float> %134, zeroinitializer, !dbg !248
  %136 = fcmp ult <1 x float> %135, zeroinitializer, !dbg !249
  %137 = select <1 x i1> %136, <1 x float> zeroinitializer, <1 x float> %135, !dbg !250
  %138 = fcmp ugt <1 x float> %137, splat (float 6.000000e+00), !dbg !251
  %139 = select <1 x i1> %138, <1 x float> splat (float 6.000000e+00), <1 x float> %137, !dbg !252
  %140 = extractelement <1 x float> %139, i64 0, !dbg !247
  %141 = add i64 %40, %44, !dbg !247
  %142 = add i64 %58, %129, !dbg !247
  %143 = mul nuw nsw i64 %63, 3136, !dbg !247
  %144 = mul nuw nsw i64 %141, 56, !dbg !247
  %145 = add nuw nsw i64 %143, %144, !dbg !247
  %146 = add nuw nsw i64 %145, %142, !dbg !247
  %147 = getelementptr inbounds nuw float, ptr %20, i64 %146, !dbg !247
  store float %140, ptr %147, align 4, !dbg !247
  %148 = add i64 %129, 1, !dbg !247
  br label %128, !dbg !247

149:                                              ; preds = %128
  %150 = add i64 %60, 1, !dbg !239
  br label %59, !dbg !239

151:                                              ; preds = %59
  %152 = add i64 %47, 8, !dbg !239
  br label %46, !dbg !239

153:                                              ; preds = %46
  %154 = add i64 %44, 1, !dbg !239
  br label %43, !dbg !239

155:                                              ; preds = %43
  ret i32 0, !dbg !253
}

define internal i32 @"main_graph$async_dispatch_8_matmul_like_128x3136x128_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !254 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !255
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !255
  %6 = load ptr, ptr %5, align 8, !dbg !255
  %7 = getelementptr float, ptr %6, i64 1773328, !dbg !255
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !255
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !256
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !256
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !256
  %11 = load ptr, ptr %10, align 8, !dbg !256
  %12 = getelementptr float, ptr %11, i64 3811328, !dbg !256
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !256
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !257
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !257
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !257
  %16 = load ptr, ptr %15, align 8, !dbg !257
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !257
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !258
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !258
  %19 = zext i32 %18 to i64, !dbg !258
  %20 = sdiv i64 %19, 49, !dbg !258
  %21 = mul i64 %20, 49, !dbg !258
  %22 = icmp ne i64 %19, %21, !dbg !258
  %23 = icmp slt i64 %19, 0, !dbg !258
  %24 = and i1 %22, %23, !dbg !258
  %25 = add i64 %20, -1, !dbg !258
  %26 = select i1 %24, i64 %25, i64 %20, !dbg !258
  %27 = srem i64 %19, 49, !dbg !258
  %28 = icmp slt i64 %27, 0, !dbg !258
  %29 = add nsw i64 %27, 49, !dbg !258
  %30 = select i1 %28, i64 %29, i64 %27, !dbg !258
  %31 = mul nsw i64 %26, 64, !dbg !258
  %32 = mul nsw i64 %30, 64, !dbg !258
  br label %33, !dbg !258

33:                                               ; preds = %140, %3
  %34 = phi i64 [ %141, %140 ], [ 0, %3 ], !dbg !258
  %35 = icmp slt i64 %34, 64, !dbg !258
  br i1 %35, label %36, label %142, !dbg !258

36:                                               ; preds = %33
  %37 = add i64 %34, %31, !dbg !258
  br label %38, !dbg !258

38:                                               ; preds = %129, %36
  %39 = phi i64 [ %139, %129 ], [ 0, %36 ], !dbg !258
  %40 = icmp slt i64 %39, 64, !dbg !258
  br i1 %40, label %41, label %140, !dbg !258

41:                                               ; preds = %38
  %42 = add i64 %39, %32, !dbg !258
  br label %43, !dbg !258

43:                                               ; preds = %47, %41
  %44 = phi i64 [ %128, %47 ], [ 0, %41 ], !dbg !258
  %45 = phi <1 x float> [ %127, %47 ], [ zeroinitializer, %41 ], !dbg !258
  %46 = icmp slt i64 %44, 128, !dbg !258
  br i1 %46, label %47, label %129, !dbg !258

47:                                               ; preds = %43
  %48 = mul i64 %44, 3136, !dbg !258
  %49 = add i64 %48, %42, !dbg !258
  %50 = getelementptr float, ptr %7, i64 %49, !dbg !258
  %51 = load <1 x float>, ptr %50, align 4, !dbg !258
  %52 = add i64 %44, 1, !dbg !258
  %53 = mul i64 %52, 3136, !dbg !258
  %54 = add i64 %53, %42, !dbg !258
  %55 = getelementptr float, ptr %7, i64 %54, !dbg !258
  %56 = load <1 x float>, ptr %55, align 4, !dbg !258
  %57 = add i64 %44, 2, !dbg !258
  %58 = mul i64 %57, 3136, !dbg !258
  %59 = add i64 %58, %42, !dbg !258
  %60 = getelementptr float, ptr %7, i64 %59, !dbg !258
  %61 = load <1 x float>, ptr %60, align 4, !dbg !258
  %62 = add i64 %44, 3, !dbg !258
  %63 = mul i64 %62, 3136, !dbg !258
  %64 = add i64 %63, %42, !dbg !258
  %65 = getelementptr float, ptr %7, i64 %64, !dbg !258
  %66 = load <1 x float>, ptr %65, align 4, !dbg !258
  %67 = add i64 %44, 4, !dbg !258
  %68 = mul i64 %67, 3136, !dbg !258
  %69 = add i64 %68, %42, !dbg !258
  %70 = getelementptr float, ptr %7, i64 %69, !dbg !258
  %71 = load <1 x float>, ptr %70, align 4, !dbg !258
  %72 = add i64 %44, 5, !dbg !258
  %73 = mul i64 %72, 3136, !dbg !258
  %74 = add i64 %73, %42, !dbg !258
  %75 = getelementptr float, ptr %7, i64 %74, !dbg !258
  %76 = load <1 x float>, ptr %75, align 4, !dbg !258
  %77 = add i64 %44, 6, !dbg !258
  %78 = mul i64 %77, 3136, !dbg !258
  %79 = add i64 %78, %42, !dbg !258
  %80 = getelementptr float, ptr %7, i64 %79, !dbg !258
  %81 = load <1 x float>, ptr %80, align 4, !dbg !258
  %82 = add i64 %44, 7, !dbg !258
  %83 = mul i64 %82, 3136, !dbg !258
  %84 = add i64 %83, %42, !dbg !258
  %85 = getelementptr float, ptr %7, i64 %84, !dbg !258
  %86 = load <1 x float>, ptr %85, align 4, !dbg !258
  %87 = mul nuw nsw i64 %37, 128, !dbg !259
  %88 = add nuw nsw i64 %87, %44, !dbg !259
  %89 = getelementptr inbounds nuw float, ptr %12, i64 %88, !dbg !259
  %90 = load float, ptr %89, align 4, !dbg !259
  %91 = insertelement <1 x float> poison, float %90, i32 0, !dbg !259
  %92 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %51, <1 x float> %91, <1 x float> %45), !dbg !259
  %93 = add nuw nsw i64 %87, %52, !dbg !259
  %94 = getelementptr inbounds nuw float, ptr %12, i64 %93, !dbg !259
  %95 = load float, ptr %94, align 4, !dbg !259
  %96 = insertelement <1 x float> poison, float %95, i32 0, !dbg !259
  %97 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %56, <1 x float> %96, <1 x float> %92), !dbg !259
  %98 = add nuw nsw i64 %87, %57, !dbg !259
  %99 = getelementptr inbounds nuw float, ptr %12, i64 %98, !dbg !259
  %100 = load float, ptr %99, align 4, !dbg !259
  %101 = insertelement <1 x float> poison, float %100, i32 0, !dbg !259
  %102 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %101, <1 x float> %97), !dbg !259
  %103 = add nuw nsw i64 %87, %62, !dbg !259
  %104 = getelementptr inbounds nuw float, ptr %12, i64 %103, !dbg !259
  %105 = load float, ptr %104, align 4, !dbg !259
  %106 = insertelement <1 x float> poison, float %105, i32 0, !dbg !259
  %107 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %106, <1 x float> %102), !dbg !259
  %108 = add nuw nsw i64 %87, %67, !dbg !259
  %109 = getelementptr inbounds nuw float, ptr %12, i64 %108, !dbg !259
  %110 = load float, ptr %109, align 4, !dbg !259
  %111 = insertelement <1 x float> poison, float %110, i32 0, !dbg !259
  %112 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %71, <1 x float> %111, <1 x float> %107), !dbg !259
  %113 = add nuw nsw i64 %87, %72, !dbg !259
  %114 = getelementptr inbounds nuw float, ptr %12, i64 %113, !dbg !259
  %115 = load float, ptr %114, align 4, !dbg !259
  %116 = insertelement <1 x float> poison, float %115, i32 0, !dbg !259
  %117 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %76, <1 x float> %116, <1 x float> %112), !dbg !259
  %118 = add nuw nsw i64 %87, %77, !dbg !259
  %119 = getelementptr inbounds nuw float, ptr %12, i64 %118, !dbg !259
  %120 = load float, ptr %119, align 4, !dbg !259
  %121 = insertelement <1 x float> poison, float %120, i32 0, !dbg !259
  %122 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %81, <1 x float> %121, <1 x float> %117), !dbg !259
  %123 = add nuw nsw i64 %87, %82, !dbg !259
  %124 = getelementptr inbounds nuw float, ptr %12, i64 %123, !dbg !259
  %125 = load float, ptr %124, align 4, !dbg !259
  %126 = insertelement <1 x float> poison, float %125, i32 0, !dbg !259
  %127 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %86, <1 x float> %126, <1 x float> %122), !dbg !259
  %128 = add i64 %44, 8, !dbg !258
  br label %43, !dbg !258

129:                                              ; preds = %43
  %130 = fadd contract <1 x float> %45, zeroinitializer, !dbg !260
  %131 = fcmp ult <1 x float> %130, zeroinitializer, !dbg !261
  %132 = select <1 x i1> %131, <1 x float> zeroinitializer, <1 x float> %130, !dbg !262
  %133 = fcmp ugt <1 x float> %132, splat (float 6.000000e+00), !dbg !263
  %134 = select <1 x i1> %133, <1 x float> splat (float 6.000000e+00), <1 x float> %132, !dbg !264
  %135 = extractelement <1 x float> %134, i64 0, !dbg !258
  %136 = mul nuw nsw i64 %37, 3136, !dbg !258
  %137 = add nuw nsw i64 %136, %42, !dbg !258
  %138 = getelementptr inbounds nuw float, ptr %16, i64 %137, !dbg !258
  store float %135, ptr %138, align 4, !dbg !258
  %139 = add i64 %39, 1, !dbg !258
  br label %38, !dbg !258

140:                                              ; preds = %38
  %141 = add i64 %34, 1, !dbg !258
  br label %33, !dbg !258

142:                                              ; preds = %33
  ret i32 0, !dbg !265
}

define internal i32 @"main_graph$async_dispatch_9_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !266 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !267
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !267
  %6 = load ptr, ptr %5, align 8, !dbg !267
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !268
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !269
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !269
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !269
  %10 = load ptr, ptr %9, align 8, !dbg !269
  %11 = getelementptr float, ptr %10, i64 401408, !dbg !270
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !270
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !271
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !271
  %14 = zext i32 %13 to i64, !dbg !271
  %15 = sdiv i64 %14, 2, !dbg !271
  %16 = mul i64 %15, 2, !dbg !271
  %17 = icmp ne i64 %14, %16, !dbg !271
  %18 = icmp slt i64 %14, 0, !dbg !271
  %19 = and i1 %17, %18, !dbg !271
  %20 = add i64 %15, -1, !dbg !271
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !271
  %22 = srem i64 %14, 2, !dbg !271
  %23 = icmp slt i64 %22, 0, !dbg !271
  %24 = add nsw i64 %22, 2, !dbg !271
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !271
  %26 = mul nsw i64 %21, 16, !dbg !271
  %27 = mul nsw i64 %25, 28, !dbg !271
  br label %28, !dbg !271

28:                                               ; preds = %56, %3
  %29 = phi i64 [ %57, %56 ], [ 0, %3 ], !dbg !271
  %30 = icmp slt i64 %29, 16, !dbg !271
  br i1 %30, label %31, label %58, !dbg !271

31:                                               ; preds = %54, %28
  %32 = phi i64 [ %55, %54 ], [ 0, %28 ], !dbg !271
  %33 = icmp slt i64 %32, 28, !dbg !271
  br i1 %33, label %34, label %56, !dbg !271

34:                                               ; preds = %37, %31
  %35 = phi i64 [ %53, %37 ], [ 0, %31 ], !dbg !271
  %36 = icmp slt i64 %35, 56, !dbg !271
  br i1 %36, label %37, label %54, !dbg !271

37:                                               ; preds = %34
  %38 = add i64 %26, %29, !dbg !271
  %39 = add i64 %27, %32, !dbg !271
  %40 = mul i64 %38, 3136, !dbg !271
  %41 = mul i64 %39, 56, !dbg !271
  %42 = add i64 %40, %41, !dbg !271
  %43 = add i64 %42, %35, !dbg !271
  %44 = getelementptr float, ptr %6, i64 %43, !dbg !271
  %45 = load <8 x float>, ptr %44, align 4, !dbg !271
  %46 = add i64 %39, 1, !dbg !271
  %47 = add i64 %35, 1, !dbg !271
  %48 = mul i64 %38, 3364, !dbg !271
  %49 = mul i64 %46, 58, !dbg !271
  %50 = add i64 %48, %49, !dbg !271
  %51 = add i64 %50, %47, !dbg !271
  %52 = getelementptr float, ptr %11, i64 %51, !dbg !271
  store <8 x float> %45, ptr %52, align 4, !dbg !271
  %53 = add i64 %35, 8, !dbg !271
  br label %34, !dbg !271

54:                                               ; preds = %34
  %55 = add i64 %32, 1, !dbg !271
  br label %31, !dbg !271

56:                                               ; preds = %31
  %57 = add i64 %29, 1, !dbg !271
  br label %28, !dbg !271

58:                                               ; preds = %28
  ret i32 0, !dbg !272
}

define internal i32 @"main_graph$async_dispatch_10_conv_28x28x128x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !273 {
  %4 = alloca float, i64 8, align 64, !dbg !274
  %5 = alloca float, i64 8, align 64, !dbg !274
  %6 = alloca float, i64 8, align 64, !dbg !275
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !276
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !276
  %9 = load ptr, ptr %8, align 8, !dbg !276
  %10 = getelementptr float, ptr %9, i64 401408, !dbg !276
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !276
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !277
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !277
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !277
  %14 = load ptr, ptr %13, align 8, !dbg !277
  %15 = getelementptr float, ptr %14, i64 3929024, !dbg !277
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !277
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !278
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !278
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !278
  %19 = load ptr, ptr %18, align 8, !dbg !278
  %20 = getelementptr float, ptr %19, i64 832000, !dbg !278
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !278
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !274
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !274
  %23 = zext i32 %22 to i64, !dbg !274
  %24 = sdiv i64 %23, 4, !dbg !274
  %25 = mul i64 %24, 4, !dbg !274
  %26 = icmp ne i64 %23, %25, !dbg !274
  %27 = icmp slt i64 %23, 0, !dbg !274
  %28 = and i1 %26, %27, !dbg !274
  %29 = add i64 %24, -1, !dbg !274
  %30 = select i1 %28, i64 %29, i64 %24, !dbg !274
  %31 = srem i64 %23, 4, !dbg !274
  %32 = icmp slt i64 %31, 0, !dbg !274
  %33 = add nsw i64 %31, 4, !dbg !274
  %34 = select i1 %32, i64 %33, i64 %31, !dbg !274
  %35 = mul nsw i64 %30, 7, !dbg !274
  %36 = mul nsw i64 %34, 32, !dbg !274
  br label %37, !dbg !274

37:                                               ; preds = %150, %3
  %38 = phi i64 [ %151, %150 ], [ 0, %3 ], !dbg !274
  %39 = icmp slt i64 %38, 7, !dbg !274
  br i1 %39, label %40, label %152, !dbg !274

40:                                               ; preds = %148, %37
  %41 = phi i64 [ %149, %148 ], [ 0, %37 ], !dbg !274
  %42 = icmp slt i64 %41, 28, !dbg !274
  br i1 %42, label %43, label %150, !dbg !274

43:                                               ; preds = %40
  %44 = sub i64 28, %41, !dbg !274
  %45 = icmp slt i64 %44, 8, !dbg !274
  %46 = select i1 %45, i64 %44, i64 8, !dbg !274
  %47 = trunc i64 %46 to i32, !dbg !279
  %48 = insertelement <8 x i32> poison, i32 %47, i32 0, !dbg !279
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !279
  %50 = icmp sgt <8 x i32> %49, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !279
  %51 = getelementptr float, ptr %6, i64 0, !dbg !279
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %51, i32 4, <8 x i1> %50), !dbg !279
  %52 = mul nsw i64 %41, 2, !dbg !274
  br label %53, !dbg !274

53:                                               ; preds = %146, %43
  %54 = phi i64 [ %147, %146 ], [ 0, %43 ], !dbg !274
  %55 = icmp slt i64 %54, 32, !dbg !274
  br i1 %55, label %56, label %148, !dbg !274

56:                                               ; preds = %53
  %57 = add i64 %54, %36, !dbg !274
  br label %58, !dbg !274

58:                                               ; preds = %61, %56
  %59 = phi i64 [ %66, %61 ], [ 0, %56 ], !dbg !274
  %60 = icmp slt i64 %59, %46, !dbg !274
  br i1 %60, label %61, label %67, !dbg !274

61:                                               ; preds = %58
  %62 = add nuw nsw i64 0, %59, !dbg !274
  %63 = getelementptr inbounds nuw float, ptr %6, i64 %62, !dbg !274
  %64 = load float, ptr %63, align 4, !dbg !274
  %65 = getelementptr inbounds nuw float, ptr %5, i64 %62, !dbg !274
  store float %64, ptr %65, align 4, !dbg !274
  %66 = add i64 %59, 1, !dbg !274
  br label %58, !dbg !274

67:                                               ; preds = %105, %58
  %68 = phi i64 [ %106, %105 ], [ 0, %58 ], !dbg !274
  %69 = icmp slt i64 %68, 3, !dbg !274
  br i1 %69, label %70, label %107, !dbg !274

70:                                               ; preds = %67
  %71 = mul nsw i64 %38, 2, !dbg !274
  %72 = mul nsw i64 %30, 14, !dbg !274
  %73 = add i64 %71, %72, !dbg !274
  %74 = add i64 %73, %68, !dbg !274
  br label %75, !dbg !274

75:                                               ; preds = %103, %70
  %76 = phi i64 [ %104, %103 ], [ 0, %70 ], !dbg !274
  %77 = icmp slt i64 %76, %46, !dbg !274
  br i1 %77, label %78, label %105, !dbg !274

78:                                               ; preds = %81, %75
  %79 = phi i64 [ %102, %81 ], [ 0, %75 ], !dbg !274
  %80 = icmp slt i64 %79, 3, !dbg !274
  br i1 %80, label %81, label %103, !dbg !274

81:                                               ; preds = %78
  %82 = mul nsw i64 %76, 2, !dbg !274
  %83 = add i64 %52, %82, !dbg !274
  %84 = add i64 %83, %79, !dbg !274
  %85 = mul nuw nsw i64 %57, 3364, !dbg !274
  %86 = mul nuw nsw i64 %74, 58, !dbg !274
  %87 = add nuw nsw i64 %85, %86, !dbg !274
  %88 = add nuw nsw i64 %87, %84, !dbg !274
  %89 = getelementptr inbounds nuw float, ptr %10, i64 %88, !dbg !274
  %90 = load float, ptr %89, align 4, !dbg !274
  %91 = mul nuw nsw i64 %57, 9, !dbg !274
  %92 = mul nuw nsw i64 %68, 3, !dbg !274
  %93 = add nuw nsw i64 %91, %92, !dbg !274
  %94 = add nuw nsw i64 %93, %79, !dbg !274
  %95 = getelementptr inbounds nuw float, ptr %15, i64 %94, !dbg !274
  %96 = load float, ptr %95, align 4, !dbg !274
  %97 = add nuw nsw i64 0, %76, !dbg !274
  %98 = getelementptr inbounds nuw float, ptr %5, i64 %97, !dbg !274
  %99 = load float, ptr %98, align 4, !dbg !274
  %100 = fmul contract float %90, %96, !dbg !280
  %101 = fadd contract float %99, %100, !dbg !281
  store float %101, ptr %98, align 4, !dbg !274
  %102 = add i64 %79, 1, !dbg !274
  br label %78, !dbg !274

103:                                              ; preds = %78
  %104 = add i64 %76, 1, !dbg !274
  br label %75, !dbg !274

105:                                              ; preds = %75
  %106 = add i64 %68, 1, !dbg !274
  br label %67, !dbg !274

107:                                              ; preds = %110, %67
  %108 = phi i64 [ %115, %110 ], [ 0, %67 ], !dbg !274
  %109 = icmp slt i64 %108, %46, !dbg !274
  br i1 %109, label %110, label %116, !dbg !274

110:                                              ; preds = %107
  %111 = add nuw nsw i64 0, %108, !dbg !274
  %112 = getelementptr inbounds nuw float, ptr %6, i64 %111, !dbg !274
  %113 = load float, ptr %112, align 4, !dbg !274
  %114 = getelementptr inbounds nuw float, ptr %4, i64 %111, !dbg !274
  store float %113, ptr %114, align 4, !dbg !274
  %115 = add i64 %108, 1, !dbg !274
  br label %107, !dbg !274

116:                                              ; preds = %119, %107
  %117 = phi i64 [ %124, %119 ], [ 0, %107 ], !dbg !274
  %118 = icmp slt i64 %117, %46, !dbg !274
  br i1 %118, label %119, label %125, !dbg !274

119:                                              ; preds = %116
  %120 = add nuw nsw i64 0, %117, !dbg !274
  %121 = getelementptr inbounds nuw float, ptr %5, i64 %120, !dbg !274
  %122 = load float, ptr %121, align 4, !dbg !274
  %123 = getelementptr inbounds nuw float, ptr %4, i64 %120, !dbg !274
  store float %122, ptr %123, align 4, !dbg !274
  %124 = add i64 %117, 1, !dbg !274
  br label %116, !dbg !274

125:                                              ; preds = %128, %116
  %126 = phi i64 [ %145, %128 ], [ 0, %116 ], !dbg !282
  %127 = icmp slt i64 %126, %46, !dbg !282
  br i1 %127, label %128, label %146, !dbg !282

128:                                              ; preds = %125
  %129 = add i64 0, %126, !dbg !282
  %130 = getelementptr float, ptr %4, i64 %129, !dbg !282
  %131 = load <1 x float>, ptr %130, align 4, !dbg !282
  %132 = fadd contract <1 x float> %131, zeroinitializer, !dbg !283
  %133 = fcmp ult <1 x float> %132, zeroinitializer, !dbg !284
  %134 = select <1 x i1> %133, <1 x float> zeroinitializer, <1 x float> %132, !dbg !285
  %135 = fcmp ugt <1 x float> %134, splat (float 6.000000e+00), !dbg !286
  %136 = select <1 x i1> %135, <1 x float> splat (float 6.000000e+00), <1 x float> %134, !dbg !287
  %137 = extractelement <1 x float> %136, i64 0, !dbg !282
  %138 = add i64 %35, %38, !dbg !282
  %139 = add i64 %41, %126, !dbg !282
  %140 = mul nuw nsw i64 %57, 784, !dbg !282
  %141 = mul nuw nsw i64 %138, 28, !dbg !282
  %142 = add nuw nsw i64 %140, %141, !dbg !282
  %143 = add nuw nsw i64 %142, %139, !dbg !282
  %144 = getelementptr inbounds nuw float, ptr %20, i64 %143, !dbg !282
  store float %137, ptr %144, align 4, !dbg !282
  %145 = add i64 %126, 1, !dbg !282
  br label %125, !dbg !282

146:                                              ; preds = %125
  %147 = add i64 %54, 1, !dbg !274
  br label %53, !dbg !274

148:                                              ; preds = %53
  %149 = add i64 %41, 8, !dbg !274
  br label %40, !dbg !274

150:                                              ; preds = %40
  %151 = add i64 %38, 1, !dbg !274
  br label %37, !dbg !274

152:                                              ; preds = %37
  ret i32 0, !dbg !288
}

define internal i32 @"main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !289 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !290
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !290
  %6 = load ptr, ptr %5, align 8, !dbg !290
  %7 = getelementptr float, ptr %6, i64 832000, !dbg !290
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !290
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !291
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !291
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !291
  %11 = load ptr, ptr %10, align 8, !dbg !291
  %12 = getelementptr float, ptr %11, i64 3778560, !dbg !291
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !291
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !292
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !292
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !292
  %16 = load ptr, ptr %15, align 8, !dbg !292
  %17 = getelementptr float, ptr %16, i64 1773328, !dbg !292
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !292
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !293
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !293
  %20 = zext i32 %19 to i64, !dbg !293
  %21 = sdiv i64 %20, 2, !dbg !293
  %22 = mul i64 %21, 2, !dbg !293
  %23 = icmp ne i64 %20, %22, !dbg !293
  %24 = icmp slt i64 %20, 0, !dbg !293
  %25 = and i1 %23, %24, !dbg !293
  %26 = add i64 %21, -1, !dbg !293
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !293
  %28 = srem i64 %20, 2, !dbg !293
  %29 = icmp slt i64 %28, 0, !dbg !293
  %30 = add nsw i64 %28, 2, !dbg !293
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !293
  %32 = mul nsw i64 %27, 32, !dbg !293
  %33 = mul nsw i64 %31, 14, !dbg !293
  br label %34, !dbg !293

34:                                               ; preds = %158, %3
  %35 = phi i64 [ %159, %158 ], [ 0, %3 ], !dbg !293
  %36 = icmp slt i64 %35, 32, !dbg !293
  br i1 %36, label %37, label %160, !dbg !293

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !293
  br label %39, !dbg !293

39:                                               ; preds = %156, %37
  %40 = phi i64 [ %157, %156 ], [ 0, %37 ], !dbg !293
  %41 = icmp slt i64 %40, 14, !dbg !293
  br i1 %41, label %42, label %158, !dbg !293

42:                                               ; preds = %141, %39
  %43 = phi i64 [ %150, %141 ], [ 0, %39 ], !dbg !293
  %44 = icmp slt i64 %43, 28, !dbg !293
  br i1 %44, label %45, label %156, !dbg !293

45:                                               ; preds = %49, %42
  %46 = phi i64 [ %140, %49 ], [ 0, %42 ], !dbg !293
  %47 = phi <1 x float> [ %139, %49 ], [ zeroinitializer, %42 ], !dbg !293
  %48 = icmp slt i64 %46, 128, !dbg !293
  br i1 %48, label %49, label %141, !dbg !293

49:                                               ; preds = %45
  %50 = add i64 %40, %33, !dbg !293
  %51 = mul i64 %46, 784, !dbg !293
  %52 = mul i64 %50, 28, !dbg !293
  %53 = add i64 %51, %52, !dbg !293
  %54 = add i64 %53, %43, !dbg !293
  %55 = getelementptr float, ptr %7, i64 %54, !dbg !293
  %56 = load <1 x float>, ptr %55, align 4, !dbg !293
  %57 = add i64 %46, 1, !dbg !293
  %58 = mul i64 %57, 784, !dbg !293
  %59 = add i64 %58, %52, !dbg !293
  %60 = add i64 %59, %43, !dbg !293
  %61 = getelementptr float, ptr %7, i64 %60, !dbg !293
  %62 = load <1 x float>, ptr %61, align 4, !dbg !293
  %63 = add i64 %46, 2, !dbg !293
  %64 = mul i64 %63, 784, !dbg !293
  %65 = add i64 %64, %52, !dbg !293
  %66 = add i64 %65, %43, !dbg !293
  %67 = getelementptr float, ptr %7, i64 %66, !dbg !293
  %68 = load <1 x float>, ptr %67, align 4, !dbg !293
  %69 = add i64 %46, 3, !dbg !293
  %70 = mul i64 %69, 784, !dbg !293
  %71 = add i64 %70, %52, !dbg !293
  %72 = add i64 %71, %43, !dbg !293
  %73 = getelementptr float, ptr %7, i64 %72, !dbg !293
  %74 = load <1 x float>, ptr %73, align 4, !dbg !293
  %75 = add i64 %46, 4, !dbg !293
  %76 = mul i64 %75, 784, !dbg !293
  %77 = add i64 %76, %52, !dbg !293
  %78 = add i64 %77, %43, !dbg !293
  %79 = getelementptr float, ptr %7, i64 %78, !dbg !293
  %80 = load <1 x float>, ptr %79, align 4, !dbg !293
  %81 = add i64 %46, 5, !dbg !293
  %82 = mul i64 %81, 784, !dbg !293
  %83 = add i64 %82, %52, !dbg !293
  %84 = add i64 %83, %43, !dbg !293
  %85 = getelementptr float, ptr %7, i64 %84, !dbg !293
  %86 = load <1 x float>, ptr %85, align 4, !dbg !293
  %87 = add i64 %46, 6, !dbg !293
  %88 = mul i64 %87, 784, !dbg !293
  %89 = add i64 %88, %52, !dbg !293
  %90 = add i64 %89, %43, !dbg !293
  %91 = getelementptr float, ptr %7, i64 %90, !dbg !293
  %92 = load <1 x float>, ptr %91, align 4, !dbg !293
  %93 = add i64 %46, 7, !dbg !293
  %94 = mul i64 %93, 784, !dbg !293
  %95 = add i64 %94, %52, !dbg !293
  %96 = add i64 %95, %43, !dbg !293
  %97 = getelementptr float, ptr %7, i64 %96, !dbg !293
  %98 = load <1 x float>, ptr %97, align 4, !dbg !293
  %99 = mul nuw nsw i64 %38, 128, !dbg !294
  %100 = add nuw nsw i64 %99, %46, !dbg !294
  %101 = getelementptr inbounds nuw float, ptr %12, i64 %100, !dbg !294
  %102 = load float, ptr %101, align 4, !dbg !294
  %103 = insertelement <1 x float> poison, float %102, i32 0, !dbg !294
  %104 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %56, <1 x float> %103, <1 x float> %47), !dbg !294
  %105 = add nuw nsw i64 %99, %57, !dbg !294
  %106 = getelementptr inbounds nuw float, ptr %12, i64 %105, !dbg !294
  %107 = load float, ptr %106, align 4, !dbg !294
  %108 = insertelement <1 x float> poison, float %107, i32 0, !dbg !294
  %109 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %108, <1 x float> %104), !dbg !294
  %110 = add nuw nsw i64 %99, %63, !dbg !294
  %111 = getelementptr inbounds nuw float, ptr %12, i64 %110, !dbg !294
  %112 = load float, ptr %111, align 4, !dbg !294
  %113 = insertelement <1 x float> poison, float %112, i32 0, !dbg !294
  %114 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %68, <1 x float> %113, <1 x float> %109), !dbg !294
  %115 = add nuw nsw i64 %99, %69, !dbg !294
  %116 = getelementptr inbounds nuw float, ptr %12, i64 %115, !dbg !294
  %117 = load float, ptr %116, align 4, !dbg !294
  %118 = insertelement <1 x float> poison, float %117, i32 0, !dbg !294
  %119 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %74, <1 x float> %118, <1 x float> %114), !dbg !294
  %120 = add nuw nsw i64 %99, %75, !dbg !294
  %121 = getelementptr inbounds nuw float, ptr %12, i64 %120, !dbg !294
  %122 = load float, ptr %121, align 4, !dbg !294
  %123 = insertelement <1 x float> poison, float %122, i32 0, !dbg !294
  %124 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %80, <1 x float> %123, <1 x float> %119), !dbg !294
  %125 = add nuw nsw i64 %99, %81, !dbg !294
  %126 = getelementptr inbounds nuw float, ptr %12, i64 %125, !dbg !294
  %127 = load float, ptr %126, align 4, !dbg !294
  %128 = insertelement <1 x float> poison, float %127, i32 0, !dbg !294
  %129 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %86, <1 x float> %128, <1 x float> %124), !dbg !294
  %130 = add nuw nsw i64 %99, %87, !dbg !294
  %131 = getelementptr inbounds nuw float, ptr %12, i64 %130, !dbg !294
  %132 = load float, ptr %131, align 4, !dbg !294
  %133 = insertelement <1 x float> poison, float %132, i32 0, !dbg !294
  %134 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %92, <1 x float> %133, <1 x float> %129), !dbg !294
  %135 = add nuw nsw i64 %99, %93, !dbg !294
  %136 = getelementptr inbounds nuw float, ptr %12, i64 %135, !dbg !294
  %137 = load float, ptr %136, align 4, !dbg !294
  %138 = insertelement <1 x float> poison, float %137, i32 0, !dbg !294
  %139 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %98, <1 x float> %138, <1 x float> %134), !dbg !294
  %140 = add i64 %46, 8, !dbg !293
  br label %45, !dbg !293

141:                                              ; preds = %45
  %142 = fadd contract <1 x float> %47, zeroinitializer, !dbg !295
  %143 = fcmp ult <1 x float> %142, zeroinitializer, !dbg !296
  %144 = select <1 x i1> %143, <1 x float> zeroinitializer, <1 x float> %142, !dbg !297
  %145 = fcmp ugt <1 x float> %144, splat (float 6.000000e+00), !dbg !298
  %146 = select <1 x i1> %145, <1 x float> splat (float 6.000000e+00), <1 x float> %144, !dbg !299
  %147 = extractelement <1 x float> %146, i64 0, !dbg !293
  %148 = add i64 %33, %40, !dbg !293
  %149 = add i64 %148, 1, !dbg !293
  %150 = add i64 %43, 1, !dbg !293
  %151 = mul nuw nsw i64 %38, 900, !dbg !293
  %152 = mul nuw nsw i64 %149, 30, !dbg !293
  %153 = add nuw nsw i64 %151, %152, !dbg !293
  %154 = add nuw nsw i64 %153, %150, !dbg !293
  %155 = getelementptr inbounds nuw float, ptr %17, i64 %154, !dbg !293
  store float %147, ptr %155, align 4, !dbg !293
  br label %42, !dbg !293

156:                                              ; preds = %42
  %157 = add i64 %40, 1, !dbg !293
  br label %39, !dbg !293

158:                                              ; preds = %39
  %159 = add i64 %35, 1, !dbg !293
  br label %34, !dbg !293

160:                                              ; preds = %34
  ret i32 0, !dbg !300
}

define internal i32 @"main_graph$async_dispatch_12_conv_28x28x256x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !301 {
  %4 = alloca float, i64 8, align 64, !dbg !302
  %5 = alloca float, i64 8, align 64, !dbg !302
  %6 = alloca float, i64 8, align 64, !dbg !303
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !304
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !304
  %9 = load ptr, ptr %8, align 8, !dbg !304
  %10 = getelementptr float, ptr %9, i64 1773328, !dbg !304
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !304
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !305
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !305
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !305
  %14 = load ptr, ptr %13, align 8, !dbg !305
  %15 = getelementptr float, ptr %14, i64 3926720, !dbg !305
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !305
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !306
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !306
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !306
  %19 = load ptr, ptr %18, align 8, !dbg !306
  %20 = getelementptr float, ptr %19, i64 401408, !dbg !306
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !306
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !302
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !302
  %23 = zext i32 %22 to i64, !dbg !302
  %24 = sdiv i64 %23, 8, !dbg !302
  %25 = mul i64 %24, 8, !dbg !302
  %26 = icmp ne i64 %23, %25, !dbg !302
  %27 = icmp slt i64 %23, 0, !dbg !302
  %28 = and i1 %26, %27, !dbg !302
  %29 = add i64 %24, -1, !dbg !302
  %30 = select i1 %28, i64 %29, i64 %24, !dbg !302
  %31 = srem i64 %23, 8, !dbg !302
  %32 = icmp slt i64 %31, 0, !dbg !302
  %33 = add nsw i64 %31, 8, !dbg !302
  %34 = select i1 %32, i64 %33, i64 %31, !dbg !302
  %35 = mul nsw i64 %30, 14, !dbg !302
  %36 = mul nsw i64 %34, 32, !dbg !302
  br label %37, !dbg !302

37:                                               ; preds = %146, %3
  %38 = phi i64 [ %147, %146 ], [ 0, %3 ], !dbg !302
  %39 = icmp slt i64 %38, 14, !dbg !302
  br i1 %39, label %40, label %148, !dbg !302

40:                                               ; preds = %144, %37
  %41 = phi i64 [ %145, %144 ], [ 0, %37 ], !dbg !302
  %42 = icmp slt i64 %41, 28, !dbg !302
  br i1 %42, label %43, label %146, !dbg !302

43:                                               ; preds = %40
  %44 = sub i64 28, %41, !dbg !302
  %45 = icmp slt i64 %44, 8, !dbg !302
  %46 = select i1 %45, i64 %44, i64 8, !dbg !302
  %47 = trunc i64 %46 to i32, !dbg !307
  %48 = insertelement <8 x i32> poison, i32 %47, i32 0, !dbg !307
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !307
  %50 = icmp sgt <8 x i32> %49, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !307
  %51 = getelementptr float, ptr %6, i64 0, !dbg !307
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %51, i32 4, <8 x i1> %50), !dbg !307
  br label %52, !dbg !302

52:                                               ; preds = %142, %43
  %53 = phi i64 [ %143, %142 ], [ 0, %43 ], !dbg !302
  %54 = icmp slt i64 %53, 32, !dbg !302
  br i1 %54, label %55, label %144, !dbg !302

55:                                               ; preds = %52
  %56 = add i64 %53, %36, !dbg !302
  br label %57, !dbg !302

57:                                               ; preds = %60, %55
  %58 = phi i64 [ %65, %60 ], [ 0, %55 ], !dbg !302
  %59 = icmp slt i64 %58, %46, !dbg !302
  br i1 %59, label %60, label %66, !dbg !302

60:                                               ; preds = %57
  %61 = add nuw nsw i64 0, %58, !dbg !302
  %62 = getelementptr inbounds nuw float, ptr %6, i64 %61, !dbg !302
  %63 = load float, ptr %62, align 4, !dbg !302
  %64 = getelementptr inbounds nuw float, ptr %5, i64 %61, !dbg !302
  store float %63, ptr %64, align 4, !dbg !302
  %65 = add i64 %58, 1, !dbg !302
  br label %57, !dbg !302

66:                                               ; preds = %101, %57
  %67 = phi i64 [ %102, %101 ], [ 0, %57 ], !dbg !302
  %68 = icmp slt i64 %67, 3, !dbg !302
  br i1 %68, label %69, label %103, !dbg !302

69:                                               ; preds = %66
  %70 = add i64 %67, %38, !dbg !302
  %71 = add i64 %70, %35, !dbg !302
  br label %72, !dbg !302

72:                                               ; preds = %99, %69
  %73 = phi i64 [ %100, %99 ], [ 0, %69 ], !dbg !302
  %74 = icmp slt i64 %73, %46, !dbg !302
  br i1 %74, label %75, label %101, !dbg !302

75:                                               ; preds = %78, %72
  %76 = phi i64 [ %98, %78 ], [ 0, %72 ], !dbg !302
  %77 = icmp slt i64 %76, 3, !dbg !302
  br i1 %77, label %78, label %99, !dbg !302

78:                                               ; preds = %75
  %79 = add i64 %41, %73, !dbg !302
  %80 = add i64 %79, %76, !dbg !302
  %81 = mul nuw nsw i64 %56, 900, !dbg !302
  %82 = mul nuw nsw i64 %71, 30, !dbg !302
  %83 = add nuw nsw i64 %81, %82, !dbg !302
  %84 = add nuw nsw i64 %83, %80, !dbg !302
  %85 = getelementptr inbounds nuw float, ptr %10, i64 %84, !dbg !302
  %86 = load float, ptr %85, align 4, !dbg !302
  %87 = mul nuw nsw i64 %56, 9, !dbg !302
  %88 = mul nuw nsw i64 %67, 3, !dbg !302
  %89 = add nuw nsw i64 %87, %88, !dbg !302
  %90 = add nuw nsw i64 %89, %76, !dbg !302
  %91 = getelementptr inbounds nuw float, ptr %15, i64 %90, !dbg !302
  %92 = load float, ptr %91, align 4, !dbg !302
  %93 = add nuw nsw i64 0, %73, !dbg !302
  %94 = getelementptr inbounds nuw float, ptr %5, i64 %93, !dbg !302
  %95 = load float, ptr %94, align 4, !dbg !302
  %96 = fmul contract float %86, %92, !dbg !308
  %97 = fadd contract float %95, %96, !dbg !309
  store float %97, ptr %94, align 4, !dbg !302
  %98 = add i64 %76, 1, !dbg !302
  br label %75, !dbg !302

99:                                               ; preds = %75
  %100 = add i64 %73, 1, !dbg !302
  br label %72, !dbg !302

101:                                              ; preds = %72
  %102 = add i64 %67, 1, !dbg !302
  br label %66, !dbg !302

103:                                              ; preds = %106, %66
  %104 = phi i64 [ %111, %106 ], [ 0, %66 ], !dbg !302
  %105 = icmp slt i64 %104, %46, !dbg !302
  br i1 %105, label %106, label %112, !dbg !302

106:                                              ; preds = %103
  %107 = add nuw nsw i64 0, %104, !dbg !302
  %108 = getelementptr inbounds nuw float, ptr %6, i64 %107, !dbg !302
  %109 = load float, ptr %108, align 4, !dbg !302
  %110 = getelementptr inbounds nuw float, ptr %4, i64 %107, !dbg !302
  store float %109, ptr %110, align 4, !dbg !302
  %111 = add i64 %104, 1, !dbg !302
  br label %103, !dbg !302

112:                                              ; preds = %115, %103
  %113 = phi i64 [ %120, %115 ], [ 0, %103 ], !dbg !302
  %114 = icmp slt i64 %113, %46, !dbg !302
  br i1 %114, label %115, label %121, !dbg !302

115:                                              ; preds = %112
  %116 = add nuw nsw i64 0, %113, !dbg !302
  %117 = getelementptr inbounds nuw float, ptr %5, i64 %116, !dbg !302
  %118 = load float, ptr %117, align 4, !dbg !302
  %119 = getelementptr inbounds nuw float, ptr %4, i64 %116, !dbg !302
  store float %118, ptr %119, align 4, !dbg !302
  %120 = add i64 %113, 1, !dbg !302
  br label %112, !dbg !302

121:                                              ; preds = %124, %112
  %122 = phi i64 [ %141, %124 ], [ 0, %112 ], !dbg !310
  %123 = icmp slt i64 %122, %46, !dbg !310
  br i1 %123, label %124, label %142, !dbg !310

124:                                              ; preds = %121
  %125 = add i64 0, %122, !dbg !310
  %126 = getelementptr float, ptr %4, i64 %125, !dbg !310
  %127 = load <1 x float>, ptr %126, align 4, !dbg !310
  %128 = fadd contract <1 x float> %127, zeroinitializer, !dbg !311
  %129 = fcmp ult <1 x float> %128, zeroinitializer, !dbg !312
  %130 = select <1 x i1> %129, <1 x float> zeroinitializer, <1 x float> %128, !dbg !313
  %131 = fcmp ugt <1 x float> %130, splat (float 6.000000e+00), !dbg !314
  %132 = select <1 x i1> %131, <1 x float> splat (float 6.000000e+00), <1 x float> %130, !dbg !315
  %133 = extractelement <1 x float> %132, i64 0, !dbg !310
  %134 = add i64 %35, %38, !dbg !310
  %135 = add i64 %41, %122, !dbg !310
  %136 = mul nuw nsw i64 %56, 784, !dbg !310
  %137 = mul nuw nsw i64 %134, 28, !dbg !310
  %138 = add nuw nsw i64 %136, %137, !dbg !310
  %139 = add nuw nsw i64 %138, %135, !dbg !310
  %140 = getelementptr inbounds nuw float, ptr %20, i64 %139, !dbg !310
  store float %133, ptr %140, align 4, !dbg !310
  %141 = add i64 %122, 1, !dbg !310
  br label %121, !dbg !310

142:                                              ; preds = %121
  %143 = add i64 %53, 1, !dbg !302
  br label %52, !dbg !302

144:                                              ; preds = %52
  %145 = add i64 %41, 8, !dbg !302
  br label %40, !dbg !302

146:                                              ; preds = %40
  %147 = add i64 %38, 1, !dbg !302
  br label %37, !dbg !302

148:                                              ; preds = %37
  ret i32 0, !dbg !316
}

define internal i32 @"main_graph$async_dispatch_13_matmul_like_256x784x256_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !317 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !318
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !318
  %6 = load ptr, ptr %5, align 8, !dbg !318
  %7 = getelementptr float, ptr %6, i64 401408, !dbg !318
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !318
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !319
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !319
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !319
  %11 = load ptr, ptr %10, align 8, !dbg !319
  %12 = getelementptr float, ptr %11, i64 3713024, !dbg !319
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !319
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !320
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !320
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !320
  %16 = load ptr, ptr %15, align 8, !dbg !320
  %17 = getelementptr float, ptr %16, i64 602112, !dbg !320
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !320
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !321
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !321
  %20 = zext i32 %19 to i64, !dbg !321
  %21 = sdiv i64 %20, 14, !dbg !321
  %22 = mul i64 %21, 14, !dbg !321
  %23 = icmp ne i64 %20, %22, !dbg !321
  %24 = icmp slt i64 %20, 0, !dbg !321
  %25 = and i1 %23, %24, !dbg !321
  %26 = add i64 %21, -1, !dbg !321
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !321
  %28 = srem i64 %20, 14, !dbg !321
  %29 = icmp slt i64 %28, 0, !dbg !321
  %30 = add nsw i64 %28, 14, !dbg !321
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !321
  %32 = mul nsw i64 %27, 64, !dbg !321
  %33 = mul nsw i64 %31, 56, !dbg !321
  br label %34, !dbg !321

34:                                               ; preds = %141, %3
  %35 = phi i64 [ %142, %141 ], [ 0, %3 ], !dbg !321
  %36 = icmp slt i64 %35, 64, !dbg !321
  br i1 %36, label %37, label %143, !dbg !321

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !321
  br label %39, !dbg !321

39:                                               ; preds = %130, %37
  %40 = phi i64 [ %140, %130 ], [ 0, %37 ], !dbg !321
  %41 = icmp slt i64 %40, 56, !dbg !321
  br i1 %41, label %42, label %141, !dbg !321

42:                                               ; preds = %39
  %43 = add i64 %40, %33, !dbg !321
  br label %44, !dbg !321

44:                                               ; preds = %48, %42
  %45 = phi i64 [ %129, %48 ], [ 0, %42 ], !dbg !321
  %46 = phi <1 x float> [ %128, %48 ], [ zeroinitializer, %42 ], !dbg !321
  %47 = icmp slt i64 %45, 256, !dbg !321
  br i1 %47, label %48, label %130, !dbg !321

48:                                               ; preds = %44
  %49 = mul i64 %45, 784, !dbg !321
  %50 = add i64 %49, %43, !dbg !321
  %51 = getelementptr float, ptr %7, i64 %50, !dbg !321
  %52 = load <1 x float>, ptr %51, align 4, !dbg !321
  %53 = add i64 %45, 1, !dbg !321
  %54 = mul i64 %53, 784, !dbg !321
  %55 = add i64 %54, %43, !dbg !321
  %56 = getelementptr float, ptr %7, i64 %55, !dbg !321
  %57 = load <1 x float>, ptr %56, align 4, !dbg !321
  %58 = add i64 %45, 2, !dbg !321
  %59 = mul i64 %58, 784, !dbg !321
  %60 = add i64 %59, %43, !dbg !321
  %61 = getelementptr float, ptr %7, i64 %60, !dbg !321
  %62 = load <1 x float>, ptr %61, align 4, !dbg !321
  %63 = add i64 %45, 3, !dbg !321
  %64 = mul i64 %63, 784, !dbg !321
  %65 = add i64 %64, %43, !dbg !321
  %66 = getelementptr float, ptr %7, i64 %65, !dbg !321
  %67 = load <1 x float>, ptr %66, align 4, !dbg !321
  %68 = add i64 %45, 4, !dbg !321
  %69 = mul i64 %68, 784, !dbg !321
  %70 = add i64 %69, %43, !dbg !321
  %71 = getelementptr float, ptr %7, i64 %70, !dbg !321
  %72 = load <1 x float>, ptr %71, align 4, !dbg !321
  %73 = add i64 %45, 5, !dbg !321
  %74 = mul i64 %73, 784, !dbg !321
  %75 = add i64 %74, %43, !dbg !321
  %76 = getelementptr float, ptr %7, i64 %75, !dbg !321
  %77 = load <1 x float>, ptr %76, align 4, !dbg !321
  %78 = add i64 %45, 6, !dbg !321
  %79 = mul i64 %78, 784, !dbg !321
  %80 = add i64 %79, %43, !dbg !321
  %81 = getelementptr float, ptr %7, i64 %80, !dbg !321
  %82 = load <1 x float>, ptr %81, align 4, !dbg !321
  %83 = add i64 %45, 7, !dbg !321
  %84 = mul i64 %83, 784, !dbg !321
  %85 = add i64 %84, %43, !dbg !321
  %86 = getelementptr float, ptr %7, i64 %85, !dbg !321
  %87 = load <1 x float>, ptr %86, align 4, !dbg !321
  %88 = mul nuw nsw i64 %38, 256, !dbg !322
  %89 = add nuw nsw i64 %88, %45, !dbg !322
  %90 = getelementptr inbounds nuw float, ptr %12, i64 %89, !dbg !322
  %91 = load float, ptr %90, align 4, !dbg !322
  %92 = insertelement <1 x float> poison, float %91, i32 0, !dbg !322
  %93 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %92, <1 x float> %46), !dbg !322
  %94 = add nuw nsw i64 %88, %53, !dbg !322
  %95 = getelementptr inbounds nuw float, ptr %12, i64 %94, !dbg !322
  %96 = load float, ptr %95, align 4, !dbg !322
  %97 = insertelement <1 x float> poison, float %96, i32 0, !dbg !322
  %98 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %57, <1 x float> %97, <1 x float> %93), !dbg !322
  %99 = add nuw nsw i64 %88, %58, !dbg !322
  %100 = getelementptr inbounds nuw float, ptr %12, i64 %99, !dbg !322
  %101 = load float, ptr %100, align 4, !dbg !322
  %102 = insertelement <1 x float> poison, float %101, i32 0, !dbg !322
  %103 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %102, <1 x float> %98), !dbg !322
  %104 = add nuw nsw i64 %88, %63, !dbg !322
  %105 = getelementptr inbounds nuw float, ptr %12, i64 %104, !dbg !322
  %106 = load float, ptr %105, align 4, !dbg !322
  %107 = insertelement <1 x float> poison, float %106, i32 0, !dbg !322
  %108 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %107, <1 x float> %103), !dbg !322
  %109 = add nuw nsw i64 %88, %68, !dbg !322
  %110 = getelementptr inbounds nuw float, ptr %12, i64 %109, !dbg !322
  %111 = load float, ptr %110, align 4, !dbg !322
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !322
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %112, <1 x float> %108), !dbg !322
  %114 = add nuw nsw i64 %88, %73, !dbg !322
  %115 = getelementptr inbounds nuw float, ptr %12, i64 %114, !dbg !322
  %116 = load float, ptr %115, align 4, !dbg !322
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !322
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %77, <1 x float> %117, <1 x float> %113), !dbg !322
  %119 = add nuw nsw i64 %88, %78, !dbg !322
  %120 = getelementptr inbounds nuw float, ptr %12, i64 %119, !dbg !322
  %121 = load float, ptr %120, align 4, !dbg !322
  %122 = insertelement <1 x float> poison, float %121, i32 0, !dbg !322
  %123 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %82, <1 x float> %122, <1 x float> %118), !dbg !322
  %124 = add nuw nsw i64 %88, %83, !dbg !322
  %125 = getelementptr inbounds nuw float, ptr %12, i64 %124, !dbg !322
  %126 = load float, ptr %125, align 4, !dbg !322
  %127 = insertelement <1 x float> poison, float %126, i32 0, !dbg !322
  %128 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %87, <1 x float> %127, <1 x float> %123), !dbg !322
  %129 = add i64 %45, 8, !dbg !321
  br label %44, !dbg !321

130:                                              ; preds = %44
  %131 = fadd contract <1 x float> %46, zeroinitializer, !dbg !323
  %132 = fcmp ult <1 x float> %131, zeroinitializer, !dbg !324
  %133 = select <1 x i1> %132, <1 x float> zeroinitializer, <1 x float> %131, !dbg !325
  %134 = fcmp ugt <1 x float> %133, splat (float 6.000000e+00), !dbg !326
  %135 = select <1 x i1> %134, <1 x float> splat (float 6.000000e+00), <1 x float> %133, !dbg !327
  %136 = extractelement <1 x float> %135, i64 0, !dbg !321
  %137 = mul nuw nsw i64 %38, 784, !dbg !321
  %138 = add nuw nsw i64 %137, %43, !dbg !321
  %139 = getelementptr inbounds nuw float, ptr %17, i64 %138, !dbg !321
  store float %136, ptr %139, align 4, !dbg !321
  %140 = add i64 %40, 1, !dbg !321
  br label %39, !dbg !321

141:                                              ; preds = %39
  %142 = add i64 %35, 1, !dbg !321
  br label %34, !dbg !321

143:                                              ; preds = %34
  ret i32 0, !dbg !328
}

define internal i32 @"main_graph$async_dispatch_14_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !329 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !330
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !330
  %6 = load ptr, ptr %5, align 8, !dbg !330
  %7 = getelementptr float, ptr %6, i64 602112, !dbg !331
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !331
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !332
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !332
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !332
  %11 = load ptr, ptr %10, align 8, !dbg !332
  %12 = getelementptr float, ptr %11, i64 1773328, !dbg !333
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !333
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !334
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !334
  %15 = zext i32 %14 to i64, !dbg !334
  %16 = sdiv i64 %15, 2, !dbg !334
  %17 = mul i64 %16, 2, !dbg !334
  %18 = icmp ne i64 %15, %17, !dbg !334
  %19 = icmp slt i64 %15, 0, !dbg !334
  %20 = and i1 %18, %19, !dbg !334
  %21 = add i64 %16, -1, !dbg !334
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !334
  %23 = srem i64 %15, 2, !dbg !334
  %24 = icmp slt i64 %23, 0, !dbg !334
  %25 = add nsw i64 %23, 2, !dbg !334
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !334
  %27 = mul nsw i64 %22, 32, !dbg !334
  %28 = mul nsw i64 %26, 14, !dbg !334
  br label %29, !dbg !334

29:                                               ; preds = %71, %3
  %30 = phi i64 [ %72, %71 ], [ 0, %3 ], !dbg !334
  %31 = icmp slt i64 %30, 32, !dbg !334
  br i1 %31, label %32, label %73, !dbg !334

32:                                               ; preds = %55, %29
  %33 = phi i64 [ %70, %55 ], [ 0, %29 ], !dbg !334
  %34 = icmp slt i64 %33, 14, !dbg !334
  br i1 %34, label %35, label %71, !dbg !334

35:                                               ; preds = %38, %32
  %36 = phi i64 [ %54, %38 ], [ 0, %32 ], !dbg !334
  %37 = icmp slt i64 %36, 24, !dbg !334
  br i1 %37, label %38, label %55, !dbg !334

38:                                               ; preds = %35
  %39 = add i64 %27, %30, !dbg !334
  %40 = add i64 %28, %33, !dbg !334
  %41 = mul i64 %39, 784, !dbg !334
  %42 = mul i64 %40, 28, !dbg !334
  %43 = add i64 %41, %42, !dbg !334
  %44 = add i64 %43, %36, !dbg !334
  %45 = getelementptr float, ptr %7, i64 %44, !dbg !334
  %46 = load <8 x float>, ptr %45, align 4, !dbg !334
  %47 = add i64 %40, 1, !dbg !334
  %48 = add i64 %36, 1, !dbg !334
  %49 = mul i64 %39, 900, !dbg !334
  %50 = mul i64 %47, 30, !dbg !334
  %51 = add i64 %49, %50, !dbg !334
  %52 = add i64 %51, %48, !dbg !334
  %53 = getelementptr float, ptr %12, i64 %52, !dbg !334
  store <8 x float> %46, ptr %53, align 4, !dbg !334
  %54 = add i64 %36, 8, !dbg !334
  br label %35, !dbg !334

55:                                               ; preds = %35
  %56 = add i64 %27, %30, !dbg !334
  %57 = add i64 %28, %33, !dbg !334
  %58 = mul i64 %56, 784, !dbg !334
  %59 = mul i64 %57, 28, !dbg !334
  %60 = add i64 %58, %59, !dbg !334
  %61 = add i64 %60, 24, !dbg !334
  %62 = getelementptr float, ptr %7, i64 %61, !dbg !334
  %63 = load <4 x float>, ptr %62, align 4, !dbg !334
  %64 = add i64 %57, 1, !dbg !334
  %65 = mul i64 %56, 900, !dbg !334
  %66 = mul i64 %64, 30, !dbg !334
  %67 = add i64 %65, %66, !dbg !334
  %68 = add i64 %67, 25, !dbg !334
  %69 = getelementptr float, ptr %12, i64 %68, !dbg !334
  store <4 x float> %63, ptr %69, align 4, !dbg !334
  %70 = add i64 %33, 1, !dbg !334
  br label %32, !dbg !334

71:                                               ; preds = %32
  %72 = add i64 %30, 1, !dbg !334
  br label %29, !dbg !334

73:                                               ; preds = %29
  ret i32 0, !dbg !335
}

define internal i32 @"main_graph$async_dispatch_15_conv_14x14x256x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !336 {
  %4 = alloca float, i64 8, align 64, !dbg !337
  %5 = alloca float, i64 8, align 64, !dbg !337
  %6 = alloca float, i64 8, align 64, !dbg !338
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !339
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !339
  %9 = load ptr, ptr %8, align 8, !dbg !339
  %10 = getelementptr float, ptr %9, i64 1773328, !dbg !339
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !339
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !340
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !340
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !340
  %14 = load ptr, ptr %13, align 8, !dbg !340
  %15 = getelementptr float, ptr %14, i64 3924416, !dbg !340
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !340
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !341
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !341
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !341
  %19 = load ptr, ptr %18, align 8, !dbg !341
  %20 = getelementptr float, ptr %19, i64 802816, !dbg !341
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !341
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !337
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !337
  %23 = zext i32 %22 to i64, !dbg !337
  %24 = sdiv i64 %23, 8, !dbg !337
  %25 = mul i64 %24, 8, !dbg !337
  %26 = icmp ne i64 %23, %25, !dbg !337
  %27 = icmp slt i64 %23, 0, !dbg !337
  %28 = and i1 %26, %27, !dbg !337
  %29 = add i64 %24, -1, !dbg !337
  %30 = select i1 %28, i64 %29, i64 %24, !dbg !337
  %31 = srem i64 %23, 8, !dbg !337
  %32 = icmp slt i64 %31, 0, !dbg !337
  %33 = add nsw i64 %31, 8, !dbg !337
  %34 = select i1 %32, i64 %33, i64 %31, !dbg !337
  %35 = mul nsw i64 %30, 7, !dbg !337
  %36 = mul nsw i64 %34, 32, !dbg !337
  br label %37, !dbg !337

37:                                               ; preds = %150, %3
  %38 = phi i64 [ %151, %150 ], [ 0, %3 ], !dbg !337
  %39 = icmp slt i64 %38, 7, !dbg !337
  br i1 %39, label %40, label %152, !dbg !337

40:                                               ; preds = %148, %37
  %41 = phi i64 [ %149, %148 ], [ 0, %37 ], !dbg !337
  %42 = icmp slt i64 %41, 14, !dbg !337
  br i1 %42, label %43, label %150, !dbg !337

43:                                               ; preds = %40
  %44 = sub i64 14, %41, !dbg !337
  %45 = icmp slt i64 %44, 8, !dbg !337
  %46 = select i1 %45, i64 %44, i64 8, !dbg !337
  %47 = trunc i64 %46 to i32, !dbg !342
  %48 = insertelement <8 x i32> poison, i32 %47, i32 0, !dbg !342
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !342
  %50 = icmp sgt <8 x i32> %49, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !342
  %51 = getelementptr float, ptr %6, i64 0, !dbg !342
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %51, i32 4, <8 x i1> %50), !dbg !342
  %52 = mul nsw i64 %41, 2, !dbg !337
  br label %53, !dbg !337

53:                                               ; preds = %146, %43
  %54 = phi i64 [ %147, %146 ], [ 0, %43 ], !dbg !337
  %55 = icmp slt i64 %54, 32, !dbg !337
  br i1 %55, label %56, label %148, !dbg !337

56:                                               ; preds = %53
  %57 = add i64 %54, %36, !dbg !337
  br label %58, !dbg !337

58:                                               ; preds = %61, %56
  %59 = phi i64 [ %66, %61 ], [ 0, %56 ], !dbg !337
  %60 = icmp slt i64 %59, %46, !dbg !337
  br i1 %60, label %61, label %67, !dbg !337

61:                                               ; preds = %58
  %62 = add nuw nsw i64 0, %59, !dbg !337
  %63 = getelementptr inbounds nuw float, ptr %6, i64 %62, !dbg !337
  %64 = load float, ptr %63, align 4, !dbg !337
  %65 = getelementptr inbounds nuw float, ptr %5, i64 %62, !dbg !337
  store float %64, ptr %65, align 4, !dbg !337
  %66 = add i64 %59, 1, !dbg !337
  br label %58, !dbg !337

67:                                               ; preds = %105, %58
  %68 = phi i64 [ %106, %105 ], [ 0, %58 ], !dbg !337
  %69 = icmp slt i64 %68, 3, !dbg !337
  br i1 %69, label %70, label %107, !dbg !337

70:                                               ; preds = %67
  %71 = mul nsw i64 %38, 2, !dbg !337
  %72 = mul nsw i64 %30, 14, !dbg !337
  %73 = add i64 %71, %72, !dbg !337
  %74 = add i64 %73, %68, !dbg !337
  br label %75, !dbg !337

75:                                               ; preds = %103, %70
  %76 = phi i64 [ %104, %103 ], [ 0, %70 ], !dbg !337
  %77 = icmp slt i64 %76, %46, !dbg !337
  br i1 %77, label %78, label %105, !dbg !337

78:                                               ; preds = %81, %75
  %79 = phi i64 [ %102, %81 ], [ 0, %75 ], !dbg !337
  %80 = icmp slt i64 %79, 3, !dbg !337
  br i1 %80, label %81, label %103, !dbg !337

81:                                               ; preds = %78
  %82 = mul nsw i64 %76, 2, !dbg !337
  %83 = add i64 %52, %82, !dbg !337
  %84 = add i64 %83, %79, !dbg !337
  %85 = mul nuw nsw i64 %57, 900, !dbg !337
  %86 = mul nuw nsw i64 %74, 30, !dbg !337
  %87 = add nuw nsw i64 %85, %86, !dbg !337
  %88 = add nuw nsw i64 %87, %84, !dbg !337
  %89 = getelementptr inbounds nuw float, ptr %10, i64 %88, !dbg !337
  %90 = load float, ptr %89, align 4, !dbg !337
  %91 = mul nuw nsw i64 %57, 9, !dbg !337
  %92 = mul nuw nsw i64 %68, 3, !dbg !337
  %93 = add nuw nsw i64 %91, %92, !dbg !337
  %94 = add nuw nsw i64 %93, %79, !dbg !337
  %95 = getelementptr inbounds nuw float, ptr %15, i64 %94, !dbg !337
  %96 = load float, ptr %95, align 4, !dbg !337
  %97 = add nuw nsw i64 0, %76, !dbg !337
  %98 = getelementptr inbounds nuw float, ptr %5, i64 %97, !dbg !337
  %99 = load float, ptr %98, align 4, !dbg !337
  %100 = fmul contract float %90, %96, !dbg !343
  %101 = fadd contract float %99, %100, !dbg !344
  store float %101, ptr %98, align 4, !dbg !337
  %102 = add i64 %79, 1, !dbg !337
  br label %78, !dbg !337

103:                                              ; preds = %78
  %104 = add i64 %76, 1, !dbg !337
  br label %75, !dbg !337

105:                                              ; preds = %75
  %106 = add i64 %68, 1, !dbg !337
  br label %67, !dbg !337

107:                                              ; preds = %110, %67
  %108 = phi i64 [ %115, %110 ], [ 0, %67 ], !dbg !337
  %109 = icmp slt i64 %108, %46, !dbg !337
  br i1 %109, label %110, label %116, !dbg !337

110:                                              ; preds = %107
  %111 = add nuw nsw i64 0, %108, !dbg !337
  %112 = getelementptr inbounds nuw float, ptr %6, i64 %111, !dbg !337
  %113 = load float, ptr %112, align 4, !dbg !337
  %114 = getelementptr inbounds nuw float, ptr %4, i64 %111, !dbg !337
  store float %113, ptr %114, align 4, !dbg !337
  %115 = add i64 %108, 1, !dbg !337
  br label %107, !dbg !337

116:                                              ; preds = %119, %107
  %117 = phi i64 [ %124, %119 ], [ 0, %107 ], !dbg !337
  %118 = icmp slt i64 %117, %46, !dbg !337
  br i1 %118, label %119, label %125, !dbg !337

119:                                              ; preds = %116
  %120 = add nuw nsw i64 0, %117, !dbg !337
  %121 = getelementptr inbounds nuw float, ptr %5, i64 %120, !dbg !337
  %122 = load float, ptr %121, align 4, !dbg !337
  %123 = getelementptr inbounds nuw float, ptr %4, i64 %120, !dbg !337
  store float %122, ptr %123, align 4, !dbg !337
  %124 = add i64 %117, 1, !dbg !337
  br label %116, !dbg !337

125:                                              ; preds = %128, %116
  %126 = phi i64 [ %145, %128 ], [ 0, %116 ], !dbg !345
  %127 = icmp slt i64 %126, %46, !dbg !345
  br i1 %127, label %128, label %146, !dbg !345

128:                                              ; preds = %125
  %129 = add i64 0, %126, !dbg !345
  %130 = getelementptr float, ptr %4, i64 %129, !dbg !345
  %131 = load <1 x float>, ptr %130, align 4, !dbg !345
  %132 = fadd contract <1 x float> %131, zeroinitializer, !dbg !346
  %133 = fcmp ult <1 x float> %132, zeroinitializer, !dbg !347
  %134 = select <1 x i1> %133, <1 x float> zeroinitializer, <1 x float> %132, !dbg !348
  %135 = fcmp ugt <1 x float> %134, splat (float 6.000000e+00), !dbg !349
  %136 = select <1 x i1> %135, <1 x float> splat (float 6.000000e+00), <1 x float> %134, !dbg !350
  %137 = extractelement <1 x float> %136, i64 0, !dbg !345
  %138 = add i64 %35, %38, !dbg !345
  %139 = add i64 %41, %126, !dbg !345
  %140 = mul nuw nsw i64 %57, 196, !dbg !345
  %141 = mul nuw nsw i64 %138, 14, !dbg !345
  %142 = add nuw nsw i64 %140, %141, !dbg !345
  %143 = add nuw nsw i64 %142, %139, !dbg !345
  %144 = getelementptr inbounds nuw float, ptr %20, i64 %143, !dbg !345
  store float %137, ptr %144, align 4, !dbg !345
  %145 = add i64 %126, 1, !dbg !345
  br label %125, !dbg !345

146:                                              ; preds = %125
  %147 = add i64 %54, 1, !dbg !337
  br label %53, !dbg !337

148:                                              ; preds = %53
  %149 = add i64 %41, 8, !dbg !337
  br label %40, !dbg !337

150:                                              ; preds = %40
  %151 = add i64 %38, 1, !dbg !337
  br label %37, !dbg !337

152:                                              ; preds = %37
  ret i32 0, !dbg !351
}

define internal i32 @"main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !352 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !353
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !353
  %6 = load ptr, ptr %5, align 8, !dbg !353
  %7 = getelementptr float, ptr %6, i64 802816, !dbg !353
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !353
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !354
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !354
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !354
  %11 = load ptr, ptr %10, align 8, !dbg !354
  %12 = getelementptr float, ptr %11, i64 3581952, !dbg !354
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !354
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !355
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !355
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !355
  %16 = load ptr, ptr %15, align 8, !dbg !355
  %17 = getelementptr float, ptr %16, i64 401408, !dbg !355
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !355
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !356
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !356
  %20 = zext i32 %19 to i64, !dbg !356
  %21 = sdiv i64 %20, 2, !dbg !356
  %22 = mul i64 %21, 2, !dbg !356
  %23 = icmp ne i64 %20, %22, !dbg !356
  %24 = icmp slt i64 %20, 0, !dbg !356
  %25 = and i1 %23, %24, !dbg !356
  %26 = add i64 %21, -1, !dbg !356
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !356
  %28 = srem i64 %20, 2, !dbg !356
  %29 = icmp slt i64 %28, 0, !dbg !356
  %30 = add nsw i64 %28, 2, !dbg !356
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !356
  %32 = mul nsw i64 %27, 64, !dbg !356
  %33 = mul nsw i64 %31, 7, !dbg !356
  br label %34, !dbg !356

34:                                               ; preds = %158, %3
  %35 = phi i64 [ %159, %158 ], [ 0, %3 ], !dbg !356
  %36 = icmp slt i64 %35, 64, !dbg !356
  br i1 %36, label %37, label %160, !dbg !356

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !356
  br label %39, !dbg !356

39:                                               ; preds = %156, %37
  %40 = phi i64 [ %157, %156 ], [ 0, %37 ], !dbg !356
  %41 = icmp slt i64 %40, 7, !dbg !356
  br i1 %41, label %42, label %158, !dbg !356

42:                                               ; preds = %141, %39
  %43 = phi i64 [ %150, %141 ], [ 0, %39 ], !dbg !356
  %44 = icmp slt i64 %43, 14, !dbg !356
  br i1 %44, label %45, label %156, !dbg !356

45:                                               ; preds = %49, %42
  %46 = phi i64 [ %140, %49 ], [ 0, %42 ], !dbg !356
  %47 = phi <1 x float> [ %139, %49 ], [ zeroinitializer, %42 ], !dbg !356
  %48 = icmp slt i64 %46, 256, !dbg !356
  br i1 %48, label %49, label %141, !dbg !356

49:                                               ; preds = %45
  %50 = add i64 %40, %33, !dbg !356
  %51 = mul i64 %46, 196, !dbg !356
  %52 = mul i64 %50, 14, !dbg !356
  %53 = add i64 %51, %52, !dbg !356
  %54 = add i64 %53, %43, !dbg !356
  %55 = getelementptr float, ptr %7, i64 %54, !dbg !356
  %56 = load <1 x float>, ptr %55, align 4, !dbg !356
  %57 = add i64 %46, 1, !dbg !356
  %58 = mul i64 %57, 196, !dbg !356
  %59 = add i64 %58, %52, !dbg !356
  %60 = add i64 %59, %43, !dbg !356
  %61 = getelementptr float, ptr %7, i64 %60, !dbg !356
  %62 = load <1 x float>, ptr %61, align 4, !dbg !356
  %63 = add i64 %46, 2, !dbg !356
  %64 = mul i64 %63, 196, !dbg !356
  %65 = add i64 %64, %52, !dbg !356
  %66 = add i64 %65, %43, !dbg !356
  %67 = getelementptr float, ptr %7, i64 %66, !dbg !356
  %68 = load <1 x float>, ptr %67, align 4, !dbg !356
  %69 = add i64 %46, 3, !dbg !356
  %70 = mul i64 %69, 196, !dbg !356
  %71 = add i64 %70, %52, !dbg !356
  %72 = add i64 %71, %43, !dbg !356
  %73 = getelementptr float, ptr %7, i64 %72, !dbg !356
  %74 = load <1 x float>, ptr %73, align 4, !dbg !356
  %75 = add i64 %46, 4, !dbg !356
  %76 = mul i64 %75, 196, !dbg !356
  %77 = add i64 %76, %52, !dbg !356
  %78 = add i64 %77, %43, !dbg !356
  %79 = getelementptr float, ptr %7, i64 %78, !dbg !356
  %80 = load <1 x float>, ptr %79, align 4, !dbg !356
  %81 = add i64 %46, 5, !dbg !356
  %82 = mul i64 %81, 196, !dbg !356
  %83 = add i64 %82, %52, !dbg !356
  %84 = add i64 %83, %43, !dbg !356
  %85 = getelementptr float, ptr %7, i64 %84, !dbg !356
  %86 = load <1 x float>, ptr %85, align 4, !dbg !356
  %87 = add i64 %46, 6, !dbg !356
  %88 = mul i64 %87, 196, !dbg !356
  %89 = add i64 %88, %52, !dbg !356
  %90 = add i64 %89, %43, !dbg !356
  %91 = getelementptr float, ptr %7, i64 %90, !dbg !356
  %92 = load <1 x float>, ptr %91, align 4, !dbg !356
  %93 = add i64 %46, 7, !dbg !356
  %94 = mul i64 %93, 196, !dbg !356
  %95 = add i64 %94, %52, !dbg !356
  %96 = add i64 %95, %43, !dbg !356
  %97 = getelementptr float, ptr %7, i64 %96, !dbg !356
  %98 = load <1 x float>, ptr %97, align 4, !dbg !356
  %99 = mul nuw nsw i64 %38, 256, !dbg !357
  %100 = add nuw nsw i64 %99, %46, !dbg !357
  %101 = getelementptr inbounds nuw float, ptr %12, i64 %100, !dbg !357
  %102 = load float, ptr %101, align 4, !dbg !357
  %103 = insertelement <1 x float> poison, float %102, i32 0, !dbg !357
  %104 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %56, <1 x float> %103, <1 x float> %47), !dbg !357
  %105 = add nuw nsw i64 %99, %57, !dbg !357
  %106 = getelementptr inbounds nuw float, ptr %12, i64 %105, !dbg !357
  %107 = load float, ptr %106, align 4, !dbg !357
  %108 = insertelement <1 x float> poison, float %107, i32 0, !dbg !357
  %109 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %108, <1 x float> %104), !dbg !357
  %110 = add nuw nsw i64 %99, %63, !dbg !357
  %111 = getelementptr inbounds nuw float, ptr %12, i64 %110, !dbg !357
  %112 = load float, ptr %111, align 4, !dbg !357
  %113 = insertelement <1 x float> poison, float %112, i32 0, !dbg !357
  %114 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %68, <1 x float> %113, <1 x float> %109), !dbg !357
  %115 = add nuw nsw i64 %99, %69, !dbg !357
  %116 = getelementptr inbounds nuw float, ptr %12, i64 %115, !dbg !357
  %117 = load float, ptr %116, align 4, !dbg !357
  %118 = insertelement <1 x float> poison, float %117, i32 0, !dbg !357
  %119 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %74, <1 x float> %118, <1 x float> %114), !dbg !357
  %120 = add nuw nsw i64 %99, %75, !dbg !357
  %121 = getelementptr inbounds nuw float, ptr %12, i64 %120, !dbg !357
  %122 = load float, ptr %121, align 4, !dbg !357
  %123 = insertelement <1 x float> poison, float %122, i32 0, !dbg !357
  %124 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %80, <1 x float> %123, <1 x float> %119), !dbg !357
  %125 = add nuw nsw i64 %99, %81, !dbg !357
  %126 = getelementptr inbounds nuw float, ptr %12, i64 %125, !dbg !357
  %127 = load float, ptr %126, align 4, !dbg !357
  %128 = insertelement <1 x float> poison, float %127, i32 0, !dbg !357
  %129 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %86, <1 x float> %128, <1 x float> %124), !dbg !357
  %130 = add nuw nsw i64 %99, %87, !dbg !357
  %131 = getelementptr inbounds nuw float, ptr %12, i64 %130, !dbg !357
  %132 = load float, ptr %131, align 4, !dbg !357
  %133 = insertelement <1 x float> poison, float %132, i32 0, !dbg !357
  %134 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %92, <1 x float> %133, <1 x float> %129), !dbg !357
  %135 = add nuw nsw i64 %99, %93, !dbg !357
  %136 = getelementptr inbounds nuw float, ptr %12, i64 %135, !dbg !357
  %137 = load float, ptr %136, align 4, !dbg !357
  %138 = insertelement <1 x float> poison, float %137, i32 0, !dbg !357
  %139 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %98, <1 x float> %138, <1 x float> %134), !dbg !357
  %140 = add i64 %46, 8, !dbg !356
  br label %45, !dbg !356

141:                                              ; preds = %45
  %142 = fadd contract <1 x float> %47, zeroinitializer, !dbg !358
  %143 = fcmp ult <1 x float> %142, zeroinitializer, !dbg !359
  %144 = select <1 x i1> %143, <1 x float> zeroinitializer, <1 x float> %142, !dbg !360
  %145 = fcmp ugt <1 x float> %144, splat (float 6.000000e+00), !dbg !361
  %146 = select <1 x i1> %145, <1 x float> splat (float 6.000000e+00), <1 x float> %144, !dbg !362
  %147 = extractelement <1 x float> %146, i64 0, !dbg !356
  %148 = add i64 %33, %40, !dbg !356
  %149 = add i64 %148, 1, !dbg !356
  %150 = add i64 %43, 1, !dbg !356
  %151 = mul nuw nsw i64 %38, 256, !dbg !356
  %152 = mul nuw nsw i64 %149, 16, !dbg !356
  %153 = add nuw nsw i64 %151, %152, !dbg !356
  %154 = add nuw nsw i64 %153, %150, !dbg !356
  %155 = getelementptr inbounds nuw float, ptr %17, i64 %154, !dbg !356
  store float %147, ptr %155, align 4, !dbg !356
  br label %42, !dbg !356

156:                                              ; preds = %42
  %157 = add i64 %40, 1, !dbg !356
  br label %39, !dbg !356

158:                                              ; preds = %39
  %159 = add i64 %35, 1, !dbg !356
  br label %34, !dbg !356

160:                                              ; preds = %34
  ret i32 0, !dbg !363
}

define internal i32 @"main_graph$async_dispatch_17_conv_14x14x512x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !364 {
  %4 = alloca float, i64 8, align 64, !dbg !365
  %5 = alloca float, i64 8, align 64, !dbg !365
  %6 = alloca float, i64 8, align 64, !dbg !366
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !367
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 9, !dbg !367
  %9 = load i32, ptr %8, align 4, !dbg !367
  %10 = getelementptr i32, ptr %8, i32 1, !dbg !368
  %11 = load i32, ptr %10, align 4, !dbg !368
  %12 = zext i32 %9 to i64, !dbg !369
  %13 = zext i32 %11 to i64, !dbg !370
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !371
  %15 = load ptr, ptr %14, align 8, !dbg !371
  %16 = mul i64 %12, 8, !dbg !371
  %17 = udiv i64 %16, 32, !dbg !371
  %18 = getelementptr float, ptr %15, i64 %17, !dbg !371
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !371
  %19 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !372
  %20 = extractvalue %iree_hal_executable_dispatch_state_v0_t %19, 10, !dbg !372
  %21 = getelementptr ptr, ptr %20, i32 1, !dbg !372
  %22 = load ptr, ptr %21, align 8, !dbg !372
  %23 = mul i64 %13, 8, !dbg !372
  %24 = udiv i64 %23, 32, !dbg !372
  %25 = getelementptr float, ptr %22, i64 %24, !dbg !372
  call void @llvm.assume(i1 true) [ "align"(ptr %25, i64 64) ], !dbg !372
  %26 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !373
  %27 = extractvalue %iree_hal_executable_dispatch_state_v0_t %26, 10, !dbg !373
  %28 = getelementptr ptr, ptr %27, i32 2, !dbg !373
  %29 = load ptr, ptr %28, align 8, !dbg !373
  %30 = getelementptr float, ptr %29, i64 802816, !dbg !373
  call void @llvm.assume(i1 true) [ "align"(ptr %30, i64 64) ], !dbg !373
  %31 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !365
  %32 = extractvalue %iree_hal_executable_workgroup_state_v0_t %31, 0, !dbg !365
  %33 = zext i32 %32 to i64, !dbg !365
  %34 = mul nsw i64 %33, 32, !dbg !365
  br label %35, !dbg !365

35:                                               ; preds = %142, %3
  %36 = phi i64 [ %143, %142 ], [ 0, %3 ], !dbg !365
  %37 = icmp slt i64 %36, 14, !dbg !365
  br i1 %37, label %38, label %144, !dbg !365

38:                                               ; preds = %140, %35
  %39 = phi i64 [ %141, %140 ], [ 0, %35 ], !dbg !365
  %40 = icmp slt i64 %39, 14, !dbg !365
  br i1 %40, label %41, label %142, !dbg !365

41:                                               ; preds = %38
  %42 = sub i64 14, %39, !dbg !365
  %43 = icmp slt i64 %42, 8, !dbg !365
  %44 = select i1 %43, i64 %42, i64 8, !dbg !365
  %45 = trunc i64 %44 to i32, !dbg !374
  %46 = insertelement <8 x i32> poison, i32 %45, i32 0, !dbg !374
  %47 = shufflevector <8 x i32> %46, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !374
  %48 = icmp sgt <8 x i32> %47, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !374
  %49 = getelementptr float, ptr %6, i64 0, !dbg !374
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %49, i32 4, <8 x i1> %48), !dbg !374
  br label %50, !dbg !365

50:                                               ; preds = %138, %41
  %51 = phi i64 [ %139, %138 ], [ 0, %41 ], !dbg !365
  %52 = icmp slt i64 %51, 32, !dbg !365
  br i1 %52, label %53, label %140, !dbg !365

53:                                               ; preds = %50
  %54 = add i64 %51, %34, !dbg !365
  br label %55, !dbg !365

55:                                               ; preds = %58, %53
  %56 = phi i64 [ %63, %58 ], [ 0, %53 ], !dbg !365
  %57 = icmp slt i64 %56, %44, !dbg !365
  br i1 %57, label %58, label %64, !dbg !365

58:                                               ; preds = %55
  %59 = add nuw nsw i64 0, %56, !dbg !365
  %60 = getelementptr inbounds nuw float, ptr %6, i64 %59, !dbg !365
  %61 = load float, ptr %60, align 4, !dbg !365
  %62 = getelementptr inbounds nuw float, ptr %5, i64 %59, !dbg !365
  store float %61, ptr %62, align 4, !dbg !365
  %63 = add i64 %56, 1, !dbg !365
  br label %55, !dbg !365

64:                                               ; preds = %98, %55
  %65 = phi i64 [ %99, %98 ], [ 0, %55 ], !dbg !365
  %66 = icmp slt i64 %65, 3, !dbg !365
  br i1 %66, label %67, label %100, !dbg !365

67:                                               ; preds = %64
  %68 = add i64 %65, %36, !dbg !365
  br label %69, !dbg !365

69:                                               ; preds = %96, %67
  %70 = phi i64 [ %97, %96 ], [ 0, %67 ], !dbg !365
  %71 = icmp slt i64 %70, %44, !dbg !365
  br i1 %71, label %72, label %98, !dbg !365

72:                                               ; preds = %75, %69
  %73 = phi i64 [ %95, %75 ], [ 0, %69 ], !dbg !365
  %74 = icmp slt i64 %73, 3, !dbg !365
  br i1 %74, label %75, label %96, !dbg !365

75:                                               ; preds = %72
  %76 = add i64 %39, %70, !dbg !365
  %77 = add i64 %76, %73, !dbg !365
  %78 = mul nuw nsw i64 %54, 256, !dbg !365
  %79 = mul nuw nsw i64 %68, 16, !dbg !365
  %80 = add nuw nsw i64 %78, %79, !dbg !365
  %81 = add nuw nsw i64 %80, %77, !dbg !365
  %82 = getelementptr inbounds nuw float, ptr %18, i64 %81, !dbg !365
  %83 = load float, ptr %82, align 4, !dbg !365
  %84 = mul nuw nsw i64 %54, 9, !dbg !365
  %85 = mul nuw nsw i64 %65, 3, !dbg !365
  %86 = add nuw nsw i64 %84, %85, !dbg !365
  %87 = add nuw nsw i64 %86, %73, !dbg !365
  %88 = getelementptr inbounds nuw float, ptr %25, i64 %87, !dbg !365
  %89 = load float, ptr %88, align 4, !dbg !365
  %90 = add nuw nsw i64 0, %70, !dbg !365
  %91 = getelementptr inbounds nuw float, ptr %5, i64 %90, !dbg !365
  %92 = load float, ptr %91, align 4, !dbg !365
  %93 = fmul contract float %83, %89, !dbg !375
  %94 = fadd contract float %92, %93, !dbg !376
  store float %94, ptr %91, align 4, !dbg !365
  %95 = add i64 %73, 1, !dbg !365
  br label %72, !dbg !365

96:                                               ; preds = %72
  %97 = add i64 %70, 1, !dbg !365
  br label %69, !dbg !365

98:                                               ; preds = %69
  %99 = add i64 %65, 1, !dbg !365
  br label %64, !dbg !365

100:                                              ; preds = %103, %64
  %101 = phi i64 [ %108, %103 ], [ 0, %64 ], !dbg !365
  %102 = icmp slt i64 %101, %44, !dbg !365
  br i1 %102, label %103, label %109, !dbg !365

103:                                              ; preds = %100
  %104 = add nuw nsw i64 0, %101, !dbg !365
  %105 = getelementptr inbounds nuw float, ptr %6, i64 %104, !dbg !365
  %106 = load float, ptr %105, align 4, !dbg !365
  %107 = getelementptr inbounds nuw float, ptr %4, i64 %104, !dbg !365
  store float %106, ptr %107, align 4, !dbg !365
  %108 = add i64 %101, 1, !dbg !365
  br label %100, !dbg !365

109:                                              ; preds = %112, %100
  %110 = phi i64 [ %117, %112 ], [ 0, %100 ], !dbg !365
  %111 = icmp slt i64 %110, %44, !dbg !365
  br i1 %111, label %112, label %118, !dbg !365

112:                                              ; preds = %109
  %113 = add nuw nsw i64 0, %110, !dbg !365
  %114 = getelementptr inbounds nuw float, ptr %5, i64 %113, !dbg !365
  %115 = load float, ptr %114, align 4, !dbg !365
  %116 = getelementptr inbounds nuw float, ptr %4, i64 %113, !dbg !365
  store float %115, ptr %116, align 4, !dbg !365
  %117 = add i64 %110, 1, !dbg !365
  br label %109, !dbg !365

118:                                              ; preds = %121, %109
  %119 = phi i64 [ %137, %121 ], [ 0, %109 ], !dbg !377
  %120 = icmp slt i64 %119, %44, !dbg !377
  br i1 %120, label %121, label %138, !dbg !377

121:                                              ; preds = %118
  %122 = add i64 0, %119, !dbg !377
  %123 = getelementptr float, ptr %4, i64 %122, !dbg !377
  %124 = load <1 x float>, ptr %123, align 4, !dbg !377
  %125 = fadd contract <1 x float> %124, zeroinitializer, !dbg !378
  %126 = fcmp ult <1 x float> %125, zeroinitializer, !dbg !379
  %127 = select <1 x i1> %126, <1 x float> zeroinitializer, <1 x float> %125, !dbg !380
  %128 = fcmp ugt <1 x float> %127, splat (float 6.000000e+00), !dbg !381
  %129 = select <1 x i1> %128, <1 x float> splat (float 6.000000e+00), <1 x float> %127, !dbg !382
  %130 = extractelement <1 x float> %129, i64 0, !dbg !377
  %131 = add i64 %39, %119, !dbg !377
  %132 = mul nuw nsw i64 %54, 196, !dbg !377
  %133 = mul nuw nsw i64 %36, 14, !dbg !377
  %134 = add nuw nsw i64 %132, %133, !dbg !377
  %135 = add nuw nsw i64 %134, %131, !dbg !377
  %136 = getelementptr inbounds nuw float, ptr %30, i64 %135, !dbg !377
  store float %130, ptr %136, align 4, !dbg !377
  %137 = add i64 %119, 1, !dbg !377
  br label %118, !dbg !377

138:                                              ; preds = %118
  %139 = add i64 %51, 1, !dbg !365
  br label %50, !dbg !365

140:                                              ; preds = %50
  %141 = add i64 %39, 8, !dbg !365
  br label %38, !dbg !365

142:                                              ; preds = %38
  %143 = add i64 %36, 1, !dbg !365
  br label %35, !dbg !365

144:                                              ; preds = %35
  ret i32 0, !dbg !383
}

define internal i32 @"main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !384 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !385
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !385
  %6 = load i32, ptr %5, align 4, !dbg !385
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !386
  %8 = load i32, ptr %7, align 4, !dbg !386
  %9 = zext i32 %6 to i64, !dbg !387
  %10 = zext i32 %8 to i64, !dbg !388
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !389
  %12 = load ptr, ptr %11, align 8, !dbg !389
  %13 = getelementptr float, ptr %12, i64 802816, !dbg !389
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !389
  %14 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !390
  %15 = extractvalue %iree_hal_executable_dispatch_state_v0_t %14, 10, !dbg !390
  %16 = getelementptr ptr, ptr %15, i32 1, !dbg !390
  %17 = load ptr, ptr %16, align 8, !dbg !390
  %18 = mul i64 %9, 8, !dbg !390
  %19 = udiv i64 %18, 32, !dbg !390
  %20 = getelementptr float, ptr %17, i64 %19, !dbg !390
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !390
  %21 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !391
  %22 = extractvalue %iree_hal_executable_dispatch_state_v0_t %21, 10, !dbg !391
  %23 = getelementptr ptr, ptr %22, i32 2, !dbg !391
  %24 = load ptr, ptr %23, align 8, !dbg !391
  %25 = mul i64 %10, 8, !dbg !391
  %26 = udiv i64 %25, 32, !dbg !391
  %27 = getelementptr float, ptr %24, i64 %26, !dbg !391
  call void @llvm.assume(i1 true) [ "align"(ptr %27, i64 64) ], !dbg !391
  %28 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !392
  %29 = extractvalue %iree_hal_executable_workgroup_state_v0_t %28, 0, !dbg !392
  %30 = zext i32 %29 to i64, !dbg !392
  %31 = sdiv i64 %30, 2, !dbg !392
  %32 = mul i64 %31, 2, !dbg !392
  %33 = icmp ne i64 %30, %32, !dbg !392
  %34 = icmp slt i64 %30, 0, !dbg !392
  %35 = and i1 %33, %34, !dbg !392
  %36 = add i64 %31, -1, !dbg !392
  %37 = select i1 %35, i64 %36, i64 %31, !dbg !392
  %38 = srem i64 %30, 2, !dbg !392
  %39 = icmp slt i64 %38, 0, !dbg !392
  %40 = add nsw i64 %38, 2, !dbg !392
  %41 = select i1 %39, i64 %40, i64 %38, !dbg !392
  %42 = mul nsw i64 %37, 64, !dbg !392
  %43 = mul nsw i64 %41, 7, !dbg !392
  br label %44, !dbg !392

44:                                               ; preds = %168, %3
  %45 = phi i64 [ %169, %168 ], [ 0, %3 ], !dbg !392
  %46 = icmp slt i64 %45, 64, !dbg !392
  br i1 %46, label %47, label %170, !dbg !392

47:                                               ; preds = %44
  %48 = add i64 %45, %42, !dbg !392
  br label %49, !dbg !392

49:                                               ; preds = %166, %47
  %50 = phi i64 [ %167, %166 ], [ 0, %47 ], !dbg !392
  %51 = icmp slt i64 %50, 7, !dbg !392
  br i1 %51, label %52, label %168, !dbg !392

52:                                               ; preds = %151, %49
  %53 = phi i64 [ %160, %151 ], [ 0, %49 ], !dbg !392
  %54 = icmp slt i64 %53, 14, !dbg !392
  br i1 %54, label %55, label %166, !dbg !392

55:                                               ; preds = %59, %52
  %56 = phi i64 [ %150, %59 ], [ 0, %52 ], !dbg !392
  %57 = phi <1 x float> [ %149, %59 ], [ zeroinitializer, %52 ], !dbg !392
  %58 = icmp slt i64 %56, 512, !dbg !392
  br i1 %58, label %59, label %151, !dbg !392

59:                                               ; preds = %55
  %60 = add i64 %50, %43, !dbg !392
  %61 = mul i64 %56, 196, !dbg !392
  %62 = mul i64 %60, 14, !dbg !392
  %63 = add i64 %61, %62, !dbg !392
  %64 = add i64 %63, %53, !dbg !392
  %65 = getelementptr float, ptr %13, i64 %64, !dbg !392
  %66 = load <1 x float>, ptr %65, align 4, !dbg !392
  %67 = add i64 %56, 1, !dbg !392
  %68 = mul i64 %67, 196, !dbg !392
  %69 = add i64 %68, %62, !dbg !392
  %70 = add i64 %69, %53, !dbg !392
  %71 = getelementptr float, ptr %13, i64 %70, !dbg !392
  %72 = load <1 x float>, ptr %71, align 4, !dbg !392
  %73 = add i64 %56, 2, !dbg !392
  %74 = mul i64 %73, 196, !dbg !392
  %75 = add i64 %74, %62, !dbg !392
  %76 = add i64 %75, %53, !dbg !392
  %77 = getelementptr float, ptr %13, i64 %76, !dbg !392
  %78 = load <1 x float>, ptr %77, align 4, !dbg !392
  %79 = add i64 %56, 3, !dbg !392
  %80 = mul i64 %79, 196, !dbg !392
  %81 = add i64 %80, %62, !dbg !392
  %82 = add i64 %81, %53, !dbg !392
  %83 = getelementptr float, ptr %13, i64 %82, !dbg !392
  %84 = load <1 x float>, ptr %83, align 4, !dbg !392
  %85 = add i64 %56, 4, !dbg !392
  %86 = mul i64 %85, 196, !dbg !392
  %87 = add i64 %86, %62, !dbg !392
  %88 = add i64 %87, %53, !dbg !392
  %89 = getelementptr float, ptr %13, i64 %88, !dbg !392
  %90 = load <1 x float>, ptr %89, align 4, !dbg !392
  %91 = add i64 %56, 5, !dbg !392
  %92 = mul i64 %91, 196, !dbg !392
  %93 = add i64 %92, %62, !dbg !392
  %94 = add i64 %93, %53, !dbg !392
  %95 = getelementptr float, ptr %13, i64 %94, !dbg !392
  %96 = load <1 x float>, ptr %95, align 4, !dbg !392
  %97 = add i64 %56, 6, !dbg !392
  %98 = mul i64 %97, 196, !dbg !392
  %99 = add i64 %98, %62, !dbg !392
  %100 = add i64 %99, %53, !dbg !392
  %101 = getelementptr float, ptr %13, i64 %100, !dbg !392
  %102 = load <1 x float>, ptr %101, align 4, !dbg !392
  %103 = add i64 %56, 7, !dbg !392
  %104 = mul i64 %103, 196, !dbg !392
  %105 = add i64 %104, %62, !dbg !392
  %106 = add i64 %105, %53, !dbg !392
  %107 = getelementptr float, ptr %13, i64 %106, !dbg !392
  %108 = load <1 x float>, ptr %107, align 4, !dbg !392
  %109 = mul nuw nsw i64 %48, 512, !dbg !393
  %110 = add nuw nsw i64 %109, %56, !dbg !393
  %111 = getelementptr inbounds nuw float, ptr %20, i64 %110, !dbg !393
  %112 = load float, ptr %111, align 4, !dbg !393
  %113 = insertelement <1 x float> poison, float %112, i32 0, !dbg !393
  %114 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %113, <1 x float> %57), !dbg !393
  %115 = add nuw nsw i64 %109, %67, !dbg !393
  %116 = getelementptr inbounds nuw float, ptr %20, i64 %115, !dbg !393
  %117 = load float, ptr %116, align 4, !dbg !393
  %118 = insertelement <1 x float> poison, float %117, i32 0, !dbg !393
  %119 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %118, <1 x float> %114), !dbg !393
  %120 = add nuw nsw i64 %109, %73, !dbg !393
  %121 = getelementptr inbounds nuw float, ptr %20, i64 %120, !dbg !393
  %122 = load float, ptr %121, align 4, !dbg !393
  %123 = insertelement <1 x float> poison, float %122, i32 0, !dbg !393
  %124 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %78, <1 x float> %123, <1 x float> %119), !dbg !393
  %125 = add nuw nsw i64 %109, %79, !dbg !393
  %126 = getelementptr inbounds nuw float, ptr %20, i64 %125, !dbg !393
  %127 = load float, ptr %126, align 4, !dbg !393
  %128 = insertelement <1 x float> poison, float %127, i32 0, !dbg !393
  %129 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %84, <1 x float> %128, <1 x float> %124), !dbg !393
  %130 = add nuw nsw i64 %109, %85, !dbg !393
  %131 = getelementptr inbounds nuw float, ptr %20, i64 %130, !dbg !393
  %132 = load float, ptr %131, align 4, !dbg !393
  %133 = insertelement <1 x float> poison, float %132, i32 0, !dbg !393
  %134 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %90, <1 x float> %133, <1 x float> %129), !dbg !393
  %135 = add nuw nsw i64 %109, %91, !dbg !393
  %136 = getelementptr inbounds nuw float, ptr %20, i64 %135, !dbg !393
  %137 = load float, ptr %136, align 4, !dbg !393
  %138 = insertelement <1 x float> poison, float %137, i32 0, !dbg !393
  %139 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %96, <1 x float> %138, <1 x float> %134), !dbg !393
  %140 = add nuw nsw i64 %109, %97, !dbg !393
  %141 = getelementptr inbounds nuw float, ptr %20, i64 %140, !dbg !393
  %142 = load float, ptr %141, align 4, !dbg !393
  %143 = insertelement <1 x float> poison, float %142, i32 0, !dbg !393
  %144 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %102, <1 x float> %143, <1 x float> %139), !dbg !393
  %145 = add nuw nsw i64 %109, %103, !dbg !393
  %146 = getelementptr inbounds nuw float, ptr %20, i64 %145, !dbg !393
  %147 = load float, ptr %146, align 4, !dbg !393
  %148 = insertelement <1 x float> poison, float %147, i32 0, !dbg !393
  %149 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %108, <1 x float> %148, <1 x float> %144), !dbg !393
  %150 = add i64 %56, 8, !dbg !392
  br label %55, !dbg !392

151:                                              ; preds = %55
  %152 = fadd contract <1 x float> %57, zeroinitializer, !dbg !394
  %153 = fcmp ult <1 x float> %152, zeroinitializer, !dbg !395
  %154 = select <1 x i1> %153, <1 x float> zeroinitializer, <1 x float> %152, !dbg !396
  %155 = fcmp ugt <1 x float> %154, splat (float 6.000000e+00), !dbg !397
  %156 = select <1 x i1> %155, <1 x float> splat (float 6.000000e+00), <1 x float> %154, !dbg !398
  %157 = extractelement <1 x float> %156, i64 0, !dbg !392
  %158 = add i64 %43, %50, !dbg !392
  %159 = add i64 %158, 1, !dbg !392
  %160 = add i64 %53, 1, !dbg !392
  %161 = mul nuw nsw i64 %48, 256, !dbg !392
  %162 = mul nuw nsw i64 %159, 16, !dbg !392
  %163 = add nuw nsw i64 %161, %162, !dbg !392
  %164 = add nuw nsw i64 %163, %160, !dbg !392
  %165 = getelementptr inbounds nuw float, ptr %27, i64 %164, !dbg !392
  store float %157, ptr %165, align 4, !dbg !392
  br label %52, !dbg !392

166:                                              ; preds = %52
  %167 = add i64 %50, 1, !dbg !392
  br label %49, !dbg !392

168:                                              ; preds = %49
  %169 = add i64 %45, 1, !dbg !392
  br label %44, !dbg !392

170:                                              ; preds = %44
  ret i32 0, !dbg !399
}

define internal i32 @"main_graph$async_dispatch_27_conv_7x7x512x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !400 {
  %4 = alloca float, i64 7, align 64, !dbg !401
  %5 = alloca float, i64 7, align 64, !dbg !402
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !403
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !403
  %8 = load ptr, ptr %7, align 8, !dbg !403
  %9 = getelementptr float, ptr %8, i64 1773328, !dbg !403
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !403
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !404
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !404
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !404
  %13 = load ptr, ptr %12, align 8, !dbg !404
  %14 = getelementptr float, ptr %13, i64 3896768, !dbg !404
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !404
  %15 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !405
  %16 = extractvalue %iree_hal_executable_dispatch_state_v0_t %15, 10, !dbg !405
  %17 = getelementptr ptr, ptr %16, i32 2, !dbg !405
  %18 = load ptr, ptr %17, align 8, !dbg !405
  %19 = getelementptr float, ptr %18, i64 802816, !dbg !405
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !405
  %20 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !401
  %21 = extractvalue %iree_hal_executable_workgroup_state_v0_t %20, 0, !dbg !401
  %22 = zext i32 %21 to i64, !dbg !401
  %23 = mul nsw i64 %22, 32, !dbg !401
  %24 = getelementptr float, ptr %5, i64 0, !dbg !406
  store <7 x float> zeroinitializer, ptr %24, align 4, !dbg !406
  br label %25, !dbg !401

25:                                               ; preds = %100, %3
  %26 = phi i64 [ %101, %100 ], [ 0, %3 ], !dbg !401
  %27 = icmp slt i64 %26, 7, !dbg !401
  br i1 %27, label %28, label %102, !dbg !401

28:                                               ; preds = %98, %25
  %29 = phi i64 [ %99, %98 ], [ 0, %25 ], !dbg !401
  %30 = icmp slt i64 %29, 32, !dbg !401
  br i1 %30, label %31, label %100, !dbg !401

31:                                               ; preds = %28
  %32 = add i64 %29, %23, !dbg !401
  br label %33, !dbg !401

33:                                               ; preds = %36, %31
  %34 = phi i64 [ %41, %36 ], [ 0, %31 ], !dbg !401
  %35 = icmp slt i64 %34, 7, !dbg !401
  br i1 %35, label %36, label %42, !dbg !401

36:                                               ; preds = %33
  %37 = add nuw nsw i64 0, %34, !dbg !401
  %38 = getelementptr inbounds nuw float, ptr %5, i64 %37, !dbg !401
  %39 = load float, ptr %38, align 4, !dbg !401
  %40 = getelementptr inbounds nuw float, ptr %4, i64 %37, !dbg !401
  store float %39, ptr %40, align 4, !dbg !401
  %41 = add i64 %34, 1, !dbg !401
  br label %33, !dbg !401

42:                                               ; preds = %77, %33
  %43 = phi i64 [ %78, %77 ], [ 0, %33 ], !dbg !401
  %44 = icmp slt i64 %43, 3, !dbg !401
  br i1 %44, label %45, label %79, !dbg !401

45:                                               ; preds = %42
  %46 = mul nsw i64 %26, 2, !dbg !401
  %47 = add i64 %46, %43, !dbg !401
  br label %48, !dbg !401

48:                                               ; preds = %75, %45
  %49 = phi i64 [ %76, %75 ], [ 0, %45 ], !dbg !401
  %50 = icmp slt i64 %49, 7, !dbg !401
  br i1 %50, label %51, label %77, !dbg !401

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %74, %54 ], [ 0, %48 ], !dbg !401
  %53 = icmp slt i64 %52, 3, !dbg !401
  br i1 %53, label %54, label %75, !dbg !401

54:                                               ; preds = %51
  %55 = mul nsw i64 %49, 2, !dbg !401
  %56 = add i64 %55, %52, !dbg !401
  %57 = mul nuw nsw i64 %32, 256, !dbg !401
  %58 = mul nuw nsw i64 %47, 16, !dbg !401
  %59 = add nuw nsw i64 %57, %58, !dbg !401
  %60 = add nuw nsw i64 %59, %56, !dbg !401
  %61 = getelementptr inbounds nuw float, ptr %9, i64 %60, !dbg !401
  %62 = load float, ptr %61, align 4, !dbg !401
  %63 = mul nuw nsw i64 %32, 9, !dbg !401
  %64 = mul nuw nsw i64 %43, 3, !dbg !401
  %65 = add nuw nsw i64 %63, %64, !dbg !401
  %66 = add nuw nsw i64 %65, %52, !dbg !401
  %67 = getelementptr inbounds nuw float, ptr %14, i64 %66, !dbg !401
  %68 = load float, ptr %67, align 4, !dbg !401
  %69 = add nuw nsw i64 0, %49, !dbg !401
  %70 = getelementptr inbounds nuw float, ptr %4, i64 %69, !dbg !401
  %71 = load float, ptr %70, align 4, !dbg !401
  %72 = fmul contract float %62, %68, !dbg !407
  %73 = fadd contract float %71, %72, !dbg !408
  store float %73, ptr %70, align 4, !dbg !401
  %74 = add i64 %52, 1, !dbg !401
  br label %51, !dbg !401

75:                                               ; preds = %51
  %76 = add i64 %49, 1, !dbg !401
  br label %48, !dbg !401

77:                                               ; preds = %48
  %78 = add i64 %43, 1, !dbg !401
  br label %42, !dbg !401

79:                                               ; preds = %82, %42
  %80 = phi i64 [ %97, %82 ], [ 0, %42 ], !dbg !409
  %81 = icmp slt i64 %80, 7, !dbg !409
  br i1 %81, label %82, label %98, !dbg !409

82:                                               ; preds = %79
  %83 = add i64 0, %80, !dbg !409
  %84 = getelementptr float, ptr %4, i64 %83, !dbg !409
  %85 = load <1 x float>, ptr %84, align 4, !dbg !409
  %86 = fadd contract <1 x float> %85, zeroinitializer, !dbg !410
  %87 = fcmp ult <1 x float> %86, zeroinitializer, !dbg !411
  %88 = select <1 x i1> %87, <1 x float> zeroinitializer, <1 x float> %86, !dbg !412
  %89 = fcmp ugt <1 x float> %88, splat (float 6.000000e+00), !dbg !413
  %90 = select <1 x i1> %89, <1 x float> splat (float 6.000000e+00), <1 x float> %88, !dbg !414
  %91 = extractelement <1 x float> %90, i64 0, !dbg !409
  %92 = mul nuw nsw i64 %32, 49, !dbg !409
  %93 = mul nuw nsw i64 %26, 7, !dbg !409
  %94 = add nuw nsw i64 %92, %93, !dbg !409
  %95 = add nuw nsw i64 %94, %80, !dbg !409
  %96 = getelementptr inbounds nuw float, ptr %19, i64 %95, !dbg !409
  store float %91, ptr %96, align 4, !dbg !409
  %97 = add i64 %80, 1, !dbg !409
  br label %79, !dbg !409

98:                                               ; preds = %79
  %99 = add i64 %29, 1, !dbg !401
  br label %28, !dbg !401

100:                                              ; preds = %28
  %101 = add i64 %26, 1, !dbg !401
  br label %25, !dbg !401

102:                                              ; preds = %25
  ret i32 0, !dbg !415
}

define internal i32 @"main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !416 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !417
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !417
  %6 = load ptr, ptr %5, align 8, !dbg !417
  %7 = getelementptr float, ptr %6, i64 802816, !dbg !417
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !417
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !418
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !418
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !418
  %11 = load ptr, ptr %10, align 8, !dbg !418
  %12 = getelementptr float, ptr %11, i64 1746944, !dbg !418
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !418
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !419
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !419
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !419
  %16 = load ptr, ptr %15, align 8, !dbg !419
  %17 = getelementptr float, ptr %16, i64 827904, !dbg !419
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !419
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !420
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !420
  %20 = zext i32 %19 to i64, !dbg !420
  %21 = mul nsw i64 %20, 64, !dbg !420
  br label %22, !dbg !420

22:                                               ; preds = %144, %3
  %23 = phi i64 [ %145, %144 ], [ 0, %3 ], !dbg !420
  %24 = icmp slt i64 %23, 64, !dbg !420
  br i1 %24, label %25, label %146, !dbg !420

25:                                               ; preds = %22
  %26 = add i64 %23, %21, !dbg !420
  br label %27, !dbg !420

27:                                               ; preds = %142, %25
  %28 = phi i64 [ %143, %142 ], [ 0, %25 ], !dbg !420
  %29 = icmp slt i64 %28, 7, !dbg !420
  br i1 %29, label %30, label %144, !dbg !420

30:                                               ; preds = %128, %27
  %31 = phi i64 [ %136, %128 ], [ 0, %27 ], !dbg !420
  %32 = icmp slt i64 %31, 7, !dbg !420
  br i1 %32, label %33, label %142, !dbg !420

33:                                               ; preds = %37, %30
  %34 = phi i64 [ %127, %37 ], [ 0, %30 ], !dbg !420
  %35 = phi <1 x float> [ %126, %37 ], [ zeroinitializer, %30 ], !dbg !420
  %36 = icmp slt i64 %34, 512, !dbg !420
  br i1 %36, label %37, label %128, !dbg !420

37:                                               ; preds = %33
  %38 = mul i64 %34, 49, !dbg !420
  %39 = mul i64 %28, 7, !dbg !420
  %40 = add i64 %38, %39, !dbg !420
  %41 = add i64 %40, %31, !dbg !420
  %42 = getelementptr float, ptr %7, i64 %41, !dbg !420
  %43 = load <1 x float>, ptr %42, align 4, !dbg !420
  %44 = add i64 %34, 1, !dbg !420
  %45 = mul i64 %44, 49, !dbg !420
  %46 = add i64 %45, %39, !dbg !420
  %47 = add i64 %46, %31, !dbg !420
  %48 = getelementptr float, ptr %7, i64 %47, !dbg !420
  %49 = load <1 x float>, ptr %48, align 4, !dbg !420
  %50 = add i64 %34, 2, !dbg !420
  %51 = mul i64 %50, 49, !dbg !420
  %52 = add i64 %51, %39, !dbg !420
  %53 = add i64 %52, %31, !dbg !420
  %54 = getelementptr float, ptr %7, i64 %53, !dbg !420
  %55 = load <1 x float>, ptr %54, align 4, !dbg !420
  %56 = add i64 %34, 3, !dbg !420
  %57 = mul i64 %56, 49, !dbg !420
  %58 = add i64 %57, %39, !dbg !420
  %59 = add i64 %58, %31, !dbg !420
  %60 = getelementptr float, ptr %7, i64 %59, !dbg !420
  %61 = load <1 x float>, ptr %60, align 4, !dbg !420
  %62 = add i64 %34, 4, !dbg !420
  %63 = mul i64 %62, 49, !dbg !420
  %64 = add i64 %63, %39, !dbg !420
  %65 = add i64 %64, %31, !dbg !420
  %66 = getelementptr float, ptr %7, i64 %65, !dbg !420
  %67 = load <1 x float>, ptr %66, align 4, !dbg !420
  %68 = add i64 %34, 5, !dbg !420
  %69 = mul i64 %68, 49, !dbg !420
  %70 = add i64 %69, %39, !dbg !420
  %71 = add i64 %70, %31, !dbg !420
  %72 = getelementptr float, ptr %7, i64 %71, !dbg !420
  %73 = load <1 x float>, ptr %72, align 4, !dbg !420
  %74 = add i64 %34, 6, !dbg !420
  %75 = mul i64 %74, 49, !dbg !420
  %76 = add i64 %75, %39, !dbg !420
  %77 = add i64 %76, %31, !dbg !420
  %78 = getelementptr float, ptr %7, i64 %77, !dbg !420
  %79 = load <1 x float>, ptr %78, align 4, !dbg !420
  %80 = add i64 %34, 7, !dbg !420
  %81 = mul i64 %80, 49, !dbg !420
  %82 = add i64 %81, %39, !dbg !420
  %83 = add i64 %82, %31, !dbg !420
  %84 = getelementptr float, ptr %7, i64 %83, !dbg !420
  %85 = load <1 x float>, ptr %84, align 4, !dbg !420
  %86 = mul nuw nsw i64 %26, 512, !dbg !421
  %87 = add nuw nsw i64 %86, %34, !dbg !421
  %88 = getelementptr inbounds nuw float, ptr %12, i64 %87, !dbg !421
  %89 = load float, ptr %88, align 4, !dbg !421
  %90 = insertelement <1 x float> poison, float %89, i32 0, !dbg !421
  %91 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %43, <1 x float> %90, <1 x float> %35), !dbg !421
  %92 = add nuw nsw i64 %86, %44, !dbg !421
  %93 = getelementptr inbounds nuw float, ptr %12, i64 %92, !dbg !421
  %94 = load float, ptr %93, align 4, !dbg !421
  %95 = insertelement <1 x float> poison, float %94, i32 0, !dbg !421
  %96 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %49, <1 x float> %95, <1 x float> %91), !dbg !421
  %97 = add nuw nsw i64 %86, %50, !dbg !421
  %98 = getelementptr inbounds nuw float, ptr %12, i64 %97, !dbg !421
  %99 = load float, ptr %98, align 4, !dbg !421
  %100 = insertelement <1 x float> poison, float %99, i32 0, !dbg !421
  %101 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %55, <1 x float> %100, <1 x float> %96), !dbg !421
  %102 = add nuw nsw i64 %86, %56, !dbg !421
  %103 = getelementptr inbounds nuw float, ptr %12, i64 %102, !dbg !421
  %104 = load float, ptr %103, align 4, !dbg !421
  %105 = insertelement <1 x float> poison, float %104, i32 0, !dbg !421
  %106 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %105, <1 x float> %101), !dbg !421
  %107 = add nuw nsw i64 %86, %62, !dbg !421
  %108 = getelementptr inbounds nuw float, ptr %12, i64 %107, !dbg !421
  %109 = load float, ptr %108, align 4, !dbg !421
  %110 = insertelement <1 x float> poison, float %109, i32 0, !dbg !421
  %111 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %110, <1 x float> %106), !dbg !421
  %112 = add nuw nsw i64 %86, %68, !dbg !421
  %113 = getelementptr inbounds nuw float, ptr %12, i64 %112, !dbg !421
  %114 = load float, ptr %113, align 4, !dbg !421
  %115 = insertelement <1 x float> poison, float %114, i32 0, !dbg !421
  %116 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %115, <1 x float> %111), !dbg !421
  %117 = add nuw nsw i64 %86, %74, !dbg !421
  %118 = getelementptr inbounds nuw float, ptr %12, i64 %117, !dbg !421
  %119 = load float, ptr %118, align 4, !dbg !421
  %120 = insertelement <1 x float> poison, float %119, i32 0, !dbg !421
  %121 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %79, <1 x float> %120, <1 x float> %116), !dbg !421
  %122 = add nuw nsw i64 %86, %80, !dbg !421
  %123 = getelementptr inbounds nuw float, ptr %12, i64 %122, !dbg !421
  %124 = load float, ptr %123, align 4, !dbg !421
  %125 = insertelement <1 x float> poison, float %124, i32 0, !dbg !421
  %126 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %85, <1 x float> %125, <1 x float> %121), !dbg !421
  %127 = add i64 %34, 8, !dbg !420
  br label %33, !dbg !420

128:                                              ; preds = %33
  %129 = fadd contract <1 x float> %35, zeroinitializer, !dbg !422
  %130 = fcmp ult <1 x float> %129, zeroinitializer, !dbg !423
  %131 = select <1 x i1> %130, <1 x float> zeroinitializer, <1 x float> %129, !dbg !424
  %132 = fcmp ugt <1 x float> %131, splat (float 6.000000e+00), !dbg !425
  %133 = select <1 x i1> %132, <1 x float> splat (float 6.000000e+00), <1 x float> %131, !dbg !426
  %134 = extractelement <1 x float> %133, i64 0, !dbg !420
  %135 = add i64 %28, 1, !dbg !420
  %136 = add i64 %31, 1, !dbg !420
  %137 = mul nuw nsw i64 %26, 81, !dbg !420
  %138 = mul nuw nsw i64 %135, 9, !dbg !420
  %139 = add nuw nsw i64 %137, %138, !dbg !420
  %140 = add nuw nsw i64 %139, %136, !dbg !420
  %141 = getelementptr inbounds nuw float, ptr %17, i64 %140, !dbg !420
  store float %134, ptr %141, align 4, !dbg !420
  br label %30, !dbg !420

142:                                              ; preds = %30
  %143 = add i64 %28, 1, !dbg !420
  br label %27, !dbg !420

144:                                              ; preds = %27
  %145 = add i64 %23, 1, !dbg !420
  br label %22, !dbg !420

146:                                              ; preds = %22
  ret i32 0, !dbg !427
}

define internal i32 @"main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !428 {
  %4 = alloca float, i64 7, align 64, !dbg !429
  %5 = alloca float, i64 7, align 64, !dbg !430
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !431
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !431
  %8 = load ptr, ptr %7, align 8, !dbg !431
  %9 = getelementptr float, ptr %8, i64 827904, !dbg !431
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !431
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !432
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !432
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !432
  %13 = load ptr, ptr %12, align 8, !dbg !432
  %14 = getelementptr float, ptr %13, i64 3887552, !dbg !432
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !432
  %15 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !433
  %16 = extractvalue %iree_hal_executable_dispatch_state_v0_t %15, 10, !dbg !433
  %17 = getelementptr ptr, ptr %16, i32 2, !dbg !433
  %18 = load ptr, ptr %17, align 8, !dbg !433
  %19 = getelementptr float, ptr %18, i64 910848, !dbg !433
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !433
  %20 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !429
  %21 = extractvalue %iree_hal_executable_workgroup_state_v0_t %20, 0, !dbg !429
  %22 = zext i32 %21 to i64, !dbg !429
  %23 = mul nsw i64 %22, 32, !dbg !429
  %24 = getelementptr float, ptr %5, i64 0, !dbg !434
  store <7 x float> zeroinitializer, ptr %24, align 4, !dbg !434
  br label %25, !dbg !429

25:                                               ; preds = %98, %3
  %26 = phi i64 [ %99, %98 ], [ 0, %3 ], !dbg !429
  %27 = icmp slt i64 %26, 7, !dbg !429
  br i1 %27, label %28, label %100, !dbg !429

28:                                               ; preds = %96, %25
  %29 = phi i64 [ %97, %96 ], [ 0, %25 ], !dbg !429
  %30 = icmp slt i64 %29, 32, !dbg !429
  br i1 %30, label %31, label %98, !dbg !429

31:                                               ; preds = %28
  %32 = add i64 %29, %23, !dbg !429
  br label %33, !dbg !429

33:                                               ; preds = %36, %31
  %34 = phi i64 [ %41, %36 ], [ 0, %31 ], !dbg !429
  %35 = icmp slt i64 %34, 7, !dbg !429
  br i1 %35, label %36, label %42, !dbg !429

36:                                               ; preds = %33
  %37 = add nuw nsw i64 0, %34, !dbg !429
  %38 = getelementptr inbounds nuw float, ptr %5, i64 %37, !dbg !429
  %39 = load float, ptr %38, align 4, !dbg !429
  %40 = getelementptr inbounds nuw float, ptr %4, i64 %37, !dbg !429
  store float %39, ptr %40, align 4, !dbg !429
  %41 = add i64 %34, 1, !dbg !429
  br label %33, !dbg !429

42:                                               ; preds = %75, %33
  %43 = phi i64 [ %76, %75 ], [ 0, %33 ], !dbg !429
  %44 = icmp slt i64 %43, 3, !dbg !429
  br i1 %44, label %45, label %77, !dbg !429

45:                                               ; preds = %42
  %46 = add i64 %43, %26, !dbg !429
  br label %47, !dbg !429

47:                                               ; preds = %73, %45
  %48 = phi i64 [ %74, %73 ], [ 0, %45 ], !dbg !429
  %49 = icmp slt i64 %48, 7, !dbg !429
  br i1 %49, label %50, label %75, !dbg !429

50:                                               ; preds = %53, %47
  %51 = phi i64 [ %72, %53 ], [ 0, %47 ], !dbg !429
  %52 = icmp slt i64 %51, 3, !dbg !429
  br i1 %52, label %53, label %73, !dbg !429

53:                                               ; preds = %50
  %54 = add i64 %48, %51, !dbg !429
  %55 = mul nuw nsw i64 %32, 81, !dbg !429
  %56 = mul nuw nsw i64 %46, 9, !dbg !429
  %57 = add nuw nsw i64 %55, %56, !dbg !429
  %58 = add nuw nsw i64 %57, %54, !dbg !429
  %59 = getelementptr inbounds nuw float, ptr %9, i64 %58, !dbg !429
  %60 = load float, ptr %59, align 4, !dbg !429
  %61 = mul nuw nsw i64 %32, 9, !dbg !429
  %62 = mul nuw nsw i64 %43, 3, !dbg !429
  %63 = add nuw nsw i64 %61, %62, !dbg !429
  %64 = add nuw nsw i64 %63, %51, !dbg !429
  %65 = getelementptr inbounds nuw float, ptr %14, i64 %64, !dbg !429
  %66 = load float, ptr %65, align 4, !dbg !429
  %67 = add nuw nsw i64 0, %48, !dbg !429
  %68 = getelementptr inbounds nuw float, ptr %4, i64 %67, !dbg !429
  %69 = load float, ptr %68, align 4, !dbg !429
  %70 = fmul contract float %60, %66, !dbg !435
  %71 = fadd contract float %69, %70, !dbg !436
  store float %71, ptr %68, align 4, !dbg !429
  %72 = add i64 %51, 1, !dbg !429
  br label %50, !dbg !429

73:                                               ; preds = %50
  %74 = add i64 %48, 1, !dbg !429
  br label %47, !dbg !429

75:                                               ; preds = %47
  %76 = add i64 %43, 1, !dbg !429
  br label %42, !dbg !429

77:                                               ; preds = %80, %42
  %78 = phi i64 [ %95, %80 ], [ 0, %42 ], !dbg !437
  %79 = icmp slt i64 %78, 7, !dbg !437
  br i1 %79, label %80, label %96, !dbg !437

80:                                               ; preds = %77
  %81 = add i64 0, %78, !dbg !437
  %82 = getelementptr float, ptr %4, i64 %81, !dbg !437
  %83 = load <1 x float>, ptr %82, align 4, !dbg !437
  %84 = fadd contract <1 x float> %83, zeroinitializer, !dbg !438
  %85 = fcmp ult <1 x float> %84, zeroinitializer, !dbg !439
  %86 = select <1 x i1> %85, <1 x float> zeroinitializer, <1 x float> %84, !dbg !440
  %87 = fcmp ugt <1 x float> %86, splat (float 6.000000e+00), !dbg !441
  %88 = select <1 x i1> %87, <1 x float> splat (float 6.000000e+00), <1 x float> %86, !dbg !442
  %89 = extractelement <1 x float> %88, i64 0, !dbg !437
  %90 = mul nuw nsw i64 %32, 49, !dbg !437
  %91 = mul nuw nsw i64 %26, 7, !dbg !437
  %92 = add nuw nsw i64 %90, %91, !dbg !437
  %93 = add nuw nsw i64 %92, %78, !dbg !437
  %94 = getelementptr inbounds nuw float, ptr %19, i64 %93, !dbg !437
  store float %89, ptr %94, align 4, !dbg !437
  %95 = add i64 %78, 1, !dbg !437
  br label %77, !dbg !437

96:                                               ; preds = %77
  %97 = add i64 %29, 1, !dbg !429
  br label %28, !dbg !429

98:                                               ; preds = %28
  %99 = add i64 %26, 1, !dbg !429
  br label %25, !dbg !429

100:                                              ; preds = %25
  ret i32 0, !dbg !443
}

define internal i32 @"main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !444 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !445
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !445
  %6 = load ptr, ptr %5, align 8, !dbg !445
  %7 = getelementptr float, ptr %6, i64 910848, !dbg !445
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !445
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !446
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !446
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !446
  %11 = load ptr, ptr %10, align 8, !dbg !446
  %12 = getelementptr float, ptr %11, i64 698368, !dbg !446
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !446
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !447
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !447
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !447
  %16 = load ptr, ptr %15, align 8, !dbg !447
  %17 = getelementptr float, ptr %16, i64 401408, !dbg !447
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !447
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !448
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !448
  %20 = zext i32 %19 to i64, !dbg !448
  %21 = mul nsw i64 %20, 64, !dbg !448
  br label %22, !dbg !448

22:                                               ; preds = %145, %3
  %23 = phi i64 [ %146, %145 ], [ 0, %3 ], !dbg !448
  %24 = icmp slt i64 %23, 64, !dbg !448
  br i1 %24, label %25, label %147, !dbg !448

25:                                               ; preds = %22
  %26 = add i64 %23, %21, !dbg !448
  br label %27, !dbg !448

27:                                               ; preds = %143, %25
  %28 = phi i64 [ %144, %143 ], [ 0, %25 ], !dbg !448
  %29 = icmp slt i64 %28, 7, !dbg !448
  br i1 %29, label %30, label %145, !dbg !448

30:                                               ; preds = %128, %27
  %31 = phi i64 [ %142, %128 ], [ 0, %27 ], !dbg !448
  %32 = icmp slt i64 %31, 7, !dbg !448
  br i1 %32, label %33, label %143, !dbg !448

33:                                               ; preds = %37, %30
  %34 = phi i64 [ %127, %37 ], [ 0, %30 ], !dbg !448
  %35 = phi <1 x float> [ %126, %37 ], [ zeroinitializer, %30 ], !dbg !448
  %36 = icmp slt i64 %34, 1024, !dbg !448
  br i1 %36, label %37, label %128, !dbg !448

37:                                               ; preds = %33
  %38 = mul i64 %34, 49, !dbg !448
  %39 = mul i64 %28, 7, !dbg !448
  %40 = add i64 %38, %39, !dbg !448
  %41 = add i64 %40, %31, !dbg !448
  %42 = getelementptr float, ptr %7, i64 %41, !dbg !448
  %43 = load <1 x float>, ptr %42, align 4, !dbg !448
  %44 = add i64 %34, 1, !dbg !448
  %45 = mul i64 %44, 49, !dbg !448
  %46 = add i64 %45, %39, !dbg !448
  %47 = add i64 %46, %31, !dbg !448
  %48 = getelementptr float, ptr %7, i64 %47, !dbg !448
  %49 = load <1 x float>, ptr %48, align 4, !dbg !448
  %50 = add i64 %34, 2, !dbg !448
  %51 = mul i64 %50, 49, !dbg !448
  %52 = add i64 %51, %39, !dbg !448
  %53 = add i64 %52, %31, !dbg !448
  %54 = getelementptr float, ptr %7, i64 %53, !dbg !448
  %55 = load <1 x float>, ptr %54, align 4, !dbg !448
  %56 = add i64 %34, 3, !dbg !448
  %57 = mul i64 %56, 49, !dbg !448
  %58 = add i64 %57, %39, !dbg !448
  %59 = add i64 %58, %31, !dbg !448
  %60 = getelementptr float, ptr %7, i64 %59, !dbg !448
  %61 = load <1 x float>, ptr %60, align 4, !dbg !448
  %62 = add i64 %34, 4, !dbg !448
  %63 = mul i64 %62, 49, !dbg !448
  %64 = add i64 %63, %39, !dbg !448
  %65 = add i64 %64, %31, !dbg !448
  %66 = getelementptr float, ptr %7, i64 %65, !dbg !448
  %67 = load <1 x float>, ptr %66, align 4, !dbg !448
  %68 = add i64 %34, 5, !dbg !448
  %69 = mul i64 %68, 49, !dbg !448
  %70 = add i64 %69, %39, !dbg !448
  %71 = add i64 %70, %31, !dbg !448
  %72 = getelementptr float, ptr %7, i64 %71, !dbg !448
  %73 = load <1 x float>, ptr %72, align 4, !dbg !448
  %74 = add i64 %34, 6, !dbg !448
  %75 = mul i64 %74, 49, !dbg !448
  %76 = add i64 %75, %39, !dbg !448
  %77 = add i64 %76, %31, !dbg !448
  %78 = getelementptr float, ptr %7, i64 %77, !dbg !448
  %79 = load <1 x float>, ptr %78, align 4, !dbg !448
  %80 = add i64 %34, 7, !dbg !448
  %81 = mul i64 %80, 49, !dbg !448
  %82 = add i64 %81, %39, !dbg !448
  %83 = add i64 %82, %31, !dbg !448
  %84 = getelementptr float, ptr %7, i64 %83, !dbg !448
  %85 = load <1 x float>, ptr %84, align 4, !dbg !448
  %86 = mul nuw nsw i64 %26, 1024, !dbg !449
  %87 = add nuw nsw i64 %86, %34, !dbg !449
  %88 = getelementptr inbounds nuw float, ptr %12, i64 %87, !dbg !449
  %89 = load float, ptr %88, align 4, !dbg !449
  %90 = insertelement <1 x float> poison, float %89, i32 0, !dbg !449
  %91 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %43, <1 x float> %90, <1 x float> %35), !dbg !449
  %92 = add nuw nsw i64 %86, %44, !dbg !449
  %93 = getelementptr inbounds nuw float, ptr %12, i64 %92, !dbg !449
  %94 = load float, ptr %93, align 4, !dbg !449
  %95 = insertelement <1 x float> poison, float %94, i32 0, !dbg !449
  %96 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %49, <1 x float> %95, <1 x float> %91), !dbg !449
  %97 = add nuw nsw i64 %86, %50, !dbg !449
  %98 = getelementptr inbounds nuw float, ptr %12, i64 %97, !dbg !449
  %99 = load float, ptr %98, align 4, !dbg !449
  %100 = insertelement <1 x float> poison, float %99, i32 0, !dbg !449
  %101 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %55, <1 x float> %100, <1 x float> %96), !dbg !449
  %102 = add nuw nsw i64 %86, %56, !dbg !449
  %103 = getelementptr inbounds nuw float, ptr %12, i64 %102, !dbg !449
  %104 = load float, ptr %103, align 4, !dbg !449
  %105 = insertelement <1 x float> poison, float %104, i32 0, !dbg !449
  %106 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %105, <1 x float> %101), !dbg !449
  %107 = add nuw nsw i64 %86, %62, !dbg !449
  %108 = getelementptr inbounds nuw float, ptr %12, i64 %107, !dbg !449
  %109 = load float, ptr %108, align 4, !dbg !449
  %110 = insertelement <1 x float> poison, float %109, i32 0, !dbg !449
  %111 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %110, <1 x float> %106), !dbg !449
  %112 = add nuw nsw i64 %86, %68, !dbg !449
  %113 = getelementptr inbounds nuw float, ptr %12, i64 %112, !dbg !449
  %114 = load float, ptr %113, align 4, !dbg !449
  %115 = insertelement <1 x float> poison, float %114, i32 0, !dbg !449
  %116 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %115, <1 x float> %111), !dbg !449
  %117 = add nuw nsw i64 %86, %74, !dbg !449
  %118 = getelementptr inbounds nuw float, ptr %12, i64 %117, !dbg !449
  %119 = load float, ptr %118, align 4, !dbg !449
  %120 = insertelement <1 x float> poison, float %119, i32 0, !dbg !449
  %121 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %79, <1 x float> %120, <1 x float> %116), !dbg !449
  %122 = add nuw nsw i64 %86, %80, !dbg !449
  %123 = getelementptr inbounds nuw float, ptr %12, i64 %122, !dbg !449
  %124 = load float, ptr %123, align 4, !dbg !449
  %125 = insertelement <1 x float> poison, float %124, i32 0, !dbg !449
  %126 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %85, <1 x float> %125, <1 x float> %121), !dbg !449
  %127 = add i64 %34, 8, !dbg !448
  br label %33, !dbg !448

128:                                              ; preds = %33
  %129 = fadd contract <1 x float> %35, zeroinitializer, !dbg !450
  %130 = fcmp ult <1 x float> %129, zeroinitializer, !dbg !451
  %131 = select <1 x i1> %130, <1 x float> zeroinitializer, <1 x float> %129, !dbg !452
  %132 = fcmp ugt <1 x float> %131, splat (float 6.000000e+00), !dbg !453
  %133 = select <1 x i1> %132, <1 x float> splat (float 6.000000e+00), <1 x float> %131, !dbg !454
  %134 = extractelement <1 x float> %133, i64 0, !dbg !448
  %135 = add i64 %28, 2, !dbg !448
  %136 = add i64 %31, 2, !dbg !448
  %137 = mul nuw nsw i64 %26, 121, !dbg !448
  %138 = mul nuw nsw i64 %135, 11, !dbg !448
  %139 = add nuw nsw i64 %137, %138, !dbg !448
  %140 = add nuw nsw i64 %139, %136, !dbg !448
  %141 = getelementptr inbounds nuw float, ptr %17, i64 %140, !dbg !448
  store float %134, ptr %141, align 4, !dbg !448
  %142 = add i64 %31, 1, !dbg !448
  br label %30, !dbg !448

143:                                              ; preds = %30
  %144 = add i64 %28, 1, !dbg !448
  br label %27, !dbg !448

145:                                              ; preds = %27
  %146 = add i64 %23, 1, !dbg !448
  br label %22, !dbg !448

147:                                              ; preds = %22
  ret i32 0, !dbg !455
}

define internal i32 @"main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !456 {
  %4 = alloca float, i64 7, align 64, !dbg !457
  %5 = alloca float, i64 7, align 64, !dbg !458
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !459
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !459
  %8 = load ptr, ptr %7, align 8, !dbg !459
  %9 = getelementptr float, ptr %8, i64 401408, !dbg !459
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !459
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !460
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !460
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !460
  %13 = load ptr, ptr %12, align 8, !dbg !460
  %14 = getelementptr float, ptr %13, i64 3861952, !dbg !460
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !460
  %15 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !461
  %16 = extractvalue %iree_hal_executable_dispatch_state_v0_t %15, 10, !dbg !461
  %17 = getelementptr ptr, ptr %16, i32 2, !dbg !461
  %18 = load ptr, ptr %17, align 8, !dbg !461
  %19 = getelementptr float, ptr %18, i64 525312, !dbg !461
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !461
  %20 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !457
  %21 = extractvalue %iree_hal_executable_workgroup_state_v0_t %20, 0, !dbg !457
  %22 = zext i32 %21 to i64, !dbg !457
  %23 = mul nsw i64 %22, 32, !dbg !457
  %24 = getelementptr float, ptr %5, i64 0, !dbg !462
  store <7 x float> zeroinitializer, ptr %24, align 4, !dbg !462
  br label %25, !dbg !457

25:                                               ; preds = %96, %3
  %26 = phi i64 [ %97, %96 ], [ 0, %3 ], !dbg !457
  %27 = icmp slt i64 %26, 7, !dbg !457
  br i1 %27, label %28, label %98, !dbg !457

28:                                               ; preds = %94, %25
  %29 = phi i64 [ %95, %94 ], [ 0, %25 ], !dbg !457
  %30 = icmp slt i64 %29, 32, !dbg !457
  br i1 %30, label %31, label %96, !dbg !457

31:                                               ; preds = %28
  %32 = add i64 %29, %23, !dbg !457
  br label %33, !dbg !457

33:                                               ; preds = %36, %31
  %34 = phi i64 [ %41, %36 ], [ 0, %31 ], !dbg !457
  %35 = icmp slt i64 %34, 7, !dbg !457
  br i1 %35, label %36, label %42, !dbg !457

36:                                               ; preds = %33
  %37 = add nuw nsw i64 0, %34, !dbg !457
  %38 = getelementptr inbounds nuw float, ptr %5, i64 %37, !dbg !457
  %39 = load float, ptr %38, align 4, !dbg !457
  %40 = getelementptr inbounds nuw float, ptr %4, i64 %37, !dbg !457
  store float %39, ptr %40, align 4, !dbg !457
  %41 = add i64 %34, 1, !dbg !457
  br label %33, !dbg !457

42:                                               ; preds = %75, %33
  %43 = phi i64 [ %76, %75 ], [ 0, %33 ], !dbg !457
  %44 = icmp slt i64 %43, 5, !dbg !457
  br i1 %44, label %45, label %77, !dbg !457

45:                                               ; preds = %42
  %46 = add i64 %43, %26, !dbg !457
  br label %47, !dbg !457

47:                                               ; preds = %73, %45
  %48 = phi i64 [ %74, %73 ], [ 0, %45 ], !dbg !457
  %49 = icmp slt i64 %48, 7, !dbg !457
  br i1 %49, label %50, label %75, !dbg !457

50:                                               ; preds = %53, %47
  %51 = phi i64 [ %72, %53 ], [ 0, %47 ], !dbg !457
  %52 = icmp slt i64 %51, 5, !dbg !457
  br i1 %52, label %53, label %73, !dbg !457

53:                                               ; preds = %50
  %54 = add i64 %48, %51, !dbg !457
  %55 = mul nuw nsw i64 %32, 121, !dbg !457
  %56 = mul nuw nsw i64 %46, 11, !dbg !457
  %57 = add nuw nsw i64 %55, %56, !dbg !457
  %58 = add nuw nsw i64 %57, %54, !dbg !457
  %59 = getelementptr inbounds nuw float, ptr %9, i64 %58, !dbg !457
  %60 = load float, ptr %59, align 4, !dbg !457
  %61 = mul nuw nsw i64 %32, 25, !dbg !457
  %62 = mul nuw nsw i64 %43, 5, !dbg !457
  %63 = add nuw nsw i64 %61, %62, !dbg !457
  %64 = add nuw nsw i64 %63, %51, !dbg !457
  %65 = getelementptr inbounds nuw float, ptr %14, i64 %64, !dbg !457
  %66 = load float, ptr %65, align 4, !dbg !457
  %67 = add nuw nsw i64 0, %48, !dbg !457
  %68 = getelementptr inbounds nuw float, ptr %4, i64 %67, !dbg !457
  %69 = load float, ptr %68, align 4, !dbg !457
  %70 = fmul contract float %60, %66, !dbg !463
  %71 = fadd contract float %69, %70, !dbg !464
  store float %71, ptr %68, align 4, !dbg !457
  %72 = add i64 %51, 1, !dbg !457
  br label %50, !dbg !457

73:                                               ; preds = %50
  %74 = add i64 %48, 1, !dbg !457
  br label %47, !dbg !457

75:                                               ; preds = %47
  %76 = add i64 %43, 1, !dbg !457
  br label %42, !dbg !457

77:                                               ; preds = %80, %42
  %78 = phi i64 [ %93, %80 ], [ 0, %42 ], !dbg !465
  %79 = icmp slt i64 %78, 7, !dbg !465
  br i1 %79, label %80, label %94, !dbg !465

80:                                               ; preds = %77
  %81 = add i64 0, %78, !dbg !465
  %82 = getelementptr float, ptr %4, i64 %81, !dbg !465
  %83 = load <1 x float>, ptr %82, align 4, !dbg !465
  %84 = fadd contract <1 x float> %83, zeroinitializer, !dbg !466
  %85 = fcmp ugt <1 x float> %84, zeroinitializer, !dbg !467
  %86 = select <1 x i1> %85, <1 x float> %84, <1 x float> zeroinitializer, !dbg !468
  %87 = extractelement <1 x float> %86, i64 0, !dbg !465
  %88 = mul nuw nsw i64 %32, 49, !dbg !465
  %89 = mul nuw nsw i64 %26, 7, !dbg !465
  %90 = add nuw nsw i64 %88, %89, !dbg !465
  %91 = add nuw nsw i64 %90, %78, !dbg !465
  %92 = getelementptr inbounds nuw float, ptr %19, i64 %91, !dbg !465
  store float %87, ptr %92, align 4, !dbg !465
  %93 = add i64 %78, 1, !dbg !465
  br label %77, !dbg !465

94:                                               ; preds = %77
  %95 = add i64 %29, 1, !dbg !457
  br label %28, !dbg !457

96:                                               ; preds = %28
  %97 = add i64 %26, 1, !dbg !457
  br label %25, !dbg !457

98:                                               ; preds = %25
  ret i32 0, !dbg !469
}

define internal i32 @"main_graph$async_dispatch_32_matmul_like_512x49x1024_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !470 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !471
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !471
  %6 = load ptr, ptr %5, align 8, !dbg !471
  %7 = getelementptr float, ptr %6, i64 525312, !dbg !471
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !471
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !472
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !472
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !472
  %11 = load ptr, ptr %10, align 8, !dbg !472
  %12 = getelementptr float, ptr %11, i64 174080, !dbg !472
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !472
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !473
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !473
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !473
  %16 = load ptr, ptr %15, align 8, !dbg !473
  %17 = getelementptr float, ptr %16, i64 575488, !dbg !473
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !473
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !474
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !474
  %20 = zext i32 %19 to i64, !dbg !474
  %21 = mul nsw i64 %20, 64, !dbg !474
  br label %22, !dbg !474

22:                                               ; preds = %125, %3
  %23 = phi i64 [ %126, %125 ], [ 0, %3 ], !dbg !474
  %24 = icmp slt i64 %23, 64, !dbg !474
  br i1 %24, label %25, label %127, !dbg !474

25:                                               ; preds = %22
  %26 = add i64 %23, %21, !dbg !474
  br label %27, !dbg !474

27:                                               ; preds = %116, %25
  %28 = phi i64 [ %124, %116 ], [ 0, %25 ], !dbg !474
  %29 = icmp slt i64 %28, 49, !dbg !474
  br i1 %29, label %30, label %125, !dbg !474

30:                                               ; preds = %34, %27
  %31 = phi i64 [ %115, %34 ], [ 0, %27 ], !dbg !474
  %32 = phi <1 x float> [ %114, %34 ], [ zeroinitializer, %27 ], !dbg !474
  %33 = icmp slt i64 %31, 1024, !dbg !474
  br i1 %33, label %34, label %116, !dbg !474

34:                                               ; preds = %30
  %35 = mul i64 %31, 49, !dbg !474
  %36 = add i64 %35, %28, !dbg !474
  %37 = getelementptr float, ptr %7, i64 %36, !dbg !474
  %38 = load <1 x float>, ptr %37, align 4, !dbg !474
  %39 = add i64 %31, 1, !dbg !474
  %40 = mul i64 %39, 49, !dbg !474
  %41 = add i64 %40, %28, !dbg !474
  %42 = getelementptr float, ptr %7, i64 %41, !dbg !474
  %43 = load <1 x float>, ptr %42, align 4, !dbg !474
  %44 = add i64 %31, 2, !dbg !474
  %45 = mul i64 %44, 49, !dbg !474
  %46 = add i64 %45, %28, !dbg !474
  %47 = getelementptr float, ptr %7, i64 %46, !dbg !474
  %48 = load <1 x float>, ptr %47, align 4, !dbg !474
  %49 = add i64 %31, 3, !dbg !474
  %50 = mul i64 %49, 49, !dbg !474
  %51 = add i64 %50, %28, !dbg !474
  %52 = getelementptr float, ptr %7, i64 %51, !dbg !474
  %53 = load <1 x float>, ptr %52, align 4, !dbg !474
  %54 = add i64 %31, 4, !dbg !474
  %55 = mul i64 %54, 49, !dbg !474
  %56 = add i64 %55, %28, !dbg !474
  %57 = getelementptr float, ptr %7, i64 %56, !dbg !474
  %58 = load <1 x float>, ptr %57, align 4, !dbg !474
  %59 = add i64 %31, 5, !dbg !474
  %60 = mul i64 %59, 49, !dbg !474
  %61 = add i64 %60, %28, !dbg !474
  %62 = getelementptr float, ptr %7, i64 %61, !dbg !474
  %63 = load <1 x float>, ptr %62, align 4, !dbg !474
  %64 = add i64 %31, 6, !dbg !474
  %65 = mul i64 %64, 49, !dbg !474
  %66 = add i64 %65, %28, !dbg !474
  %67 = getelementptr float, ptr %7, i64 %66, !dbg !474
  %68 = load <1 x float>, ptr %67, align 4, !dbg !474
  %69 = add i64 %31, 7, !dbg !474
  %70 = mul i64 %69, 49, !dbg !474
  %71 = add i64 %70, %28, !dbg !474
  %72 = getelementptr float, ptr %7, i64 %71, !dbg !474
  %73 = load <1 x float>, ptr %72, align 4, !dbg !474
  %74 = mul nuw nsw i64 %26, 1024, !dbg !475
  %75 = add nuw nsw i64 %74, %31, !dbg !475
  %76 = getelementptr inbounds nuw float, ptr %12, i64 %75, !dbg !475
  %77 = load float, ptr %76, align 4, !dbg !475
  %78 = insertelement <1 x float> poison, float %77, i32 0, !dbg !475
  %79 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %38, <1 x float> %78, <1 x float> %32), !dbg !475
  %80 = add nuw nsw i64 %74, %39, !dbg !475
  %81 = getelementptr inbounds nuw float, ptr %12, i64 %80, !dbg !475
  %82 = load float, ptr %81, align 4, !dbg !475
  %83 = insertelement <1 x float> poison, float %82, i32 0, !dbg !475
  %84 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %43, <1 x float> %83, <1 x float> %79), !dbg !475
  %85 = add nuw nsw i64 %74, %44, !dbg !475
  %86 = getelementptr inbounds nuw float, ptr %12, i64 %85, !dbg !475
  %87 = load float, ptr %86, align 4, !dbg !475
  %88 = insertelement <1 x float> poison, float %87, i32 0, !dbg !475
  %89 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %48, <1 x float> %88, <1 x float> %84), !dbg !475
  %90 = add nuw nsw i64 %74, %49, !dbg !475
  %91 = getelementptr inbounds nuw float, ptr %12, i64 %90, !dbg !475
  %92 = load float, ptr %91, align 4, !dbg !475
  %93 = insertelement <1 x float> poison, float %92, i32 0, !dbg !475
  %94 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %53, <1 x float> %93, <1 x float> %89), !dbg !475
  %95 = add nuw nsw i64 %74, %54, !dbg !475
  %96 = getelementptr inbounds nuw float, ptr %12, i64 %95, !dbg !475
  %97 = load float, ptr %96, align 4, !dbg !475
  %98 = insertelement <1 x float> poison, float %97, i32 0, !dbg !475
  %99 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %58, <1 x float> %98, <1 x float> %94), !dbg !475
  %100 = add nuw nsw i64 %74, %59, !dbg !475
  %101 = getelementptr inbounds nuw float, ptr %12, i64 %100, !dbg !475
  %102 = load float, ptr %101, align 4, !dbg !475
  %103 = insertelement <1 x float> poison, float %102, i32 0, !dbg !475
  %104 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %63, <1 x float> %103, <1 x float> %99), !dbg !475
  %105 = add nuw nsw i64 %74, %64, !dbg !475
  %106 = getelementptr inbounds nuw float, ptr %12, i64 %105, !dbg !475
  %107 = load float, ptr %106, align 4, !dbg !475
  %108 = insertelement <1 x float> poison, float %107, i32 0, !dbg !475
  %109 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %68, <1 x float> %108, <1 x float> %104), !dbg !475
  %110 = add nuw nsw i64 %74, %69, !dbg !475
  %111 = getelementptr inbounds nuw float, ptr %12, i64 %110, !dbg !475
  %112 = load float, ptr %111, align 4, !dbg !475
  %113 = insertelement <1 x float> poison, float %112, i32 0, !dbg !475
  %114 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %113, <1 x float> %109), !dbg !475
  %115 = add i64 %31, 8, !dbg !474
  br label %30, !dbg !474

116:                                              ; preds = %30
  %117 = fadd contract <1 x float> %32, zeroinitializer, !dbg !476
  %118 = fcmp ugt <1 x float> %117, zeroinitializer, !dbg !477
  %119 = select <1 x i1> %118, <1 x float> %117, <1 x float> zeroinitializer, !dbg !478
  %120 = extractelement <1 x float> %119, i64 0, !dbg !474
  %121 = mul nuw nsw i64 %26, 49, !dbg !474
  %122 = add nuw nsw i64 %121, %28, !dbg !474
  %123 = getelementptr inbounds nuw float, ptr %17, i64 %122, !dbg !474
  store float %120, ptr %123, align 4, !dbg !474
  %124 = add i64 %28, 1, !dbg !474
  br label %27, !dbg !474

125:                                              ; preds = %27
  %126 = add i64 %23, 1, !dbg !474
  br label %22, !dbg !474

127:                                              ; preds = %22
  ret i32 0, !dbg !479
}

define internal i32 @"main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !480 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !481
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !481
  %6 = load ptr, ptr %5, align 8, !dbg !481
  %7 = getelementptr float, ptr %6, i64 575488, !dbg !481
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !481
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !482
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !482
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !482
  %11 = load ptr, ptr %10, align 8, !dbg !482
  %12 = getelementptr float, ptr %11, i64 802816, !dbg !482
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !482
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !483
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !483
  %15 = zext i32 %14 to i64, !dbg !483
  %16 = sdiv i64 %15, 2, !dbg !483
  %17 = mul i64 %16, 2, !dbg !483
  %18 = icmp ne i64 %15, %17, !dbg !483
  %19 = icmp slt i64 %15, 0, !dbg !483
  %20 = and i1 %18, %19, !dbg !483
  %21 = add i64 %16, -1, !dbg !483
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !483
  %23 = srem i64 %15, 2, !dbg !483
  %24 = icmp slt i64 %23, 0, !dbg !483
  %25 = add nsw i64 %23, 2, !dbg !483
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !483
  %27 = mul nsw i64 %22, 64, !dbg !483
  %28 = mul nsw i64 %26, 7, !dbg !483
  %29 = call <8 x float> @llvm.floor.v8f32(<8 x float> <float 0.000000e+00, float 5.000000e-01, float 1.000000e+00, float 1.500000e+00, float 2.000000e+00, float 2.500000e+00, float 3.000000e+00, float 3.500000e+00>), !dbg !484
  %30 = fptosi <8 x float> %29 to <8 x i64>, !dbg !485
  %31 = call <6 x float> @llvm.floor.v6f32(<6 x float> <float 4.000000e+00, float 4.500000e+00, float 5.000000e+00, float 5.500000e+00, float 6.000000e+00, float 6.500000e+00>), !dbg !484
  %32 = fptosi <6 x float> %31 to <6 x i64>, !dbg !485
  br label %33, !dbg !483

33:                                               ; preds = %149, %3
  %34 = phi i64 [ %150, %149 ], [ 0, %3 ], !dbg !483
  %35 = icmp slt i64 %34, 64, !dbg !483
  br i1 %35, label %36, label %151, !dbg !483

36:                                               ; preds = %33
  %37 = add i64 %27, %34, !dbg !486
  %38 = mul i64 %37, 7, !dbg !487
  br label %39, !dbg !483

39:                                               ; preds = %42, %36
  %40 = phi i64 [ %148, %42 ], [ 0, %36 ], !dbg !483
  %41 = icmp slt i64 %40, 7, !dbg !483
  br i1 %41, label %42, label %149, !dbg !483

42:                                               ; preds = %39
  %43 = add i64 %28, %40, !dbg !488
  %44 = sitofp i64 %43 to float, !dbg !489
  %45 = fdiv float %44, 2.000000e+00, !dbg !490
  %46 = call float @llvm.floor.f32(float %45), !dbg !491
  %47 = fptosi float %46 to i64, !dbg !492
  %48 = add i64 %47, %38, !dbg !487
  %49 = mul i64 %48, 7, !dbg !487
  %50 = insertelement <8 x i64> poison, i64 %49, i32 0, !dbg !487
  %51 = shufflevector <8 x i64> %50, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !487
  %52 = add <8 x i64> %30, %51, !dbg !487
  %53 = extractelement <8 x i64> %52, i64 0, !dbg !487
  %54 = add i64 0, %53, !dbg !487
  %55 = getelementptr float, ptr %7, i64 %54, !dbg !487
  %56 = load <1 x float>, ptr %55, align 4, !dbg !487
  %57 = extractelement <1 x float> %56, i64 0, !dbg !487
  %58 = extractelement <8 x i64> %52, i64 1, !dbg !487
  %59 = add i64 0, %58, !dbg !487
  %60 = getelementptr float, ptr %7, i64 %59, !dbg !487
  %61 = load <1 x float>, ptr %60, align 4, !dbg !487
  %62 = extractelement <1 x float> %61, i64 0, !dbg !487
  %63 = extractelement <8 x i64> %52, i64 2, !dbg !487
  %64 = add i64 0, %63, !dbg !487
  %65 = getelementptr float, ptr %7, i64 %64, !dbg !487
  %66 = load <1 x float>, ptr %65, align 4, !dbg !487
  %67 = extractelement <1 x float> %66, i64 0, !dbg !487
  %68 = extractelement <8 x i64> %52, i64 3, !dbg !487
  %69 = add i64 0, %68, !dbg !487
  %70 = getelementptr float, ptr %7, i64 %69, !dbg !487
  %71 = load <1 x float>, ptr %70, align 4, !dbg !487
  %72 = extractelement <1 x float> %71, i64 0, !dbg !487
  %73 = extractelement <8 x i64> %52, i64 4, !dbg !487
  %74 = add i64 0, %73, !dbg !487
  %75 = getelementptr float, ptr %7, i64 %74, !dbg !487
  %76 = load <1 x float>, ptr %75, align 4, !dbg !487
  %77 = extractelement <1 x float> %76, i64 0, !dbg !487
  %78 = extractelement <8 x i64> %52, i64 5, !dbg !487
  %79 = add i64 0, %78, !dbg !487
  %80 = getelementptr float, ptr %7, i64 %79, !dbg !487
  %81 = load <1 x float>, ptr %80, align 4, !dbg !487
  %82 = extractelement <1 x float> %81, i64 0, !dbg !487
  %83 = extractelement <8 x i64> %52, i64 6, !dbg !487
  %84 = add i64 0, %83, !dbg !487
  %85 = getelementptr float, ptr %7, i64 %84, !dbg !487
  %86 = load <1 x float>, ptr %85, align 4, !dbg !487
  %87 = extractelement <1 x float> %86, i64 0, !dbg !487
  %88 = extractelement <8 x i64> %52, i64 7, !dbg !487
  %89 = add i64 0, %88, !dbg !487
  %90 = getelementptr float, ptr %7, i64 %89, !dbg !487
  %91 = load <1 x float>, ptr %90, align 4, !dbg !487
  %92 = extractelement <1 x float> %91, i64 0, !dbg !487
  %93 = insertelement <8 x float> poison, float %57, i64 0, !dbg !487
  %94 = insertelement <8 x float> %93, float %62, i64 1, !dbg !487
  %95 = insertelement <8 x float> %94, float %67, i64 2, !dbg !487
  %96 = insertelement <8 x float> %95, float %72, i64 3, !dbg !487
  %97 = insertelement <8 x float> %96, float %77, i64 4, !dbg !487
  %98 = insertelement <8 x float> %97, float %82, i64 5, !dbg !487
  %99 = insertelement <8 x float> %98, float %87, i64 6, !dbg !487
  %100 = insertelement <8 x float> %99, float %92, i64 7, !dbg !487
  %101 = add i64 %43, 2, !dbg !483
  %102 = mul i64 %37, 324, !dbg !483
  %103 = mul i64 %101, 18, !dbg !483
  %104 = add i64 %102, %103, !dbg !483
  %105 = add i64 %104, 2, !dbg !483
  %106 = getelementptr float, ptr %12, i64 %105, !dbg !483
  store <8 x float> %100, ptr %106, align 4, !dbg !483
  %107 = insertelement <6 x i64> poison, i64 %49, i32 0, !dbg !487
  %108 = shufflevector <6 x i64> %107, <6 x i64> poison, <6 x i32> zeroinitializer, !dbg !487
  %109 = add <6 x i64> %32, %108, !dbg !487
  %110 = extractelement <6 x i64> %109, i64 0, !dbg !487
  %111 = add i64 0, %110, !dbg !487
  %112 = getelementptr float, ptr %7, i64 %111, !dbg !487
  %113 = load <1 x float>, ptr %112, align 4, !dbg !487
  %114 = extractelement <1 x float> %113, i64 0, !dbg !487
  %115 = extractelement <6 x i64> %109, i64 1, !dbg !487
  %116 = add i64 0, %115, !dbg !487
  %117 = getelementptr float, ptr %7, i64 %116, !dbg !487
  %118 = load <1 x float>, ptr %117, align 4, !dbg !487
  %119 = extractelement <1 x float> %118, i64 0, !dbg !487
  %120 = extractelement <6 x i64> %109, i64 2, !dbg !487
  %121 = add i64 0, %120, !dbg !487
  %122 = getelementptr float, ptr %7, i64 %121, !dbg !487
  %123 = load <1 x float>, ptr %122, align 4, !dbg !487
  %124 = extractelement <1 x float> %123, i64 0, !dbg !487
  %125 = extractelement <6 x i64> %109, i64 3, !dbg !487
  %126 = add i64 0, %125, !dbg !487
  %127 = getelementptr float, ptr %7, i64 %126, !dbg !487
  %128 = load <1 x float>, ptr %127, align 4, !dbg !487
  %129 = extractelement <1 x float> %128, i64 0, !dbg !487
  %130 = extractelement <6 x i64> %109, i64 4, !dbg !487
  %131 = add i64 0, %130, !dbg !487
  %132 = getelementptr float, ptr %7, i64 %131, !dbg !487
  %133 = load <1 x float>, ptr %132, align 4, !dbg !487
  %134 = extractelement <1 x float> %133, i64 0, !dbg !487
  %135 = extractelement <6 x i64> %109, i64 5, !dbg !487
  %136 = add i64 0, %135, !dbg !487
  %137 = getelementptr float, ptr %7, i64 %136, !dbg !487
  %138 = load <1 x float>, ptr %137, align 4, !dbg !487
  %139 = extractelement <1 x float> %138, i64 0, !dbg !487
  %140 = insertelement <6 x float> poison, float %114, i64 0, !dbg !487
  %141 = insertelement <6 x float> %140, float %119, i64 1, !dbg !487
  %142 = insertelement <6 x float> %141, float %124, i64 2, !dbg !487
  %143 = insertelement <6 x float> %142, float %129, i64 3, !dbg !487
  %144 = insertelement <6 x float> %143, float %134, i64 4, !dbg !487
  %145 = insertelement <6 x float> %144, float %139, i64 5, !dbg !487
  %146 = add i64 %104, 10, !dbg !483
  %147 = getelementptr float, ptr %12, i64 %146, !dbg !483
  store <6 x float> %145, ptr %147, align 4, !dbg !483
  %148 = add i64 %40, 1, !dbg !483
  br label %39, !dbg !483

149:                                              ; preds = %39
  %150 = add i64 %34, 1, !dbg !483
  br label %33, !dbg !483

151:                                              ; preds = %33
  ret i32 0, !dbg !493
}

define internal i32 @"main_graph$async_dispatch_34_conv_14x14x512x5x5_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !494 {
  %4 = alloca float, i64 8, align 64, !dbg !495
  %5 = alloca float, i64 8, align 64, !dbg !495
  %6 = alloca float, i64 8, align 64, !dbg !496
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !497
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !497
  %9 = load ptr, ptr %8, align 8, !dbg !497
  %10 = getelementptr float, ptr %9, i64 802816, !dbg !497
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !497
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !498
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !498
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !498
  %14 = load ptr, ptr %13, align 8, !dbg !498
  %15 = getelementptr float, ptr %14, i64 3849152, !dbg !498
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !498
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !499
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !499
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !499
  %19 = load ptr, ptr %18, align 8, !dbg !499
  %20 = getelementptr float, ptr %19, i64 401408, !dbg !499
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !499
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !495
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !495
  %23 = zext i32 %22 to i64, !dbg !495
  %24 = mul nsw i64 %23, 32, !dbg !495
  br label %25, !dbg !495

25:                                               ; preds = %130, %3
  %26 = phi i64 [ %131, %130 ], [ 0, %3 ], !dbg !495
  %27 = icmp slt i64 %26, 14, !dbg !495
  br i1 %27, label %28, label %132, !dbg !495

28:                                               ; preds = %128, %25
  %29 = phi i64 [ %129, %128 ], [ 0, %25 ], !dbg !495
  %30 = icmp slt i64 %29, 14, !dbg !495
  br i1 %30, label %31, label %130, !dbg !495

31:                                               ; preds = %28
  %32 = sub i64 14, %29, !dbg !495
  %33 = icmp slt i64 %32, 8, !dbg !495
  %34 = select i1 %33, i64 %32, i64 8, !dbg !495
  %35 = trunc i64 %34 to i32, !dbg !500
  %36 = insertelement <8 x i32> poison, i32 %35, i32 0, !dbg !500
  %37 = shufflevector <8 x i32> %36, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !500
  %38 = icmp sgt <8 x i32> %37, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !500
  %39 = getelementptr float, ptr %6, i64 0, !dbg !500
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %39, i32 4, <8 x i1> %38), !dbg !500
  br label %40, !dbg !495

40:                                               ; preds = %126, %31
  %41 = phi i64 [ %127, %126 ], [ 0, %31 ], !dbg !495
  %42 = icmp slt i64 %41, 32, !dbg !495
  br i1 %42, label %43, label %128, !dbg !495

43:                                               ; preds = %40
  %44 = add i64 %41, %24, !dbg !495
  br label %45, !dbg !495

45:                                               ; preds = %48, %43
  %46 = phi i64 [ %53, %48 ], [ 0, %43 ], !dbg !495
  %47 = icmp slt i64 %46, %34, !dbg !495
  br i1 %47, label %48, label %54, !dbg !495

48:                                               ; preds = %45
  %49 = add nuw nsw i64 0, %46, !dbg !495
  %50 = getelementptr inbounds nuw float, ptr %6, i64 %49, !dbg !495
  %51 = load float, ptr %50, align 4, !dbg !495
  %52 = getelementptr inbounds nuw float, ptr %5, i64 %49, !dbg !495
  store float %51, ptr %52, align 4, !dbg !495
  %53 = add i64 %46, 1, !dbg !495
  br label %45, !dbg !495

54:                                               ; preds = %88, %45
  %55 = phi i64 [ %89, %88 ], [ 0, %45 ], !dbg !495
  %56 = icmp slt i64 %55, 5, !dbg !495
  br i1 %56, label %57, label %90, !dbg !495

57:                                               ; preds = %54
  %58 = add i64 %55, %26, !dbg !495
  br label %59, !dbg !495

59:                                               ; preds = %86, %57
  %60 = phi i64 [ %87, %86 ], [ 0, %57 ], !dbg !495
  %61 = icmp slt i64 %60, %34, !dbg !495
  br i1 %61, label %62, label %88, !dbg !495

62:                                               ; preds = %65, %59
  %63 = phi i64 [ %85, %65 ], [ 0, %59 ], !dbg !495
  %64 = icmp slt i64 %63, 5, !dbg !495
  br i1 %64, label %65, label %86, !dbg !495

65:                                               ; preds = %62
  %66 = add i64 %29, %60, !dbg !495
  %67 = add i64 %66, %63, !dbg !495
  %68 = mul nuw nsw i64 %44, 324, !dbg !495
  %69 = mul nuw nsw i64 %58, 18, !dbg !495
  %70 = add nuw nsw i64 %68, %69, !dbg !495
  %71 = add nuw nsw i64 %70, %67, !dbg !495
  %72 = getelementptr inbounds nuw float, ptr %10, i64 %71, !dbg !495
  %73 = load float, ptr %72, align 4, !dbg !495
  %74 = mul nuw nsw i64 %44, 25, !dbg !495
  %75 = mul nuw nsw i64 %55, 5, !dbg !495
  %76 = add nuw nsw i64 %74, %75, !dbg !495
  %77 = add nuw nsw i64 %76, %63, !dbg !495
  %78 = getelementptr inbounds nuw float, ptr %15, i64 %77, !dbg !495
  %79 = load float, ptr %78, align 4, !dbg !495
  %80 = add nuw nsw i64 0, %60, !dbg !495
  %81 = getelementptr inbounds nuw float, ptr %5, i64 %80, !dbg !495
  %82 = load float, ptr %81, align 4, !dbg !495
  %83 = fmul contract float %73, %79, !dbg !501
  %84 = fadd contract float %82, %83, !dbg !502
  store float %84, ptr %81, align 4, !dbg !495
  %85 = add i64 %63, 1, !dbg !495
  br label %62, !dbg !495

86:                                               ; preds = %62
  %87 = add i64 %60, 1, !dbg !495
  br label %59, !dbg !495

88:                                               ; preds = %59
  %89 = add i64 %55, 1, !dbg !495
  br label %54, !dbg !495

90:                                               ; preds = %93, %54
  %91 = phi i64 [ %98, %93 ], [ 0, %54 ], !dbg !495
  %92 = icmp slt i64 %91, %34, !dbg !495
  br i1 %92, label %93, label %99, !dbg !495

93:                                               ; preds = %90
  %94 = add nuw nsw i64 0, %91, !dbg !495
  %95 = getelementptr inbounds nuw float, ptr %6, i64 %94, !dbg !495
  %96 = load float, ptr %95, align 4, !dbg !495
  %97 = getelementptr inbounds nuw float, ptr %4, i64 %94, !dbg !495
  store float %96, ptr %97, align 4, !dbg !495
  %98 = add i64 %91, 1, !dbg !495
  br label %90, !dbg !495

99:                                               ; preds = %102, %90
  %100 = phi i64 [ %107, %102 ], [ 0, %90 ], !dbg !495
  %101 = icmp slt i64 %100, %34, !dbg !495
  br i1 %101, label %102, label %108, !dbg !495

102:                                              ; preds = %99
  %103 = add nuw nsw i64 0, %100, !dbg !495
  %104 = getelementptr inbounds nuw float, ptr %5, i64 %103, !dbg !495
  %105 = load float, ptr %104, align 4, !dbg !495
  %106 = getelementptr inbounds nuw float, ptr %4, i64 %103, !dbg !495
  store float %105, ptr %106, align 4, !dbg !495
  %107 = add i64 %100, 1, !dbg !495
  br label %99, !dbg !495

108:                                              ; preds = %111, %99
  %109 = phi i64 [ %125, %111 ], [ 0, %99 ], !dbg !503
  %110 = icmp slt i64 %109, %34, !dbg !503
  br i1 %110, label %111, label %126, !dbg !503

111:                                              ; preds = %108
  %112 = add i64 0, %109, !dbg !503
  %113 = getelementptr float, ptr %4, i64 %112, !dbg !503
  %114 = load <1 x float>, ptr %113, align 4, !dbg !503
  %115 = fadd contract <1 x float> %114, zeroinitializer, !dbg !504
  %116 = fcmp ugt <1 x float> %115, zeroinitializer, !dbg !505
  %117 = select <1 x i1> %116, <1 x float> %115, <1 x float> zeroinitializer, !dbg !506
  %118 = extractelement <1 x float> %117, i64 0, !dbg !503
  %119 = add i64 %29, %109, !dbg !503
  %120 = mul nuw nsw i64 %44, 196, !dbg !503
  %121 = mul nuw nsw i64 %26, 14, !dbg !503
  %122 = add nuw nsw i64 %120, %121, !dbg !503
  %123 = add nuw nsw i64 %122, %119, !dbg !503
  %124 = getelementptr inbounds nuw float, ptr %20, i64 %123, !dbg !503
  store float %118, ptr %124, align 4, !dbg !503
  %125 = add i64 %109, 1, !dbg !503
  br label %108, !dbg !503

126:                                              ; preds = %108
  %127 = add i64 %41, 1, !dbg !495
  br label %40, !dbg !495

128:                                              ; preds = %40
  %129 = add i64 %29, 8, !dbg !495
  br label %28, !dbg !495

130:                                              ; preds = %28
  %131 = add i64 %26, 1, !dbg !495
  br label %25, !dbg !495

132:                                              ; preds = %25
  ret i32 0, !dbg !507
}

define internal i32 @"main_graph$async_dispatch_35_matmul_like_256x196x512_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !508 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !509
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !509
  %6 = load ptr, ptr %5, align 8, !dbg !509
  %7 = getelementptr float, ptr %6, i64 401408, !dbg !509
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !509
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !510
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !510
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !510
  %11 = load ptr, ptr %10, align 8, !dbg !510
  %12 = getelementptr float, ptr %11, i64 43008, !dbg !510
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !510
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !511
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !511
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !511
  %16 = load ptr, ptr %15, align 8, !dbg !511
  %17 = getelementptr float, ptr %16, i64 501760, !dbg !511
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !511
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !512
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !512
  %20 = zext i32 %19 to i64, !dbg !512
  %21 = sdiv i64 %20, 4, !dbg !512
  %22 = mul i64 %21, 4, !dbg !512
  %23 = icmp ne i64 %20, %22, !dbg !512
  %24 = icmp slt i64 %20, 0, !dbg !512
  %25 = and i1 %23, %24, !dbg !512
  %26 = add i64 %21, -1, !dbg !512
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !512
  %28 = srem i64 %20, 4, !dbg !512
  %29 = icmp slt i64 %28, 0, !dbg !512
  %30 = add nsw i64 %28, 4, !dbg !512
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !512
  %32 = mul nsw i64 %27, 64, !dbg !512
  %33 = mul nsw i64 %31, 49, !dbg !512
  br label %34, !dbg !512

34:                                               ; preds = %139, %3
  %35 = phi i64 [ %140, %139 ], [ 0, %3 ], !dbg !512
  %36 = icmp slt i64 %35, 64, !dbg !512
  br i1 %36, label %37, label %141, !dbg !512

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !512
  br label %39, !dbg !512

39:                                               ; preds = %130, %37
  %40 = phi i64 [ %138, %130 ], [ 0, %37 ], !dbg !512
  %41 = icmp slt i64 %40, 49, !dbg !512
  br i1 %41, label %42, label %139, !dbg !512

42:                                               ; preds = %39
  %43 = add i64 %40, %33, !dbg !512
  br label %44, !dbg !512

44:                                               ; preds = %48, %42
  %45 = phi i64 [ %129, %48 ], [ 0, %42 ], !dbg !512
  %46 = phi <1 x float> [ %128, %48 ], [ zeroinitializer, %42 ], !dbg !512
  %47 = icmp slt i64 %45, 512, !dbg !512
  br i1 %47, label %48, label %130, !dbg !512

48:                                               ; preds = %44
  %49 = mul i64 %45, 196, !dbg !512
  %50 = add i64 %49, %43, !dbg !512
  %51 = getelementptr float, ptr %7, i64 %50, !dbg !512
  %52 = load <1 x float>, ptr %51, align 4, !dbg !512
  %53 = add i64 %45, 1, !dbg !512
  %54 = mul i64 %53, 196, !dbg !512
  %55 = add i64 %54, %43, !dbg !512
  %56 = getelementptr float, ptr %7, i64 %55, !dbg !512
  %57 = load <1 x float>, ptr %56, align 4, !dbg !512
  %58 = add i64 %45, 2, !dbg !512
  %59 = mul i64 %58, 196, !dbg !512
  %60 = add i64 %59, %43, !dbg !512
  %61 = getelementptr float, ptr %7, i64 %60, !dbg !512
  %62 = load <1 x float>, ptr %61, align 4, !dbg !512
  %63 = add i64 %45, 3, !dbg !512
  %64 = mul i64 %63, 196, !dbg !512
  %65 = add i64 %64, %43, !dbg !512
  %66 = getelementptr float, ptr %7, i64 %65, !dbg !512
  %67 = load <1 x float>, ptr %66, align 4, !dbg !512
  %68 = add i64 %45, 4, !dbg !512
  %69 = mul i64 %68, 196, !dbg !512
  %70 = add i64 %69, %43, !dbg !512
  %71 = getelementptr float, ptr %7, i64 %70, !dbg !512
  %72 = load <1 x float>, ptr %71, align 4, !dbg !512
  %73 = add i64 %45, 5, !dbg !512
  %74 = mul i64 %73, 196, !dbg !512
  %75 = add i64 %74, %43, !dbg !512
  %76 = getelementptr float, ptr %7, i64 %75, !dbg !512
  %77 = load <1 x float>, ptr %76, align 4, !dbg !512
  %78 = add i64 %45, 6, !dbg !512
  %79 = mul i64 %78, 196, !dbg !512
  %80 = add i64 %79, %43, !dbg !512
  %81 = getelementptr float, ptr %7, i64 %80, !dbg !512
  %82 = load <1 x float>, ptr %81, align 4, !dbg !512
  %83 = add i64 %45, 7, !dbg !512
  %84 = mul i64 %83, 196, !dbg !512
  %85 = add i64 %84, %43, !dbg !512
  %86 = getelementptr float, ptr %7, i64 %85, !dbg !512
  %87 = load <1 x float>, ptr %86, align 4, !dbg !512
  %88 = mul nuw nsw i64 %38, 512, !dbg !513
  %89 = add nuw nsw i64 %88, %45, !dbg !513
  %90 = getelementptr inbounds nuw float, ptr %12, i64 %89, !dbg !513
  %91 = load float, ptr %90, align 4, !dbg !513
  %92 = insertelement <1 x float> poison, float %91, i32 0, !dbg !513
  %93 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %92, <1 x float> %46), !dbg !513
  %94 = add nuw nsw i64 %88, %53, !dbg !513
  %95 = getelementptr inbounds nuw float, ptr %12, i64 %94, !dbg !513
  %96 = load float, ptr %95, align 4, !dbg !513
  %97 = insertelement <1 x float> poison, float %96, i32 0, !dbg !513
  %98 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %57, <1 x float> %97, <1 x float> %93), !dbg !513
  %99 = add nuw nsw i64 %88, %58, !dbg !513
  %100 = getelementptr inbounds nuw float, ptr %12, i64 %99, !dbg !513
  %101 = load float, ptr %100, align 4, !dbg !513
  %102 = insertelement <1 x float> poison, float %101, i32 0, !dbg !513
  %103 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %102, <1 x float> %98), !dbg !513
  %104 = add nuw nsw i64 %88, %63, !dbg !513
  %105 = getelementptr inbounds nuw float, ptr %12, i64 %104, !dbg !513
  %106 = load float, ptr %105, align 4, !dbg !513
  %107 = insertelement <1 x float> poison, float %106, i32 0, !dbg !513
  %108 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %107, <1 x float> %103), !dbg !513
  %109 = add nuw nsw i64 %88, %68, !dbg !513
  %110 = getelementptr inbounds nuw float, ptr %12, i64 %109, !dbg !513
  %111 = load float, ptr %110, align 4, !dbg !513
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !513
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %112, <1 x float> %108), !dbg !513
  %114 = add nuw nsw i64 %88, %73, !dbg !513
  %115 = getelementptr inbounds nuw float, ptr %12, i64 %114, !dbg !513
  %116 = load float, ptr %115, align 4, !dbg !513
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !513
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %77, <1 x float> %117, <1 x float> %113), !dbg !513
  %119 = add nuw nsw i64 %88, %78, !dbg !513
  %120 = getelementptr inbounds nuw float, ptr %12, i64 %119, !dbg !513
  %121 = load float, ptr %120, align 4, !dbg !513
  %122 = insertelement <1 x float> poison, float %121, i32 0, !dbg !513
  %123 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %82, <1 x float> %122, <1 x float> %118), !dbg !513
  %124 = add nuw nsw i64 %88, %83, !dbg !513
  %125 = getelementptr inbounds nuw float, ptr %12, i64 %124, !dbg !513
  %126 = load float, ptr %125, align 4, !dbg !513
  %127 = insertelement <1 x float> poison, float %126, i32 0, !dbg !513
  %128 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %87, <1 x float> %127, <1 x float> %123), !dbg !513
  %129 = add i64 %45, 8, !dbg !512
  br label %44, !dbg !512

130:                                              ; preds = %44
  %131 = fadd contract <1 x float> %46, zeroinitializer, !dbg !514
  %132 = fcmp ugt <1 x float> %131, zeroinitializer, !dbg !515
  %133 = select <1 x i1> %132, <1 x float> %131, <1 x float> zeroinitializer, !dbg !516
  %134 = extractelement <1 x float> %133, i64 0, !dbg !512
  %135 = mul nuw nsw i64 %38, 196, !dbg !512
  %136 = add nuw nsw i64 %135, %43, !dbg !512
  %137 = getelementptr inbounds nuw float, ptr %17, i64 %136, !dbg !512
  store float %134, ptr %137, align 4, !dbg !512
  %138 = add i64 %40, 1, !dbg !512
  br label %39, !dbg !512

139:                                              ; preds = %39
  %140 = add i64 %35, 1, !dbg !512
  br label %34, !dbg !512

141:                                              ; preds = %34
  ret i32 0, !dbg !517
}

define internal i32 @"main_graph$async_dispatch_36_elementwise_256x28x28_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !518 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !519
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !519
  %6 = load ptr, ptr %5, align 8, !dbg !519
  %7 = getelementptr float, ptr %6, i64 501760, !dbg !519
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !519
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !520
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !520
  %10 = load ptr, ptr %9, align 8, !dbg !520
  %11 = getelementptr float, ptr %10, i64 602112, !dbg !520
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !520
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !521
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !521
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !521
  %15 = load ptr, ptr %14, align 8, !dbg !521
  %16 = getelementptr float, ptr %15, i64 1773328, !dbg !521
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !521
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !522
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !522
  %19 = zext i32 %18 to i64, !dbg !522
  %20 = sdiv i64 %19, 2, !dbg !522
  %21 = mul i64 %20, 2, !dbg !522
  %22 = icmp ne i64 %19, %21, !dbg !522
  %23 = icmp slt i64 %19, 0, !dbg !522
  %24 = and i1 %22, %23, !dbg !522
  %25 = add i64 %20, -1, !dbg !522
  %26 = select i1 %24, i64 %25, i64 %20, !dbg !522
  %27 = srem i64 %19, 2, !dbg !522
  %28 = icmp slt i64 %27, 0, !dbg !522
  %29 = add nsw i64 %27, 2, !dbg !522
  %30 = select i1 %28, i64 %29, i64 %27, !dbg !522
  %31 = mul nsw i64 %26, 32, !dbg !522
  %32 = mul nsw i64 %30, 14, !dbg !522
  %33 = call <4 x float> @llvm.floor.v4f32(<4 x float> <float 1.200000e+01, float 1.250000e+01, float 1.300000e+01, float 1.350000e+01>), !dbg !523
  %34 = fptosi <4 x float> %33 to <4 x i64>, !dbg !524
  br label %35, !dbg !522

35:                                               ; preds = %171, %3
  %36 = phi i64 [ %172, %171 ], [ 0, %3 ], !dbg !522
  %37 = icmp slt i64 %36, 32, !dbg !522
  br i1 %37, label %38, label %173, !dbg !522

38:                                               ; preds = %35
  %39 = add i64 %36, %31, !dbg !522
  %40 = mul i64 %39, 14, !dbg !525
  br label %41, !dbg !522

41:                                               ; preds = %129, %38
  %42 = phi i64 [ %170, %129 ], [ 0, %38 ], !dbg !522
  %43 = icmp slt i64 %42, 14, !dbg !522
  br i1 %43, label %44, label %171, !dbg !522

44:                                               ; preds = %41
  %45 = add i64 %42, %32, !dbg !522
  %46 = sitofp i64 %45 to float, !dbg !526
  %47 = fdiv float %46, 2.000000e+00, !dbg !527
  %48 = call float @llvm.floor.f32(float %47), !dbg !528
  %49 = fptosi float %48 to i64, !dbg !529
  %50 = add i64 %49, %40, !dbg !525
  %51 = mul i64 %50, 14, !dbg !525
  br label %52, !dbg !522

52:                                               ; preds = %55, %44
  %53 = phi i64 [ %128, %55 ], [ 0, %44 ], !dbg !522
  %54 = icmp slt i64 %53, 24, !dbg !522
  br i1 %54, label %55, label %129, !dbg !522

55:                                               ; preds = %52
  %56 = mul i64 %39, 784, !dbg !522
  %57 = mul i64 %45, 28, !dbg !522
  %58 = add i64 %56, %57, !dbg !522
  %59 = add i64 %58, %53, !dbg !522
  %60 = getelementptr float, ptr %11, i64 %59, !dbg !522
  %61 = load <8 x float>, ptr %60, align 4, !dbg !522
  %62 = insertelement <8 x i64> poison, i64 %53, i32 0, !dbg !522
  %63 = shufflevector <8 x i64> %62, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !522
  %64 = add <8 x i64> %63, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, !dbg !530
  %65 = sitofp <8 x i64> %64 to <8 x float>, !dbg !531
  %66 = fdiv <8 x float> %65, splat (float 2.000000e+00), !dbg !532
  %67 = call <8 x float> @llvm.floor.v8f32(<8 x float> %66), !dbg !523
  %68 = fptosi <8 x float> %67 to <8 x i64>, !dbg !524
  %69 = insertelement <8 x i64> poison, i64 %51, i32 0, !dbg !525
  %70 = shufflevector <8 x i64> %69, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !525
  %71 = add <8 x i64> %68, %70, !dbg !525
  %72 = extractelement <8 x i64> %71, i64 0, !dbg !525
  %73 = add i64 0, %72, !dbg !525
  %74 = getelementptr float, ptr %7, i64 %73, !dbg !525
  %75 = load <1 x float>, ptr %74, align 4, !dbg !525
  %76 = extractelement <1 x float> %75, i64 0, !dbg !525
  %77 = extractelement <8 x i64> %71, i64 1, !dbg !525
  %78 = add i64 0, %77, !dbg !525
  %79 = getelementptr float, ptr %7, i64 %78, !dbg !525
  %80 = load <1 x float>, ptr %79, align 4, !dbg !525
  %81 = extractelement <1 x float> %80, i64 0, !dbg !525
  %82 = extractelement <8 x i64> %71, i64 2, !dbg !525
  %83 = add i64 0, %82, !dbg !525
  %84 = getelementptr float, ptr %7, i64 %83, !dbg !525
  %85 = load <1 x float>, ptr %84, align 4, !dbg !525
  %86 = extractelement <1 x float> %85, i64 0, !dbg !525
  %87 = extractelement <8 x i64> %71, i64 3, !dbg !525
  %88 = add i64 0, %87, !dbg !525
  %89 = getelementptr float, ptr %7, i64 %88, !dbg !525
  %90 = load <1 x float>, ptr %89, align 4, !dbg !525
  %91 = extractelement <1 x float> %90, i64 0, !dbg !525
  %92 = extractelement <8 x i64> %71, i64 4, !dbg !525
  %93 = add i64 0, %92, !dbg !525
  %94 = getelementptr float, ptr %7, i64 %93, !dbg !525
  %95 = load <1 x float>, ptr %94, align 4, !dbg !525
  %96 = extractelement <1 x float> %95, i64 0, !dbg !525
  %97 = extractelement <8 x i64> %71, i64 5, !dbg !525
  %98 = add i64 0, %97, !dbg !525
  %99 = getelementptr float, ptr %7, i64 %98, !dbg !525
  %100 = load <1 x float>, ptr %99, align 4, !dbg !525
  %101 = extractelement <1 x float> %100, i64 0, !dbg !525
  %102 = extractelement <8 x i64> %71, i64 6, !dbg !525
  %103 = add i64 0, %102, !dbg !525
  %104 = getelementptr float, ptr %7, i64 %103, !dbg !525
  %105 = load <1 x float>, ptr %104, align 4, !dbg !525
  %106 = extractelement <1 x float> %105, i64 0, !dbg !525
  %107 = extractelement <8 x i64> %71, i64 7, !dbg !525
  %108 = add i64 0, %107, !dbg !525
  %109 = getelementptr float, ptr %7, i64 %108, !dbg !525
  %110 = load <1 x float>, ptr %109, align 4, !dbg !525
  %111 = extractelement <1 x float> %110, i64 0, !dbg !525
  %112 = insertelement <8 x float> poison, float %76, i64 0, !dbg !525
  %113 = insertelement <8 x float> %112, float %81, i64 1, !dbg !525
  %114 = insertelement <8 x float> %113, float %86, i64 2, !dbg !525
  %115 = insertelement <8 x float> %114, float %91, i64 3, !dbg !525
  %116 = insertelement <8 x float> %115, float %96, i64 4, !dbg !525
  %117 = insertelement <8 x float> %116, float %101, i64 5, !dbg !525
  %118 = insertelement <8 x float> %117, float %106, i64 6, !dbg !525
  %119 = insertelement <8 x float> %118, float %111, i64 7, !dbg !525
  %120 = fadd contract <8 x float> %119, %61, !dbg !533
  %121 = add i64 %45, 2, !dbg !522
  %122 = add i64 %53, 2, !dbg !522
  %123 = mul i64 %39, 1024, !dbg !522
  %124 = mul i64 %121, 32, !dbg !522
  %125 = add i64 %123, %124, !dbg !522
  %126 = add i64 %125, %122, !dbg !522
  %127 = getelementptr float, ptr %16, i64 %126, !dbg !522
  store <8 x float> %120, ptr %127, align 4, !dbg !522
  %128 = add i64 %53, 8, !dbg !522
  br label %52, !dbg !522

129:                                              ; preds = %52
  %130 = mul i64 %39, 784, !dbg !522
  %131 = mul i64 %45, 28, !dbg !522
  %132 = add i64 %130, %131, !dbg !522
  %133 = add i64 %132, 24, !dbg !522
  %134 = getelementptr float, ptr %11, i64 %133, !dbg !522
  %135 = load <4 x float>, ptr %134, align 4, !dbg !522
  %136 = insertelement <4 x i64> poison, i64 %51, i32 0, !dbg !525
  %137 = shufflevector <4 x i64> %136, <4 x i64> poison, <4 x i32> zeroinitializer, !dbg !525
  %138 = add <4 x i64> %34, %137, !dbg !525
  %139 = extractelement <4 x i64> %138, i64 0, !dbg !525
  %140 = add i64 0, %139, !dbg !525
  %141 = getelementptr float, ptr %7, i64 %140, !dbg !525
  %142 = load <1 x float>, ptr %141, align 4, !dbg !525
  %143 = extractelement <1 x float> %142, i64 0, !dbg !525
  %144 = extractelement <4 x i64> %138, i64 1, !dbg !525
  %145 = add i64 0, %144, !dbg !525
  %146 = getelementptr float, ptr %7, i64 %145, !dbg !525
  %147 = load <1 x float>, ptr %146, align 4, !dbg !525
  %148 = extractelement <1 x float> %147, i64 0, !dbg !525
  %149 = extractelement <4 x i64> %138, i64 2, !dbg !525
  %150 = add i64 0, %149, !dbg !525
  %151 = getelementptr float, ptr %7, i64 %150, !dbg !525
  %152 = load <1 x float>, ptr %151, align 4, !dbg !525
  %153 = extractelement <1 x float> %152, i64 0, !dbg !525
  %154 = extractelement <4 x i64> %138, i64 3, !dbg !525
  %155 = add i64 0, %154, !dbg !525
  %156 = getelementptr float, ptr %7, i64 %155, !dbg !525
  %157 = load <1 x float>, ptr %156, align 4, !dbg !525
  %158 = extractelement <1 x float> %157, i64 0, !dbg !525
  %159 = insertelement <4 x float> poison, float %143, i64 0, !dbg !525
  %160 = insertelement <4 x float> %159, float %148, i64 1, !dbg !525
  %161 = insertelement <4 x float> %160, float %153, i64 2, !dbg !525
  %162 = insertelement <4 x float> %161, float %158, i64 3, !dbg !525
  %163 = fadd contract <4 x float> %162, %135, !dbg !533
  %164 = add i64 %45, 2, !dbg !522
  %165 = mul i64 %39, 1024, !dbg !522
  %166 = mul i64 %164, 32, !dbg !522
  %167 = add i64 %165, %166, !dbg !522
  %168 = add i64 %167, 26, !dbg !522
  %169 = getelementptr float, ptr %16, i64 %168, !dbg !522
  store <4 x float> %163, ptr %169, align 4, !dbg !522
  %170 = add i64 %42, 1, !dbg !522
  br label %41, !dbg !522

171:                                              ; preds = %41
  %172 = add i64 %36, 1, !dbg !522
  br label %35, !dbg !522

173:                                              ; preds = %35
  ret i32 0, !dbg !534
}

define internal i32 @"main_graph$async_dispatch_37_conv_28x28x256x5x5_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !535 {
  %4 = alloca float, i64 8, align 64, !dbg !536
  %5 = alloca float, i64 8, align 64, !dbg !536
  %6 = alloca float, i64 8, align 64, !dbg !537
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !538
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !538
  %9 = load ptr, ptr %8, align 8, !dbg !538
  %10 = getelementptr float, ptr %9, i64 1773328, !dbg !538
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !538
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !539
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !539
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !539
  %14 = load ptr, ptr %13, align 8, !dbg !539
  %15 = getelementptr float, ptr %14, i64 3842752, !dbg !539
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !539
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !540
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !540
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !540
  %19 = load ptr, ptr %18, align 8, !dbg !540
  %20 = getelementptr float, ptr %19, i64 401408, !dbg !540
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !540
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !536
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !536
  %23 = zext i32 %22 to i64, !dbg !536
  %24 = sdiv i64 %23, 8, !dbg !536
  %25 = mul i64 %24, 8, !dbg !536
  %26 = icmp ne i64 %23, %25, !dbg !536
  %27 = icmp slt i64 %23, 0, !dbg !536
  %28 = and i1 %26, %27, !dbg !536
  %29 = add i64 %24, -1, !dbg !536
  %30 = select i1 %28, i64 %29, i64 %24, !dbg !536
  %31 = srem i64 %23, 8, !dbg !536
  %32 = icmp slt i64 %31, 0, !dbg !536
  %33 = add nsw i64 %31, 8, !dbg !536
  %34 = select i1 %32, i64 %33, i64 %31, !dbg !536
  %35 = mul nsw i64 %30, 14, !dbg !536
  %36 = mul nsw i64 %34, 32, !dbg !536
  br label %37, !dbg !536

37:                                               ; preds = %144, %3
  %38 = phi i64 [ %145, %144 ], [ 0, %3 ], !dbg !536
  %39 = icmp slt i64 %38, 14, !dbg !536
  br i1 %39, label %40, label %146, !dbg !536

40:                                               ; preds = %142, %37
  %41 = phi i64 [ %143, %142 ], [ 0, %37 ], !dbg !536
  %42 = icmp slt i64 %41, 28, !dbg !536
  br i1 %42, label %43, label %144, !dbg !536

43:                                               ; preds = %40
  %44 = sub i64 28, %41, !dbg !536
  %45 = icmp slt i64 %44, 8, !dbg !536
  %46 = select i1 %45, i64 %44, i64 8, !dbg !536
  %47 = trunc i64 %46 to i32, !dbg !541
  %48 = insertelement <8 x i32> poison, i32 %47, i32 0, !dbg !541
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !541
  %50 = icmp sgt <8 x i32> %49, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !541
  %51 = getelementptr float, ptr %6, i64 0, !dbg !541
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %51, i32 4, <8 x i1> %50), !dbg !541
  br label %52, !dbg !536

52:                                               ; preds = %140, %43
  %53 = phi i64 [ %141, %140 ], [ 0, %43 ], !dbg !536
  %54 = icmp slt i64 %53, 32, !dbg !536
  br i1 %54, label %55, label %142, !dbg !536

55:                                               ; preds = %52
  %56 = add i64 %53, %36, !dbg !536
  br label %57, !dbg !536

57:                                               ; preds = %60, %55
  %58 = phi i64 [ %65, %60 ], [ 0, %55 ], !dbg !536
  %59 = icmp slt i64 %58, %46, !dbg !536
  br i1 %59, label %60, label %66, !dbg !536

60:                                               ; preds = %57
  %61 = add nuw nsw i64 0, %58, !dbg !536
  %62 = getelementptr inbounds nuw float, ptr %6, i64 %61, !dbg !536
  %63 = load float, ptr %62, align 4, !dbg !536
  %64 = getelementptr inbounds nuw float, ptr %5, i64 %61, !dbg !536
  store float %63, ptr %64, align 4, !dbg !536
  %65 = add i64 %58, 1, !dbg !536
  br label %57, !dbg !536

66:                                               ; preds = %101, %57
  %67 = phi i64 [ %102, %101 ], [ 0, %57 ], !dbg !536
  %68 = icmp slt i64 %67, 5, !dbg !536
  br i1 %68, label %69, label %103, !dbg !536

69:                                               ; preds = %66
  %70 = add i64 %67, %38, !dbg !536
  %71 = add i64 %70, %35, !dbg !536
  br label %72, !dbg !536

72:                                               ; preds = %99, %69
  %73 = phi i64 [ %100, %99 ], [ 0, %69 ], !dbg !536
  %74 = icmp slt i64 %73, %46, !dbg !536
  br i1 %74, label %75, label %101, !dbg !536

75:                                               ; preds = %78, %72
  %76 = phi i64 [ %98, %78 ], [ 0, %72 ], !dbg !536
  %77 = icmp slt i64 %76, 5, !dbg !536
  br i1 %77, label %78, label %99, !dbg !536

78:                                               ; preds = %75
  %79 = add i64 %41, %73, !dbg !536
  %80 = add i64 %79, %76, !dbg !536
  %81 = mul nuw nsw i64 %56, 1024, !dbg !536
  %82 = mul nuw nsw i64 %71, 32, !dbg !536
  %83 = add nuw nsw i64 %81, %82, !dbg !536
  %84 = add nuw nsw i64 %83, %80, !dbg !536
  %85 = getelementptr inbounds nuw float, ptr %10, i64 %84, !dbg !536
  %86 = load float, ptr %85, align 4, !dbg !536
  %87 = mul nuw nsw i64 %56, 25, !dbg !536
  %88 = mul nuw nsw i64 %67, 5, !dbg !536
  %89 = add nuw nsw i64 %87, %88, !dbg !536
  %90 = add nuw nsw i64 %89, %76, !dbg !536
  %91 = getelementptr inbounds nuw float, ptr %15, i64 %90, !dbg !536
  %92 = load float, ptr %91, align 4, !dbg !536
  %93 = add nuw nsw i64 0, %73, !dbg !536
  %94 = getelementptr inbounds nuw float, ptr %5, i64 %93, !dbg !536
  %95 = load float, ptr %94, align 4, !dbg !536
  %96 = fmul contract float %86, %92, !dbg !542
  %97 = fadd contract float %95, %96, !dbg !543
  store float %97, ptr %94, align 4, !dbg !536
  %98 = add i64 %76, 1, !dbg !536
  br label %75, !dbg !536

99:                                               ; preds = %75
  %100 = add i64 %73, 1, !dbg !536
  br label %72, !dbg !536

101:                                              ; preds = %72
  %102 = add i64 %67, 1, !dbg !536
  br label %66, !dbg !536

103:                                              ; preds = %106, %66
  %104 = phi i64 [ %111, %106 ], [ 0, %66 ], !dbg !536
  %105 = icmp slt i64 %104, %46, !dbg !536
  br i1 %105, label %106, label %112, !dbg !536

106:                                              ; preds = %103
  %107 = add nuw nsw i64 0, %104, !dbg !536
  %108 = getelementptr inbounds nuw float, ptr %6, i64 %107, !dbg !536
  %109 = load float, ptr %108, align 4, !dbg !536
  %110 = getelementptr inbounds nuw float, ptr %4, i64 %107, !dbg !536
  store float %109, ptr %110, align 4, !dbg !536
  %111 = add i64 %104, 1, !dbg !536
  br label %103, !dbg !536

112:                                              ; preds = %115, %103
  %113 = phi i64 [ %120, %115 ], [ 0, %103 ], !dbg !536
  %114 = icmp slt i64 %113, %46, !dbg !536
  br i1 %114, label %115, label %121, !dbg !536

115:                                              ; preds = %112
  %116 = add nuw nsw i64 0, %113, !dbg !536
  %117 = getelementptr inbounds nuw float, ptr %5, i64 %116, !dbg !536
  %118 = load float, ptr %117, align 4, !dbg !536
  %119 = getelementptr inbounds nuw float, ptr %4, i64 %116, !dbg !536
  store float %118, ptr %119, align 4, !dbg !536
  %120 = add i64 %113, 1, !dbg !536
  br label %112, !dbg !536

121:                                              ; preds = %124, %112
  %122 = phi i64 [ %139, %124 ], [ 0, %112 ], !dbg !544
  %123 = icmp slt i64 %122, %46, !dbg !544
  br i1 %123, label %124, label %140, !dbg !544

124:                                              ; preds = %121
  %125 = add i64 0, %122, !dbg !544
  %126 = getelementptr float, ptr %4, i64 %125, !dbg !544
  %127 = load <1 x float>, ptr %126, align 4, !dbg !544
  %128 = fadd contract <1 x float> %127, zeroinitializer, !dbg !545
  %129 = fcmp ugt <1 x float> %128, zeroinitializer, !dbg !546
  %130 = select <1 x i1> %129, <1 x float> %128, <1 x float> zeroinitializer, !dbg !547
  %131 = extractelement <1 x float> %130, i64 0, !dbg !544
  %132 = add i64 %35, %38, !dbg !544
  %133 = add i64 %41, %122, !dbg !544
  %134 = mul nuw nsw i64 %56, 784, !dbg !544
  %135 = mul nuw nsw i64 %132, 28, !dbg !544
  %136 = add nuw nsw i64 %134, %135, !dbg !544
  %137 = add nuw nsw i64 %136, %133, !dbg !544
  %138 = getelementptr inbounds nuw float, ptr %20, i64 %137, !dbg !544
  store float %131, ptr %138, align 4, !dbg !544
  %139 = add i64 %122, 1, !dbg !544
  br label %121, !dbg !544

140:                                              ; preds = %121
  %141 = add i64 %53, 1, !dbg !536
  br label %52, !dbg !536

142:                                              ; preds = %52
  %143 = add i64 %41, 8, !dbg !536
  br label %40, !dbg !536

144:                                              ; preds = %40
  %145 = add i64 %38, 1, !dbg !536
  br label %37, !dbg !536

146:                                              ; preds = %37
  ret i32 0, !dbg !548
}

define internal i32 @"main_graph$async_dispatch_38_matmul_like_128x784x256_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !549 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !550
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !550
  %6 = load ptr, ptr %5, align 8, !dbg !550
  %7 = getelementptr float, ptr %6, i64 401408, !dbg !550
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !550
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !551
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !551
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !551
  %11 = load ptr, ptr %10, align 8, !dbg !551
  %12 = getelementptr float, ptr %11, i64 10240, !dbg !551
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !551
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !552
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !552
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !552
  %16 = load ptr, ptr %15, align 8, !dbg !552
  %17 = getelementptr float, ptr %16, i64 602112, !dbg !552
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !552
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !553
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !553
  %20 = zext i32 %19 to i64, !dbg !553
  %21 = sdiv i64 %20, 14, !dbg !553
  %22 = mul i64 %21, 14, !dbg !553
  %23 = icmp ne i64 %20, %22, !dbg !553
  %24 = icmp slt i64 %20, 0, !dbg !553
  %25 = and i1 %23, %24, !dbg !553
  %26 = add i64 %21, -1, !dbg !553
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !553
  %28 = srem i64 %20, 14, !dbg !553
  %29 = icmp slt i64 %28, 0, !dbg !553
  %30 = add nsw i64 %28, 14, !dbg !553
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !553
  %32 = mul nsw i64 %27, 64, !dbg !553
  %33 = mul nsw i64 %31, 56, !dbg !553
  br label %34, !dbg !553

34:                                               ; preds = %139, %3
  %35 = phi i64 [ %140, %139 ], [ 0, %3 ], !dbg !553
  %36 = icmp slt i64 %35, 64, !dbg !553
  br i1 %36, label %37, label %141, !dbg !553

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !553
  br label %39, !dbg !553

39:                                               ; preds = %130, %37
  %40 = phi i64 [ %138, %130 ], [ 0, %37 ], !dbg !553
  %41 = icmp slt i64 %40, 56, !dbg !553
  br i1 %41, label %42, label %139, !dbg !553

42:                                               ; preds = %39
  %43 = add i64 %40, %33, !dbg !553
  br label %44, !dbg !553

44:                                               ; preds = %48, %42
  %45 = phi i64 [ %129, %48 ], [ 0, %42 ], !dbg !553
  %46 = phi <1 x float> [ %128, %48 ], [ zeroinitializer, %42 ], !dbg !553
  %47 = icmp slt i64 %45, 256, !dbg !553
  br i1 %47, label %48, label %130, !dbg !553

48:                                               ; preds = %44
  %49 = mul i64 %45, 784, !dbg !553
  %50 = add i64 %49, %43, !dbg !553
  %51 = getelementptr float, ptr %7, i64 %50, !dbg !553
  %52 = load <1 x float>, ptr %51, align 4, !dbg !553
  %53 = add i64 %45, 1, !dbg !553
  %54 = mul i64 %53, 784, !dbg !553
  %55 = add i64 %54, %43, !dbg !553
  %56 = getelementptr float, ptr %7, i64 %55, !dbg !553
  %57 = load <1 x float>, ptr %56, align 4, !dbg !553
  %58 = add i64 %45, 2, !dbg !553
  %59 = mul i64 %58, 784, !dbg !553
  %60 = add i64 %59, %43, !dbg !553
  %61 = getelementptr float, ptr %7, i64 %60, !dbg !553
  %62 = load <1 x float>, ptr %61, align 4, !dbg !553
  %63 = add i64 %45, 3, !dbg !553
  %64 = mul i64 %63, 784, !dbg !553
  %65 = add i64 %64, %43, !dbg !553
  %66 = getelementptr float, ptr %7, i64 %65, !dbg !553
  %67 = load <1 x float>, ptr %66, align 4, !dbg !553
  %68 = add i64 %45, 4, !dbg !553
  %69 = mul i64 %68, 784, !dbg !553
  %70 = add i64 %69, %43, !dbg !553
  %71 = getelementptr float, ptr %7, i64 %70, !dbg !553
  %72 = load <1 x float>, ptr %71, align 4, !dbg !553
  %73 = add i64 %45, 5, !dbg !553
  %74 = mul i64 %73, 784, !dbg !553
  %75 = add i64 %74, %43, !dbg !553
  %76 = getelementptr float, ptr %7, i64 %75, !dbg !553
  %77 = load <1 x float>, ptr %76, align 4, !dbg !553
  %78 = add i64 %45, 6, !dbg !553
  %79 = mul i64 %78, 784, !dbg !553
  %80 = add i64 %79, %43, !dbg !553
  %81 = getelementptr float, ptr %7, i64 %80, !dbg !553
  %82 = load <1 x float>, ptr %81, align 4, !dbg !553
  %83 = add i64 %45, 7, !dbg !553
  %84 = mul i64 %83, 784, !dbg !553
  %85 = add i64 %84, %43, !dbg !553
  %86 = getelementptr float, ptr %7, i64 %85, !dbg !553
  %87 = load <1 x float>, ptr %86, align 4, !dbg !553
  %88 = mul nuw nsw i64 %38, 256, !dbg !554
  %89 = add nuw nsw i64 %88, %45, !dbg !554
  %90 = getelementptr inbounds nuw float, ptr %12, i64 %89, !dbg !554
  %91 = load float, ptr %90, align 4, !dbg !554
  %92 = insertelement <1 x float> poison, float %91, i32 0, !dbg !554
  %93 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %92, <1 x float> %46), !dbg !554
  %94 = add nuw nsw i64 %88, %53, !dbg !554
  %95 = getelementptr inbounds nuw float, ptr %12, i64 %94, !dbg !554
  %96 = load float, ptr %95, align 4, !dbg !554
  %97 = insertelement <1 x float> poison, float %96, i32 0, !dbg !554
  %98 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %57, <1 x float> %97, <1 x float> %93), !dbg !554
  %99 = add nuw nsw i64 %88, %58, !dbg !554
  %100 = getelementptr inbounds nuw float, ptr %12, i64 %99, !dbg !554
  %101 = load float, ptr %100, align 4, !dbg !554
  %102 = insertelement <1 x float> poison, float %101, i32 0, !dbg !554
  %103 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %102, <1 x float> %98), !dbg !554
  %104 = add nuw nsw i64 %88, %63, !dbg !554
  %105 = getelementptr inbounds nuw float, ptr %12, i64 %104, !dbg !554
  %106 = load float, ptr %105, align 4, !dbg !554
  %107 = insertelement <1 x float> poison, float %106, i32 0, !dbg !554
  %108 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %107, <1 x float> %103), !dbg !554
  %109 = add nuw nsw i64 %88, %68, !dbg !554
  %110 = getelementptr inbounds nuw float, ptr %12, i64 %109, !dbg !554
  %111 = load float, ptr %110, align 4, !dbg !554
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !554
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %112, <1 x float> %108), !dbg !554
  %114 = add nuw nsw i64 %88, %73, !dbg !554
  %115 = getelementptr inbounds nuw float, ptr %12, i64 %114, !dbg !554
  %116 = load float, ptr %115, align 4, !dbg !554
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !554
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %77, <1 x float> %117, <1 x float> %113), !dbg !554
  %119 = add nuw nsw i64 %88, %78, !dbg !554
  %120 = getelementptr inbounds nuw float, ptr %12, i64 %119, !dbg !554
  %121 = load float, ptr %120, align 4, !dbg !554
  %122 = insertelement <1 x float> poison, float %121, i32 0, !dbg !554
  %123 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %82, <1 x float> %122, <1 x float> %118), !dbg !554
  %124 = add nuw nsw i64 %88, %83, !dbg !554
  %125 = getelementptr inbounds nuw float, ptr %12, i64 %124, !dbg !554
  %126 = load float, ptr %125, align 4, !dbg !554
  %127 = insertelement <1 x float> poison, float %126, i32 0, !dbg !554
  %128 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %87, <1 x float> %127, <1 x float> %123), !dbg !554
  %129 = add i64 %45, 8, !dbg !553
  br label %44, !dbg !553

130:                                              ; preds = %44
  %131 = fadd contract <1 x float> %46, zeroinitializer, !dbg !555
  %132 = fcmp ugt <1 x float> %131, zeroinitializer, !dbg !556
  %133 = select <1 x i1> %132, <1 x float> %131, <1 x float> zeroinitializer, !dbg !557
  %134 = extractelement <1 x float> %133, i64 0, !dbg !553
  %135 = mul nuw nsw i64 %38, 784, !dbg !553
  %136 = add nuw nsw i64 %135, %43, !dbg !553
  %137 = getelementptr inbounds nuw float, ptr %17, i64 %136, !dbg !553
  store float %134, ptr %137, align 4, !dbg !553
  %138 = add i64 %40, 1, !dbg !553
  br label %39, !dbg !553

139:                                              ; preds = %39
  %140 = add i64 %35, 1, !dbg !553
  br label %34, !dbg !553

141:                                              ; preds = %34
  ret i32 0, !dbg !558
}

define internal i32 @"main_graph$async_dispatch_39_elementwise_128x56x56_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !559 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !560
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !560
  %6 = load ptr, ptr %5, align 8, !dbg !560
  %7 = getelementptr float, ptr %6, i64 602112, !dbg !560
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !560
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !561
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !561
  %10 = load ptr, ptr %9, align 8, !dbg !561
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !561
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !562
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !562
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !562
  %14 = load ptr, ptr %13, align 8, !dbg !562
  %15 = getelementptr float, ptr %14, i64 1773328, !dbg !562
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !562
  %16 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !563
  %17 = extractvalue %iree_hal_executable_workgroup_state_v0_t %16, 0, !dbg !563
  %18 = zext i32 %17 to i64, !dbg !563
  %19 = sdiv i64 %18, 2, !dbg !563
  %20 = mul i64 %19, 2, !dbg !563
  %21 = icmp ne i64 %18, %20, !dbg !563
  %22 = icmp slt i64 %18, 0, !dbg !563
  %23 = and i1 %21, %22, !dbg !563
  %24 = add i64 %19, -1, !dbg !563
  %25 = select i1 %23, i64 %24, i64 %19, !dbg !563
  %26 = srem i64 %18, 2, !dbg !563
  %27 = icmp slt i64 %26, 0, !dbg !563
  %28 = add nsw i64 %26, 2, !dbg !563
  %29 = select i1 %27, i64 %28, i64 %26, !dbg !563
  %30 = mul nsw i64 %25, 16, !dbg !563
  %31 = mul nsw i64 %29, 28, !dbg !563
  br label %32, !dbg !563

32:                                               ; preds = %128, %3
  %33 = phi i64 [ %129, %128 ], [ 0, %3 ], !dbg !563
  %34 = icmp slt i64 %33, 16, !dbg !563
  br i1 %34, label %35, label %130, !dbg !563

35:                                               ; preds = %32
  %36 = add i64 %33, %30, !dbg !563
  %37 = mul i64 %36, 28, !dbg !564
  br label %38, !dbg !563

38:                                               ; preds = %126, %35
  %39 = phi i64 [ %127, %126 ], [ 0, %35 ], !dbg !563
  %40 = icmp slt i64 %39, 28, !dbg !563
  br i1 %40, label %41, label %128, !dbg !563

41:                                               ; preds = %38
  %42 = add i64 %39, %31, !dbg !563
  %43 = sitofp i64 %42 to float, !dbg !565
  %44 = fdiv float %43, 2.000000e+00, !dbg !566
  %45 = call float @llvm.floor.f32(float %44), !dbg !567
  %46 = fptosi float %45 to i64, !dbg !568
  %47 = add i64 %46, %37, !dbg !564
  %48 = mul i64 %47, 28, !dbg !564
  br label %49, !dbg !563

49:                                               ; preds = %52, %41
  %50 = phi i64 [ %125, %52 ], [ 0, %41 ], !dbg !563
  %51 = icmp slt i64 %50, 56, !dbg !563
  br i1 %51, label %52, label %126, !dbg !563

52:                                               ; preds = %49
  %53 = mul i64 %36, 3136, !dbg !563
  %54 = mul i64 %42, 56, !dbg !563
  %55 = add i64 %53, %54, !dbg !563
  %56 = add i64 %55, %50, !dbg !563
  %57 = getelementptr float, ptr %10, i64 %56, !dbg !563
  %58 = load <8 x float>, ptr %57, align 4, !dbg !563
  %59 = insertelement <8 x i64> poison, i64 %50, i32 0, !dbg !563
  %60 = shufflevector <8 x i64> %59, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !563
  %61 = add <8 x i64> %60, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, !dbg !569
  %62 = sitofp <8 x i64> %61 to <8 x float>, !dbg !570
  %63 = fdiv <8 x float> %62, splat (float 2.000000e+00), !dbg !571
  %64 = call <8 x float> @llvm.floor.v8f32(<8 x float> %63), !dbg !572
  %65 = fptosi <8 x float> %64 to <8 x i64>, !dbg !573
  %66 = insertelement <8 x i64> poison, i64 %48, i32 0, !dbg !564
  %67 = shufflevector <8 x i64> %66, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !564
  %68 = add <8 x i64> %65, %67, !dbg !564
  %69 = extractelement <8 x i64> %68, i64 0, !dbg !564
  %70 = add i64 0, %69, !dbg !564
  %71 = getelementptr float, ptr %7, i64 %70, !dbg !564
  %72 = load <1 x float>, ptr %71, align 4, !dbg !564
  %73 = extractelement <1 x float> %72, i64 0, !dbg !564
  %74 = extractelement <8 x i64> %68, i64 1, !dbg !564
  %75 = add i64 0, %74, !dbg !564
  %76 = getelementptr float, ptr %7, i64 %75, !dbg !564
  %77 = load <1 x float>, ptr %76, align 4, !dbg !564
  %78 = extractelement <1 x float> %77, i64 0, !dbg !564
  %79 = extractelement <8 x i64> %68, i64 2, !dbg !564
  %80 = add i64 0, %79, !dbg !564
  %81 = getelementptr float, ptr %7, i64 %80, !dbg !564
  %82 = load <1 x float>, ptr %81, align 4, !dbg !564
  %83 = extractelement <1 x float> %82, i64 0, !dbg !564
  %84 = extractelement <8 x i64> %68, i64 3, !dbg !564
  %85 = add i64 0, %84, !dbg !564
  %86 = getelementptr float, ptr %7, i64 %85, !dbg !564
  %87 = load <1 x float>, ptr %86, align 4, !dbg !564
  %88 = extractelement <1 x float> %87, i64 0, !dbg !564
  %89 = extractelement <8 x i64> %68, i64 4, !dbg !564
  %90 = add i64 0, %89, !dbg !564
  %91 = getelementptr float, ptr %7, i64 %90, !dbg !564
  %92 = load <1 x float>, ptr %91, align 4, !dbg !564
  %93 = extractelement <1 x float> %92, i64 0, !dbg !564
  %94 = extractelement <8 x i64> %68, i64 5, !dbg !564
  %95 = add i64 0, %94, !dbg !564
  %96 = getelementptr float, ptr %7, i64 %95, !dbg !564
  %97 = load <1 x float>, ptr %96, align 4, !dbg !564
  %98 = extractelement <1 x float> %97, i64 0, !dbg !564
  %99 = extractelement <8 x i64> %68, i64 6, !dbg !564
  %100 = add i64 0, %99, !dbg !564
  %101 = getelementptr float, ptr %7, i64 %100, !dbg !564
  %102 = load <1 x float>, ptr %101, align 4, !dbg !564
  %103 = extractelement <1 x float> %102, i64 0, !dbg !564
  %104 = extractelement <8 x i64> %68, i64 7, !dbg !564
  %105 = add i64 0, %104, !dbg !564
  %106 = getelementptr float, ptr %7, i64 %105, !dbg !564
  %107 = load <1 x float>, ptr %106, align 4, !dbg !564
  %108 = extractelement <1 x float> %107, i64 0, !dbg !564
  %109 = insertelement <8 x float> poison, float %73, i64 0, !dbg !564
  %110 = insertelement <8 x float> %109, float %78, i64 1, !dbg !564
  %111 = insertelement <8 x float> %110, float %83, i64 2, !dbg !564
  %112 = insertelement <8 x float> %111, float %88, i64 3, !dbg !564
  %113 = insertelement <8 x float> %112, float %93, i64 4, !dbg !564
  %114 = insertelement <8 x float> %113, float %98, i64 5, !dbg !564
  %115 = insertelement <8 x float> %114, float %103, i64 6, !dbg !564
  %116 = insertelement <8 x float> %115, float %108, i64 7, !dbg !564
  %117 = fadd contract <8 x float> %116, %58, !dbg !574
  %118 = add i64 %42, 2, !dbg !563
  %119 = add i64 %50, 2, !dbg !563
  %120 = mul i64 %36, 3600, !dbg !563
  %121 = mul i64 %118, 60, !dbg !563
  %122 = add i64 %120, %121, !dbg !563
  %123 = add i64 %122, %119, !dbg !563
  %124 = getelementptr float, ptr %15, i64 %123, !dbg !563
  store <8 x float> %117, ptr %124, align 4, !dbg !563
  %125 = add i64 %50, 8, !dbg !563
  br label %49, !dbg !563

126:                                              ; preds = %49
  %127 = add i64 %39, 1, !dbg !563
  br label %38, !dbg !563

128:                                              ; preds = %38
  %129 = add i64 %33, 1, !dbg !563
  br label %32, !dbg !563

130:                                              ; preds = %32
  ret i32 0, !dbg !575
}

define internal i32 @"main_graph$async_dispatch_40_conv_56x56x128x5x5_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !576 {
  %4 = alloca float, i64 8, align 64, !dbg !577
  %5 = alloca float, i64 8, align 64, !dbg !577
  %6 = alloca float, i64 8, align 64, !dbg !578
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !579
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !579
  %9 = load ptr, ptr %8, align 8, !dbg !579
  %10 = getelementptr float, ptr %9, i64 1773328, !dbg !579
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !579
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !580
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !580
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !580
  %14 = load ptr, ptr %13, align 8, !dbg !580
  %15 = getelementptr float, ptr %14, i64 3839552, !dbg !580
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !580
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !581
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !581
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !581
  %19 = load ptr, ptr %18, align 8, !dbg !581
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !581
  %20 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !577
  %21 = extractvalue %iree_hal_executable_workgroup_state_v0_t %20, 0, !dbg !577
  %22 = zext i32 %21 to i64, !dbg !577
  %23 = sdiv i64 %22, 8, !dbg !577
  %24 = mul i64 %23, 8, !dbg !577
  %25 = icmp ne i64 %22, %24, !dbg !577
  %26 = icmp slt i64 %22, 0, !dbg !577
  %27 = and i1 %25, %26, !dbg !577
  %28 = add i64 %23, -1, !dbg !577
  %29 = select i1 %27, i64 %28, i64 %23, !dbg !577
  %30 = srem i64 %22, 8, !dbg !577
  %31 = icmp slt i64 %30, 0, !dbg !577
  %32 = add nsw i64 %30, 8, !dbg !577
  %33 = select i1 %31, i64 %32, i64 %30, !dbg !577
  %34 = sdiv i64 %33, 4, !dbg !577
  %35 = srem i64 %22, 4, !dbg !577
  %36 = icmp slt i64 %35, 0, !dbg !577
  %37 = add nsw i64 %35, 4, !dbg !577
  %38 = select i1 %36, i64 %37, i64 %35, !dbg !577
  %39 = mul nsw i64 %29, 28, !dbg !577
  %40 = mul nsw i64 %34, 28, !dbg !577
  %41 = mul nsw i64 %38, 32, !dbg !577
  br label %42, !dbg !577

42:                                               ; preds = %150, %3
  %43 = phi i64 [ %151, %150 ], [ 0, %3 ], !dbg !577
  %44 = icmp slt i64 %43, 28, !dbg !577
  br i1 %44, label %45, label %152, !dbg !577

45:                                               ; preds = %148, %42
  %46 = phi i64 [ %149, %148 ], [ 0, %42 ], !dbg !577
  %47 = icmp slt i64 %46, 28, !dbg !577
  br i1 %47, label %48, label %150, !dbg !577

48:                                               ; preds = %45
  %49 = sub i64 28, %46, !dbg !577
  %50 = icmp slt i64 %49, 8, !dbg !577
  %51 = select i1 %50, i64 %49, i64 8, !dbg !577
  %52 = trunc i64 %51 to i32, !dbg !582
  %53 = insertelement <8 x i32> poison, i32 %52, i32 0, !dbg !582
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !582
  %55 = icmp sgt <8 x i32> %54, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !582
  %56 = getelementptr float, ptr %6, i64 0, !dbg !582
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %56, i32 4, <8 x i1> %55), !dbg !582
  %57 = add i64 %46, %40, !dbg !577
  br label %58, !dbg !577

58:                                               ; preds = %146, %48
  %59 = phi i64 [ %147, %146 ], [ 0, %48 ], !dbg !577
  %60 = icmp slt i64 %59, 32, !dbg !577
  br i1 %60, label %61, label %148, !dbg !577

61:                                               ; preds = %58
  %62 = add i64 %59, %41, !dbg !577
  br label %63, !dbg !577

63:                                               ; preds = %66, %61
  %64 = phi i64 [ %71, %66 ], [ 0, %61 ], !dbg !577
  %65 = icmp slt i64 %64, %51, !dbg !577
  br i1 %65, label %66, label %72, !dbg !577

66:                                               ; preds = %63
  %67 = add nuw nsw i64 0, %64, !dbg !577
  %68 = getelementptr inbounds nuw float, ptr %6, i64 %67, !dbg !577
  %69 = load float, ptr %68, align 4, !dbg !577
  %70 = getelementptr inbounds nuw float, ptr %5, i64 %67, !dbg !577
  store float %69, ptr %70, align 4, !dbg !577
  %71 = add i64 %64, 1, !dbg !577
  br label %63, !dbg !577

72:                                               ; preds = %107, %63
  %73 = phi i64 [ %108, %107 ], [ 0, %63 ], !dbg !577
  %74 = icmp slt i64 %73, 5, !dbg !577
  br i1 %74, label %75, label %109, !dbg !577

75:                                               ; preds = %72
  %76 = add i64 %73, %43, !dbg !577
  %77 = add i64 %76, %39, !dbg !577
  br label %78, !dbg !577

78:                                               ; preds = %105, %75
  %79 = phi i64 [ %106, %105 ], [ 0, %75 ], !dbg !577
  %80 = icmp slt i64 %79, %51, !dbg !577
  br i1 %80, label %81, label %107, !dbg !577

81:                                               ; preds = %84, %78
  %82 = phi i64 [ %104, %84 ], [ 0, %78 ], !dbg !577
  %83 = icmp slt i64 %82, 5, !dbg !577
  br i1 %83, label %84, label %105, !dbg !577

84:                                               ; preds = %81
  %85 = add i64 %57, %79, !dbg !577
  %86 = add i64 %85, %82, !dbg !577
  %87 = mul nuw nsw i64 %62, 3600, !dbg !577
  %88 = mul nuw nsw i64 %77, 60, !dbg !577
  %89 = add nuw nsw i64 %87, %88, !dbg !577
  %90 = add nuw nsw i64 %89, %86, !dbg !577
  %91 = getelementptr inbounds nuw float, ptr %10, i64 %90, !dbg !577
  %92 = load float, ptr %91, align 4, !dbg !577
  %93 = mul nuw nsw i64 %62, 25, !dbg !577
  %94 = mul nuw nsw i64 %73, 5, !dbg !577
  %95 = add nuw nsw i64 %93, %94, !dbg !577
  %96 = add nuw nsw i64 %95, %82, !dbg !577
  %97 = getelementptr inbounds nuw float, ptr %15, i64 %96, !dbg !577
  %98 = load float, ptr %97, align 4, !dbg !577
  %99 = add nuw nsw i64 0, %79, !dbg !577
  %100 = getelementptr inbounds nuw float, ptr %5, i64 %99, !dbg !577
  %101 = load float, ptr %100, align 4, !dbg !577
  %102 = fmul contract float %92, %98, !dbg !583
  %103 = fadd contract float %101, %102, !dbg !584
  store float %103, ptr %100, align 4, !dbg !577
  %104 = add i64 %82, 1, !dbg !577
  br label %81, !dbg !577

105:                                              ; preds = %81
  %106 = add i64 %79, 1, !dbg !577
  br label %78, !dbg !577

107:                                              ; preds = %78
  %108 = add i64 %73, 1, !dbg !577
  br label %72, !dbg !577

109:                                              ; preds = %112, %72
  %110 = phi i64 [ %117, %112 ], [ 0, %72 ], !dbg !577
  %111 = icmp slt i64 %110, %51, !dbg !577
  br i1 %111, label %112, label %118, !dbg !577

112:                                              ; preds = %109
  %113 = add nuw nsw i64 0, %110, !dbg !577
  %114 = getelementptr inbounds nuw float, ptr %6, i64 %113, !dbg !577
  %115 = load float, ptr %114, align 4, !dbg !577
  %116 = getelementptr inbounds nuw float, ptr %4, i64 %113, !dbg !577
  store float %115, ptr %116, align 4, !dbg !577
  %117 = add i64 %110, 1, !dbg !577
  br label %109, !dbg !577

118:                                              ; preds = %121, %109
  %119 = phi i64 [ %126, %121 ], [ 0, %109 ], !dbg !577
  %120 = icmp slt i64 %119, %51, !dbg !577
  br i1 %120, label %121, label %127, !dbg !577

121:                                              ; preds = %118
  %122 = add nuw nsw i64 0, %119, !dbg !577
  %123 = getelementptr inbounds nuw float, ptr %5, i64 %122, !dbg !577
  %124 = load float, ptr %123, align 4, !dbg !577
  %125 = getelementptr inbounds nuw float, ptr %4, i64 %122, !dbg !577
  store float %124, ptr %125, align 4, !dbg !577
  %126 = add i64 %119, 1, !dbg !577
  br label %118, !dbg !577

127:                                              ; preds = %130, %118
  %128 = phi i64 [ %145, %130 ], [ 0, %118 ], !dbg !585
  %129 = icmp slt i64 %128, %51, !dbg !585
  br i1 %129, label %130, label %146, !dbg !585

130:                                              ; preds = %127
  %131 = add i64 0, %128, !dbg !585
  %132 = getelementptr float, ptr %4, i64 %131, !dbg !585
  %133 = load <1 x float>, ptr %132, align 4, !dbg !585
  %134 = fadd contract <1 x float> %133, zeroinitializer, !dbg !586
  %135 = fcmp ugt <1 x float> %134, zeroinitializer, !dbg !587
  %136 = select <1 x i1> %135, <1 x float> %134, <1 x float> zeroinitializer, !dbg !588
  %137 = extractelement <1 x float> %136, i64 0, !dbg !585
  %138 = add i64 %39, %43, !dbg !585
  %139 = add i64 %57, %128, !dbg !585
  %140 = mul nuw nsw i64 %62, 3136, !dbg !585
  %141 = mul nuw nsw i64 %138, 56, !dbg !585
  %142 = add nuw nsw i64 %140, %141, !dbg !585
  %143 = add nuw nsw i64 %142, %139, !dbg !585
  %144 = getelementptr inbounds nuw float, ptr %19, i64 %143, !dbg !585
  store float %137, ptr %144, align 4, !dbg !585
  %145 = add i64 %128, 1, !dbg !585
  br label %127, !dbg !585

146:                                              ; preds = %127
  %147 = add i64 %59, 1, !dbg !577
  br label %58, !dbg !577

148:                                              ; preds = %58
  %149 = add i64 %46, 8, !dbg !577
  br label %45, !dbg !577

150:                                              ; preds = %45
  %151 = add i64 %43, 1, !dbg !577
  br label %42, !dbg !577

152:                                              ; preds = %42
  ret i32 0, !dbg !589
}

define internal i32 @"main_graph$async_dispatch_41_matmul_like_64x3136x128_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !590 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !591
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !591
  %6 = load ptr, ptr %5, align 8, !dbg !591
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !591
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !592
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !592
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !592
  %10 = load ptr, ptr %9, align 8, !dbg !592
  %11 = getelementptr float, ptr %10, i64 2048, !dbg !592
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !592
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !593
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !593
  %14 = getelementptr ptr, ptr %13, i32 2, !dbg !593
  %15 = load ptr, ptr %14, align 8, !dbg !593
  %16 = getelementptr float, ptr %15, i64 401408, !dbg !593
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !593
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !594
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !594
  %19 = zext i32 %18 to i64, !dbg !594
  %20 = mul nsw i64 %19, 64, !dbg !594
  br label %21, !dbg !594

21:                                               ; preds = %124, %3
  %22 = phi i64 [ %125, %124 ], [ 0, %3 ], !dbg !594
  %23 = icmp slt i64 %22, 64, !dbg !594
  br i1 %23, label %24, label %126, !dbg !594

24:                                               ; preds = %115, %21
  %25 = phi i64 [ %123, %115 ], [ 0, %21 ], !dbg !594
  %26 = icmp slt i64 %25, 64, !dbg !594
  br i1 %26, label %27, label %124, !dbg !594

27:                                               ; preds = %24
  %28 = add i64 %25, %20, !dbg !594
  br label %29, !dbg !594

29:                                               ; preds = %33, %27
  %30 = phi i64 [ %114, %33 ], [ 0, %27 ], !dbg !594
  %31 = phi <1 x float> [ %113, %33 ], [ zeroinitializer, %27 ], !dbg !594
  %32 = icmp slt i64 %30, 128, !dbg !594
  br i1 %32, label %33, label %115, !dbg !594

33:                                               ; preds = %29
  %34 = mul i64 %30, 3136, !dbg !594
  %35 = add i64 %34, %28, !dbg !594
  %36 = getelementptr float, ptr %6, i64 %35, !dbg !594
  %37 = load <1 x float>, ptr %36, align 4, !dbg !594
  %38 = add i64 %30, 1, !dbg !594
  %39 = mul i64 %38, 3136, !dbg !594
  %40 = add i64 %39, %28, !dbg !594
  %41 = getelementptr float, ptr %6, i64 %40, !dbg !594
  %42 = load <1 x float>, ptr %41, align 4, !dbg !594
  %43 = add i64 %30, 2, !dbg !594
  %44 = mul i64 %43, 3136, !dbg !594
  %45 = add i64 %44, %28, !dbg !594
  %46 = getelementptr float, ptr %6, i64 %45, !dbg !594
  %47 = load <1 x float>, ptr %46, align 4, !dbg !594
  %48 = add i64 %30, 3, !dbg !594
  %49 = mul i64 %48, 3136, !dbg !594
  %50 = add i64 %49, %28, !dbg !594
  %51 = getelementptr float, ptr %6, i64 %50, !dbg !594
  %52 = load <1 x float>, ptr %51, align 4, !dbg !594
  %53 = add i64 %30, 4, !dbg !594
  %54 = mul i64 %53, 3136, !dbg !594
  %55 = add i64 %54, %28, !dbg !594
  %56 = getelementptr float, ptr %6, i64 %55, !dbg !594
  %57 = load <1 x float>, ptr %56, align 4, !dbg !594
  %58 = add i64 %30, 5, !dbg !594
  %59 = mul i64 %58, 3136, !dbg !594
  %60 = add i64 %59, %28, !dbg !594
  %61 = getelementptr float, ptr %6, i64 %60, !dbg !594
  %62 = load <1 x float>, ptr %61, align 4, !dbg !594
  %63 = add i64 %30, 6, !dbg !594
  %64 = mul i64 %63, 3136, !dbg !594
  %65 = add i64 %64, %28, !dbg !594
  %66 = getelementptr float, ptr %6, i64 %65, !dbg !594
  %67 = load <1 x float>, ptr %66, align 4, !dbg !594
  %68 = add i64 %30, 7, !dbg !594
  %69 = mul i64 %68, 3136, !dbg !594
  %70 = add i64 %69, %28, !dbg !594
  %71 = getelementptr float, ptr %6, i64 %70, !dbg !594
  %72 = load <1 x float>, ptr %71, align 4, !dbg !594
  %73 = mul nuw nsw i64 %22, 128, !dbg !595
  %74 = add nuw nsw i64 %73, %30, !dbg !595
  %75 = getelementptr inbounds nuw float, ptr %11, i64 %74, !dbg !595
  %76 = load float, ptr %75, align 4, !dbg !595
  %77 = insertelement <1 x float> poison, float %76, i32 0, !dbg !595
  %78 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %37, <1 x float> %77, <1 x float> %31), !dbg !595
  %79 = add nuw nsw i64 %73, %38, !dbg !595
  %80 = getelementptr inbounds nuw float, ptr %11, i64 %79, !dbg !595
  %81 = load float, ptr %80, align 4, !dbg !595
  %82 = insertelement <1 x float> poison, float %81, i32 0, !dbg !595
  %83 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %42, <1 x float> %82, <1 x float> %78), !dbg !595
  %84 = add nuw nsw i64 %73, %43, !dbg !595
  %85 = getelementptr inbounds nuw float, ptr %11, i64 %84, !dbg !595
  %86 = load float, ptr %85, align 4, !dbg !595
  %87 = insertelement <1 x float> poison, float %86, i32 0, !dbg !595
  %88 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %47, <1 x float> %87, <1 x float> %83), !dbg !595
  %89 = add nuw nsw i64 %73, %48, !dbg !595
  %90 = getelementptr inbounds nuw float, ptr %11, i64 %89, !dbg !595
  %91 = load float, ptr %90, align 4, !dbg !595
  %92 = insertelement <1 x float> poison, float %91, i32 0, !dbg !595
  %93 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %92, <1 x float> %88), !dbg !595
  %94 = add nuw nsw i64 %73, %53, !dbg !595
  %95 = getelementptr inbounds nuw float, ptr %11, i64 %94, !dbg !595
  %96 = load float, ptr %95, align 4, !dbg !595
  %97 = insertelement <1 x float> poison, float %96, i32 0, !dbg !595
  %98 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %57, <1 x float> %97, <1 x float> %93), !dbg !595
  %99 = add nuw nsw i64 %73, %58, !dbg !595
  %100 = getelementptr inbounds nuw float, ptr %11, i64 %99, !dbg !595
  %101 = load float, ptr %100, align 4, !dbg !595
  %102 = insertelement <1 x float> poison, float %101, i32 0, !dbg !595
  %103 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %102, <1 x float> %98), !dbg !595
  %104 = add nuw nsw i64 %73, %63, !dbg !595
  %105 = getelementptr inbounds nuw float, ptr %11, i64 %104, !dbg !595
  %106 = load float, ptr %105, align 4, !dbg !595
  %107 = insertelement <1 x float> poison, float %106, i32 0, !dbg !595
  %108 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %107, <1 x float> %103), !dbg !595
  %109 = add nuw nsw i64 %73, %68, !dbg !595
  %110 = getelementptr inbounds nuw float, ptr %11, i64 %109, !dbg !595
  %111 = load float, ptr %110, align 4, !dbg !595
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !595
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %112, <1 x float> %108), !dbg !595
  %114 = add i64 %30, 8, !dbg !594
  br label %29, !dbg !594

115:                                              ; preds = %29
  %116 = fadd contract <1 x float> %31, zeroinitializer, !dbg !596
  %117 = fcmp ugt <1 x float> %116, zeroinitializer, !dbg !597
  %118 = select <1 x i1> %117, <1 x float> %116, <1 x float> zeroinitializer, !dbg !598
  %119 = extractelement <1 x float> %118, i64 0, !dbg !594
  %120 = mul nuw nsw i64 %22, 3136, !dbg !594
  %121 = add nuw nsw i64 %120, %28, !dbg !594
  %122 = getelementptr inbounds nuw float, ptr %16, i64 %121, !dbg !594
  store float %119, ptr %122, align 4, !dbg !594
  %123 = add i64 %25, 1, !dbg !594
  br label %24, !dbg !594

124:                                              ; preds = %24
  %125 = add i64 %22, 1, !dbg !594
  br label %21, !dbg !594

126:                                              ; preds = %21
  ret i32 0, !dbg !599
}

define internal i32 @"main_graph$async_dispatch_42_elementwise_64x112x112_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !600 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !601
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !601
  %6 = load ptr, ptr %5, align 8, !dbg !601
  %7 = getelementptr float, ptr %6, i64 401408, !dbg !601
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !601
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !602
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !602
  %10 = load ptr, ptr %9, align 8, !dbg !602
  %11 = getelementptr float, ptr %10, i64 970512, !dbg !602
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !602
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !603
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !603
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !603
  %15 = load ptr, ptr %14, align 8, !dbg !603
  %16 = getelementptr float, ptr %15, i64 1773328, !dbg !603
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !603
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !604
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !604
  %19 = zext i32 %18 to i64, !dbg !604
  %20 = sdiv i64 %19, 4, !dbg !604
  %21 = mul i64 %20, 4, !dbg !604
  %22 = icmp ne i64 %19, %21, !dbg !604
  %23 = icmp slt i64 %19, 0, !dbg !604
  %24 = and i1 %22, %23, !dbg !604
  %25 = add i64 %20, -1, !dbg !604
  %26 = select i1 %24, i64 %25, i64 %20, !dbg !604
  %27 = srem i64 %19, 4, !dbg !604
  %28 = icmp slt i64 %27, 0, !dbg !604
  %29 = add nsw i64 %27, 4, !dbg !604
  %30 = select i1 %28, i64 %29, i64 %27, !dbg !604
  %31 = sdiv i64 %30, 2, !dbg !604
  %32 = srem i64 %19, 2, !dbg !604
  %33 = icmp slt i64 %32, 0, !dbg !604
  %34 = add nsw i64 %32, 2, !dbg !604
  %35 = select i1 %33, i64 %34, i64 %32, !dbg !604
  %36 = mul nsw i64 %26, 16, !dbg !604
  %37 = mul nsw i64 %31, 56, !dbg !604
  %38 = mul nsw i64 %35, 56, !dbg !604
  br label %39, !dbg !604

39:                                               ; preds = %136, %3
  %40 = phi i64 [ %137, %136 ], [ 0, %3 ], !dbg !604
  %41 = icmp slt i64 %40, 16, !dbg !604
  br i1 %41, label %42, label %138, !dbg !604

42:                                               ; preds = %39
  %43 = add i64 %40, %36, !dbg !604
  %44 = mul i64 %43, 56, !dbg !605
  br label %45, !dbg !604

45:                                               ; preds = %134, %42
  %46 = phi i64 [ %135, %134 ], [ 0, %42 ], !dbg !604
  %47 = icmp slt i64 %46, 56, !dbg !604
  br i1 %47, label %48, label %136, !dbg !604

48:                                               ; preds = %45
  %49 = add i64 %46, %37, !dbg !604
  %50 = sitofp i64 %49 to float, !dbg !606
  %51 = fdiv float %50, 2.000000e+00, !dbg !607
  %52 = call float @llvm.floor.f32(float %51), !dbg !608
  %53 = fptosi float %52 to i64, !dbg !609
  %54 = add i64 %53, %44, !dbg !605
  %55 = mul i64 %54, 56, !dbg !605
  br label %56, !dbg !604

56:                                               ; preds = %59, %48
  %57 = phi i64 [ %133, %59 ], [ 0, %48 ], !dbg !604
  %58 = icmp slt i64 %57, 56, !dbg !604
  br i1 %58, label %59, label %134, !dbg !604

59:                                               ; preds = %56
  %60 = add i64 %57, %38, !dbg !604
  %61 = mul i64 %43, 12544, !dbg !604
  %62 = mul i64 %49, 112, !dbg !604
  %63 = add i64 %61, %62, !dbg !604
  %64 = add i64 %63, %60, !dbg !604
  %65 = getelementptr float, ptr %11, i64 %64, !dbg !604
  %66 = load <8 x float>, ptr %65, align 4, !dbg !604
  %67 = insertelement <8 x i64> poison, i64 %60, i32 0, !dbg !604
  %68 = shufflevector <8 x i64> %67, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !604
  %69 = add <8 x i64> %68, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, !dbg !610
  %70 = sitofp <8 x i64> %69 to <8 x float>, !dbg !611
  %71 = fdiv <8 x float> %70, splat (float 2.000000e+00), !dbg !612
  %72 = call <8 x float> @llvm.floor.v8f32(<8 x float> %71), !dbg !613
  %73 = fptosi <8 x float> %72 to <8 x i64>, !dbg !614
  %74 = insertelement <8 x i64> poison, i64 %55, i32 0, !dbg !605
  %75 = shufflevector <8 x i64> %74, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !605
  %76 = add <8 x i64> %73, %75, !dbg !605
  %77 = extractelement <8 x i64> %76, i64 0, !dbg !605
  %78 = add i64 0, %77, !dbg !605
  %79 = getelementptr float, ptr %7, i64 %78, !dbg !605
  %80 = load <1 x float>, ptr %79, align 4, !dbg !605
  %81 = extractelement <1 x float> %80, i64 0, !dbg !605
  %82 = extractelement <8 x i64> %76, i64 1, !dbg !605
  %83 = add i64 0, %82, !dbg !605
  %84 = getelementptr float, ptr %7, i64 %83, !dbg !605
  %85 = load <1 x float>, ptr %84, align 4, !dbg !605
  %86 = extractelement <1 x float> %85, i64 0, !dbg !605
  %87 = extractelement <8 x i64> %76, i64 2, !dbg !605
  %88 = add i64 0, %87, !dbg !605
  %89 = getelementptr float, ptr %7, i64 %88, !dbg !605
  %90 = load <1 x float>, ptr %89, align 4, !dbg !605
  %91 = extractelement <1 x float> %90, i64 0, !dbg !605
  %92 = extractelement <8 x i64> %76, i64 3, !dbg !605
  %93 = add i64 0, %92, !dbg !605
  %94 = getelementptr float, ptr %7, i64 %93, !dbg !605
  %95 = load <1 x float>, ptr %94, align 4, !dbg !605
  %96 = extractelement <1 x float> %95, i64 0, !dbg !605
  %97 = extractelement <8 x i64> %76, i64 4, !dbg !605
  %98 = add i64 0, %97, !dbg !605
  %99 = getelementptr float, ptr %7, i64 %98, !dbg !605
  %100 = load <1 x float>, ptr %99, align 4, !dbg !605
  %101 = extractelement <1 x float> %100, i64 0, !dbg !605
  %102 = extractelement <8 x i64> %76, i64 5, !dbg !605
  %103 = add i64 0, %102, !dbg !605
  %104 = getelementptr float, ptr %7, i64 %103, !dbg !605
  %105 = load <1 x float>, ptr %104, align 4, !dbg !605
  %106 = extractelement <1 x float> %105, i64 0, !dbg !605
  %107 = extractelement <8 x i64> %76, i64 6, !dbg !605
  %108 = add i64 0, %107, !dbg !605
  %109 = getelementptr float, ptr %7, i64 %108, !dbg !605
  %110 = load <1 x float>, ptr %109, align 4, !dbg !605
  %111 = extractelement <1 x float> %110, i64 0, !dbg !605
  %112 = extractelement <8 x i64> %76, i64 7, !dbg !605
  %113 = add i64 0, %112, !dbg !605
  %114 = getelementptr float, ptr %7, i64 %113, !dbg !605
  %115 = load <1 x float>, ptr %114, align 4, !dbg !605
  %116 = extractelement <1 x float> %115, i64 0, !dbg !605
  %117 = insertelement <8 x float> poison, float %81, i64 0, !dbg !605
  %118 = insertelement <8 x float> %117, float %86, i64 1, !dbg !605
  %119 = insertelement <8 x float> %118, float %91, i64 2, !dbg !605
  %120 = insertelement <8 x float> %119, float %96, i64 3, !dbg !605
  %121 = insertelement <8 x float> %120, float %101, i64 4, !dbg !605
  %122 = insertelement <8 x float> %121, float %106, i64 5, !dbg !605
  %123 = insertelement <8 x float> %122, float %111, i64 6, !dbg !605
  %124 = insertelement <8 x float> %123, float %116, i64 7, !dbg !605
  %125 = fadd contract <8 x float> %124, %66, !dbg !615
  %126 = add i64 %49, 2, !dbg !604
  %127 = add i64 %60, 2, !dbg !604
  %128 = mul i64 %43, 13456, !dbg !604
  %129 = mul i64 %126, 116, !dbg !604
  %130 = add i64 %128, %129, !dbg !604
  %131 = add i64 %130, %127, !dbg !604
  %132 = getelementptr float, ptr %16, i64 %131, !dbg !604
  store <8 x float> %125, ptr %132, align 4, !dbg !604
  %133 = add i64 %57, 8, !dbg !604
  br label %56, !dbg !604

134:                                              ; preds = %56
  %135 = add i64 %46, 1, !dbg !604
  br label %45, !dbg !604

136:                                              ; preds = %45
  %137 = add i64 %40, 1, !dbg !604
  br label %39, !dbg !604

138:                                              ; preds = %39
  ret i32 0, !dbg !616
}

define internal i32 @"main_graph$async_dispatch_43_conv_112x112x64x5x5_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !617 {
  %4 = alloca float, i64 8, align 64, !dbg !618
  %5 = alloca float, i64 8, align 64, !dbg !618
  %6 = alloca float, i64 8, align 64, !dbg !619
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !620
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !620
  %9 = load ptr, ptr %8, align 8, !dbg !620
  %10 = getelementptr float, ptr %9, i64 1773328, !dbg !620
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !620
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !621
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !621
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !621
  %14 = load ptr, ptr %13, align 8, !dbg !621
  %15 = getelementptr float, ptr %14, i64 3837952, !dbg !621
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !621
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !622
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !622
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !622
  %19 = load ptr, ptr %18, align 8, !dbg !622
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !622
  %20 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !618
  %21 = extractvalue %iree_hal_executable_workgroup_state_v0_t %20, 0, !dbg !618
  %22 = zext i32 %21 to i64, !dbg !618
  %23 = sdiv i64 %22, 8, !dbg !618
  %24 = mul i64 %23, 8, !dbg !618
  %25 = icmp ne i64 %22, %24, !dbg !618
  %26 = icmp slt i64 %22, 0, !dbg !618
  %27 = and i1 %25, %26, !dbg !618
  %28 = add i64 %23, -1, !dbg !618
  %29 = select i1 %27, i64 %28, i64 %23, !dbg !618
  %30 = srem i64 %22, 8, !dbg !618
  %31 = icmp slt i64 %30, 0, !dbg !618
  %32 = add nsw i64 %30, 8, !dbg !618
  %33 = select i1 %31, i64 %32, i64 %30, !dbg !618
  %34 = sdiv i64 %33, 2, !dbg !618
  %35 = srem i64 %22, 2, !dbg !618
  %36 = icmp slt i64 %35, 0, !dbg !618
  %37 = add nsw i64 %35, 2, !dbg !618
  %38 = select i1 %36, i64 %37, i64 %35, !dbg !618
  %39 = mul nsw i64 %29, 28, !dbg !618
  %40 = mul nsw i64 %34, 28, !dbg !618
  %41 = mul nsw i64 %38, 32, !dbg !618
  br label %42, !dbg !618

42:                                               ; preds = %150, %3
  %43 = phi i64 [ %151, %150 ], [ 0, %3 ], !dbg !618
  %44 = icmp slt i64 %43, 28, !dbg !618
  br i1 %44, label %45, label %152, !dbg !618

45:                                               ; preds = %148, %42
  %46 = phi i64 [ %149, %148 ], [ 0, %42 ], !dbg !618
  %47 = icmp slt i64 %46, 28, !dbg !618
  br i1 %47, label %48, label %150, !dbg !618

48:                                               ; preds = %45
  %49 = sub i64 28, %46, !dbg !618
  %50 = icmp slt i64 %49, 8, !dbg !618
  %51 = select i1 %50, i64 %49, i64 8, !dbg !618
  %52 = trunc i64 %51 to i32, !dbg !623
  %53 = insertelement <8 x i32> poison, i32 %52, i32 0, !dbg !623
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !623
  %55 = icmp sgt <8 x i32> %54, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !623
  %56 = getelementptr float, ptr %6, i64 0, !dbg !623
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %56, i32 4, <8 x i1> %55), !dbg !623
  %57 = add i64 %46, %40, !dbg !618
  br label %58, !dbg !618

58:                                               ; preds = %146, %48
  %59 = phi i64 [ %147, %146 ], [ 0, %48 ], !dbg !618
  %60 = icmp slt i64 %59, 32, !dbg !618
  br i1 %60, label %61, label %148, !dbg !618

61:                                               ; preds = %58
  %62 = add i64 %59, %41, !dbg !618
  br label %63, !dbg !618

63:                                               ; preds = %66, %61
  %64 = phi i64 [ %71, %66 ], [ 0, %61 ], !dbg !618
  %65 = icmp slt i64 %64, %51, !dbg !618
  br i1 %65, label %66, label %72, !dbg !618

66:                                               ; preds = %63
  %67 = add nuw nsw i64 0, %64, !dbg !618
  %68 = getelementptr inbounds nuw float, ptr %6, i64 %67, !dbg !618
  %69 = load float, ptr %68, align 4, !dbg !618
  %70 = getelementptr inbounds nuw float, ptr %5, i64 %67, !dbg !618
  store float %69, ptr %70, align 4, !dbg !618
  %71 = add i64 %64, 1, !dbg !618
  br label %63, !dbg !618

72:                                               ; preds = %107, %63
  %73 = phi i64 [ %108, %107 ], [ 0, %63 ], !dbg !618
  %74 = icmp slt i64 %73, 5, !dbg !618
  br i1 %74, label %75, label %109, !dbg !618

75:                                               ; preds = %72
  %76 = add i64 %73, %43, !dbg !618
  %77 = add i64 %76, %39, !dbg !618
  br label %78, !dbg !618

78:                                               ; preds = %105, %75
  %79 = phi i64 [ %106, %105 ], [ 0, %75 ], !dbg !618
  %80 = icmp slt i64 %79, %51, !dbg !618
  br i1 %80, label %81, label %107, !dbg !618

81:                                               ; preds = %84, %78
  %82 = phi i64 [ %104, %84 ], [ 0, %78 ], !dbg !618
  %83 = icmp slt i64 %82, 5, !dbg !618
  br i1 %83, label %84, label %105, !dbg !618

84:                                               ; preds = %81
  %85 = add i64 %57, %79, !dbg !618
  %86 = add i64 %85, %82, !dbg !618
  %87 = mul nuw nsw i64 %62, 13456, !dbg !618
  %88 = mul nuw nsw i64 %77, 116, !dbg !618
  %89 = add nuw nsw i64 %87, %88, !dbg !618
  %90 = add nuw nsw i64 %89, %86, !dbg !618
  %91 = getelementptr inbounds nuw float, ptr %10, i64 %90, !dbg !618
  %92 = load float, ptr %91, align 4, !dbg !618
  %93 = mul nuw nsw i64 %62, 25, !dbg !618
  %94 = mul nuw nsw i64 %73, 5, !dbg !618
  %95 = add nuw nsw i64 %93, %94, !dbg !618
  %96 = add nuw nsw i64 %95, %82, !dbg !618
  %97 = getelementptr inbounds nuw float, ptr %15, i64 %96, !dbg !618
  %98 = load float, ptr %97, align 4, !dbg !618
  %99 = add nuw nsw i64 0, %79, !dbg !618
  %100 = getelementptr inbounds nuw float, ptr %5, i64 %99, !dbg !618
  %101 = load float, ptr %100, align 4, !dbg !618
  %102 = fmul contract float %92, %98, !dbg !624
  %103 = fadd contract float %101, %102, !dbg !625
  store float %103, ptr %100, align 4, !dbg !618
  %104 = add i64 %82, 1, !dbg !618
  br label %81, !dbg !618

105:                                              ; preds = %81
  %106 = add i64 %79, 1, !dbg !618
  br label %78, !dbg !618

107:                                              ; preds = %78
  %108 = add i64 %73, 1, !dbg !618
  br label %72, !dbg !618

109:                                              ; preds = %112, %72
  %110 = phi i64 [ %117, %112 ], [ 0, %72 ], !dbg !618
  %111 = icmp slt i64 %110, %51, !dbg !618
  br i1 %111, label %112, label %118, !dbg !618

112:                                              ; preds = %109
  %113 = add nuw nsw i64 0, %110, !dbg !618
  %114 = getelementptr inbounds nuw float, ptr %6, i64 %113, !dbg !618
  %115 = load float, ptr %114, align 4, !dbg !618
  %116 = getelementptr inbounds nuw float, ptr %4, i64 %113, !dbg !618
  store float %115, ptr %116, align 4, !dbg !618
  %117 = add i64 %110, 1, !dbg !618
  br label %109, !dbg !618

118:                                              ; preds = %121, %109
  %119 = phi i64 [ %126, %121 ], [ 0, %109 ], !dbg !618
  %120 = icmp slt i64 %119, %51, !dbg !618
  br i1 %120, label %121, label %127, !dbg !618

121:                                              ; preds = %118
  %122 = add nuw nsw i64 0, %119, !dbg !618
  %123 = getelementptr inbounds nuw float, ptr %5, i64 %122, !dbg !618
  %124 = load float, ptr %123, align 4, !dbg !618
  %125 = getelementptr inbounds nuw float, ptr %4, i64 %122, !dbg !618
  store float %124, ptr %125, align 4, !dbg !618
  %126 = add i64 %119, 1, !dbg !618
  br label %118, !dbg !618

127:                                              ; preds = %130, %118
  %128 = phi i64 [ %145, %130 ], [ 0, %118 ], !dbg !626
  %129 = icmp slt i64 %128, %51, !dbg !626
  br i1 %129, label %130, label %146, !dbg !626

130:                                              ; preds = %127
  %131 = add i64 0, %128, !dbg !626
  %132 = getelementptr float, ptr %4, i64 %131, !dbg !626
  %133 = load <1 x float>, ptr %132, align 4, !dbg !626
  %134 = fadd contract <1 x float> %133, zeroinitializer, !dbg !627
  %135 = fcmp ugt <1 x float> %134, zeroinitializer, !dbg !628
  %136 = select <1 x i1> %135, <1 x float> %134, <1 x float> zeroinitializer, !dbg !629
  %137 = extractelement <1 x float> %136, i64 0, !dbg !626
  %138 = add i64 %39, %43, !dbg !626
  %139 = add i64 %57, %128, !dbg !626
  %140 = mul nuw nsw i64 %62, 12544, !dbg !626
  %141 = mul nuw nsw i64 %138, 112, !dbg !626
  %142 = add nuw nsw i64 %140, %141, !dbg !626
  %143 = add nuw nsw i64 %142, %139, !dbg !626
  %144 = getelementptr inbounds nuw float, ptr %19, i64 %143, !dbg !626
  store float %137, ptr %144, align 4, !dbg !626
  %145 = add i64 %128, 1, !dbg !626
  br label %127, !dbg !626

146:                                              ; preds = %127
  %147 = add i64 %59, 1, !dbg !618
  br label %58, !dbg !618

148:                                              ; preds = %58
  %149 = add i64 %46, 8, !dbg !618
  br label %45, !dbg !618

150:                                              ; preds = %45
  %151 = add i64 %43, 1, !dbg !618
  br label %42, !dbg !618

152:                                              ; preds = %42
  ret i32 0, !dbg !630
}

define internal i32 @"main_graph$async_dispatch_44_matmul_like_32x12544x64_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !631 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !632
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !632
  %6 = load ptr, ptr %5, align 8, !dbg !632
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !632
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !633
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !633
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !633
  %10 = load ptr, ptr %9, align 8, !dbg !633
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !633
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !634
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !634
  %13 = getelementptr ptr, ptr %12, i32 2, !dbg !634
  %14 = load ptr, ptr %13, align 8, !dbg !634
  %15 = getelementptr float, ptr %14, i64 802816, !dbg !634
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !634
  %16 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !635
  %17 = extractvalue %iree_hal_executable_workgroup_state_v0_t %16, 0, !dbg !635
  %18 = zext i32 %17 to i64, !dbg !635
  %19 = mul nsw i64 %18, 64, !dbg !635
  br label %20, !dbg !635

20:                                               ; preds = %123, %3
  %21 = phi i64 [ %124, %123 ], [ 0, %3 ], !dbg !635
  %22 = icmp slt i64 %21, 32, !dbg !635
  br i1 %22, label %23, label %125, !dbg !635

23:                                               ; preds = %114, %20
  %24 = phi i64 [ %122, %114 ], [ 0, %20 ], !dbg !635
  %25 = icmp slt i64 %24, 64, !dbg !635
  br i1 %25, label %26, label %123, !dbg !635

26:                                               ; preds = %23
  %27 = add i64 %24, %19, !dbg !635
  br label %28, !dbg !635

28:                                               ; preds = %32, %26
  %29 = phi i64 [ %113, %32 ], [ 0, %26 ], !dbg !635
  %30 = phi <1 x float> [ %112, %32 ], [ zeroinitializer, %26 ], !dbg !635
  %31 = icmp slt i64 %29, 64, !dbg !635
  br i1 %31, label %32, label %114, !dbg !635

32:                                               ; preds = %28
  %33 = mul i64 %29, 12544, !dbg !635
  %34 = add i64 %33, %27, !dbg !635
  %35 = getelementptr float, ptr %6, i64 %34, !dbg !635
  %36 = load <1 x float>, ptr %35, align 4, !dbg !635
  %37 = add i64 %29, 1, !dbg !635
  %38 = mul i64 %37, 12544, !dbg !635
  %39 = add i64 %38, %27, !dbg !635
  %40 = getelementptr float, ptr %6, i64 %39, !dbg !635
  %41 = load <1 x float>, ptr %40, align 4, !dbg !635
  %42 = add i64 %29, 2, !dbg !635
  %43 = mul i64 %42, 12544, !dbg !635
  %44 = add i64 %43, %27, !dbg !635
  %45 = getelementptr float, ptr %6, i64 %44, !dbg !635
  %46 = load <1 x float>, ptr %45, align 4, !dbg !635
  %47 = add i64 %29, 3, !dbg !635
  %48 = mul i64 %47, 12544, !dbg !635
  %49 = add i64 %48, %27, !dbg !635
  %50 = getelementptr float, ptr %6, i64 %49, !dbg !635
  %51 = load <1 x float>, ptr %50, align 4, !dbg !635
  %52 = add i64 %29, 4, !dbg !635
  %53 = mul i64 %52, 12544, !dbg !635
  %54 = add i64 %53, %27, !dbg !635
  %55 = getelementptr float, ptr %6, i64 %54, !dbg !635
  %56 = load <1 x float>, ptr %55, align 4, !dbg !635
  %57 = add i64 %29, 5, !dbg !635
  %58 = mul i64 %57, 12544, !dbg !635
  %59 = add i64 %58, %27, !dbg !635
  %60 = getelementptr float, ptr %6, i64 %59, !dbg !635
  %61 = load <1 x float>, ptr %60, align 4, !dbg !635
  %62 = add i64 %29, 6, !dbg !635
  %63 = mul i64 %62, 12544, !dbg !635
  %64 = add i64 %63, %27, !dbg !635
  %65 = getelementptr float, ptr %6, i64 %64, !dbg !635
  %66 = load <1 x float>, ptr %65, align 4, !dbg !635
  %67 = add i64 %29, 7, !dbg !635
  %68 = mul i64 %67, 12544, !dbg !635
  %69 = add i64 %68, %27, !dbg !635
  %70 = getelementptr float, ptr %6, i64 %69, !dbg !635
  %71 = load <1 x float>, ptr %70, align 4, !dbg !635
  %72 = mul nuw nsw i64 %21, 64, !dbg !636
  %73 = add nuw nsw i64 %72, %29, !dbg !636
  %74 = getelementptr inbounds nuw float, ptr %10, i64 %73, !dbg !636
  %75 = load float, ptr %74, align 4, !dbg !636
  %76 = insertelement <1 x float> poison, float %75, i32 0, !dbg !636
  %77 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %76, <1 x float> %30), !dbg !636
  %78 = add nuw nsw i64 %72, %37, !dbg !636
  %79 = getelementptr inbounds nuw float, ptr %10, i64 %78, !dbg !636
  %80 = load float, ptr %79, align 4, !dbg !636
  %81 = insertelement <1 x float> poison, float %80, i32 0, !dbg !636
  %82 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %41, <1 x float> %81, <1 x float> %77), !dbg !636
  %83 = add nuw nsw i64 %72, %42, !dbg !636
  %84 = getelementptr inbounds nuw float, ptr %10, i64 %83, !dbg !636
  %85 = load float, ptr %84, align 4, !dbg !636
  %86 = insertelement <1 x float> poison, float %85, i32 0, !dbg !636
  %87 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %46, <1 x float> %86, <1 x float> %82), !dbg !636
  %88 = add nuw nsw i64 %72, %47, !dbg !636
  %89 = getelementptr inbounds nuw float, ptr %10, i64 %88, !dbg !636
  %90 = load float, ptr %89, align 4, !dbg !636
  %91 = insertelement <1 x float> poison, float %90, i32 0, !dbg !636
  %92 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %51, <1 x float> %91, <1 x float> %87), !dbg !636
  %93 = add nuw nsw i64 %72, %52, !dbg !636
  %94 = getelementptr inbounds nuw float, ptr %10, i64 %93, !dbg !636
  %95 = load float, ptr %94, align 4, !dbg !636
  %96 = insertelement <1 x float> poison, float %95, i32 0, !dbg !636
  %97 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %56, <1 x float> %96, <1 x float> %92), !dbg !636
  %98 = add nuw nsw i64 %72, %57, !dbg !636
  %99 = getelementptr inbounds nuw float, ptr %10, i64 %98, !dbg !636
  %100 = load float, ptr %99, align 4, !dbg !636
  %101 = insertelement <1 x float> poison, float %100, i32 0, !dbg !636
  %102 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %101, <1 x float> %97), !dbg !636
  %103 = add nuw nsw i64 %72, %62, !dbg !636
  %104 = getelementptr inbounds nuw float, ptr %10, i64 %103, !dbg !636
  %105 = load float, ptr %104, align 4, !dbg !636
  %106 = insertelement <1 x float> poison, float %105, i32 0, !dbg !636
  %107 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %106, <1 x float> %102), !dbg !636
  %108 = add nuw nsw i64 %72, %67, !dbg !636
  %109 = getelementptr inbounds nuw float, ptr %10, i64 %108, !dbg !636
  %110 = load float, ptr %109, align 4, !dbg !636
  %111 = insertelement <1 x float> poison, float %110, i32 0, !dbg !636
  %112 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %71, <1 x float> %111, <1 x float> %107), !dbg !636
  %113 = add i64 %29, 8, !dbg !635
  br label %28, !dbg !635

114:                                              ; preds = %28
  %115 = fadd contract <1 x float> %30, zeroinitializer, !dbg !637
  %116 = fcmp ugt <1 x float> %115, zeroinitializer, !dbg !638
  %117 = select <1 x i1> %116, <1 x float> %115, <1 x float> zeroinitializer, !dbg !639
  %118 = extractelement <1 x float> %117, i64 0, !dbg !635
  %119 = mul nuw nsw i64 %21, 12544, !dbg !635
  %120 = add nuw nsw i64 %119, %27, !dbg !635
  %121 = getelementptr inbounds nuw float, ptr %15, i64 %120, !dbg !635
  store float %118, ptr %121, align 4, !dbg !635
  %122 = add i64 %24, 1, !dbg !635
  br label %23, !dbg !635

123:                                              ; preds = %23
  %124 = add i64 %21, 1, !dbg !635
  br label %20, !dbg !635

125:                                              ; preds = %20
  ret i32 0, !dbg !640
}

define internal i32 @"main_graph$async_dispatch_45_matvec_like_50176x32_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !641 {
  %4 = alloca float, i64 512, align 64, !dbg !642
  %5 = alloca float, i64 64, align 64, !dbg !643
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !644
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !644
  %8 = load ptr, ptr %7, align 8, !dbg !644
  %9 = getelementptr float, ptr %8, i64 802816, !dbg !644
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !644
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !645
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !645
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !645
  %13 = load ptr, ptr %12, align 8, !dbg !645
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !645
  %14 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !646
  %15 = extractvalue %iree_hal_executable_workgroup_state_v0_t %14, 0, !dbg !646
  %16 = zext i32 %15 to i64, !dbg !646
  %17 = mul nsw i64 %16, 64, !dbg !646
  br label %18, !dbg !646

18:                                               ; preds = %105, %3
  %19 = phi i64 [ %169, %105 ], [ 0, %3 ], !dbg !646
  %20 = phi <64 x float> [ %168, %105 ], [ zeroinitializer, %3 ], !dbg !646
  %21 = icmp slt i64 %19, 32, !dbg !646
  br i1 %21, label %22, label %170, !dbg !646

22:                                               ; preds = %103, %18
  %23 = phi i64 [ %104, %103 ], [ 0, %18 ], !dbg !642
  %24 = icmp slt i64 %23, 8, !dbg !642
  br i1 %24, label %25, label %105, !dbg !642

25:                                               ; preds = %22
  %26 = add i64 %19, %23, !dbg !647
  %27 = mul i64 %26, 112, !dbg !648
  br label %28, !dbg !642

28:                                               ; preds = %31, %25
  %29 = phi i64 [ %102, %31 ], [ 0, %25 ], !dbg !642
  %30 = icmp slt i64 %29, 64, !dbg !642
  br i1 %30, label %31, label %103, !dbg !642

31:                                               ; preds = %28
  %32 = add i64 %17, %29, !dbg !649
  %33 = insertelement <8 x i64> poison, i64 %32, i32 0, !dbg !642
  %34 = shufflevector <8 x i64> %33, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !642
  %35 = add <8 x i64> %34, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, !dbg !649
  %36 = srem <8 x i64> %35, splat (i64 224), !dbg !650
  %37 = sdiv <8 x i64> %35, splat (i64 224), !dbg !651
  %38 = sitofp <8 x i64> %37 to <8 x float>, !dbg !652
  %39 = fdiv <8 x float> %38, splat (float 2.000000e+00), !dbg !653
  %40 = call <8 x float> @llvm.floor.v8f32(<8 x float> %39), !dbg !654
  %41 = fptosi <8 x float> %40 to <8 x i64>, !dbg !655
  %42 = sitofp <8 x i64> %36 to <8 x float>, !dbg !656
  %43 = fdiv <8 x float> %42, splat (float 2.000000e+00), !dbg !657
  %44 = call <8 x float> @llvm.floor.v8f32(<8 x float> %43), !dbg !658
  %45 = fptosi <8 x float> %44 to <8 x i64>, !dbg !659
  %46 = insertelement <8 x i64> poison, i64 %27, i32 0, !dbg !648
  %47 = shufflevector <8 x i64> %46, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !648
  %48 = add <8 x i64> %41, %47, !dbg !648
  %49 = mul <8 x i64> %48, splat (i64 112), !dbg !648
  %50 = add <8 x i64> %45, %49, !dbg !648
  %51 = extractelement <8 x i64> %50, i64 0, !dbg !648
  %52 = add i64 0, %51, !dbg !648
  %53 = getelementptr float, ptr %9, i64 %52, !dbg !648
  %54 = load <1 x float>, ptr %53, align 4, !dbg !648
  %55 = extractelement <1 x float> %54, i64 0, !dbg !648
  %56 = extractelement <8 x i64> %50, i64 1, !dbg !648
  %57 = add i64 0, %56, !dbg !648
  %58 = getelementptr float, ptr %9, i64 %57, !dbg !648
  %59 = load <1 x float>, ptr %58, align 4, !dbg !648
  %60 = extractelement <1 x float> %59, i64 0, !dbg !648
  %61 = extractelement <8 x i64> %50, i64 2, !dbg !648
  %62 = add i64 0, %61, !dbg !648
  %63 = getelementptr float, ptr %9, i64 %62, !dbg !648
  %64 = load <1 x float>, ptr %63, align 4, !dbg !648
  %65 = extractelement <1 x float> %64, i64 0, !dbg !648
  %66 = extractelement <8 x i64> %50, i64 3, !dbg !648
  %67 = add i64 0, %66, !dbg !648
  %68 = getelementptr float, ptr %9, i64 %67, !dbg !648
  %69 = load <1 x float>, ptr %68, align 4, !dbg !648
  %70 = extractelement <1 x float> %69, i64 0, !dbg !648
  %71 = extractelement <8 x i64> %50, i64 4, !dbg !648
  %72 = add i64 0, %71, !dbg !648
  %73 = getelementptr float, ptr %9, i64 %72, !dbg !648
  %74 = load <1 x float>, ptr %73, align 4, !dbg !648
  %75 = extractelement <1 x float> %74, i64 0, !dbg !648
  %76 = extractelement <8 x i64> %50, i64 5, !dbg !648
  %77 = add i64 0, %76, !dbg !648
  %78 = getelementptr float, ptr %9, i64 %77, !dbg !648
  %79 = load <1 x float>, ptr %78, align 4, !dbg !648
  %80 = extractelement <1 x float> %79, i64 0, !dbg !648
  %81 = extractelement <8 x i64> %50, i64 6, !dbg !648
  %82 = add i64 0, %81, !dbg !648
  %83 = getelementptr float, ptr %9, i64 %82, !dbg !648
  %84 = load <1 x float>, ptr %83, align 4, !dbg !648
  %85 = extractelement <1 x float> %84, i64 0, !dbg !648
  %86 = extractelement <8 x i64> %50, i64 7, !dbg !648
  %87 = add i64 0, %86, !dbg !648
  %88 = getelementptr float, ptr %9, i64 %87, !dbg !648
  %89 = load <1 x float>, ptr %88, align 4, !dbg !648
  %90 = extractelement <1 x float> %89, i64 0, !dbg !648
  %91 = insertelement <8 x float> poison, float %55, i64 0, !dbg !648
  %92 = insertelement <8 x float> %91, float %60, i64 1, !dbg !648
  %93 = insertelement <8 x float> %92, float %65, i64 2, !dbg !648
  %94 = insertelement <8 x float> %93, float %70, i64 3, !dbg !648
  %95 = insertelement <8 x float> %94, float %75, i64 4, !dbg !648
  %96 = insertelement <8 x float> %95, float %80, i64 5, !dbg !648
  %97 = insertelement <8 x float> %96, float %85, i64 6, !dbg !648
  %98 = insertelement <8 x float> %97, float %90, i64 7, !dbg !648
  %99 = mul i64 %23, 64, !dbg !642
  %100 = add i64 %99, %29, !dbg !642
  %101 = getelementptr float, ptr %4, i64 %100, !dbg !642
  store <8 x float> %98, ptr %101, align 4, !dbg !642
  %102 = add i64 %29, 8, !dbg !642
  br label %28, !dbg !642

103:                                              ; preds = %28
  %104 = add i64 %23, 1, !dbg !642
  br label %22, !dbg !642

105:                                              ; preds = %22
  %106 = getelementptr float, ptr %4, i64 0, !dbg !646
  %107 = load <64 x float>, ptr %106, align 4, !dbg !646
  %108 = getelementptr float, ptr %4, i64 64, !dbg !646
  %109 = load <64 x float>, ptr %108, align 4, !dbg !646
  %110 = getelementptr float, ptr %4, i64 128, !dbg !646
  %111 = load <64 x float>, ptr %110, align 4, !dbg !646
  %112 = getelementptr float, ptr %4, i64 192, !dbg !646
  %113 = load <64 x float>, ptr %112, align 4, !dbg !646
  %114 = getelementptr float, ptr %4, i64 256, !dbg !646
  %115 = load <64 x float>, ptr %114, align 4, !dbg !646
  %116 = getelementptr float, ptr %4, i64 320, !dbg !646
  %117 = load <64 x float>, ptr %116, align 4, !dbg !646
  %118 = getelementptr float, ptr %4, i64 384, !dbg !646
  %119 = load <64 x float>, ptr %118, align 4, !dbg !646
  %120 = getelementptr float, ptr %4, i64 448, !dbg !646
  %121 = load <64 x float>, ptr %120, align 4, !dbg !646
  %122 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %19, !dbg !660
  %123 = load float, ptr %122, align 4, !dbg !660
  %124 = insertelement <64 x float> poison, float %123, i32 0, !dbg !660
  %125 = shufflevector <64 x float> %124, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !660
  %126 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %107, <64 x float> %125, <64 x float> %20), !dbg !660
  %127 = add i64 %19, 1, !dbg !660
  %128 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %127, !dbg !660
  %129 = load float, ptr %128, align 4, !dbg !660
  %130 = insertelement <64 x float> poison, float %129, i32 0, !dbg !660
  %131 = shufflevector <64 x float> %130, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !660
  %132 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %109, <64 x float> %131, <64 x float> %126), !dbg !660
  %133 = add i64 %19, 2, !dbg !660
  %134 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %133, !dbg !660
  %135 = load float, ptr %134, align 4, !dbg !660
  %136 = insertelement <64 x float> poison, float %135, i32 0, !dbg !660
  %137 = shufflevector <64 x float> %136, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !660
  %138 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %111, <64 x float> %137, <64 x float> %132), !dbg !660
  %139 = add i64 %19, 3, !dbg !660
  %140 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %139, !dbg !660
  %141 = load float, ptr %140, align 4, !dbg !660
  %142 = insertelement <64 x float> poison, float %141, i32 0, !dbg !660
  %143 = shufflevector <64 x float> %142, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !660
  %144 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %113, <64 x float> %143, <64 x float> %138), !dbg !660
  %145 = add i64 %19, 4, !dbg !660
  %146 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %145, !dbg !660
  %147 = load float, ptr %146, align 4, !dbg !660
  %148 = insertelement <64 x float> poison, float %147, i32 0, !dbg !660
  %149 = shufflevector <64 x float> %148, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !660
  %150 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %115, <64 x float> %149, <64 x float> %144), !dbg !660
  %151 = add i64 %19, 5, !dbg !660
  %152 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %151, !dbg !660
  %153 = load float, ptr %152, align 4, !dbg !660
  %154 = insertelement <64 x float> poison, float %153, i32 0, !dbg !660
  %155 = shufflevector <64 x float> %154, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !660
  %156 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %117, <64 x float> %155, <64 x float> %150), !dbg !660
  %157 = add i64 %19, 6, !dbg !660
  %158 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %157, !dbg !660
  %159 = load float, ptr %158, align 4, !dbg !660
  %160 = insertelement <64 x float> poison, float %159, i32 0, !dbg !660
  %161 = shufflevector <64 x float> %160, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !660
  %162 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %119, <64 x float> %161, <64 x float> %156), !dbg !660
  %163 = add i64 %19, 7, !dbg !660
  %164 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %163, !dbg !660
  %165 = load float, ptr %164, align 4, !dbg !660
  %166 = insertelement <64 x float> poison, float %165, i32 0, !dbg !660
  %167 = shufflevector <64 x float> %166, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !660
  %168 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %121, <64 x float> %167, <64 x float> %162), !dbg !660
  %169 = add i64 %19, 8, !dbg !646
  br label %18, !dbg !646

170:                                              ; preds = %18
  store <64 x float> %20, ptr %5, align 4, !dbg !660
  br label %171, !dbg !661

171:                                              ; preds = %174, %170
  %172 = phi i64 [ %183, %174 ], [ 0, %170 ], !dbg !661
  %173 = icmp slt i64 %172, 64, !dbg !661
  br i1 %173, label %174, label %184, !dbg !661

174:                                              ; preds = %171
  %175 = getelementptr float, ptr %5, i64 %172, !dbg !661
  %176 = load <1 x float>, ptr %175, align 4, !dbg !661
  %177 = fadd contract <1 x float> %176, zeroinitializer, !dbg !662
  %178 = fcmp ugt <1 x float> %177, zeroinitializer, !dbg !663
  %179 = select <1 x i1> %178, <1 x float> %177, <1 x float> zeroinitializer, !dbg !664
  %180 = extractelement <1 x float> %179, i64 0, !dbg !661
  %181 = add i64 %17, %172, !dbg !661
  %182 = getelementptr inbounds nuw float, ptr %13, i64 %181, !dbg !661
  store float %180, ptr %182, align 4, !dbg !661
  %183 = add i64 %172, 1, !dbg !661
  br label %171, !dbg !661

184:                                              ; preds = %171
  ret i32 0, !dbg !665
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), i32 immarg, <8 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), i32 immarg, <8 x i1>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <1 x float> @llvm.fmuladd.v1f32(<1 x float>, <1 x float>, <1 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <6 x float> @llvm.floor.v6f32(<6 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x float> @llvm.fmuladd.v64f32(<64 x float>, <64 x float>, <64 x float>) #4

define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr %1) {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "target-cpu"="znver3" "target-features"="+64bit,+64bit-mode,+adx,+aes,+allow-light-256-bit,+avx,+avx2,+bmi,+bmi2,+branchfusion,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fast-15bytenop,+fast-bextr,+fast-imm16,+fast-lzcnt,+fast-movbe,+fast-scalar-fsqrt,+fast-scalar-shift-masks,+fast-variable-perlane-shuffle,+fast-vector-fsqrt,+fma,+fsgsbase,+fsrm,+fxsr,+idivq-to-divl,+invpcid,+lzcnt,+macrofusion,+mmx,+movbe,+mwaitx,+nopl,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sbb-dep-breaking,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+vzeroupper,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "hot" "no-builtins" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_0.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_1.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_2.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_3.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!8 = distinct !DICompileUnit(language: DW_LANG_C17, file: !9, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!9 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_4.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!10 = distinct !DICompileUnit(language: DW_LANG_C17, file: !11, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!11 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_5.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!12 = distinct !DICompileUnit(language: DW_LANG_C17, file: !13, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!13 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_6.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!14 = distinct !DICompileUnit(language: DW_LANG_C17, file: !15, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!15 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_7.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!16 = distinct !DICompileUnit(language: DW_LANG_C17, file: !17, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!17 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_8.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!18 = distinct !DICompileUnit(language: DW_LANG_C17, file: !19, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!19 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_9.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!20 = distinct !DICompileUnit(language: DW_LANG_C17, file: !21, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!21 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_10.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!22 = distinct !DICompileUnit(language: DW_LANG_C17, file: !23, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!23 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_11.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!24 = distinct !DICompileUnit(language: DW_LANG_C17, file: !25, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!25 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_12.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!26 = distinct !DICompileUnit(language: DW_LANG_C17, file: !27, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!27 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_13.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!28 = distinct !DICompileUnit(language: DW_LANG_C17, file: !29, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!29 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_14.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!30 = distinct !DICompileUnit(language: DW_LANG_C17, file: !31, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!31 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_15.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!32 = distinct !DICompileUnit(language: DW_LANG_C17, file: !33, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!33 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_16.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!34 = distinct !DICompileUnit(language: DW_LANG_C17, file: !35, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!35 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_17.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!36 = distinct !DICompileUnit(language: DW_LANG_C17, file: !37, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!37 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_18.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!38 = distinct !DICompileUnit(language: DW_LANG_C17, file: !39, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!39 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_27.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!40 = distinct !DICompileUnit(language: DW_LANG_C17, file: !41, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!41 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_28.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!42 = distinct !DICompileUnit(language: DW_LANG_C17, file: !43, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!43 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_29.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!44 = distinct !DICompileUnit(language: DW_LANG_C17, file: !45, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!45 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_30.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!46 = distinct !DICompileUnit(language: DW_LANG_C17, file: !47, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!47 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_31.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!48 = distinct !DICompileUnit(language: DW_LANG_C17, file: !49, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!49 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_32.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!50 = distinct !DICompileUnit(language: DW_LANG_C17, file: !51, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!51 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_33.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!52 = distinct !DICompileUnit(language: DW_LANG_C17, file: !53, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!53 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_34.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!54 = distinct !DICompileUnit(language: DW_LANG_C17, file: !55, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!55 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_35.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!56 = distinct !DICompileUnit(language: DW_LANG_C17, file: !57, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!57 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_36.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!58 = distinct !DICompileUnit(language: DW_LANG_C17, file: !59, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!59 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_37.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!60 = distinct !DICompileUnit(language: DW_LANG_C17, file: !61, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!61 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_38.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!62 = distinct !DICompileUnit(language: DW_LANG_C17, file: !63, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!63 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_39.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!64 = distinct !DICompileUnit(language: DW_LANG_C17, file: !65, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!65 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_40.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!66 = distinct !DICompileUnit(language: DW_LANG_C17, file: !67, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!67 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_41.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!68 = distinct !DICompileUnit(language: DW_LANG_C17, file: !69, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!69 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_42.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!70 = distinct !DICompileUnit(language: DW_LANG_C17, file: !71, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!71 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_43.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!72 = distinct !DICompileUnit(language: DW_LANG_C17, file: !73, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!73 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_44.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!74 = distinct !DICompileUnit(language: DW_LANG_C17, file: !75, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!75 = !DIFile(filename: "configured_fastdepth_main_graph$async_dispatch_45.mlir", directory: "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs")
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = distinct !DISubprogram(name: "main_graph$async_dispatch_0_slow_memcpy", linkageName: "main_graph$async_dispatch_0_slow_memcpy", scope: !1, file: !1, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!78 = !DISubroutineType(cc: DW_CC_normal, types: !79)
!79 = !{!80, !81, !112, !141}
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !85, file: !85, line: 246, size: 768, elements: !86)
!85 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!86 = !{!87, !95, !98, !101, !103}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, scope: !85, file: !85, line: 227, baseType: !91, size: 2048, elements: !93)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !92)
!92 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!93 = !{!94}
!94 = !DISubrange(count: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !99, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !102, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !104, offset: 256)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !85, file: !85, line: 227, size: 512, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !107)
!107 = !DICompositeType(tag: DW_TAG_array_type, scope: !85, file: !85, line: 227, baseType: !108, size: 512, elements: !110)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !109)
!109 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!110 = !{!111}
!111 = !DISubrange(count: 8)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !85, file: !85, line: 275, size: 384, elements: !116)
!116 = !{!117, !118, !119, !122, !123, !124, !125, !126, !129, !130, !131, !136}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !91, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !91, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !120, size: 16, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !121)
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !120, size: 16, offset: 80)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !91, size: 32, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !91, size: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !120, size: 16, offset: 160)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !127, size: 8, offset: 176)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !128)
!128 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !127, size: 8, offset: 184)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !88, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !132, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = !DICompositeType(tag: DW_TAG_array_type, scope: !85, file: !85, line: 227, baseType: !135, size: 4096, elements: !93)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !137, size: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = !DICompositeType(tag: DW_TAG_array_type, scope: !85, file: !85, line: 227, baseType: !140, size: 4096, elements: !93)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !108)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !85, file: !85, line: 321, size: 256, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !91, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !91, size: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !120, size: 16, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !120, size: 16, offset: 80)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !91, size: 32, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !96, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !91, size: 32, offset: 192)
!153 = !DILocation(line: 10, column: 8, scope: !77)
!154 = !DILocation(line: 11, column: 8, scope: !77)
!155 = !DILocation(line: 12, column: 8, scope: !77)
!156 = !DILocation(line: 13, column: 8, scope: !77)
!157 = !DILocation(line: 15, column: 8, scope: !77)
!158 = !DILocation(line: 19, column: 8, scope: !77)
!159 = distinct !DISubprogram(name: "main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32", linkageName: "main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32", scope: !3, file: !3, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!160 = !DILocation(line: 20, column: 8, scope: !159)
!161 = !DILocation(line: 14, column: 8, scope: !159)
!162 = !DILocation(line: 15, column: 8, scope: !159)
!163 = !DILocation(line: 16, column: 8, scope: !159)
!164 = !DILocation(line: 21, column: 8, scope: !159)
!165 = !DILocation(line: 9, column: 8, scope: !159)
!166 = !DILocation(line: 23, column: 10, scope: !159)
!167 = !DILocation(line: 24, column: 10, scope: !159)
!168 = !DILocation(line: 27, column: 8, scope: !159)
!169 = !DILocation(line: 29, column: 10, scope: !159)
!170 = !DILocation(line: 30, column: 10, scope: !159)
!171 = !DILocation(line: 31, column: 10, scope: !159)
!172 = !DILocation(line: 32, column: 10, scope: !159)
!173 = !DILocation(line: 33, column: 10, scope: !159)
!174 = !DILocation(line: 37, column: 8, scope: !159)
!175 = distinct !DISubprogram(name: "main_graph$async_dispatch_2_conv_112x112x32x3x3_f32", linkageName: "main_graph$async_dispatch_2_conv_112x112x32x3x3_f32", scope: !5, file: !5, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!176 = !DILocation(line: 21, column: 8, scope: !175)
!177 = !DILocation(line: 20, column: 8, scope: !175)
!178 = !DILocation(line: 14, column: 8, scope: !175)
!179 = !DILocation(line: 15, column: 8, scope: !175)
!180 = !DILocation(line: 16, column: 8, scope: !175)
!181 = !DILocation(line: 9, column: 8, scope: !175)
!182 = !DILocation(line: 23, column: 10, scope: !175)
!183 = !DILocation(line: 24, column: 10, scope: !175)
!184 = !DILocation(line: 27, column: 8, scope: !175)
!185 = !DILocation(line: 29, column: 10, scope: !175)
!186 = !DILocation(line: 30, column: 10, scope: !175)
!187 = !DILocation(line: 31, column: 10, scope: !175)
!188 = !DILocation(line: 32, column: 10, scope: !175)
!189 = !DILocation(line: 33, column: 10, scope: !175)
!190 = !DILocation(line: 37, column: 8, scope: !175)
!191 = distinct !DISubprogram(name: "main_graph$async_dispatch_3_matmul_like_64x12544x32_f32", linkageName: "main_graph$async_dispatch_3_matmul_like_64x12544x32_f32", scope: !7, file: !7, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!192 = !DILocation(line: 14, column: 8, scope: !191)
!193 = !DILocation(line: 15, column: 8, scope: !191)
!194 = !DILocation(line: 16, column: 8, scope: !191)
!195 = !DILocation(line: 21, column: 8, scope: !191)
!196 = !DILocation(line: 24, column: 10, scope: !191)
!197 = !DILocation(line: 29, column: 10, scope: !191)
!198 = !DILocation(line: 30, column: 10, scope: !191)
!199 = !DILocation(line: 31, column: 10, scope: !191)
!200 = !DILocation(line: 32, column: 10, scope: !191)
!201 = !DILocation(line: 33, column: 10, scope: !191)
!202 = !DILocation(line: 37, column: 8, scope: !191)
!203 = distinct !DISubprogram(name: "main_graph$async_dispatch_4_slow_memcpy", linkageName: "main_graph$async_dispatch_4_slow_memcpy", scope: !9, file: !9, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8)
!204 = !DILocation(line: 11, column: 8, scope: !203)
!205 = !DILocation(line: 12, column: 8, scope: !203)
!206 = !DILocation(line: 13, column: 8, scope: !203)
!207 = !DILocation(line: 14, column: 8, scope: !203)
!208 = !DILocation(line: 16, column: 8, scope: !203)
!209 = !DILocation(line: 20, column: 8, scope: !203)
!210 = distinct !DISubprogram(name: "main_graph$async_dispatch_5_conv_56x56x64x3x3_f32", linkageName: "main_graph$async_dispatch_5_conv_56x56x64x3x3_f32", scope: !11, file: !11, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!211 = !DILocation(line: 21, column: 8, scope: !210)
!212 = !DILocation(line: 20, column: 8, scope: !210)
!213 = !DILocation(line: 14, column: 8, scope: !210)
!214 = !DILocation(line: 15, column: 8, scope: !210)
!215 = !DILocation(line: 16, column: 8, scope: !210)
!216 = !DILocation(line: 9, column: 8, scope: !210)
!217 = !DILocation(line: 23, column: 10, scope: !210)
!218 = !DILocation(line: 24, column: 10, scope: !210)
!219 = !DILocation(line: 27, column: 8, scope: !210)
!220 = !DILocation(line: 29, column: 10, scope: !210)
!221 = !DILocation(line: 30, column: 10, scope: !210)
!222 = !DILocation(line: 31, column: 10, scope: !210)
!223 = !DILocation(line: 32, column: 10, scope: !210)
!224 = !DILocation(line: 33, column: 10, scope: !210)
!225 = !DILocation(line: 37, column: 8, scope: !210)
!226 = distinct !DISubprogram(name: "main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32", linkageName: "main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32", scope: !13, file: !13, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!227 = !DILocation(line: 14, column: 8, scope: !226)
!228 = !DILocation(line: 15, column: 8, scope: !226)
!229 = !DILocation(line: 16, column: 8, scope: !226)
!230 = !DILocation(line: 21, column: 8, scope: !226)
!231 = !DILocation(line: 24, column: 10, scope: !226)
!232 = !DILocation(line: 29, column: 10, scope: !226)
!233 = !DILocation(line: 30, column: 10, scope: !226)
!234 = !DILocation(line: 31, column: 10, scope: !226)
!235 = !DILocation(line: 32, column: 10, scope: !226)
!236 = !DILocation(line: 33, column: 10, scope: !226)
!237 = !DILocation(line: 37, column: 8, scope: !226)
!238 = distinct !DISubprogram(name: "main_graph$async_dispatch_7_conv_56x56x128x3x3_f32", linkageName: "main_graph$async_dispatch_7_conv_56x56x128x3x3_f32", scope: !15, file: !15, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!239 = !DILocation(line: 21, column: 8, scope: !238)
!240 = !DILocation(line: 20, column: 8, scope: !238)
!241 = !DILocation(line: 14, column: 8, scope: !238)
!242 = !DILocation(line: 15, column: 8, scope: !238)
!243 = !DILocation(line: 16, column: 8, scope: !238)
!244 = !DILocation(line: 9, column: 8, scope: !238)
!245 = !DILocation(line: 23, column: 10, scope: !238)
!246 = !DILocation(line: 24, column: 10, scope: !238)
!247 = !DILocation(line: 27, column: 8, scope: !238)
!248 = !DILocation(line: 29, column: 10, scope: !238)
!249 = !DILocation(line: 30, column: 10, scope: !238)
!250 = !DILocation(line: 31, column: 10, scope: !238)
!251 = !DILocation(line: 32, column: 10, scope: !238)
!252 = !DILocation(line: 33, column: 10, scope: !238)
!253 = !DILocation(line: 37, column: 8, scope: !238)
!254 = distinct !DISubprogram(name: "main_graph$async_dispatch_8_matmul_like_128x3136x128_f32", linkageName: "main_graph$async_dispatch_8_matmul_like_128x3136x128_f32", scope: !17, file: !17, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16)
!255 = !DILocation(line: 14, column: 8, scope: !254)
!256 = !DILocation(line: 15, column: 8, scope: !254)
!257 = !DILocation(line: 16, column: 8, scope: !254)
!258 = !DILocation(line: 21, column: 8, scope: !254)
!259 = !DILocation(line: 24, column: 10, scope: !254)
!260 = !DILocation(line: 29, column: 10, scope: !254)
!261 = !DILocation(line: 30, column: 10, scope: !254)
!262 = !DILocation(line: 31, column: 10, scope: !254)
!263 = !DILocation(line: 32, column: 10, scope: !254)
!264 = !DILocation(line: 33, column: 10, scope: !254)
!265 = !DILocation(line: 37, column: 8, scope: !254)
!266 = distinct !DISubprogram(name: "main_graph$async_dispatch_9_slow_memcpy", linkageName: "main_graph$async_dispatch_9_slow_memcpy", scope: !19, file: !19, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!267 = !DILocation(line: 11, column: 8, scope: !266)
!268 = !DILocation(line: 12, column: 8, scope: !266)
!269 = !DILocation(line: 13, column: 8, scope: !266)
!270 = !DILocation(line: 14, column: 8, scope: !266)
!271 = !DILocation(line: 16, column: 8, scope: !266)
!272 = !DILocation(line: 20, column: 8, scope: !266)
!273 = distinct !DISubprogram(name: "main_graph$async_dispatch_10_conv_28x28x128x3x3_f32", linkageName: "main_graph$async_dispatch_10_conv_28x28x128x3x3_f32", scope: !21, file: !21, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20)
!274 = !DILocation(line: 21, column: 8, scope: !273)
!275 = !DILocation(line: 20, column: 8, scope: !273)
!276 = !DILocation(line: 14, column: 8, scope: !273)
!277 = !DILocation(line: 15, column: 8, scope: !273)
!278 = !DILocation(line: 16, column: 8, scope: !273)
!279 = !DILocation(line: 9, column: 8, scope: !273)
!280 = !DILocation(line: 23, column: 10, scope: !273)
!281 = !DILocation(line: 24, column: 10, scope: !273)
!282 = !DILocation(line: 27, column: 8, scope: !273)
!283 = !DILocation(line: 29, column: 10, scope: !273)
!284 = !DILocation(line: 30, column: 10, scope: !273)
!285 = !DILocation(line: 31, column: 10, scope: !273)
!286 = !DILocation(line: 32, column: 10, scope: !273)
!287 = !DILocation(line: 33, column: 10, scope: !273)
!288 = !DILocation(line: 37, column: 8, scope: !273)
!289 = distinct !DISubprogram(name: "main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32", linkageName: "main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32", scope: !23, file: !23, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22)
!290 = !DILocation(line: 14, column: 8, scope: !289)
!291 = !DILocation(line: 15, column: 8, scope: !289)
!292 = !DILocation(line: 16, column: 8, scope: !289)
!293 = !DILocation(line: 21, column: 8, scope: !289)
!294 = !DILocation(line: 24, column: 10, scope: !289)
!295 = !DILocation(line: 29, column: 10, scope: !289)
!296 = !DILocation(line: 30, column: 10, scope: !289)
!297 = !DILocation(line: 31, column: 10, scope: !289)
!298 = !DILocation(line: 32, column: 10, scope: !289)
!299 = !DILocation(line: 33, column: 10, scope: !289)
!300 = !DILocation(line: 37, column: 8, scope: !289)
!301 = distinct !DISubprogram(name: "main_graph$async_dispatch_12_conv_28x28x256x3x3_f32", linkageName: "main_graph$async_dispatch_12_conv_28x28x256x3x3_f32", scope: !25, file: !25, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!302 = !DILocation(line: 21, column: 8, scope: !301)
!303 = !DILocation(line: 20, column: 8, scope: !301)
!304 = !DILocation(line: 14, column: 8, scope: !301)
!305 = !DILocation(line: 15, column: 8, scope: !301)
!306 = !DILocation(line: 16, column: 8, scope: !301)
!307 = !DILocation(line: 9, column: 8, scope: !301)
!308 = !DILocation(line: 23, column: 10, scope: !301)
!309 = !DILocation(line: 24, column: 10, scope: !301)
!310 = !DILocation(line: 27, column: 8, scope: !301)
!311 = !DILocation(line: 29, column: 10, scope: !301)
!312 = !DILocation(line: 30, column: 10, scope: !301)
!313 = !DILocation(line: 31, column: 10, scope: !301)
!314 = !DILocation(line: 32, column: 10, scope: !301)
!315 = !DILocation(line: 33, column: 10, scope: !301)
!316 = !DILocation(line: 37, column: 8, scope: !301)
!317 = distinct !DISubprogram(name: "main_graph$async_dispatch_13_matmul_like_256x784x256_f32", linkageName: "main_graph$async_dispatch_13_matmul_like_256x784x256_f32", scope: !27, file: !27, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!318 = !DILocation(line: 14, column: 8, scope: !317)
!319 = !DILocation(line: 15, column: 8, scope: !317)
!320 = !DILocation(line: 16, column: 8, scope: !317)
!321 = !DILocation(line: 21, column: 8, scope: !317)
!322 = !DILocation(line: 24, column: 10, scope: !317)
!323 = !DILocation(line: 29, column: 10, scope: !317)
!324 = !DILocation(line: 30, column: 10, scope: !317)
!325 = !DILocation(line: 31, column: 10, scope: !317)
!326 = !DILocation(line: 32, column: 10, scope: !317)
!327 = !DILocation(line: 33, column: 10, scope: !317)
!328 = !DILocation(line: 37, column: 8, scope: !317)
!329 = distinct !DISubprogram(name: "main_graph$async_dispatch_14_slow_memcpy", linkageName: "main_graph$async_dispatch_14_slow_memcpy", scope: !29, file: !29, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28)
!330 = !DILocation(line: 11, column: 8, scope: !329)
!331 = !DILocation(line: 12, column: 8, scope: !329)
!332 = !DILocation(line: 13, column: 8, scope: !329)
!333 = !DILocation(line: 14, column: 8, scope: !329)
!334 = !DILocation(line: 16, column: 8, scope: !329)
!335 = !DILocation(line: 20, column: 8, scope: !329)
!336 = distinct !DISubprogram(name: "main_graph$async_dispatch_15_conv_14x14x256x3x3_f32", linkageName: "main_graph$async_dispatch_15_conv_14x14x256x3x3_f32", scope: !31, file: !31, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30)
!337 = !DILocation(line: 21, column: 8, scope: !336)
!338 = !DILocation(line: 20, column: 8, scope: !336)
!339 = !DILocation(line: 14, column: 8, scope: !336)
!340 = !DILocation(line: 15, column: 8, scope: !336)
!341 = !DILocation(line: 16, column: 8, scope: !336)
!342 = !DILocation(line: 9, column: 8, scope: !336)
!343 = !DILocation(line: 23, column: 10, scope: !336)
!344 = !DILocation(line: 24, column: 10, scope: !336)
!345 = !DILocation(line: 27, column: 8, scope: !336)
!346 = !DILocation(line: 29, column: 10, scope: !336)
!347 = !DILocation(line: 30, column: 10, scope: !336)
!348 = !DILocation(line: 31, column: 10, scope: !336)
!349 = !DILocation(line: 32, column: 10, scope: !336)
!350 = !DILocation(line: 33, column: 10, scope: !336)
!351 = !DILocation(line: 37, column: 8, scope: !336)
!352 = distinct !DISubprogram(name: "main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32", linkageName: "main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32", scope: !33, file: !33, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32)
!353 = !DILocation(line: 14, column: 8, scope: !352)
!354 = !DILocation(line: 15, column: 8, scope: !352)
!355 = !DILocation(line: 16, column: 8, scope: !352)
!356 = !DILocation(line: 21, column: 8, scope: !352)
!357 = !DILocation(line: 24, column: 10, scope: !352)
!358 = !DILocation(line: 29, column: 10, scope: !352)
!359 = !DILocation(line: 30, column: 10, scope: !352)
!360 = !DILocation(line: 31, column: 10, scope: !352)
!361 = !DILocation(line: 32, column: 10, scope: !352)
!362 = !DILocation(line: 33, column: 10, scope: !352)
!363 = !DILocation(line: 37, column: 8, scope: !352)
!364 = distinct !DISubprogram(name: "main_graph$async_dispatch_17_conv_14x14x512x3x3_f32", linkageName: "main_graph$async_dispatch_17_conv_14x14x512x3x3_f32", scope: !35, file: !35, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!365 = !DILocation(line: 27, column: 8, scope: !364)
!366 = !DILocation(line: 26, column: 8, scope: !364)
!367 = !DILocation(line: 12, column: 8, scope: !364)
!368 = !DILocation(line: 13, column: 8, scope: !364)
!369 = !DILocation(line: 14, column: 8, scope: !364)
!370 = !DILocation(line: 15, column: 8, scope: !364)
!371 = !DILocation(line: 20, column: 8, scope: !364)
!372 = !DILocation(line: 21, column: 8, scope: !364)
!373 = !DILocation(line: 22, column: 8, scope: !364)
!374 = !DILocation(line: 10, column: 8, scope: !364)
!375 = !DILocation(line: 29, column: 10, scope: !364)
!376 = !DILocation(line: 30, column: 10, scope: !364)
!377 = !DILocation(line: 33, column: 8, scope: !364)
!378 = !DILocation(line: 35, column: 10, scope: !364)
!379 = !DILocation(line: 36, column: 10, scope: !364)
!380 = !DILocation(line: 37, column: 10, scope: !364)
!381 = !DILocation(line: 38, column: 10, scope: !364)
!382 = !DILocation(line: 39, column: 10, scope: !364)
!383 = !DILocation(line: 43, column: 8, scope: !364)
!384 = distinct !DISubprogram(name: "main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32", linkageName: "main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32", scope: !37, file: !37, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36)
!385 = !DILocation(line: 12, column: 8, scope: !384)
!386 = !DILocation(line: 13, column: 8, scope: !384)
!387 = !DILocation(line: 14, column: 8, scope: !384)
!388 = !DILocation(line: 15, column: 8, scope: !384)
!389 = !DILocation(line: 20, column: 8, scope: !384)
!390 = !DILocation(line: 21, column: 8, scope: !384)
!391 = !DILocation(line: 22, column: 8, scope: !384)
!392 = !DILocation(line: 27, column: 8, scope: !384)
!393 = !DILocation(line: 30, column: 10, scope: !384)
!394 = !DILocation(line: 35, column: 10, scope: !384)
!395 = !DILocation(line: 36, column: 10, scope: !384)
!396 = !DILocation(line: 37, column: 10, scope: !384)
!397 = !DILocation(line: 38, column: 10, scope: !384)
!398 = !DILocation(line: 39, column: 10, scope: !384)
!399 = !DILocation(line: 43, column: 8, scope: !384)
!400 = distinct !DISubprogram(name: "main_graph$async_dispatch_27_conv_7x7x512x3x3_f32", linkageName: "main_graph$async_dispatch_27_conv_7x7x512x3x3_f32", scope: !39, file: !39, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38)
!401 = !DILocation(line: 21, column: 8, scope: !400)
!402 = !DILocation(line: 20, column: 8, scope: !400)
!403 = !DILocation(line: 14, column: 8, scope: !400)
!404 = !DILocation(line: 15, column: 8, scope: !400)
!405 = !DILocation(line: 16, column: 8, scope: !400)
!406 = !DILocation(line: 9, column: 8, scope: !400)
!407 = !DILocation(line: 23, column: 10, scope: !400)
!408 = !DILocation(line: 24, column: 10, scope: !400)
!409 = !DILocation(line: 27, column: 8, scope: !400)
!410 = !DILocation(line: 29, column: 10, scope: !400)
!411 = !DILocation(line: 30, column: 10, scope: !400)
!412 = !DILocation(line: 31, column: 10, scope: !400)
!413 = !DILocation(line: 32, column: 10, scope: !400)
!414 = !DILocation(line: 33, column: 10, scope: !400)
!415 = !DILocation(line: 37, column: 8, scope: !400)
!416 = distinct !DISubprogram(name: "main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32", linkageName: "main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32", scope: !41, file: !41, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40)
!417 = !DILocation(line: 14, column: 8, scope: !416)
!418 = !DILocation(line: 15, column: 8, scope: !416)
!419 = !DILocation(line: 16, column: 8, scope: !416)
!420 = !DILocation(line: 21, column: 8, scope: !416)
!421 = !DILocation(line: 24, column: 10, scope: !416)
!422 = !DILocation(line: 29, column: 10, scope: !416)
!423 = !DILocation(line: 30, column: 10, scope: !416)
!424 = !DILocation(line: 31, column: 10, scope: !416)
!425 = !DILocation(line: 32, column: 10, scope: !416)
!426 = !DILocation(line: 33, column: 10, scope: !416)
!427 = !DILocation(line: 37, column: 8, scope: !416)
!428 = distinct !DISubprogram(name: "main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32", linkageName: "main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32", scope: !43, file: !43, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42)
!429 = !DILocation(line: 21, column: 8, scope: !428)
!430 = !DILocation(line: 20, column: 8, scope: !428)
!431 = !DILocation(line: 14, column: 8, scope: !428)
!432 = !DILocation(line: 15, column: 8, scope: !428)
!433 = !DILocation(line: 16, column: 8, scope: !428)
!434 = !DILocation(line: 9, column: 8, scope: !428)
!435 = !DILocation(line: 23, column: 10, scope: !428)
!436 = !DILocation(line: 24, column: 10, scope: !428)
!437 = !DILocation(line: 27, column: 8, scope: !428)
!438 = !DILocation(line: 29, column: 10, scope: !428)
!439 = !DILocation(line: 30, column: 10, scope: !428)
!440 = !DILocation(line: 31, column: 10, scope: !428)
!441 = !DILocation(line: 32, column: 10, scope: !428)
!442 = !DILocation(line: 33, column: 10, scope: !428)
!443 = !DILocation(line: 37, column: 8, scope: !428)
!444 = distinct !DISubprogram(name: "main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32", linkageName: "main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32", scope: !45, file: !45, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44)
!445 = !DILocation(line: 14, column: 8, scope: !444)
!446 = !DILocation(line: 15, column: 8, scope: !444)
!447 = !DILocation(line: 16, column: 8, scope: !444)
!448 = !DILocation(line: 21, column: 8, scope: !444)
!449 = !DILocation(line: 24, column: 10, scope: !444)
!450 = !DILocation(line: 29, column: 10, scope: !444)
!451 = !DILocation(line: 30, column: 10, scope: !444)
!452 = !DILocation(line: 31, column: 10, scope: !444)
!453 = !DILocation(line: 32, column: 10, scope: !444)
!454 = !DILocation(line: 33, column: 10, scope: !444)
!455 = !DILocation(line: 37, column: 8, scope: !444)
!456 = distinct !DISubprogram(name: "main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32", linkageName: "main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32", scope: !47, file: !47, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46)
!457 = !DILocation(line: 20, column: 8, scope: !456)
!458 = !DILocation(line: 19, column: 8, scope: !456)
!459 = !DILocation(line: 13, column: 8, scope: !456)
!460 = !DILocation(line: 14, column: 8, scope: !456)
!461 = !DILocation(line: 15, column: 8, scope: !456)
!462 = !DILocation(line: 9, column: 8, scope: !456)
!463 = !DILocation(line: 22, column: 10, scope: !456)
!464 = !DILocation(line: 23, column: 10, scope: !456)
!465 = !DILocation(line: 26, column: 8, scope: !456)
!466 = !DILocation(line: 28, column: 10, scope: !456)
!467 = !DILocation(line: 29, column: 10, scope: !456)
!468 = !DILocation(line: 30, column: 10, scope: !456)
!469 = !DILocation(line: 34, column: 8, scope: !456)
!470 = distinct !DISubprogram(name: "main_graph$async_dispatch_32_matmul_like_512x49x1024_f32", linkageName: "main_graph$async_dispatch_32_matmul_like_512x49x1024_f32", scope: !49, file: !49, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48)
!471 = !DILocation(line: 13, column: 8, scope: !470)
!472 = !DILocation(line: 14, column: 8, scope: !470)
!473 = !DILocation(line: 15, column: 8, scope: !470)
!474 = !DILocation(line: 20, column: 8, scope: !470)
!475 = !DILocation(line: 23, column: 10, scope: !470)
!476 = !DILocation(line: 28, column: 10, scope: !470)
!477 = !DILocation(line: 29, column: 10, scope: !470)
!478 = !DILocation(line: 30, column: 10, scope: !470)
!479 = !DILocation(line: 34, column: 8, scope: !470)
!480 = distinct !DISubprogram(name: "main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32", linkageName: "main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32", scope: !51, file: !51, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50)
!481 = !DILocation(line: 13, column: 8, scope: !480)
!482 = !DILocation(line: 14, column: 8, scope: !480)
!483 = !DILocation(line: 17, column: 8, scope: !480)
!484 = !DILocation(line: 31, column: 10, scope: !480)
!485 = !DILocation(line: 32, column: 10, scope: !480)
!486 = !DILocation(line: 19, column: 10, scope: !480)
!487 = !DILocation(line: 34, column: 10, scope: !480)
!488 = !DILocation(line: 20, column: 10, scope: !480)
!489 = !DILocation(line: 23, column: 10, scope: !480)
!490 = !DILocation(line: 24, column: 10, scope: !480)
!491 = !DILocation(line: 25, column: 10, scope: !480)
!492 = !DILocation(line: 26, column: 10, scope: !480)
!493 = !DILocation(line: 38, column: 8, scope: !480)
!494 = distinct !DISubprogram(name: "main_graph$async_dispatch_34_conv_14x14x512x5x5_f32", linkageName: "main_graph$async_dispatch_34_conv_14x14x512x5x5_f32", scope: !53, file: !53, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !52)
!495 = !DILocation(line: 20, column: 8, scope: !494)
!496 = !DILocation(line: 19, column: 8, scope: !494)
!497 = !DILocation(line: 13, column: 8, scope: !494)
!498 = !DILocation(line: 14, column: 8, scope: !494)
!499 = !DILocation(line: 15, column: 8, scope: !494)
!500 = !DILocation(line: 9, column: 8, scope: !494)
!501 = !DILocation(line: 22, column: 10, scope: !494)
!502 = !DILocation(line: 23, column: 10, scope: !494)
!503 = !DILocation(line: 26, column: 8, scope: !494)
!504 = !DILocation(line: 28, column: 10, scope: !494)
!505 = !DILocation(line: 29, column: 10, scope: !494)
!506 = !DILocation(line: 30, column: 10, scope: !494)
!507 = !DILocation(line: 34, column: 8, scope: !494)
!508 = distinct !DISubprogram(name: "main_graph$async_dispatch_35_matmul_like_256x196x512_f32", linkageName: "main_graph$async_dispatch_35_matmul_like_256x196x512_f32", scope: !55, file: !55, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54)
!509 = !DILocation(line: 13, column: 8, scope: !508)
!510 = !DILocation(line: 14, column: 8, scope: !508)
!511 = !DILocation(line: 15, column: 8, scope: !508)
!512 = !DILocation(line: 20, column: 8, scope: !508)
!513 = !DILocation(line: 23, column: 10, scope: !508)
!514 = !DILocation(line: 28, column: 10, scope: !508)
!515 = !DILocation(line: 29, column: 10, scope: !508)
!516 = !DILocation(line: 30, column: 10, scope: !508)
!517 = !DILocation(line: 34, column: 8, scope: !508)
!518 = distinct !DISubprogram(name: "main_graph$async_dispatch_36_elementwise_256x28x28_f32", linkageName: "main_graph$async_dispatch_36_elementwise_256x28x28_f32", scope: !57, file: !57, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56)
!519 = !DILocation(line: 14, column: 8, scope: !518)
!520 = !DILocation(line: 15, column: 8, scope: !518)
!521 = !DILocation(line: 16, column: 8, scope: !518)
!522 = !DILocation(line: 20, column: 8, scope: !518)
!523 = !DILocation(line: 34, column: 10, scope: !518)
!524 = !DILocation(line: 35, column: 10, scope: !518)
!525 = !DILocation(line: 37, column: 10, scope: !518)
!526 = !DILocation(line: 26, column: 10, scope: !518)
!527 = !DILocation(line: 27, column: 10, scope: !518)
!528 = !DILocation(line: 28, column: 10, scope: !518)
!529 = !DILocation(line: 29, column: 10, scope: !518)
!530 = !DILocation(line: 24, column: 10, scope: !518)
!531 = !DILocation(line: 32, column: 10, scope: !518)
!532 = !DILocation(line: 33, column: 10, scope: !518)
!533 = !DILocation(line: 38, column: 10, scope: !518)
!534 = !DILocation(line: 42, column: 8, scope: !518)
!535 = distinct !DISubprogram(name: "main_graph$async_dispatch_37_conv_28x28x256x5x5_f32", linkageName: "main_graph$async_dispatch_37_conv_28x28x256x5x5_f32", scope: !59, file: !59, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58)
!536 = !DILocation(line: 20, column: 8, scope: !535)
!537 = !DILocation(line: 19, column: 8, scope: !535)
!538 = !DILocation(line: 13, column: 8, scope: !535)
!539 = !DILocation(line: 14, column: 8, scope: !535)
!540 = !DILocation(line: 15, column: 8, scope: !535)
!541 = !DILocation(line: 9, column: 8, scope: !535)
!542 = !DILocation(line: 22, column: 10, scope: !535)
!543 = !DILocation(line: 23, column: 10, scope: !535)
!544 = !DILocation(line: 26, column: 8, scope: !535)
!545 = !DILocation(line: 28, column: 10, scope: !535)
!546 = !DILocation(line: 29, column: 10, scope: !535)
!547 = !DILocation(line: 30, column: 10, scope: !535)
!548 = !DILocation(line: 34, column: 8, scope: !535)
!549 = distinct !DISubprogram(name: "main_graph$async_dispatch_38_matmul_like_128x784x256_f32", linkageName: "main_graph$async_dispatch_38_matmul_like_128x784x256_f32", scope: !61, file: !61, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60)
!550 = !DILocation(line: 13, column: 8, scope: !549)
!551 = !DILocation(line: 14, column: 8, scope: !549)
!552 = !DILocation(line: 15, column: 8, scope: !549)
!553 = !DILocation(line: 20, column: 8, scope: !549)
!554 = !DILocation(line: 23, column: 10, scope: !549)
!555 = !DILocation(line: 28, column: 10, scope: !549)
!556 = !DILocation(line: 29, column: 10, scope: !549)
!557 = !DILocation(line: 30, column: 10, scope: !549)
!558 = !DILocation(line: 34, column: 8, scope: !549)
!559 = distinct !DISubprogram(name: "main_graph$async_dispatch_39_elementwise_128x56x56_f32", linkageName: "main_graph$async_dispatch_39_elementwise_128x56x56_f32", scope: !63, file: !63, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62)
!560 = !DILocation(line: 13, column: 8, scope: !559)
!561 = !DILocation(line: 14, column: 8, scope: !559)
!562 = !DILocation(line: 15, column: 8, scope: !559)
!563 = !DILocation(line: 19, column: 8, scope: !559)
!564 = !DILocation(line: 36, column: 10, scope: !559)
!565 = !DILocation(line: 25, column: 10, scope: !559)
!566 = !DILocation(line: 26, column: 10, scope: !559)
!567 = !DILocation(line: 27, column: 10, scope: !559)
!568 = !DILocation(line: 28, column: 10, scope: !559)
!569 = !DILocation(line: 23, column: 10, scope: !559)
!570 = !DILocation(line: 31, column: 10, scope: !559)
!571 = !DILocation(line: 32, column: 10, scope: !559)
!572 = !DILocation(line: 33, column: 10, scope: !559)
!573 = !DILocation(line: 34, column: 10, scope: !559)
!574 = !DILocation(line: 37, column: 10, scope: !559)
!575 = !DILocation(line: 41, column: 8, scope: !559)
!576 = distinct !DISubprogram(name: "main_graph$async_dispatch_40_conv_56x56x128x5x5_f32", linkageName: "main_graph$async_dispatch_40_conv_56x56x128x5x5_f32", scope: !65, file: !65, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64)
!577 = !DILocation(line: 20, column: 8, scope: !576)
!578 = !DILocation(line: 19, column: 8, scope: !576)
!579 = !DILocation(line: 13, column: 8, scope: !576)
!580 = !DILocation(line: 14, column: 8, scope: !576)
!581 = !DILocation(line: 15, column: 8, scope: !576)
!582 = !DILocation(line: 9, column: 8, scope: !576)
!583 = !DILocation(line: 22, column: 10, scope: !576)
!584 = !DILocation(line: 23, column: 10, scope: !576)
!585 = !DILocation(line: 26, column: 8, scope: !576)
!586 = !DILocation(line: 28, column: 10, scope: !576)
!587 = !DILocation(line: 29, column: 10, scope: !576)
!588 = !DILocation(line: 30, column: 10, scope: !576)
!589 = !DILocation(line: 34, column: 8, scope: !576)
!590 = distinct !DISubprogram(name: "main_graph$async_dispatch_41_matmul_like_64x3136x128_f32", linkageName: "main_graph$async_dispatch_41_matmul_like_64x3136x128_f32", scope: !67, file: !67, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66)
!591 = !DILocation(line: 13, column: 8, scope: !590)
!592 = !DILocation(line: 14, column: 8, scope: !590)
!593 = !DILocation(line: 15, column: 8, scope: !590)
!594 = !DILocation(line: 20, column: 8, scope: !590)
!595 = !DILocation(line: 23, column: 10, scope: !590)
!596 = !DILocation(line: 28, column: 10, scope: !590)
!597 = !DILocation(line: 29, column: 10, scope: !590)
!598 = !DILocation(line: 30, column: 10, scope: !590)
!599 = !DILocation(line: 34, column: 8, scope: !590)
!600 = distinct !DISubprogram(name: "main_graph$async_dispatch_42_elementwise_64x112x112_f32", linkageName: "main_graph$async_dispatch_42_elementwise_64x112x112_f32", scope: !69, file: !69, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68)
!601 = !DILocation(line: 14, column: 8, scope: !600)
!602 = !DILocation(line: 15, column: 8, scope: !600)
!603 = !DILocation(line: 16, column: 8, scope: !600)
!604 = !DILocation(line: 20, column: 8, scope: !600)
!605 = !DILocation(line: 37, column: 10, scope: !600)
!606 = !DILocation(line: 26, column: 10, scope: !600)
!607 = !DILocation(line: 27, column: 10, scope: !600)
!608 = !DILocation(line: 28, column: 10, scope: !600)
!609 = !DILocation(line: 29, column: 10, scope: !600)
!610 = !DILocation(line: 24, column: 10, scope: !600)
!611 = !DILocation(line: 32, column: 10, scope: !600)
!612 = !DILocation(line: 33, column: 10, scope: !600)
!613 = !DILocation(line: 34, column: 10, scope: !600)
!614 = !DILocation(line: 35, column: 10, scope: !600)
!615 = !DILocation(line: 38, column: 10, scope: !600)
!616 = !DILocation(line: 42, column: 8, scope: !600)
!617 = distinct !DISubprogram(name: "main_graph$async_dispatch_43_conv_112x112x64x5x5_f32", linkageName: "main_graph$async_dispatch_43_conv_112x112x64x5x5_f32", scope: !71, file: !71, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70)
!618 = !DILocation(line: 20, column: 8, scope: !617)
!619 = !DILocation(line: 19, column: 8, scope: !617)
!620 = !DILocation(line: 13, column: 8, scope: !617)
!621 = !DILocation(line: 14, column: 8, scope: !617)
!622 = !DILocation(line: 15, column: 8, scope: !617)
!623 = !DILocation(line: 9, column: 8, scope: !617)
!624 = !DILocation(line: 22, column: 10, scope: !617)
!625 = !DILocation(line: 23, column: 10, scope: !617)
!626 = !DILocation(line: 26, column: 8, scope: !617)
!627 = !DILocation(line: 28, column: 10, scope: !617)
!628 = !DILocation(line: 29, column: 10, scope: !617)
!629 = !DILocation(line: 30, column: 10, scope: !617)
!630 = !DILocation(line: 34, column: 8, scope: !617)
!631 = distinct !DISubprogram(name: "main_graph$async_dispatch_44_matmul_like_32x12544x64_f32", linkageName: "main_graph$async_dispatch_44_matmul_like_32x12544x64_f32", scope: !73, file: !73, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72)
!632 = !DILocation(line: 12, column: 8, scope: !631)
!633 = !DILocation(line: 13, column: 8, scope: !631)
!634 = !DILocation(line: 14, column: 8, scope: !631)
!635 = !DILocation(line: 19, column: 8, scope: !631)
!636 = !DILocation(line: 22, column: 10, scope: !631)
!637 = !DILocation(line: 27, column: 10, scope: !631)
!638 = !DILocation(line: 28, column: 10, scope: !631)
!639 = !DILocation(line: 29, column: 10, scope: !631)
!640 = !DILocation(line: 33, column: 8, scope: !631)
!641 = distinct !DISubprogram(name: "main_graph$async_dispatch_45_matvec_like_50176x32_f32", linkageName: "main_graph$async_dispatch_45_matvec_like_50176x32_f32", scope: !75, file: !75, line: 1, type: !78, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!642 = !DILocation(line: 21, column: 8, scope: !641)
!643 = !DILocation(line: 19, column: 8, scope: !641)
!644 = !DILocation(line: 15, column: 8, scope: !641)
!645 = !DILocation(line: 16, column: 8, scope: !641)
!646 = !DILocation(line: 42, column: 8, scope: !641)
!647 = !DILocation(line: 23, column: 10, scope: !641)
!648 = !DILocation(line: 39, column: 10, scope: !641)
!649 = !DILocation(line: 24, column: 10, scope: !641)
!650 = !DILocation(line: 25, column: 10, scope: !641)
!651 = !DILocation(line: 26, column: 10, scope: !641)
!652 = !DILocation(line: 28, column: 10, scope: !641)
!653 = !DILocation(line: 29, column: 10, scope: !641)
!654 = !DILocation(line: 30, column: 10, scope: !641)
!655 = !DILocation(line: 31, column: 10, scope: !641)
!656 = !DILocation(line: 34, column: 10, scope: !641)
!657 = !DILocation(line: 35, column: 10, scope: !641)
!658 = !DILocation(line: 36, column: 10, scope: !641)
!659 = !DILocation(line: 37, column: 10, scope: !641)
!660 = !DILocation(line: 45, column: 10, scope: !641)
!661 = !DILocation(line: 48, column: 8, scope: !641)
!662 = !DILocation(line: 50, column: 10, scope: !641)
!663 = !DILocation(line: 51, column: 10, scope: !641)
!664 = !DILocation(line: 52, column: 10, scope: !641)
!665 = !DILocation(line: 56, column: 8, scope: !641)
