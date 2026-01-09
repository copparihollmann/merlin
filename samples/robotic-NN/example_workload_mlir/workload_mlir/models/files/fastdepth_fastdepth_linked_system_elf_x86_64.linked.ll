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

define internal i32 @"main_graph$async_dispatch_0_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !79 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !155
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !155
  %6 = load ptr, ptr %5, align 8, !dbg !155
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !156
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !157
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !157
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !157
  %10 = load ptr, ptr %9, align 8, !dbg !157
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !158
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !159
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !159
  %13 = zext i32 %12 to i64, !dbg !159
  %14 = sdiv i64 %13, 4, !dbg !159
  %15 = mul i64 %14, 4, !dbg !159
  %16 = icmp ne i64 %13, %15, !dbg !159
  %17 = icmp slt i64 %13, 0, !dbg !159
  %18 = and i1 %16, %17, !dbg !159
  %19 = add i64 %14, -1, !dbg !159
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !159
  %21 = srem i64 %13, 4, !dbg !159
  %22 = icmp slt i64 %21, 0, !dbg !159
  %23 = add nsw i64 %21, 4, !dbg !159
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !159
  %25 = mul nsw i64 %20, 56, !dbg !159
  %26 = mul nsw i64 %24, 56, !dbg !159
  br label %27, !dbg !159

27:                                               ; preds = %55, %3
  %28 = phi i64 [ %56, %55 ], [ 0, %3 ], !dbg !159
  %29 = icmp slt i64 %28, 3, !dbg !159
  br i1 %29, label %30, label %57, !dbg !159

30:                                               ; preds = %53, %27
  %31 = phi i64 [ %54, %53 ], [ 0, %27 ], !dbg !159
  %32 = icmp slt i64 %31, 56, !dbg !159
  br i1 %32, label %33, label %55, !dbg !159

33:                                               ; preds = %36, %30
  %34 = phi i64 [ %52, %36 ], [ 0, %30 ], !dbg !159
  %35 = icmp slt i64 %34, 56, !dbg !159
  br i1 %35, label %36, label %53, !dbg !159

36:                                               ; preds = %33
  %37 = add i64 %25, %31, !dbg !159
  %38 = add i64 %26, %34, !dbg !159
  %39 = mul i64 %28, 50176, !dbg !159
  %40 = mul i64 %37, 224, !dbg !159
  %41 = add i64 %39, %40, !dbg !159
  %42 = add i64 %41, %38, !dbg !159
  %43 = getelementptr float, ptr %6, i64 %42, !dbg !159
  %44 = load <8 x float>, ptr %43, align 4, !dbg !159
  %45 = add i64 %37, 1, !dbg !159
  %46 = add i64 %38, 1, !dbg !159
  %47 = mul i64 %28, 51076, !dbg !159
  %48 = mul i64 %45, 226, !dbg !159
  %49 = add i64 %47, %48, !dbg !159
  %50 = add i64 %49, %46, !dbg !159
  %51 = getelementptr float, ptr %10, i64 %50, !dbg !159
  store <8 x float> %44, ptr %51, align 4, !dbg !159
  %52 = add i64 %34, 8, !dbg !159
  br label %33, !dbg !159

53:                                               ; preds = %33
  %54 = add i64 %31, 1, !dbg !159
  br label %30, !dbg !159

55:                                               ; preds = %30
  %56 = add i64 %28, 1, !dbg !159
  br label %27, !dbg !159

57:                                               ; preds = %27
  ret i32 0, !dbg !160
}

define internal i32 @"main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !161 {
  %4 = alloca float, i64 8, align 64, !dbg !162
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !163
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !163
  %7 = load ptr, ptr %6, align 8, !dbg !163
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !163
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !164
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !164
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !164
  %11 = load ptr, ptr %10, align 8, !dbg !164
  %12 = getelementptr float, ptr %11, i64 3932192, !dbg !164
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !164
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !165
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !165
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !165
  %16 = load ptr, ptr %15, align 8, !dbg !165
  %17 = getelementptr float, ptr %16, i64 153232, !dbg !165
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !165
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !166
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !166
  %20 = zext i32 %19 to i64, !dbg !166
  %21 = sdiv i64 %20, 4, !dbg !166
  %22 = mul i64 %21, 4, !dbg !166
  %23 = icmp ne i64 %20, %22, !dbg !166
  %24 = icmp slt i64 %20, 0, !dbg !166
  %25 = and i1 %23, %24, !dbg !166
  %26 = add i64 %21, -1, !dbg !166
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !166
  %28 = srem i64 %20, 4, !dbg !166
  %29 = icmp slt i64 %28, 0, !dbg !166
  %30 = add nsw i64 %28, 4, !dbg !166
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !166
  %32 = mul nsw i64 %27, 28, !dbg !166
  %33 = mul nsw i64 %31, 28, !dbg !166
  br label %34, !dbg !166

34:                                               ; preds = %124, %3
  %35 = phi i64 [ %125, %124 ], [ 0, %3 ], !dbg !166
  %36 = icmp slt i64 %35, 32, !dbg !166
  br i1 %36, label %37, label %126, !dbg !166

37:                                               ; preds = %122, %34
  %38 = phi i64 [ %123, %122 ], [ 0, %34 ], !dbg !166
  %39 = icmp slt i64 %38, 28, !dbg !166
  br i1 %39, label %40, label %124, !dbg !166

40:                                               ; preds = %120, %37
  %41 = phi i64 [ %121, %120 ], [ 0, %37 ], !dbg !166
  %42 = icmp slt i64 %41, 28, !dbg !166
  br i1 %42, label %43, label %122, !dbg !166

43:                                               ; preds = %40
  %44 = sub i64 28, %41, !dbg !166
  %45 = icmp slt i64 %44, 8, !dbg !166
  %46 = select i1 %45, i64 %44, i64 8, !dbg !166
  %47 = trunc i64 %46 to i32, !dbg !167
  %48 = insertelement <8 x i32> poison, i32 %47, i32 0, !dbg !167
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !167
  %50 = icmp sgt <8 x i32> %49, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !167
  %51 = getelementptr float, ptr %4, i64 0, !dbg !167
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %51, i32 4, <8 x i1> %50), !dbg !167
  %52 = mul nsw i64 %41, 2, !dbg !166
  %53 = mul nsw i64 %31, 56, !dbg !166
  %54 = add i64 %52, %53, !dbg !166
  br label %55, !dbg !166

55:                                               ; preds = %100, %43
  %56 = phi i64 [ %101, %100 ], [ 0, %43 ], !dbg !166
  %57 = icmp slt i64 %56, 3, !dbg !166
  br i1 %57, label %58, label %102, !dbg !166

58:                                               ; preds = %98, %55
  %59 = phi i64 [ %99, %98 ], [ 0, %55 ], !dbg !166
  %60 = icmp slt i64 %59, 3, !dbg !166
  br i1 %60, label %61, label %100, !dbg !166

61:                                               ; preds = %58
  %62 = mul nsw i64 %38, 2, !dbg !166
  %63 = mul nsw i64 %27, 56, !dbg !166
  %64 = add i64 %62, %63, !dbg !166
  %65 = add i64 %64, %59, !dbg !166
  br label %66, !dbg !166

66:                                               ; preds = %96, %61
  %67 = phi i64 [ %97, %96 ], [ 0, %61 ], !dbg !166
  %68 = icmp slt i64 %67, %46, !dbg !166
  br i1 %68, label %69, label %98, !dbg !166

69:                                               ; preds = %72, %66
  %70 = phi i64 [ %95, %72 ], [ 0, %66 ], !dbg !166
  %71 = icmp slt i64 %70, 3, !dbg !166
  br i1 %71, label %72, label %96, !dbg !166

72:                                               ; preds = %69
  %73 = mul nsw i64 %67, 2, !dbg !166
  %74 = add i64 %54, %73, !dbg !166
  %75 = add i64 %74, %70, !dbg !166
  %76 = mul nuw nsw i64 %56, 51076, !dbg !166
  %77 = mul nuw nsw i64 %65, 226, !dbg !166
  %78 = add nuw nsw i64 %76, %77, !dbg !166
  %79 = add nuw nsw i64 %78, %75, !dbg !166
  %80 = getelementptr inbounds nuw float, ptr %7, i64 %79, !dbg !166
  %81 = load float, ptr %80, align 4, !dbg !166
  %82 = mul nuw nsw i64 %35, 27, !dbg !166
  %83 = mul nuw nsw i64 %56, 9, !dbg !166
  %84 = add nuw nsw i64 %82, %83, !dbg !166
  %85 = mul nuw nsw i64 %59, 3, !dbg !166
  %86 = add nuw nsw i64 %84, %85, !dbg !166
  %87 = add nuw nsw i64 %86, %70, !dbg !166
  %88 = getelementptr inbounds nuw float, ptr %12, i64 %87, !dbg !166
  %89 = load float, ptr %88, align 4, !dbg !166
  %90 = add nuw nsw i64 0, %67, !dbg !166
  %91 = getelementptr inbounds nuw float, ptr %4, i64 %90, !dbg !166
  %92 = load float, ptr %91, align 4, !dbg !166
  %93 = fmul contract float %81, %89, !dbg !168
  %94 = fadd contract float %92, %93, !dbg !169
  store float %94, ptr %91, align 4, !dbg !166
  %95 = add i64 %70, 1, !dbg !166
  br label %69, !dbg !166

96:                                               ; preds = %69
  %97 = add i64 %67, 1, !dbg !166
  br label %66, !dbg !166

98:                                               ; preds = %66
  %99 = add i64 %59, 1, !dbg !166
  br label %58, !dbg !166

100:                                              ; preds = %58
  %101 = add i64 %56, 1, !dbg !166
  br label %55, !dbg !166

102:                                              ; preds = %55
  %103 = icmp sgt i64 %46, 0, !dbg !170
  br i1 %103, label %104, label %120, !dbg !170

104:                                              ; preds = %102
  %105 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr %51, i32 4, <8 x i1> %50, <8 x float> poison), !dbg !170
  %106 = fadd contract <8 x float> %105, zeroinitializer, !dbg !171
  %107 = fcmp ult <8 x float> %106, zeroinitializer, !dbg !172
  %108 = select <8 x i1> %107, <8 x float> zeroinitializer, <8 x float> %106, !dbg !173
  %109 = fcmp ugt <8 x float> %108, splat (float 6.000000e+00), !dbg !174
  %110 = select <8 x i1> %109, <8 x float> splat (float 6.000000e+00), <8 x float> %108, !dbg !175
  %111 = add i64 %32, %38, !dbg !175
  %112 = add i64 %111, 1, !dbg !175
  %113 = add i64 %33, %41, !dbg !175
  %114 = add i64 %113, 1, !dbg !175
  %115 = mul i64 %35, 12996, !dbg !175
  %116 = mul i64 %112, 114, !dbg !175
  %117 = add i64 %115, %116, !dbg !175
  %118 = add i64 %117, %114, !dbg !175
  %119 = getelementptr float, ptr %17, i64 %118, !dbg !175
  call void @llvm.masked.store.v8f32.p0(<8 x float> %110, ptr %119, i32 4, <8 x i1> %50), !dbg !175
  br label %120, !dbg !170

120:                                              ; preds = %104, %102
  %121 = add i64 %41, 8, !dbg !166
  br label %40, !dbg !166

122:                                              ; preds = %40
  %123 = add i64 %38, 1, !dbg !166
  br label %37, !dbg !166

124:                                              ; preds = %37
  %125 = add i64 %35, 1, !dbg !166
  br label %34, !dbg !166

126:                                              ; preds = %34
  ret i32 0, !dbg !176
}

define internal i32 @"main_graph$async_dispatch_2_conv_112x112x32x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !177 {
  %4 = alloca float, i64 8, align 64, !dbg !178
  %5 = alloca float, i64 8, align 64, !dbg !178
  %6 = alloca float, i64 8, align 64, !dbg !179
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !180
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !180
  %9 = load ptr, ptr %8, align 8, !dbg !180
  %10 = getelementptr float, ptr %9, i64 153232, !dbg !180
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !180
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !181
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !181
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !181
  %14 = load ptr, ptr %13, align 8, !dbg !181
  %15 = getelementptr float, ptr %14, i64 3931904, !dbg !181
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !181
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !182
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !182
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !182
  %19 = load ptr, ptr %18, align 8, !dbg !182
  %20 = getelementptr float, ptr %19, i64 569104, !dbg !182
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !182
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !178
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !178
  %23 = zext i32 %22 to i64, !dbg !178
  %24 = sdiv i64 %23, 4, !dbg !178
  %25 = mul i64 %24, 4, !dbg !178
  %26 = icmp ne i64 %23, %25, !dbg !178
  %27 = icmp slt i64 %23, 0, !dbg !178
  %28 = and i1 %26, %27, !dbg !178
  %29 = add i64 %24, -1, !dbg !178
  %30 = select i1 %28, i64 %29, i64 %24, !dbg !178
  %31 = srem i64 %23, 4, !dbg !178
  %32 = icmp slt i64 %31, 0, !dbg !178
  %33 = add nsw i64 %31, 4, !dbg !178
  %34 = select i1 %32, i64 %33, i64 %31, !dbg !178
  %35 = mul nsw i64 %30, 28, !dbg !178
  %36 = mul nsw i64 %34, 28, !dbg !178
  br label %37, !dbg !178

37:                                               ; preds = %145, %3
  %38 = phi i64 [ %146, %145 ], [ 0, %3 ], !dbg !178
  %39 = icmp slt i64 %38, 28, !dbg !178
  br i1 %39, label %40, label %147, !dbg !178

40:                                               ; preds = %143, %37
  %41 = phi i64 [ %144, %143 ], [ 0, %37 ], !dbg !178
  %42 = icmp slt i64 %41, 28, !dbg !178
  br i1 %42, label %43, label %145, !dbg !178

43:                                               ; preds = %40
  %44 = sub i64 28, %41, !dbg !178
  %45 = icmp slt i64 %44, 8, !dbg !178
  %46 = select i1 %45, i64 %44, i64 8, !dbg !178
  %47 = trunc i64 %46 to i32, !dbg !183
  %48 = insertelement <8 x i32> poison, i32 %47, i32 0, !dbg !183
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !183
  %50 = icmp sgt <8 x i32> %49, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !183
  %51 = getelementptr float, ptr %6, i64 0, !dbg !183
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %51, i32 4, <8 x i1> %50), !dbg !183
  %52 = add i64 %41, %36, !dbg !178
  br label %53, !dbg !178

53:                                               ; preds = %141, %43
  %54 = phi i64 [ %142, %141 ], [ 0, %43 ], !dbg !178
  %55 = icmp slt i64 %54, 32, !dbg !178
  br i1 %55, label %56, label %143, !dbg !178

56:                                               ; preds = %59, %53
  %57 = phi i64 [ %64, %59 ], [ 0, %53 ], !dbg !178
  %58 = icmp slt i64 %57, %46, !dbg !178
  br i1 %58, label %59, label %65, !dbg !178

59:                                               ; preds = %56
  %60 = add nuw nsw i64 0, %57, !dbg !178
  %61 = getelementptr inbounds nuw float, ptr %6, i64 %60, !dbg !178
  %62 = load float, ptr %61, align 4, !dbg !178
  %63 = getelementptr inbounds nuw float, ptr %5, i64 %60, !dbg !178
  store float %62, ptr %63, align 4, !dbg !178
  %64 = add i64 %57, 1, !dbg !178
  br label %56, !dbg !178

65:                                               ; preds = %100, %56
  %66 = phi i64 [ %101, %100 ], [ 0, %56 ], !dbg !178
  %67 = icmp slt i64 %66, 3, !dbg !178
  br i1 %67, label %68, label %102, !dbg !178

68:                                               ; preds = %65
  %69 = add i64 %66, %38, !dbg !178
  %70 = add i64 %69, %35, !dbg !178
  br label %71, !dbg !178

71:                                               ; preds = %98, %68
  %72 = phi i64 [ %99, %98 ], [ 0, %68 ], !dbg !178
  %73 = icmp slt i64 %72, %46, !dbg !178
  br i1 %73, label %74, label %100, !dbg !178

74:                                               ; preds = %77, %71
  %75 = phi i64 [ %97, %77 ], [ 0, %71 ], !dbg !178
  %76 = icmp slt i64 %75, 3, !dbg !178
  br i1 %76, label %77, label %98, !dbg !178

77:                                               ; preds = %74
  %78 = add i64 %52, %72, !dbg !178
  %79 = add i64 %78, %75, !dbg !178
  %80 = mul nuw nsw i64 %54, 12996, !dbg !178
  %81 = mul nuw nsw i64 %70, 114, !dbg !178
  %82 = add nuw nsw i64 %80, %81, !dbg !178
  %83 = add nuw nsw i64 %82, %79, !dbg !178
  %84 = getelementptr inbounds nuw float, ptr %10, i64 %83, !dbg !178
  %85 = load float, ptr %84, align 4, !dbg !178
  %86 = mul nuw nsw i64 %54, 9, !dbg !178
  %87 = mul nuw nsw i64 %66, 3, !dbg !178
  %88 = add nuw nsw i64 %86, %87, !dbg !178
  %89 = add nuw nsw i64 %88, %75, !dbg !178
  %90 = getelementptr inbounds nuw float, ptr %15, i64 %89, !dbg !178
  %91 = load float, ptr %90, align 4, !dbg !178
  %92 = add nuw nsw i64 0, %72, !dbg !178
  %93 = getelementptr inbounds nuw float, ptr %5, i64 %92, !dbg !178
  %94 = load float, ptr %93, align 4, !dbg !178
  %95 = fmul contract float %85, %91, !dbg !184
  %96 = fadd contract float %94, %95, !dbg !185
  store float %96, ptr %93, align 4, !dbg !178
  %97 = add i64 %75, 1, !dbg !178
  br label %74, !dbg !178

98:                                               ; preds = %74
  %99 = add i64 %72, 1, !dbg !178
  br label %71, !dbg !178

100:                                              ; preds = %71
  %101 = add i64 %66, 1, !dbg !178
  br label %65, !dbg !178

102:                                              ; preds = %105, %65
  %103 = phi i64 [ %110, %105 ], [ 0, %65 ], !dbg !178
  %104 = icmp slt i64 %103, %46, !dbg !178
  br i1 %104, label %105, label %111, !dbg !178

105:                                              ; preds = %102
  %106 = add nuw nsw i64 0, %103, !dbg !178
  %107 = getelementptr inbounds nuw float, ptr %6, i64 %106, !dbg !178
  %108 = load float, ptr %107, align 4, !dbg !178
  %109 = getelementptr inbounds nuw float, ptr %4, i64 %106, !dbg !178
  store float %108, ptr %109, align 4, !dbg !178
  %110 = add i64 %103, 1, !dbg !178
  br label %102, !dbg !178

111:                                              ; preds = %114, %102
  %112 = phi i64 [ %119, %114 ], [ 0, %102 ], !dbg !178
  %113 = icmp slt i64 %112, %46, !dbg !178
  br i1 %113, label %114, label %120, !dbg !178

114:                                              ; preds = %111
  %115 = add nuw nsw i64 0, %112, !dbg !178
  %116 = getelementptr inbounds nuw float, ptr %5, i64 %115, !dbg !178
  %117 = load float, ptr %116, align 4, !dbg !178
  %118 = getelementptr inbounds nuw float, ptr %4, i64 %115, !dbg !178
  store float %117, ptr %118, align 4, !dbg !178
  %119 = add i64 %112, 1, !dbg !178
  br label %111, !dbg !178

120:                                              ; preds = %123, %111
  %121 = phi i64 [ %140, %123 ], [ 0, %111 ], !dbg !186
  %122 = icmp slt i64 %121, %46, !dbg !186
  br i1 %122, label %123, label %141, !dbg !186

123:                                              ; preds = %120
  %124 = add i64 0, %121, !dbg !186
  %125 = getelementptr float, ptr %4, i64 %124, !dbg !186
  %126 = load <1 x float>, ptr %125, align 4, !dbg !186
  %127 = fadd contract <1 x float> %126, zeroinitializer, !dbg !187
  %128 = fcmp ult <1 x float> %127, zeroinitializer, !dbg !188
  %129 = select <1 x i1> %128, <1 x float> zeroinitializer, <1 x float> %127, !dbg !189
  %130 = fcmp ugt <1 x float> %129, splat (float 6.000000e+00), !dbg !190
  %131 = select <1 x i1> %130, <1 x float> splat (float 6.000000e+00), <1 x float> %129, !dbg !191
  %132 = extractelement <1 x float> %131, i64 0, !dbg !186
  %133 = add i64 %35, %38, !dbg !186
  %134 = add i64 %52, %121, !dbg !186
  %135 = mul nuw nsw i64 %54, 12544, !dbg !186
  %136 = mul nuw nsw i64 %133, 112, !dbg !186
  %137 = add nuw nsw i64 %135, %136, !dbg !186
  %138 = add nuw nsw i64 %137, %134, !dbg !186
  %139 = getelementptr inbounds nuw float, ptr %20, i64 %138, !dbg !186
  store float %132, ptr %139, align 4, !dbg !186
  %140 = add i64 %121, 1, !dbg !186
  br label %120, !dbg !186

141:                                              ; preds = %120
  %142 = add i64 %54, 1, !dbg !178
  br label %53, !dbg !178

143:                                              ; preds = %53
  %144 = add i64 %41, 8, !dbg !178
  br label %40, !dbg !178

145:                                              ; preds = %40
  %146 = add i64 %38, 1, !dbg !178
  br label %37, !dbg !178

147:                                              ; preds = %37
  ret i32 0, !dbg !192
}

define internal i32 @"main_graph$async_dispatch_3_matmul_like_64x12544x32_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !193 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !194
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !194
  %6 = load ptr, ptr %5, align 8, !dbg !194
  %7 = getelementptr float, ptr %6, i64 569104, !dbg !194
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !194
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !195
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !195
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !195
  %11 = load ptr, ptr %10, align 8, !dbg !195
  %12 = getelementptr float, ptr %11, i64 3835904, !dbg !195
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !195
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !196
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !196
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !196
  %16 = load ptr, ptr %15, align 8, !dbg !196
  %17 = getelementptr float, ptr %16, i64 970512, !dbg !196
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !196
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !197
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !197
  %20 = zext i32 %19 to i64, !dbg !197
  %21 = mul nsw i64 %20, 64, !dbg !197
  br label %22, !dbg !197

22:                                               ; preds = %127, %3
  %23 = phi i64 [ %128, %127 ], [ 0, %3 ], !dbg !197
  %24 = icmp slt i64 %23, 64, !dbg !197
  br i1 %24, label %25, label %129, !dbg !197

25:                                               ; preds = %116, %22
  %26 = phi i64 [ %126, %116 ], [ 0, %22 ], !dbg !197
  %27 = icmp slt i64 %26, 64, !dbg !197
  br i1 %27, label %28, label %127, !dbg !197

28:                                               ; preds = %25
  %29 = add i64 %26, %21, !dbg !197
  br label %30, !dbg !197

30:                                               ; preds = %34, %28
  %31 = phi i64 [ %115, %34 ], [ 0, %28 ], !dbg !197
  %32 = phi <1 x float> [ %114, %34 ], [ zeroinitializer, %28 ], !dbg !197
  %33 = icmp slt i64 %31, 32, !dbg !197
  br i1 %33, label %34, label %116, !dbg !197

34:                                               ; preds = %30
  %35 = mul i64 %31, 12544, !dbg !197
  %36 = add i64 %35, %29, !dbg !197
  %37 = getelementptr float, ptr %7, i64 %36, !dbg !197
  %38 = load <1 x float>, ptr %37, align 4, !dbg !197
  %39 = add i64 %31, 1, !dbg !197
  %40 = mul i64 %39, 12544, !dbg !197
  %41 = add i64 %40, %29, !dbg !197
  %42 = getelementptr float, ptr %7, i64 %41, !dbg !197
  %43 = load <1 x float>, ptr %42, align 4, !dbg !197
  %44 = add i64 %31, 2, !dbg !197
  %45 = mul i64 %44, 12544, !dbg !197
  %46 = add i64 %45, %29, !dbg !197
  %47 = getelementptr float, ptr %7, i64 %46, !dbg !197
  %48 = load <1 x float>, ptr %47, align 4, !dbg !197
  %49 = add i64 %31, 3, !dbg !197
  %50 = mul i64 %49, 12544, !dbg !197
  %51 = add i64 %50, %29, !dbg !197
  %52 = getelementptr float, ptr %7, i64 %51, !dbg !197
  %53 = load <1 x float>, ptr %52, align 4, !dbg !197
  %54 = add i64 %31, 4, !dbg !197
  %55 = mul i64 %54, 12544, !dbg !197
  %56 = add i64 %55, %29, !dbg !197
  %57 = getelementptr float, ptr %7, i64 %56, !dbg !197
  %58 = load <1 x float>, ptr %57, align 4, !dbg !197
  %59 = add i64 %31, 5, !dbg !197
  %60 = mul i64 %59, 12544, !dbg !197
  %61 = add i64 %60, %29, !dbg !197
  %62 = getelementptr float, ptr %7, i64 %61, !dbg !197
  %63 = load <1 x float>, ptr %62, align 4, !dbg !197
  %64 = add i64 %31, 6, !dbg !197
  %65 = mul i64 %64, 12544, !dbg !197
  %66 = add i64 %65, %29, !dbg !197
  %67 = getelementptr float, ptr %7, i64 %66, !dbg !197
  %68 = load <1 x float>, ptr %67, align 4, !dbg !197
  %69 = add i64 %31, 7, !dbg !197
  %70 = mul i64 %69, 12544, !dbg !197
  %71 = add i64 %70, %29, !dbg !197
  %72 = getelementptr float, ptr %7, i64 %71, !dbg !197
  %73 = load <1 x float>, ptr %72, align 4, !dbg !197
  %74 = mul nuw nsw i64 %23, 32, !dbg !198
  %75 = add nuw nsw i64 %74, %31, !dbg !198
  %76 = getelementptr inbounds nuw float, ptr %12, i64 %75, !dbg !198
  %77 = load float, ptr %76, align 4, !dbg !198
  %78 = insertelement <1 x float> poison, float %77, i32 0, !dbg !198
  %79 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %38, <1 x float> %78, <1 x float> %32), !dbg !198
  %80 = add nuw nsw i64 %74, %39, !dbg !198
  %81 = getelementptr inbounds nuw float, ptr %12, i64 %80, !dbg !198
  %82 = load float, ptr %81, align 4, !dbg !198
  %83 = insertelement <1 x float> poison, float %82, i32 0, !dbg !198
  %84 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %43, <1 x float> %83, <1 x float> %79), !dbg !198
  %85 = add nuw nsw i64 %74, %44, !dbg !198
  %86 = getelementptr inbounds nuw float, ptr %12, i64 %85, !dbg !198
  %87 = load float, ptr %86, align 4, !dbg !198
  %88 = insertelement <1 x float> poison, float %87, i32 0, !dbg !198
  %89 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %48, <1 x float> %88, <1 x float> %84), !dbg !198
  %90 = add nuw nsw i64 %74, %49, !dbg !198
  %91 = getelementptr inbounds nuw float, ptr %12, i64 %90, !dbg !198
  %92 = load float, ptr %91, align 4, !dbg !198
  %93 = insertelement <1 x float> poison, float %92, i32 0, !dbg !198
  %94 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %53, <1 x float> %93, <1 x float> %89), !dbg !198
  %95 = add nuw nsw i64 %74, %54, !dbg !198
  %96 = getelementptr inbounds nuw float, ptr %12, i64 %95, !dbg !198
  %97 = load float, ptr %96, align 4, !dbg !198
  %98 = insertelement <1 x float> poison, float %97, i32 0, !dbg !198
  %99 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %58, <1 x float> %98, <1 x float> %94), !dbg !198
  %100 = add nuw nsw i64 %74, %59, !dbg !198
  %101 = getelementptr inbounds nuw float, ptr %12, i64 %100, !dbg !198
  %102 = load float, ptr %101, align 4, !dbg !198
  %103 = insertelement <1 x float> poison, float %102, i32 0, !dbg !198
  %104 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %63, <1 x float> %103, <1 x float> %99), !dbg !198
  %105 = add nuw nsw i64 %74, %64, !dbg !198
  %106 = getelementptr inbounds nuw float, ptr %12, i64 %105, !dbg !198
  %107 = load float, ptr %106, align 4, !dbg !198
  %108 = insertelement <1 x float> poison, float %107, i32 0, !dbg !198
  %109 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %68, <1 x float> %108, <1 x float> %104), !dbg !198
  %110 = add nuw nsw i64 %74, %69, !dbg !198
  %111 = getelementptr inbounds nuw float, ptr %12, i64 %110, !dbg !198
  %112 = load float, ptr %111, align 4, !dbg !198
  %113 = insertelement <1 x float> poison, float %112, i32 0, !dbg !198
  %114 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %113, <1 x float> %109), !dbg !198
  %115 = add i64 %31, 8, !dbg !197
  br label %30, !dbg !197

116:                                              ; preds = %30
  %117 = fadd contract <1 x float> %32, zeroinitializer, !dbg !199
  %118 = fcmp ult <1 x float> %117, zeroinitializer, !dbg !200
  %119 = select <1 x i1> %118, <1 x float> zeroinitializer, <1 x float> %117, !dbg !201
  %120 = fcmp ugt <1 x float> %119, splat (float 6.000000e+00), !dbg !202
  %121 = select <1 x i1> %120, <1 x float> splat (float 6.000000e+00), <1 x float> %119, !dbg !203
  %122 = extractelement <1 x float> %121, i64 0, !dbg !197
  %123 = mul nuw nsw i64 %23, 12544, !dbg !197
  %124 = add nuw nsw i64 %123, %29, !dbg !197
  %125 = getelementptr inbounds nuw float, ptr %17, i64 %124, !dbg !197
  store float %122, ptr %125, align 4, !dbg !197
  %126 = add i64 %26, 1, !dbg !197
  br label %25, !dbg !197

127:                                              ; preds = %25
  %128 = add i64 %23, 1, !dbg !197
  br label %22, !dbg !197

129:                                              ; preds = %22
  ret i32 0, !dbg !204
}

define internal i32 @"main_graph$async_dispatch_4_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !205 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !206
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !206
  %6 = load ptr, ptr %5, align 8, !dbg !206
  %7 = getelementptr float, ptr %6, i64 970512, !dbg !207
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !207
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !208
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !208
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !208
  %11 = load ptr, ptr %10, align 8, !dbg !208
  %12 = getelementptr float, ptr %11, i64 1773328, !dbg !209
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !209
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !210
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !210
  %15 = zext i32 %14 to i64, !dbg !210
  %16 = sdiv i64 %15, 4, !dbg !210
  %17 = mul i64 %16, 4, !dbg !210
  %18 = icmp ne i64 %15, %17, !dbg !210
  %19 = icmp slt i64 %15, 0, !dbg !210
  %20 = and i1 %18, %19, !dbg !210
  %21 = add i64 %16, -1, !dbg !210
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !210
  %23 = srem i64 %15, 4, !dbg !210
  %24 = icmp slt i64 %23, 0, !dbg !210
  %25 = add nsw i64 %23, 4, !dbg !210
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !210
  %27 = sdiv i64 %26, 2, !dbg !210
  %28 = srem i64 %15, 2, !dbg !210
  %29 = icmp slt i64 %28, 0, !dbg !210
  %30 = add nsw i64 %28, 2, !dbg !210
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !210
  %32 = mul nsw i64 %22, 16, !dbg !210
  %33 = mul nsw i64 %27, 56, !dbg !210
  %34 = mul nsw i64 %31, 56, !dbg !210
  br label %35, !dbg !210

35:                                               ; preds = %64, %3
  %36 = phi i64 [ %65, %64 ], [ 0, %3 ], !dbg !210
  %37 = icmp slt i64 %36, 16, !dbg !210
  br i1 %37, label %38, label %66, !dbg !210

38:                                               ; preds = %62, %35
  %39 = phi i64 [ %63, %62 ], [ 0, %35 ], !dbg !210
  %40 = icmp slt i64 %39, 56, !dbg !210
  br i1 %40, label %41, label %64, !dbg !210

41:                                               ; preds = %44, %38
  %42 = phi i64 [ %61, %44 ], [ 0, %38 ], !dbg !210
  %43 = icmp slt i64 %42, 56, !dbg !210
  br i1 %43, label %44, label %62, !dbg !210

44:                                               ; preds = %41
  %45 = add i64 %32, %36, !dbg !210
  %46 = add i64 %33, %39, !dbg !210
  %47 = add i64 %34, %42, !dbg !210
  %48 = mul i64 %45, 12544, !dbg !210
  %49 = mul i64 %46, 112, !dbg !210
  %50 = add i64 %48, %49, !dbg !210
  %51 = add i64 %50, %47, !dbg !210
  %52 = getelementptr float, ptr %7, i64 %51, !dbg !210
  %53 = load <8 x float>, ptr %52, align 4, !dbg !210
  %54 = add i64 %46, 1, !dbg !210
  %55 = add i64 %47, 1, !dbg !210
  %56 = mul i64 %45, 12996, !dbg !210
  %57 = mul i64 %54, 114, !dbg !210
  %58 = add i64 %56, %57, !dbg !210
  %59 = add i64 %58, %55, !dbg !210
  %60 = getelementptr float, ptr %12, i64 %59, !dbg !210
  store <8 x float> %53, ptr %60, align 4, !dbg !210
  %61 = add i64 %42, 8, !dbg !210
  br label %41, !dbg !210

62:                                               ; preds = %41
  %63 = add i64 %39, 1, !dbg !210
  br label %38, !dbg !210

64:                                               ; preds = %38
  %65 = add i64 %36, 1, !dbg !210
  br label %35, !dbg !210

66:                                               ; preds = %35
  ret i32 0, !dbg !211
}

define internal i32 @"main_graph$async_dispatch_5_conv_56x56x64x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !212 {
  %4 = alloca float, i64 8, align 64, !dbg !213
  %5 = alloca float, i64 8, align 64, !dbg !213
  %6 = alloca float, i64 8, align 64, !dbg !214
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !215
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !215
  %9 = load ptr, ptr %8, align 8, !dbg !215
  %10 = getelementptr float, ptr %9, i64 1773328, !dbg !215
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !215
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !216
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !216
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !216
  %14 = load ptr, ptr %13, align 8, !dbg !216
  %15 = getelementptr float, ptr %14, i64 3931328, !dbg !216
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !216
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !217
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !217
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !217
  %19 = load ptr, ptr %18, align 8, !dbg !217
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !217
  %20 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !213
  %21 = extractvalue %iree_hal_executable_workgroup_state_v0_t %20, 0, !dbg !213
  %22 = zext i32 %21 to i64, !dbg !213
  %23 = sdiv i64 %22, 4, !dbg !213
  %24 = mul i64 %23, 4, !dbg !213
  %25 = icmp ne i64 %22, %24, !dbg !213
  %26 = icmp slt i64 %22, 0, !dbg !213
  %27 = and i1 %25, %26, !dbg !213
  %28 = add i64 %23, -1, !dbg !213
  %29 = select i1 %27, i64 %28, i64 %23, !dbg !213
  %30 = srem i64 %22, 4, !dbg !213
  %31 = icmp slt i64 %30, 0, !dbg !213
  %32 = add nsw i64 %30, 4, !dbg !213
  %33 = select i1 %31, i64 %32, i64 %30, !dbg !213
  %34 = sdiv i64 %33, 2, !dbg !213
  %35 = srem i64 %22, 2, !dbg !213
  %36 = icmp slt i64 %35, 0, !dbg !213
  %37 = add nsw i64 %35, 2, !dbg !213
  %38 = select i1 %36, i64 %37, i64 %35, !dbg !213
  %39 = mul nsw i64 %29, 14, !dbg !213
  %40 = mul nsw i64 %34, 28, !dbg !213
  %41 = mul nsw i64 %38, 32, !dbg !213
  br label %42, !dbg !213

42:                                               ; preds = %158, %3
  %43 = phi i64 [ %159, %158 ], [ 0, %3 ], !dbg !213
  %44 = icmp slt i64 %43, 14, !dbg !213
  br i1 %44, label %45, label %160, !dbg !213

45:                                               ; preds = %156, %42
  %46 = phi i64 [ %157, %156 ], [ 0, %42 ], !dbg !213
  %47 = icmp slt i64 %46, 28, !dbg !213
  br i1 %47, label %48, label %158, !dbg !213

48:                                               ; preds = %45
  %49 = sub i64 28, %46, !dbg !213
  %50 = icmp slt i64 %49, 8, !dbg !213
  %51 = select i1 %50, i64 %49, i64 8, !dbg !213
  %52 = trunc i64 %51 to i32, !dbg !218
  %53 = insertelement <8 x i32> poison, i32 %52, i32 0, !dbg !218
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !218
  %55 = icmp sgt <8 x i32> %54, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !218
  %56 = getelementptr float, ptr %6, i64 0, !dbg !218
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %56, i32 4, <8 x i1> %55), !dbg !218
  %57 = mul nsw i64 %46, 2, !dbg !213
  %58 = mul nsw i64 %34, 56, !dbg !213
  %59 = add i64 %57, %58, !dbg !213
  br label %60, !dbg !213

60:                                               ; preds = %154, %48
  %61 = phi i64 [ %155, %154 ], [ 0, %48 ], !dbg !213
  %62 = icmp slt i64 %61, 32, !dbg !213
  br i1 %62, label %63, label %156, !dbg !213

63:                                               ; preds = %60
  %64 = add i64 %61, %41, !dbg !213
  br label %65, !dbg !213

65:                                               ; preds = %68, %63
  %66 = phi i64 [ %73, %68 ], [ 0, %63 ], !dbg !213
  %67 = icmp slt i64 %66, %51, !dbg !213
  br i1 %67, label %68, label %74, !dbg !213

68:                                               ; preds = %65
  %69 = add nuw nsw i64 0, %66, !dbg !213
  %70 = getelementptr inbounds nuw float, ptr %6, i64 %69, !dbg !213
  %71 = load float, ptr %70, align 4, !dbg !213
  %72 = getelementptr inbounds nuw float, ptr %5, i64 %69, !dbg !213
  store float %71, ptr %72, align 4, !dbg !213
  %73 = add i64 %66, 1, !dbg !213
  br label %65, !dbg !213

74:                                               ; preds = %112, %65
  %75 = phi i64 [ %113, %112 ], [ 0, %65 ], !dbg !213
  %76 = icmp slt i64 %75, 3, !dbg !213
  br i1 %76, label %77, label %114, !dbg !213

77:                                               ; preds = %74
  %78 = mul nsw i64 %43, 2, !dbg !213
  %79 = mul nsw i64 %29, 28, !dbg !213
  %80 = add i64 %78, %79, !dbg !213
  %81 = add i64 %80, %75, !dbg !213
  br label %82, !dbg !213

82:                                               ; preds = %110, %77
  %83 = phi i64 [ %111, %110 ], [ 0, %77 ], !dbg !213
  %84 = icmp slt i64 %83, %51, !dbg !213
  br i1 %84, label %85, label %112, !dbg !213

85:                                               ; preds = %88, %82
  %86 = phi i64 [ %109, %88 ], [ 0, %82 ], !dbg !213
  %87 = icmp slt i64 %86, 3, !dbg !213
  br i1 %87, label %88, label %110, !dbg !213

88:                                               ; preds = %85
  %89 = mul nsw i64 %83, 2, !dbg !213
  %90 = add i64 %59, %89, !dbg !213
  %91 = add i64 %90, %86, !dbg !213
  %92 = mul nuw nsw i64 %64, 12996, !dbg !213
  %93 = mul nuw nsw i64 %81, 114, !dbg !213
  %94 = add nuw nsw i64 %92, %93, !dbg !213
  %95 = add nuw nsw i64 %94, %91, !dbg !213
  %96 = getelementptr inbounds nuw float, ptr %10, i64 %95, !dbg !213
  %97 = load float, ptr %96, align 4, !dbg !213
  %98 = mul nuw nsw i64 %64, 9, !dbg !213
  %99 = mul nuw nsw i64 %75, 3, !dbg !213
  %100 = add nuw nsw i64 %98, %99, !dbg !213
  %101 = add nuw nsw i64 %100, %86, !dbg !213
  %102 = getelementptr inbounds nuw float, ptr %15, i64 %101, !dbg !213
  %103 = load float, ptr %102, align 4, !dbg !213
  %104 = add nuw nsw i64 0, %83, !dbg !213
  %105 = getelementptr inbounds nuw float, ptr %5, i64 %104, !dbg !213
  %106 = load float, ptr %105, align 4, !dbg !213
  %107 = fmul contract float %97, %103, !dbg !219
  %108 = fadd contract float %106, %107, !dbg !220
  store float %108, ptr %105, align 4, !dbg !213
  %109 = add i64 %86, 1, !dbg !213
  br label %85, !dbg !213

110:                                              ; preds = %85
  %111 = add i64 %83, 1, !dbg !213
  br label %82, !dbg !213

112:                                              ; preds = %82
  %113 = add i64 %75, 1, !dbg !213
  br label %74, !dbg !213

114:                                              ; preds = %117, %74
  %115 = phi i64 [ %122, %117 ], [ 0, %74 ], !dbg !213
  %116 = icmp slt i64 %115, %51, !dbg !213
  br i1 %116, label %117, label %123, !dbg !213

117:                                              ; preds = %114
  %118 = add nuw nsw i64 0, %115, !dbg !213
  %119 = getelementptr inbounds nuw float, ptr %6, i64 %118, !dbg !213
  %120 = load float, ptr %119, align 4, !dbg !213
  %121 = getelementptr inbounds nuw float, ptr %4, i64 %118, !dbg !213
  store float %120, ptr %121, align 4, !dbg !213
  %122 = add i64 %115, 1, !dbg !213
  br label %114, !dbg !213

123:                                              ; preds = %126, %114
  %124 = phi i64 [ %131, %126 ], [ 0, %114 ], !dbg !213
  %125 = icmp slt i64 %124, %51, !dbg !213
  br i1 %125, label %126, label %132, !dbg !213

126:                                              ; preds = %123
  %127 = add nuw nsw i64 0, %124, !dbg !213
  %128 = getelementptr inbounds nuw float, ptr %5, i64 %127, !dbg !213
  %129 = load float, ptr %128, align 4, !dbg !213
  %130 = getelementptr inbounds nuw float, ptr %4, i64 %127, !dbg !213
  store float %129, ptr %130, align 4, !dbg !213
  %131 = add i64 %124, 1, !dbg !213
  br label %123, !dbg !213

132:                                              ; preds = %135, %123
  %133 = phi i64 [ %153, %135 ], [ 0, %123 ], !dbg !221
  %134 = icmp slt i64 %133, %51, !dbg !221
  br i1 %134, label %135, label %154, !dbg !221

135:                                              ; preds = %132
  %136 = add i64 0, %133, !dbg !221
  %137 = getelementptr float, ptr %4, i64 %136, !dbg !221
  %138 = load <1 x float>, ptr %137, align 4, !dbg !221
  %139 = fadd contract <1 x float> %138, zeroinitializer, !dbg !222
  %140 = fcmp ult <1 x float> %139, zeroinitializer, !dbg !223
  %141 = select <1 x i1> %140, <1 x float> zeroinitializer, <1 x float> %139, !dbg !224
  %142 = fcmp ugt <1 x float> %141, splat (float 6.000000e+00), !dbg !225
  %143 = select <1 x i1> %142, <1 x float> splat (float 6.000000e+00), <1 x float> %141, !dbg !226
  %144 = extractelement <1 x float> %143, i64 0, !dbg !221
  %145 = add i64 %39, %43, !dbg !221
  %146 = add i64 %40, %46, !dbg !221
  %147 = add i64 %146, %133, !dbg !221
  %148 = mul nuw nsw i64 %64, 3136, !dbg !221
  %149 = mul nuw nsw i64 %145, 56, !dbg !221
  %150 = add nuw nsw i64 %148, %149, !dbg !221
  %151 = add nuw nsw i64 %150, %147, !dbg !221
  %152 = getelementptr inbounds nuw float, ptr %19, i64 %151, !dbg !221
  store float %144, ptr %152, align 4, !dbg !221
  %153 = add i64 %133, 1, !dbg !221
  br label %132, !dbg !221

154:                                              ; preds = %132
  %155 = add i64 %61, 1, !dbg !213
  br label %60, !dbg !213

156:                                              ; preds = %60
  %157 = add i64 %46, 8, !dbg !213
  br label %45, !dbg !213

158:                                              ; preds = %45
  %159 = add i64 %43, 1, !dbg !213
  br label %42, !dbg !213

160:                                              ; preds = %42
  ret i32 0, !dbg !227
}

define internal i32 @"main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !228 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !229
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !229
  %6 = load ptr, ptr %5, align 8, !dbg !229
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !229
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !230
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !230
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !230
  %10 = load ptr, ptr %9, align 8, !dbg !230
  %11 = getelementptr float, ptr %10, i64 3827712, !dbg !230
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !230
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !231
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !231
  %14 = getelementptr ptr, ptr %13, i32 2, !dbg !231
  %15 = load ptr, ptr %14, align 8, !dbg !231
  %16 = getelementptr float, ptr %15, i64 200704, !dbg !231
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !231
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !232
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !232
  %19 = zext i32 %18 to i64, !dbg !232
  %20 = sdiv i64 %19, 7, !dbg !232
  %21 = mul i64 %20, 7, !dbg !232
  %22 = icmp ne i64 %19, %21, !dbg !232
  %23 = icmp slt i64 %19, 0, !dbg !232
  %24 = and i1 %22, %23, !dbg !232
  %25 = add i64 %20, -1, !dbg !232
  %26 = select i1 %24, i64 %25, i64 %20, !dbg !232
  %27 = srem i64 %19, 7, !dbg !232
  %28 = icmp slt i64 %27, 0, !dbg !232
  %29 = add nsw i64 %27, 7, !dbg !232
  %30 = select i1 %28, i64 %29, i64 %27, !dbg !232
  %31 = mul nsw i64 %26, 64, !dbg !232
  %32 = mul nsw i64 %30, 8, !dbg !232
  br label %33, !dbg !232

33:                                               ; preds = %157, %3
  %34 = phi i64 [ %158, %157 ], [ 0, %3 ], !dbg !232
  %35 = icmp slt i64 %34, 64, !dbg !232
  br i1 %35, label %36, label %159, !dbg !232

36:                                               ; preds = %33
  %37 = add i64 %34, %31, !dbg !232
  br label %38, !dbg !232

38:                                               ; preds = %155, %36
  %39 = phi i64 [ %156, %155 ], [ 0, %36 ], !dbg !232
  %40 = icmp slt i64 %39, 8, !dbg !232
  br i1 %40, label %41, label %157, !dbg !232

41:                                               ; preds = %140, %38
  %42 = phi i64 [ %149, %140 ], [ 0, %38 ], !dbg !232
  %43 = icmp slt i64 %42, 56, !dbg !232
  br i1 %43, label %44, label %155, !dbg !232

44:                                               ; preds = %48, %41
  %45 = phi i64 [ %139, %48 ], [ 0, %41 ], !dbg !232
  %46 = phi <1 x float> [ %138, %48 ], [ zeroinitializer, %41 ], !dbg !232
  %47 = icmp slt i64 %45, 64, !dbg !232
  br i1 %47, label %48, label %140, !dbg !232

48:                                               ; preds = %44
  %49 = add i64 %39, %32, !dbg !232
  %50 = mul i64 %45, 3136, !dbg !232
  %51 = mul i64 %49, 56, !dbg !232
  %52 = add i64 %50, %51, !dbg !232
  %53 = add i64 %52, %42, !dbg !232
  %54 = getelementptr float, ptr %6, i64 %53, !dbg !232
  %55 = load <1 x float>, ptr %54, align 4, !dbg !232
  %56 = add i64 %45, 1, !dbg !232
  %57 = mul i64 %56, 3136, !dbg !232
  %58 = add i64 %57, %51, !dbg !232
  %59 = add i64 %58, %42, !dbg !232
  %60 = getelementptr float, ptr %6, i64 %59, !dbg !232
  %61 = load <1 x float>, ptr %60, align 4, !dbg !232
  %62 = add i64 %45, 2, !dbg !232
  %63 = mul i64 %62, 3136, !dbg !232
  %64 = add i64 %63, %51, !dbg !232
  %65 = add i64 %64, %42, !dbg !232
  %66 = getelementptr float, ptr %6, i64 %65, !dbg !232
  %67 = load <1 x float>, ptr %66, align 4, !dbg !232
  %68 = add i64 %45, 3, !dbg !232
  %69 = mul i64 %68, 3136, !dbg !232
  %70 = add i64 %69, %51, !dbg !232
  %71 = add i64 %70, %42, !dbg !232
  %72 = getelementptr float, ptr %6, i64 %71, !dbg !232
  %73 = load <1 x float>, ptr %72, align 4, !dbg !232
  %74 = add i64 %45, 4, !dbg !232
  %75 = mul i64 %74, 3136, !dbg !232
  %76 = add i64 %75, %51, !dbg !232
  %77 = add i64 %76, %42, !dbg !232
  %78 = getelementptr float, ptr %6, i64 %77, !dbg !232
  %79 = load <1 x float>, ptr %78, align 4, !dbg !232
  %80 = add i64 %45, 5, !dbg !232
  %81 = mul i64 %80, 3136, !dbg !232
  %82 = add i64 %81, %51, !dbg !232
  %83 = add i64 %82, %42, !dbg !232
  %84 = getelementptr float, ptr %6, i64 %83, !dbg !232
  %85 = load <1 x float>, ptr %84, align 4, !dbg !232
  %86 = add i64 %45, 6, !dbg !232
  %87 = mul i64 %86, 3136, !dbg !232
  %88 = add i64 %87, %51, !dbg !232
  %89 = add i64 %88, %42, !dbg !232
  %90 = getelementptr float, ptr %6, i64 %89, !dbg !232
  %91 = load <1 x float>, ptr %90, align 4, !dbg !232
  %92 = add i64 %45, 7, !dbg !232
  %93 = mul i64 %92, 3136, !dbg !232
  %94 = add i64 %93, %51, !dbg !232
  %95 = add i64 %94, %42, !dbg !232
  %96 = getelementptr float, ptr %6, i64 %95, !dbg !232
  %97 = load <1 x float>, ptr %96, align 4, !dbg !232
  %98 = mul nuw nsw i64 %37, 64, !dbg !233
  %99 = add nuw nsw i64 %98, %45, !dbg !233
  %100 = getelementptr inbounds nuw float, ptr %11, i64 %99, !dbg !233
  %101 = load float, ptr %100, align 4, !dbg !233
  %102 = insertelement <1 x float> poison, float %101, i32 0, !dbg !233
  %103 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %55, <1 x float> %102, <1 x float> %46), !dbg !233
  %104 = add nuw nsw i64 %98, %56, !dbg !233
  %105 = getelementptr inbounds nuw float, ptr %11, i64 %104, !dbg !233
  %106 = load float, ptr %105, align 4, !dbg !233
  %107 = insertelement <1 x float> poison, float %106, i32 0, !dbg !233
  %108 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %107, <1 x float> %103), !dbg !233
  %109 = add nuw nsw i64 %98, %62, !dbg !233
  %110 = getelementptr inbounds nuw float, ptr %11, i64 %109, !dbg !233
  %111 = load float, ptr %110, align 4, !dbg !233
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !233
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %112, <1 x float> %108), !dbg !233
  %114 = add nuw nsw i64 %98, %68, !dbg !233
  %115 = getelementptr inbounds nuw float, ptr %11, i64 %114, !dbg !233
  %116 = load float, ptr %115, align 4, !dbg !233
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !233
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %117, <1 x float> %113), !dbg !233
  %119 = add nuw nsw i64 %98, %74, !dbg !233
  %120 = getelementptr inbounds nuw float, ptr %11, i64 %119, !dbg !233
  %121 = load float, ptr %120, align 4, !dbg !233
  %122 = insertelement <1 x float> poison, float %121, i32 0, !dbg !233
  %123 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %79, <1 x float> %122, <1 x float> %118), !dbg !233
  %124 = add nuw nsw i64 %98, %80, !dbg !233
  %125 = getelementptr inbounds nuw float, ptr %11, i64 %124, !dbg !233
  %126 = load float, ptr %125, align 4, !dbg !233
  %127 = insertelement <1 x float> poison, float %126, i32 0, !dbg !233
  %128 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %85, <1 x float> %127, <1 x float> %123), !dbg !233
  %129 = add nuw nsw i64 %98, %86, !dbg !233
  %130 = getelementptr inbounds nuw float, ptr %11, i64 %129, !dbg !233
  %131 = load float, ptr %130, align 4, !dbg !233
  %132 = insertelement <1 x float> poison, float %131, i32 0, !dbg !233
  %133 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %91, <1 x float> %132, <1 x float> %128), !dbg !233
  %134 = add nuw nsw i64 %98, %92, !dbg !233
  %135 = getelementptr inbounds nuw float, ptr %11, i64 %134, !dbg !233
  %136 = load float, ptr %135, align 4, !dbg !233
  %137 = insertelement <1 x float> poison, float %136, i32 0, !dbg !233
  %138 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %97, <1 x float> %137, <1 x float> %133), !dbg !233
  %139 = add i64 %45, 8, !dbg !232
  br label %44, !dbg !232

140:                                              ; preds = %44
  %141 = fadd contract <1 x float> %46, zeroinitializer, !dbg !234
  %142 = fcmp ult <1 x float> %141, zeroinitializer, !dbg !235
  %143 = select <1 x i1> %142, <1 x float> zeroinitializer, <1 x float> %141, !dbg !236
  %144 = fcmp ugt <1 x float> %143, splat (float 6.000000e+00), !dbg !237
  %145 = select <1 x i1> %144, <1 x float> splat (float 6.000000e+00), <1 x float> %143, !dbg !238
  %146 = extractelement <1 x float> %145, i64 0, !dbg !232
  %147 = add i64 %32, %39, !dbg !232
  %148 = add i64 %147, 1, !dbg !232
  %149 = add i64 %42, 1, !dbg !232
  %150 = mul nuw nsw i64 %37, 3364, !dbg !232
  %151 = mul nuw nsw i64 %148, 58, !dbg !232
  %152 = add nuw nsw i64 %150, %151, !dbg !232
  %153 = add nuw nsw i64 %152, %149, !dbg !232
  %154 = getelementptr inbounds nuw float, ptr %16, i64 %153, !dbg !232
  store float %146, ptr %154, align 4, !dbg !232
  br label %41, !dbg !232

155:                                              ; preds = %41
  %156 = add i64 %39, 1, !dbg !232
  br label %38, !dbg !232

157:                                              ; preds = %38
  %158 = add i64 %34, 1, !dbg !232
  br label %33, !dbg !232

159:                                              ; preds = %33
  ret i32 0, !dbg !239
}

define internal i32 @"main_graph$async_dispatch_7_conv_56x56x128x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !240 {
  %4 = alloca float, i64 8, align 64, !dbg !241
  %5 = alloca float, i64 8, align 64, !dbg !241
  %6 = alloca float, i64 8, align 64, !dbg !242
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !243
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !243
  %9 = load ptr, ptr %8, align 8, !dbg !243
  %10 = getelementptr float, ptr %9, i64 200704, !dbg !243
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !243
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !244
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !244
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !244
  %14 = load ptr, ptr %13, align 8, !dbg !244
  %15 = getelementptr float, ptr %14, i64 3930176, !dbg !244
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !244
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !245
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !245
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !245
  %19 = load ptr, ptr %18, align 8, !dbg !245
  %20 = getelementptr float, ptr %19, i64 1773328, !dbg !245
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !245
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !241
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !241
  %23 = zext i32 %22 to i64, !dbg !241
  %24 = sdiv i64 %23, 8, !dbg !241
  %25 = mul i64 %24, 8, !dbg !241
  %26 = icmp ne i64 %23, %25, !dbg !241
  %27 = icmp slt i64 %23, 0, !dbg !241
  %28 = and i1 %26, %27, !dbg !241
  %29 = add i64 %24, -1, !dbg !241
  %30 = select i1 %28, i64 %29, i64 %24, !dbg !241
  %31 = srem i64 %23, 8, !dbg !241
  %32 = icmp slt i64 %31, 0, !dbg !241
  %33 = add nsw i64 %31, 8, !dbg !241
  %34 = select i1 %32, i64 %33, i64 %31, !dbg !241
  %35 = sdiv i64 %34, 4, !dbg !241
  %36 = srem i64 %23, 4, !dbg !241
  %37 = icmp slt i64 %36, 0, !dbg !241
  %38 = add nsw i64 %36, 4, !dbg !241
  %39 = select i1 %37, i64 %38, i64 %36, !dbg !241
  %40 = mul nsw i64 %30, 28, !dbg !241
  %41 = mul nsw i64 %35, 28, !dbg !241
  %42 = mul nsw i64 %39, 32, !dbg !241
  br label %43, !dbg !241

43:                                               ; preds = %153, %3
  %44 = phi i64 [ %154, %153 ], [ 0, %3 ], !dbg !241
  %45 = icmp slt i64 %44, 28, !dbg !241
  br i1 %45, label %46, label %155, !dbg !241

46:                                               ; preds = %151, %43
  %47 = phi i64 [ %152, %151 ], [ 0, %43 ], !dbg !241
  %48 = icmp slt i64 %47, 28, !dbg !241
  br i1 %48, label %49, label %153, !dbg !241

49:                                               ; preds = %46
  %50 = sub i64 28, %47, !dbg !241
  %51 = icmp slt i64 %50, 8, !dbg !241
  %52 = select i1 %51, i64 %50, i64 8, !dbg !241
  %53 = trunc i64 %52 to i32, !dbg !246
  %54 = insertelement <8 x i32> poison, i32 %53, i32 0, !dbg !246
  %55 = shufflevector <8 x i32> %54, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !246
  %56 = icmp sgt <8 x i32> %55, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !246
  %57 = getelementptr float, ptr %6, i64 0, !dbg !246
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %57, i32 4, <8 x i1> %56), !dbg !246
  %58 = add i64 %47, %41, !dbg !241
  br label %59, !dbg !241

59:                                               ; preds = %149, %49
  %60 = phi i64 [ %150, %149 ], [ 0, %49 ], !dbg !241
  %61 = icmp slt i64 %60, 32, !dbg !241
  br i1 %61, label %62, label %151, !dbg !241

62:                                               ; preds = %59
  %63 = add i64 %60, %42, !dbg !241
  br label %64, !dbg !241

64:                                               ; preds = %67, %62
  %65 = phi i64 [ %72, %67 ], [ 0, %62 ], !dbg !241
  %66 = icmp slt i64 %65, %52, !dbg !241
  br i1 %66, label %67, label %73, !dbg !241

67:                                               ; preds = %64
  %68 = add nuw nsw i64 0, %65, !dbg !241
  %69 = getelementptr inbounds nuw float, ptr %6, i64 %68, !dbg !241
  %70 = load float, ptr %69, align 4, !dbg !241
  %71 = getelementptr inbounds nuw float, ptr %5, i64 %68, !dbg !241
  store float %70, ptr %71, align 4, !dbg !241
  %72 = add i64 %65, 1, !dbg !241
  br label %64, !dbg !241

73:                                               ; preds = %108, %64
  %74 = phi i64 [ %109, %108 ], [ 0, %64 ], !dbg !241
  %75 = icmp slt i64 %74, 3, !dbg !241
  br i1 %75, label %76, label %110, !dbg !241

76:                                               ; preds = %73
  %77 = add i64 %74, %44, !dbg !241
  %78 = add i64 %77, %40, !dbg !241
  br label %79, !dbg !241

79:                                               ; preds = %106, %76
  %80 = phi i64 [ %107, %106 ], [ 0, %76 ], !dbg !241
  %81 = icmp slt i64 %80, %52, !dbg !241
  br i1 %81, label %82, label %108, !dbg !241

82:                                               ; preds = %85, %79
  %83 = phi i64 [ %105, %85 ], [ 0, %79 ], !dbg !241
  %84 = icmp slt i64 %83, 3, !dbg !241
  br i1 %84, label %85, label %106, !dbg !241

85:                                               ; preds = %82
  %86 = add i64 %58, %80, !dbg !241
  %87 = add i64 %86, %83, !dbg !241
  %88 = mul nuw nsw i64 %63, 3364, !dbg !241
  %89 = mul nuw nsw i64 %78, 58, !dbg !241
  %90 = add nuw nsw i64 %88, %89, !dbg !241
  %91 = add nuw nsw i64 %90, %87, !dbg !241
  %92 = getelementptr inbounds nuw float, ptr %10, i64 %91, !dbg !241
  %93 = load float, ptr %92, align 4, !dbg !241
  %94 = mul nuw nsw i64 %63, 9, !dbg !241
  %95 = mul nuw nsw i64 %74, 3, !dbg !241
  %96 = add nuw nsw i64 %94, %95, !dbg !241
  %97 = add nuw nsw i64 %96, %83, !dbg !241
  %98 = getelementptr inbounds nuw float, ptr %15, i64 %97, !dbg !241
  %99 = load float, ptr %98, align 4, !dbg !241
  %100 = add nuw nsw i64 0, %80, !dbg !241
  %101 = getelementptr inbounds nuw float, ptr %5, i64 %100, !dbg !241
  %102 = load float, ptr %101, align 4, !dbg !241
  %103 = fmul contract float %93, %99, !dbg !247
  %104 = fadd contract float %102, %103, !dbg !248
  store float %104, ptr %101, align 4, !dbg !241
  %105 = add i64 %83, 1, !dbg !241
  br label %82, !dbg !241

106:                                              ; preds = %82
  %107 = add i64 %80, 1, !dbg !241
  br label %79, !dbg !241

108:                                              ; preds = %79
  %109 = add i64 %74, 1, !dbg !241
  br label %73, !dbg !241

110:                                              ; preds = %113, %73
  %111 = phi i64 [ %118, %113 ], [ 0, %73 ], !dbg !241
  %112 = icmp slt i64 %111, %52, !dbg !241
  br i1 %112, label %113, label %119, !dbg !241

113:                                              ; preds = %110
  %114 = add nuw nsw i64 0, %111, !dbg !241
  %115 = getelementptr inbounds nuw float, ptr %6, i64 %114, !dbg !241
  %116 = load float, ptr %115, align 4, !dbg !241
  %117 = getelementptr inbounds nuw float, ptr %4, i64 %114, !dbg !241
  store float %116, ptr %117, align 4, !dbg !241
  %118 = add i64 %111, 1, !dbg !241
  br label %110, !dbg !241

119:                                              ; preds = %122, %110
  %120 = phi i64 [ %127, %122 ], [ 0, %110 ], !dbg !241
  %121 = icmp slt i64 %120, %52, !dbg !241
  br i1 %121, label %122, label %128, !dbg !241

122:                                              ; preds = %119
  %123 = add nuw nsw i64 0, %120, !dbg !241
  %124 = getelementptr inbounds nuw float, ptr %5, i64 %123, !dbg !241
  %125 = load float, ptr %124, align 4, !dbg !241
  %126 = getelementptr inbounds nuw float, ptr %4, i64 %123, !dbg !241
  store float %125, ptr %126, align 4, !dbg !241
  %127 = add i64 %120, 1, !dbg !241
  br label %119, !dbg !241

128:                                              ; preds = %131, %119
  %129 = phi i64 [ %148, %131 ], [ 0, %119 ], !dbg !249
  %130 = icmp slt i64 %129, %52, !dbg !249
  br i1 %130, label %131, label %149, !dbg !249

131:                                              ; preds = %128
  %132 = add i64 0, %129, !dbg !249
  %133 = getelementptr float, ptr %4, i64 %132, !dbg !249
  %134 = load <1 x float>, ptr %133, align 4, !dbg !249
  %135 = fadd contract <1 x float> %134, zeroinitializer, !dbg !250
  %136 = fcmp ult <1 x float> %135, zeroinitializer, !dbg !251
  %137 = select <1 x i1> %136, <1 x float> zeroinitializer, <1 x float> %135, !dbg !252
  %138 = fcmp ugt <1 x float> %137, splat (float 6.000000e+00), !dbg !253
  %139 = select <1 x i1> %138, <1 x float> splat (float 6.000000e+00), <1 x float> %137, !dbg !254
  %140 = extractelement <1 x float> %139, i64 0, !dbg !249
  %141 = add i64 %40, %44, !dbg !249
  %142 = add i64 %58, %129, !dbg !249
  %143 = mul nuw nsw i64 %63, 3136, !dbg !249
  %144 = mul nuw nsw i64 %141, 56, !dbg !249
  %145 = add nuw nsw i64 %143, %144, !dbg !249
  %146 = add nuw nsw i64 %145, %142, !dbg !249
  %147 = getelementptr inbounds nuw float, ptr %20, i64 %146, !dbg !249
  store float %140, ptr %147, align 4, !dbg !249
  %148 = add i64 %129, 1, !dbg !249
  br label %128, !dbg !249

149:                                              ; preds = %128
  %150 = add i64 %60, 1, !dbg !241
  br label %59, !dbg !241

151:                                              ; preds = %59
  %152 = add i64 %47, 8, !dbg !241
  br label %46, !dbg !241

153:                                              ; preds = %46
  %154 = add i64 %44, 1, !dbg !241
  br label %43, !dbg !241

155:                                              ; preds = %43
  ret i32 0, !dbg !255
}

define internal i32 @"main_graph$async_dispatch_8_matmul_like_128x3136x128_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !256 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !257
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !257
  %6 = load ptr, ptr %5, align 8, !dbg !257
  %7 = getelementptr float, ptr %6, i64 1773328, !dbg !257
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !257
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !258
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !258
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !258
  %11 = load ptr, ptr %10, align 8, !dbg !258
  %12 = getelementptr float, ptr %11, i64 3811328, !dbg !258
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !258
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !259
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !259
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !259
  %16 = load ptr, ptr %15, align 8, !dbg !259
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !259
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !260
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !260
  %19 = zext i32 %18 to i64, !dbg !260
  %20 = sdiv i64 %19, 49, !dbg !260
  %21 = mul i64 %20, 49, !dbg !260
  %22 = icmp ne i64 %19, %21, !dbg !260
  %23 = icmp slt i64 %19, 0, !dbg !260
  %24 = and i1 %22, %23, !dbg !260
  %25 = add i64 %20, -1, !dbg !260
  %26 = select i1 %24, i64 %25, i64 %20, !dbg !260
  %27 = srem i64 %19, 49, !dbg !260
  %28 = icmp slt i64 %27, 0, !dbg !260
  %29 = add nsw i64 %27, 49, !dbg !260
  %30 = select i1 %28, i64 %29, i64 %27, !dbg !260
  %31 = mul nsw i64 %26, 64, !dbg !260
  %32 = mul nsw i64 %30, 64, !dbg !260
  br label %33, !dbg !260

33:                                               ; preds = %140, %3
  %34 = phi i64 [ %141, %140 ], [ 0, %3 ], !dbg !260
  %35 = icmp slt i64 %34, 64, !dbg !260
  br i1 %35, label %36, label %142, !dbg !260

36:                                               ; preds = %33
  %37 = add i64 %34, %31, !dbg !260
  br label %38, !dbg !260

38:                                               ; preds = %129, %36
  %39 = phi i64 [ %139, %129 ], [ 0, %36 ], !dbg !260
  %40 = icmp slt i64 %39, 64, !dbg !260
  br i1 %40, label %41, label %140, !dbg !260

41:                                               ; preds = %38
  %42 = add i64 %39, %32, !dbg !260
  br label %43, !dbg !260

43:                                               ; preds = %47, %41
  %44 = phi i64 [ %128, %47 ], [ 0, %41 ], !dbg !260
  %45 = phi <1 x float> [ %127, %47 ], [ zeroinitializer, %41 ], !dbg !260
  %46 = icmp slt i64 %44, 128, !dbg !260
  br i1 %46, label %47, label %129, !dbg !260

47:                                               ; preds = %43
  %48 = mul i64 %44, 3136, !dbg !260
  %49 = add i64 %48, %42, !dbg !260
  %50 = getelementptr float, ptr %7, i64 %49, !dbg !260
  %51 = load <1 x float>, ptr %50, align 4, !dbg !260
  %52 = add i64 %44, 1, !dbg !260
  %53 = mul i64 %52, 3136, !dbg !260
  %54 = add i64 %53, %42, !dbg !260
  %55 = getelementptr float, ptr %7, i64 %54, !dbg !260
  %56 = load <1 x float>, ptr %55, align 4, !dbg !260
  %57 = add i64 %44, 2, !dbg !260
  %58 = mul i64 %57, 3136, !dbg !260
  %59 = add i64 %58, %42, !dbg !260
  %60 = getelementptr float, ptr %7, i64 %59, !dbg !260
  %61 = load <1 x float>, ptr %60, align 4, !dbg !260
  %62 = add i64 %44, 3, !dbg !260
  %63 = mul i64 %62, 3136, !dbg !260
  %64 = add i64 %63, %42, !dbg !260
  %65 = getelementptr float, ptr %7, i64 %64, !dbg !260
  %66 = load <1 x float>, ptr %65, align 4, !dbg !260
  %67 = add i64 %44, 4, !dbg !260
  %68 = mul i64 %67, 3136, !dbg !260
  %69 = add i64 %68, %42, !dbg !260
  %70 = getelementptr float, ptr %7, i64 %69, !dbg !260
  %71 = load <1 x float>, ptr %70, align 4, !dbg !260
  %72 = add i64 %44, 5, !dbg !260
  %73 = mul i64 %72, 3136, !dbg !260
  %74 = add i64 %73, %42, !dbg !260
  %75 = getelementptr float, ptr %7, i64 %74, !dbg !260
  %76 = load <1 x float>, ptr %75, align 4, !dbg !260
  %77 = add i64 %44, 6, !dbg !260
  %78 = mul i64 %77, 3136, !dbg !260
  %79 = add i64 %78, %42, !dbg !260
  %80 = getelementptr float, ptr %7, i64 %79, !dbg !260
  %81 = load <1 x float>, ptr %80, align 4, !dbg !260
  %82 = add i64 %44, 7, !dbg !260
  %83 = mul i64 %82, 3136, !dbg !260
  %84 = add i64 %83, %42, !dbg !260
  %85 = getelementptr float, ptr %7, i64 %84, !dbg !260
  %86 = load <1 x float>, ptr %85, align 4, !dbg !260
  %87 = mul nuw nsw i64 %37, 128, !dbg !261
  %88 = add nuw nsw i64 %87, %44, !dbg !261
  %89 = getelementptr inbounds nuw float, ptr %12, i64 %88, !dbg !261
  %90 = load float, ptr %89, align 4, !dbg !261
  %91 = insertelement <1 x float> poison, float %90, i32 0, !dbg !261
  %92 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %51, <1 x float> %91, <1 x float> %45), !dbg !261
  %93 = add nuw nsw i64 %87, %52, !dbg !261
  %94 = getelementptr inbounds nuw float, ptr %12, i64 %93, !dbg !261
  %95 = load float, ptr %94, align 4, !dbg !261
  %96 = insertelement <1 x float> poison, float %95, i32 0, !dbg !261
  %97 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %56, <1 x float> %96, <1 x float> %92), !dbg !261
  %98 = add nuw nsw i64 %87, %57, !dbg !261
  %99 = getelementptr inbounds nuw float, ptr %12, i64 %98, !dbg !261
  %100 = load float, ptr %99, align 4, !dbg !261
  %101 = insertelement <1 x float> poison, float %100, i32 0, !dbg !261
  %102 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %101, <1 x float> %97), !dbg !261
  %103 = add nuw nsw i64 %87, %62, !dbg !261
  %104 = getelementptr inbounds nuw float, ptr %12, i64 %103, !dbg !261
  %105 = load float, ptr %104, align 4, !dbg !261
  %106 = insertelement <1 x float> poison, float %105, i32 0, !dbg !261
  %107 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %106, <1 x float> %102), !dbg !261
  %108 = add nuw nsw i64 %87, %67, !dbg !261
  %109 = getelementptr inbounds nuw float, ptr %12, i64 %108, !dbg !261
  %110 = load float, ptr %109, align 4, !dbg !261
  %111 = insertelement <1 x float> poison, float %110, i32 0, !dbg !261
  %112 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %71, <1 x float> %111, <1 x float> %107), !dbg !261
  %113 = add nuw nsw i64 %87, %72, !dbg !261
  %114 = getelementptr inbounds nuw float, ptr %12, i64 %113, !dbg !261
  %115 = load float, ptr %114, align 4, !dbg !261
  %116 = insertelement <1 x float> poison, float %115, i32 0, !dbg !261
  %117 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %76, <1 x float> %116, <1 x float> %112), !dbg !261
  %118 = add nuw nsw i64 %87, %77, !dbg !261
  %119 = getelementptr inbounds nuw float, ptr %12, i64 %118, !dbg !261
  %120 = load float, ptr %119, align 4, !dbg !261
  %121 = insertelement <1 x float> poison, float %120, i32 0, !dbg !261
  %122 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %81, <1 x float> %121, <1 x float> %117), !dbg !261
  %123 = add nuw nsw i64 %87, %82, !dbg !261
  %124 = getelementptr inbounds nuw float, ptr %12, i64 %123, !dbg !261
  %125 = load float, ptr %124, align 4, !dbg !261
  %126 = insertelement <1 x float> poison, float %125, i32 0, !dbg !261
  %127 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %86, <1 x float> %126, <1 x float> %122), !dbg !261
  %128 = add i64 %44, 8, !dbg !260
  br label %43, !dbg !260

129:                                              ; preds = %43
  %130 = fadd contract <1 x float> %45, zeroinitializer, !dbg !262
  %131 = fcmp ult <1 x float> %130, zeroinitializer, !dbg !263
  %132 = select <1 x i1> %131, <1 x float> zeroinitializer, <1 x float> %130, !dbg !264
  %133 = fcmp ugt <1 x float> %132, splat (float 6.000000e+00), !dbg !265
  %134 = select <1 x i1> %133, <1 x float> splat (float 6.000000e+00), <1 x float> %132, !dbg !266
  %135 = extractelement <1 x float> %134, i64 0, !dbg !260
  %136 = mul nuw nsw i64 %37, 3136, !dbg !260
  %137 = add nuw nsw i64 %136, %42, !dbg !260
  %138 = getelementptr inbounds nuw float, ptr %16, i64 %137, !dbg !260
  store float %135, ptr %138, align 4, !dbg !260
  %139 = add i64 %39, 1, !dbg !260
  br label %38, !dbg !260

140:                                              ; preds = %38
  %141 = add i64 %34, 1, !dbg !260
  br label %33, !dbg !260

142:                                              ; preds = %33
  ret i32 0, !dbg !267
}

define internal i32 @"main_graph$async_dispatch_9_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !268 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !269
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !269
  %6 = load ptr, ptr %5, align 8, !dbg !269
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !270
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !271
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !271
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !271
  %10 = load ptr, ptr %9, align 8, !dbg !271
  %11 = getelementptr float, ptr %10, i64 401408, !dbg !272
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !272
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !273
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !273
  %14 = zext i32 %13 to i64, !dbg !273
  %15 = sdiv i64 %14, 2, !dbg !273
  %16 = mul i64 %15, 2, !dbg !273
  %17 = icmp ne i64 %14, %16, !dbg !273
  %18 = icmp slt i64 %14, 0, !dbg !273
  %19 = and i1 %17, %18, !dbg !273
  %20 = add i64 %15, -1, !dbg !273
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !273
  %22 = srem i64 %14, 2, !dbg !273
  %23 = icmp slt i64 %22, 0, !dbg !273
  %24 = add nsw i64 %22, 2, !dbg !273
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !273
  %26 = mul nsw i64 %21, 16, !dbg !273
  %27 = mul nsw i64 %25, 28, !dbg !273
  br label %28, !dbg !273

28:                                               ; preds = %56, %3
  %29 = phi i64 [ %57, %56 ], [ 0, %3 ], !dbg !273
  %30 = icmp slt i64 %29, 16, !dbg !273
  br i1 %30, label %31, label %58, !dbg !273

31:                                               ; preds = %54, %28
  %32 = phi i64 [ %55, %54 ], [ 0, %28 ], !dbg !273
  %33 = icmp slt i64 %32, 28, !dbg !273
  br i1 %33, label %34, label %56, !dbg !273

34:                                               ; preds = %37, %31
  %35 = phi i64 [ %53, %37 ], [ 0, %31 ], !dbg !273
  %36 = icmp slt i64 %35, 56, !dbg !273
  br i1 %36, label %37, label %54, !dbg !273

37:                                               ; preds = %34
  %38 = add i64 %26, %29, !dbg !273
  %39 = add i64 %27, %32, !dbg !273
  %40 = mul i64 %38, 3136, !dbg !273
  %41 = mul i64 %39, 56, !dbg !273
  %42 = add i64 %40, %41, !dbg !273
  %43 = add i64 %42, %35, !dbg !273
  %44 = getelementptr float, ptr %6, i64 %43, !dbg !273
  %45 = load <8 x float>, ptr %44, align 4, !dbg !273
  %46 = add i64 %39, 1, !dbg !273
  %47 = add i64 %35, 1, !dbg !273
  %48 = mul i64 %38, 3364, !dbg !273
  %49 = mul i64 %46, 58, !dbg !273
  %50 = add i64 %48, %49, !dbg !273
  %51 = add i64 %50, %47, !dbg !273
  %52 = getelementptr float, ptr %11, i64 %51, !dbg !273
  store <8 x float> %45, ptr %52, align 4, !dbg !273
  %53 = add i64 %35, 8, !dbg !273
  br label %34, !dbg !273

54:                                               ; preds = %34
  %55 = add i64 %32, 1, !dbg !273
  br label %31, !dbg !273

56:                                               ; preds = %31
  %57 = add i64 %29, 1, !dbg !273
  br label %28, !dbg !273

58:                                               ; preds = %28
  ret i32 0, !dbg !274
}

define internal i32 @"main_graph$async_dispatch_10_conv_28x28x128x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !275 {
  %4 = alloca float, i64 8, align 64, !dbg !276
  %5 = alloca float, i64 8, align 64, !dbg !276
  %6 = alloca float, i64 8, align 64, !dbg !277
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !278
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !278
  %9 = load ptr, ptr %8, align 8, !dbg !278
  %10 = getelementptr float, ptr %9, i64 401408, !dbg !278
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !278
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !279
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !279
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !279
  %14 = load ptr, ptr %13, align 8, !dbg !279
  %15 = getelementptr float, ptr %14, i64 3929024, !dbg !279
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !279
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !280
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !280
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !280
  %19 = load ptr, ptr %18, align 8, !dbg !280
  %20 = getelementptr float, ptr %19, i64 832000, !dbg !280
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !280
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !276
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !276
  %23 = zext i32 %22 to i64, !dbg !276
  %24 = sdiv i64 %23, 4, !dbg !276
  %25 = mul i64 %24, 4, !dbg !276
  %26 = icmp ne i64 %23, %25, !dbg !276
  %27 = icmp slt i64 %23, 0, !dbg !276
  %28 = and i1 %26, %27, !dbg !276
  %29 = add i64 %24, -1, !dbg !276
  %30 = select i1 %28, i64 %29, i64 %24, !dbg !276
  %31 = srem i64 %23, 4, !dbg !276
  %32 = icmp slt i64 %31, 0, !dbg !276
  %33 = add nsw i64 %31, 4, !dbg !276
  %34 = select i1 %32, i64 %33, i64 %31, !dbg !276
  %35 = mul nsw i64 %30, 7, !dbg !276
  %36 = mul nsw i64 %34, 32, !dbg !276
  br label %37, !dbg !276

37:                                               ; preds = %150, %3
  %38 = phi i64 [ %151, %150 ], [ 0, %3 ], !dbg !276
  %39 = icmp slt i64 %38, 7, !dbg !276
  br i1 %39, label %40, label %152, !dbg !276

40:                                               ; preds = %148, %37
  %41 = phi i64 [ %149, %148 ], [ 0, %37 ], !dbg !276
  %42 = icmp slt i64 %41, 28, !dbg !276
  br i1 %42, label %43, label %150, !dbg !276

43:                                               ; preds = %40
  %44 = sub i64 28, %41, !dbg !276
  %45 = icmp slt i64 %44, 8, !dbg !276
  %46 = select i1 %45, i64 %44, i64 8, !dbg !276
  %47 = trunc i64 %46 to i32, !dbg !281
  %48 = insertelement <8 x i32> poison, i32 %47, i32 0, !dbg !281
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !281
  %50 = icmp sgt <8 x i32> %49, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !281
  %51 = getelementptr float, ptr %6, i64 0, !dbg !281
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %51, i32 4, <8 x i1> %50), !dbg !281
  %52 = mul nsw i64 %41, 2, !dbg !276
  br label %53, !dbg !276

53:                                               ; preds = %146, %43
  %54 = phi i64 [ %147, %146 ], [ 0, %43 ], !dbg !276
  %55 = icmp slt i64 %54, 32, !dbg !276
  br i1 %55, label %56, label %148, !dbg !276

56:                                               ; preds = %53
  %57 = add i64 %54, %36, !dbg !276
  br label %58, !dbg !276

58:                                               ; preds = %61, %56
  %59 = phi i64 [ %66, %61 ], [ 0, %56 ], !dbg !276
  %60 = icmp slt i64 %59, %46, !dbg !276
  br i1 %60, label %61, label %67, !dbg !276

61:                                               ; preds = %58
  %62 = add nuw nsw i64 0, %59, !dbg !276
  %63 = getelementptr inbounds nuw float, ptr %6, i64 %62, !dbg !276
  %64 = load float, ptr %63, align 4, !dbg !276
  %65 = getelementptr inbounds nuw float, ptr %5, i64 %62, !dbg !276
  store float %64, ptr %65, align 4, !dbg !276
  %66 = add i64 %59, 1, !dbg !276
  br label %58, !dbg !276

67:                                               ; preds = %105, %58
  %68 = phi i64 [ %106, %105 ], [ 0, %58 ], !dbg !276
  %69 = icmp slt i64 %68, 3, !dbg !276
  br i1 %69, label %70, label %107, !dbg !276

70:                                               ; preds = %67
  %71 = mul nsw i64 %38, 2, !dbg !276
  %72 = mul nsw i64 %30, 14, !dbg !276
  %73 = add i64 %71, %72, !dbg !276
  %74 = add i64 %73, %68, !dbg !276
  br label %75, !dbg !276

75:                                               ; preds = %103, %70
  %76 = phi i64 [ %104, %103 ], [ 0, %70 ], !dbg !276
  %77 = icmp slt i64 %76, %46, !dbg !276
  br i1 %77, label %78, label %105, !dbg !276

78:                                               ; preds = %81, %75
  %79 = phi i64 [ %102, %81 ], [ 0, %75 ], !dbg !276
  %80 = icmp slt i64 %79, 3, !dbg !276
  br i1 %80, label %81, label %103, !dbg !276

81:                                               ; preds = %78
  %82 = mul nsw i64 %76, 2, !dbg !276
  %83 = add i64 %52, %82, !dbg !276
  %84 = add i64 %83, %79, !dbg !276
  %85 = mul nuw nsw i64 %57, 3364, !dbg !276
  %86 = mul nuw nsw i64 %74, 58, !dbg !276
  %87 = add nuw nsw i64 %85, %86, !dbg !276
  %88 = add nuw nsw i64 %87, %84, !dbg !276
  %89 = getelementptr inbounds nuw float, ptr %10, i64 %88, !dbg !276
  %90 = load float, ptr %89, align 4, !dbg !276
  %91 = mul nuw nsw i64 %57, 9, !dbg !276
  %92 = mul nuw nsw i64 %68, 3, !dbg !276
  %93 = add nuw nsw i64 %91, %92, !dbg !276
  %94 = add nuw nsw i64 %93, %79, !dbg !276
  %95 = getelementptr inbounds nuw float, ptr %15, i64 %94, !dbg !276
  %96 = load float, ptr %95, align 4, !dbg !276
  %97 = add nuw nsw i64 0, %76, !dbg !276
  %98 = getelementptr inbounds nuw float, ptr %5, i64 %97, !dbg !276
  %99 = load float, ptr %98, align 4, !dbg !276
  %100 = fmul contract float %90, %96, !dbg !282
  %101 = fadd contract float %99, %100, !dbg !283
  store float %101, ptr %98, align 4, !dbg !276
  %102 = add i64 %79, 1, !dbg !276
  br label %78, !dbg !276

103:                                              ; preds = %78
  %104 = add i64 %76, 1, !dbg !276
  br label %75, !dbg !276

105:                                              ; preds = %75
  %106 = add i64 %68, 1, !dbg !276
  br label %67, !dbg !276

107:                                              ; preds = %110, %67
  %108 = phi i64 [ %115, %110 ], [ 0, %67 ], !dbg !276
  %109 = icmp slt i64 %108, %46, !dbg !276
  br i1 %109, label %110, label %116, !dbg !276

110:                                              ; preds = %107
  %111 = add nuw nsw i64 0, %108, !dbg !276
  %112 = getelementptr inbounds nuw float, ptr %6, i64 %111, !dbg !276
  %113 = load float, ptr %112, align 4, !dbg !276
  %114 = getelementptr inbounds nuw float, ptr %4, i64 %111, !dbg !276
  store float %113, ptr %114, align 4, !dbg !276
  %115 = add i64 %108, 1, !dbg !276
  br label %107, !dbg !276

116:                                              ; preds = %119, %107
  %117 = phi i64 [ %124, %119 ], [ 0, %107 ], !dbg !276
  %118 = icmp slt i64 %117, %46, !dbg !276
  br i1 %118, label %119, label %125, !dbg !276

119:                                              ; preds = %116
  %120 = add nuw nsw i64 0, %117, !dbg !276
  %121 = getelementptr inbounds nuw float, ptr %5, i64 %120, !dbg !276
  %122 = load float, ptr %121, align 4, !dbg !276
  %123 = getelementptr inbounds nuw float, ptr %4, i64 %120, !dbg !276
  store float %122, ptr %123, align 4, !dbg !276
  %124 = add i64 %117, 1, !dbg !276
  br label %116, !dbg !276

125:                                              ; preds = %128, %116
  %126 = phi i64 [ %145, %128 ], [ 0, %116 ], !dbg !284
  %127 = icmp slt i64 %126, %46, !dbg !284
  br i1 %127, label %128, label %146, !dbg !284

128:                                              ; preds = %125
  %129 = add i64 0, %126, !dbg !284
  %130 = getelementptr float, ptr %4, i64 %129, !dbg !284
  %131 = load <1 x float>, ptr %130, align 4, !dbg !284
  %132 = fadd contract <1 x float> %131, zeroinitializer, !dbg !285
  %133 = fcmp ult <1 x float> %132, zeroinitializer, !dbg !286
  %134 = select <1 x i1> %133, <1 x float> zeroinitializer, <1 x float> %132, !dbg !287
  %135 = fcmp ugt <1 x float> %134, splat (float 6.000000e+00), !dbg !288
  %136 = select <1 x i1> %135, <1 x float> splat (float 6.000000e+00), <1 x float> %134, !dbg !289
  %137 = extractelement <1 x float> %136, i64 0, !dbg !284
  %138 = add i64 %35, %38, !dbg !284
  %139 = add i64 %41, %126, !dbg !284
  %140 = mul nuw nsw i64 %57, 784, !dbg !284
  %141 = mul nuw nsw i64 %138, 28, !dbg !284
  %142 = add nuw nsw i64 %140, %141, !dbg !284
  %143 = add nuw nsw i64 %142, %139, !dbg !284
  %144 = getelementptr inbounds nuw float, ptr %20, i64 %143, !dbg !284
  store float %137, ptr %144, align 4, !dbg !284
  %145 = add i64 %126, 1, !dbg !284
  br label %125, !dbg !284

146:                                              ; preds = %125
  %147 = add i64 %54, 1, !dbg !276
  br label %53, !dbg !276

148:                                              ; preds = %53
  %149 = add i64 %41, 8, !dbg !276
  br label %40, !dbg !276

150:                                              ; preds = %40
  %151 = add i64 %38, 1, !dbg !276
  br label %37, !dbg !276

152:                                              ; preds = %37
  ret i32 0, !dbg !290
}

define internal i32 @"main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !291 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !292
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !292
  %6 = load ptr, ptr %5, align 8, !dbg !292
  %7 = getelementptr float, ptr %6, i64 832000, !dbg !292
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !292
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !293
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !293
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !293
  %11 = load ptr, ptr %10, align 8, !dbg !293
  %12 = getelementptr float, ptr %11, i64 3778560, !dbg !293
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !293
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !294
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !294
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !294
  %16 = load ptr, ptr %15, align 8, !dbg !294
  %17 = getelementptr float, ptr %16, i64 1773328, !dbg !294
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !294
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !295
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !295
  %20 = zext i32 %19 to i64, !dbg !295
  %21 = sdiv i64 %20, 2, !dbg !295
  %22 = mul i64 %21, 2, !dbg !295
  %23 = icmp ne i64 %20, %22, !dbg !295
  %24 = icmp slt i64 %20, 0, !dbg !295
  %25 = and i1 %23, %24, !dbg !295
  %26 = add i64 %21, -1, !dbg !295
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !295
  %28 = srem i64 %20, 2, !dbg !295
  %29 = icmp slt i64 %28, 0, !dbg !295
  %30 = add nsw i64 %28, 2, !dbg !295
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !295
  %32 = mul nsw i64 %27, 32, !dbg !295
  %33 = mul nsw i64 %31, 14, !dbg !295
  br label %34, !dbg !295

34:                                               ; preds = %158, %3
  %35 = phi i64 [ %159, %158 ], [ 0, %3 ], !dbg !295
  %36 = icmp slt i64 %35, 32, !dbg !295
  br i1 %36, label %37, label %160, !dbg !295

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !295
  br label %39, !dbg !295

39:                                               ; preds = %156, %37
  %40 = phi i64 [ %157, %156 ], [ 0, %37 ], !dbg !295
  %41 = icmp slt i64 %40, 14, !dbg !295
  br i1 %41, label %42, label %158, !dbg !295

42:                                               ; preds = %141, %39
  %43 = phi i64 [ %150, %141 ], [ 0, %39 ], !dbg !295
  %44 = icmp slt i64 %43, 28, !dbg !295
  br i1 %44, label %45, label %156, !dbg !295

45:                                               ; preds = %49, %42
  %46 = phi i64 [ %140, %49 ], [ 0, %42 ], !dbg !295
  %47 = phi <1 x float> [ %139, %49 ], [ zeroinitializer, %42 ], !dbg !295
  %48 = icmp slt i64 %46, 128, !dbg !295
  br i1 %48, label %49, label %141, !dbg !295

49:                                               ; preds = %45
  %50 = add i64 %40, %33, !dbg !295
  %51 = mul i64 %46, 784, !dbg !295
  %52 = mul i64 %50, 28, !dbg !295
  %53 = add i64 %51, %52, !dbg !295
  %54 = add i64 %53, %43, !dbg !295
  %55 = getelementptr float, ptr %7, i64 %54, !dbg !295
  %56 = load <1 x float>, ptr %55, align 4, !dbg !295
  %57 = add i64 %46, 1, !dbg !295
  %58 = mul i64 %57, 784, !dbg !295
  %59 = add i64 %58, %52, !dbg !295
  %60 = add i64 %59, %43, !dbg !295
  %61 = getelementptr float, ptr %7, i64 %60, !dbg !295
  %62 = load <1 x float>, ptr %61, align 4, !dbg !295
  %63 = add i64 %46, 2, !dbg !295
  %64 = mul i64 %63, 784, !dbg !295
  %65 = add i64 %64, %52, !dbg !295
  %66 = add i64 %65, %43, !dbg !295
  %67 = getelementptr float, ptr %7, i64 %66, !dbg !295
  %68 = load <1 x float>, ptr %67, align 4, !dbg !295
  %69 = add i64 %46, 3, !dbg !295
  %70 = mul i64 %69, 784, !dbg !295
  %71 = add i64 %70, %52, !dbg !295
  %72 = add i64 %71, %43, !dbg !295
  %73 = getelementptr float, ptr %7, i64 %72, !dbg !295
  %74 = load <1 x float>, ptr %73, align 4, !dbg !295
  %75 = add i64 %46, 4, !dbg !295
  %76 = mul i64 %75, 784, !dbg !295
  %77 = add i64 %76, %52, !dbg !295
  %78 = add i64 %77, %43, !dbg !295
  %79 = getelementptr float, ptr %7, i64 %78, !dbg !295
  %80 = load <1 x float>, ptr %79, align 4, !dbg !295
  %81 = add i64 %46, 5, !dbg !295
  %82 = mul i64 %81, 784, !dbg !295
  %83 = add i64 %82, %52, !dbg !295
  %84 = add i64 %83, %43, !dbg !295
  %85 = getelementptr float, ptr %7, i64 %84, !dbg !295
  %86 = load <1 x float>, ptr %85, align 4, !dbg !295
  %87 = add i64 %46, 6, !dbg !295
  %88 = mul i64 %87, 784, !dbg !295
  %89 = add i64 %88, %52, !dbg !295
  %90 = add i64 %89, %43, !dbg !295
  %91 = getelementptr float, ptr %7, i64 %90, !dbg !295
  %92 = load <1 x float>, ptr %91, align 4, !dbg !295
  %93 = add i64 %46, 7, !dbg !295
  %94 = mul i64 %93, 784, !dbg !295
  %95 = add i64 %94, %52, !dbg !295
  %96 = add i64 %95, %43, !dbg !295
  %97 = getelementptr float, ptr %7, i64 %96, !dbg !295
  %98 = load <1 x float>, ptr %97, align 4, !dbg !295
  %99 = mul nuw nsw i64 %38, 128, !dbg !296
  %100 = add nuw nsw i64 %99, %46, !dbg !296
  %101 = getelementptr inbounds nuw float, ptr %12, i64 %100, !dbg !296
  %102 = load float, ptr %101, align 4, !dbg !296
  %103 = insertelement <1 x float> poison, float %102, i32 0, !dbg !296
  %104 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %56, <1 x float> %103, <1 x float> %47), !dbg !296
  %105 = add nuw nsw i64 %99, %57, !dbg !296
  %106 = getelementptr inbounds nuw float, ptr %12, i64 %105, !dbg !296
  %107 = load float, ptr %106, align 4, !dbg !296
  %108 = insertelement <1 x float> poison, float %107, i32 0, !dbg !296
  %109 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %108, <1 x float> %104), !dbg !296
  %110 = add nuw nsw i64 %99, %63, !dbg !296
  %111 = getelementptr inbounds nuw float, ptr %12, i64 %110, !dbg !296
  %112 = load float, ptr %111, align 4, !dbg !296
  %113 = insertelement <1 x float> poison, float %112, i32 0, !dbg !296
  %114 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %68, <1 x float> %113, <1 x float> %109), !dbg !296
  %115 = add nuw nsw i64 %99, %69, !dbg !296
  %116 = getelementptr inbounds nuw float, ptr %12, i64 %115, !dbg !296
  %117 = load float, ptr %116, align 4, !dbg !296
  %118 = insertelement <1 x float> poison, float %117, i32 0, !dbg !296
  %119 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %74, <1 x float> %118, <1 x float> %114), !dbg !296
  %120 = add nuw nsw i64 %99, %75, !dbg !296
  %121 = getelementptr inbounds nuw float, ptr %12, i64 %120, !dbg !296
  %122 = load float, ptr %121, align 4, !dbg !296
  %123 = insertelement <1 x float> poison, float %122, i32 0, !dbg !296
  %124 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %80, <1 x float> %123, <1 x float> %119), !dbg !296
  %125 = add nuw nsw i64 %99, %81, !dbg !296
  %126 = getelementptr inbounds nuw float, ptr %12, i64 %125, !dbg !296
  %127 = load float, ptr %126, align 4, !dbg !296
  %128 = insertelement <1 x float> poison, float %127, i32 0, !dbg !296
  %129 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %86, <1 x float> %128, <1 x float> %124), !dbg !296
  %130 = add nuw nsw i64 %99, %87, !dbg !296
  %131 = getelementptr inbounds nuw float, ptr %12, i64 %130, !dbg !296
  %132 = load float, ptr %131, align 4, !dbg !296
  %133 = insertelement <1 x float> poison, float %132, i32 0, !dbg !296
  %134 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %92, <1 x float> %133, <1 x float> %129), !dbg !296
  %135 = add nuw nsw i64 %99, %93, !dbg !296
  %136 = getelementptr inbounds nuw float, ptr %12, i64 %135, !dbg !296
  %137 = load float, ptr %136, align 4, !dbg !296
  %138 = insertelement <1 x float> poison, float %137, i32 0, !dbg !296
  %139 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %98, <1 x float> %138, <1 x float> %134), !dbg !296
  %140 = add i64 %46, 8, !dbg !295
  br label %45, !dbg !295

141:                                              ; preds = %45
  %142 = fadd contract <1 x float> %47, zeroinitializer, !dbg !297
  %143 = fcmp ult <1 x float> %142, zeroinitializer, !dbg !298
  %144 = select <1 x i1> %143, <1 x float> zeroinitializer, <1 x float> %142, !dbg !299
  %145 = fcmp ugt <1 x float> %144, splat (float 6.000000e+00), !dbg !300
  %146 = select <1 x i1> %145, <1 x float> splat (float 6.000000e+00), <1 x float> %144, !dbg !301
  %147 = extractelement <1 x float> %146, i64 0, !dbg !295
  %148 = add i64 %33, %40, !dbg !295
  %149 = add i64 %148, 1, !dbg !295
  %150 = add i64 %43, 1, !dbg !295
  %151 = mul nuw nsw i64 %38, 900, !dbg !295
  %152 = mul nuw nsw i64 %149, 30, !dbg !295
  %153 = add nuw nsw i64 %151, %152, !dbg !295
  %154 = add nuw nsw i64 %153, %150, !dbg !295
  %155 = getelementptr inbounds nuw float, ptr %17, i64 %154, !dbg !295
  store float %147, ptr %155, align 4, !dbg !295
  br label %42, !dbg !295

156:                                              ; preds = %42
  %157 = add i64 %40, 1, !dbg !295
  br label %39, !dbg !295

158:                                              ; preds = %39
  %159 = add i64 %35, 1, !dbg !295
  br label %34, !dbg !295

160:                                              ; preds = %34
  ret i32 0, !dbg !302
}

define internal i32 @"main_graph$async_dispatch_12_conv_28x28x256x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !303 {
  %4 = alloca float, i64 8, align 64, !dbg !304
  %5 = alloca float, i64 8, align 64, !dbg !304
  %6 = alloca float, i64 8, align 64, !dbg !305
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !306
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !306
  %9 = load ptr, ptr %8, align 8, !dbg !306
  %10 = getelementptr float, ptr %9, i64 1773328, !dbg !306
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !306
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !307
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !307
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !307
  %14 = load ptr, ptr %13, align 8, !dbg !307
  %15 = getelementptr float, ptr %14, i64 3926720, !dbg !307
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !307
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !308
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !308
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !308
  %19 = load ptr, ptr %18, align 8, !dbg !308
  %20 = getelementptr float, ptr %19, i64 401408, !dbg !308
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !308
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !304
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !304
  %23 = zext i32 %22 to i64, !dbg !304
  %24 = sdiv i64 %23, 8, !dbg !304
  %25 = mul i64 %24, 8, !dbg !304
  %26 = icmp ne i64 %23, %25, !dbg !304
  %27 = icmp slt i64 %23, 0, !dbg !304
  %28 = and i1 %26, %27, !dbg !304
  %29 = add i64 %24, -1, !dbg !304
  %30 = select i1 %28, i64 %29, i64 %24, !dbg !304
  %31 = srem i64 %23, 8, !dbg !304
  %32 = icmp slt i64 %31, 0, !dbg !304
  %33 = add nsw i64 %31, 8, !dbg !304
  %34 = select i1 %32, i64 %33, i64 %31, !dbg !304
  %35 = mul nsw i64 %30, 14, !dbg !304
  %36 = mul nsw i64 %34, 32, !dbg !304
  br label %37, !dbg !304

37:                                               ; preds = %146, %3
  %38 = phi i64 [ %147, %146 ], [ 0, %3 ], !dbg !304
  %39 = icmp slt i64 %38, 14, !dbg !304
  br i1 %39, label %40, label %148, !dbg !304

40:                                               ; preds = %144, %37
  %41 = phi i64 [ %145, %144 ], [ 0, %37 ], !dbg !304
  %42 = icmp slt i64 %41, 28, !dbg !304
  br i1 %42, label %43, label %146, !dbg !304

43:                                               ; preds = %40
  %44 = sub i64 28, %41, !dbg !304
  %45 = icmp slt i64 %44, 8, !dbg !304
  %46 = select i1 %45, i64 %44, i64 8, !dbg !304
  %47 = trunc i64 %46 to i32, !dbg !309
  %48 = insertelement <8 x i32> poison, i32 %47, i32 0, !dbg !309
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !309
  %50 = icmp sgt <8 x i32> %49, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !309
  %51 = getelementptr float, ptr %6, i64 0, !dbg !309
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %51, i32 4, <8 x i1> %50), !dbg !309
  br label %52, !dbg !304

52:                                               ; preds = %142, %43
  %53 = phi i64 [ %143, %142 ], [ 0, %43 ], !dbg !304
  %54 = icmp slt i64 %53, 32, !dbg !304
  br i1 %54, label %55, label %144, !dbg !304

55:                                               ; preds = %52
  %56 = add i64 %53, %36, !dbg !304
  br label %57, !dbg !304

57:                                               ; preds = %60, %55
  %58 = phi i64 [ %65, %60 ], [ 0, %55 ], !dbg !304
  %59 = icmp slt i64 %58, %46, !dbg !304
  br i1 %59, label %60, label %66, !dbg !304

60:                                               ; preds = %57
  %61 = add nuw nsw i64 0, %58, !dbg !304
  %62 = getelementptr inbounds nuw float, ptr %6, i64 %61, !dbg !304
  %63 = load float, ptr %62, align 4, !dbg !304
  %64 = getelementptr inbounds nuw float, ptr %5, i64 %61, !dbg !304
  store float %63, ptr %64, align 4, !dbg !304
  %65 = add i64 %58, 1, !dbg !304
  br label %57, !dbg !304

66:                                               ; preds = %101, %57
  %67 = phi i64 [ %102, %101 ], [ 0, %57 ], !dbg !304
  %68 = icmp slt i64 %67, 3, !dbg !304
  br i1 %68, label %69, label %103, !dbg !304

69:                                               ; preds = %66
  %70 = add i64 %67, %38, !dbg !304
  %71 = add i64 %70, %35, !dbg !304
  br label %72, !dbg !304

72:                                               ; preds = %99, %69
  %73 = phi i64 [ %100, %99 ], [ 0, %69 ], !dbg !304
  %74 = icmp slt i64 %73, %46, !dbg !304
  br i1 %74, label %75, label %101, !dbg !304

75:                                               ; preds = %78, %72
  %76 = phi i64 [ %98, %78 ], [ 0, %72 ], !dbg !304
  %77 = icmp slt i64 %76, 3, !dbg !304
  br i1 %77, label %78, label %99, !dbg !304

78:                                               ; preds = %75
  %79 = add i64 %41, %73, !dbg !304
  %80 = add i64 %79, %76, !dbg !304
  %81 = mul nuw nsw i64 %56, 900, !dbg !304
  %82 = mul nuw nsw i64 %71, 30, !dbg !304
  %83 = add nuw nsw i64 %81, %82, !dbg !304
  %84 = add nuw nsw i64 %83, %80, !dbg !304
  %85 = getelementptr inbounds nuw float, ptr %10, i64 %84, !dbg !304
  %86 = load float, ptr %85, align 4, !dbg !304
  %87 = mul nuw nsw i64 %56, 9, !dbg !304
  %88 = mul nuw nsw i64 %67, 3, !dbg !304
  %89 = add nuw nsw i64 %87, %88, !dbg !304
  %90 = add nuw nsw i64 %89, %76, !dbg !304
  %91 = getelementptr inbounds nuw float, ptr %15, i64 %90, !dbg !304
  %92 = load float, ptr %91, align 4, !dbg !304
  %93 = add nuw nsw i64 0, %73, !dbg !304
  %94 = getelementptr inbounds nuw float, ptr %5, i64 %93, !dbg !304
  %95 = load float, ptr %94, align 4, !dbg !304
  %96 = fmul contract float %86, %92, !dbg !310
  %97 = fadd contract float %95, %96, !dbg !311
  store float %97, ptr %94, align 4, !dbg !304
  %98 = add i64 %76, 1, !dbg !304
  br label %75, !dbg !304

99:                                               ; preds = %75
  %100 = add i64 %73, 1, !dbg !304
  br label %72, !dbg !304

101:                                              ; preds = %72
  %102 = add i64 %67, 1, !dbg !304
  br label %66, !dbg !304

103:                                              ; preds = %106, %66
  %104 = phi i64 [ %111, %106 ], [ 0, %66 ], !dbg !304
  %105 = icmp slt i64 %104, %46, !dbg !304
  br i1 %105, label %106, label %112, !dbg !304

106:                                              ; preds = %103
  %107 = add nuw nsw i64 0, %104, !dbg !304
  %108 = getelementptr inbounds nuw float, ptr %6, i64 %107, !dbg !304
  %109 = load float, ptr %108, align 4, !dbg !304
  %110 = getelementptr inbounds nuw float, ptr %4, i64 %107, !dbg !304
  store float %109, ptr %110, align 4, !dbg !304
  %111 = add i64 %104, 1, !dbg !304
  br label %103, !dbg !304

112:                                              ; preds = %115, %103
  %113 = phi i64 [ %120, %115 ], [ 0, %103 ], !dbg !304
  %114 = icmp slt i64 %113, %46, !dbg !304
  br i1 %114, label %115, label %121, !dbg !304

115:                                              ; preds = %112
  %116 = add nuw nsw i64 0, %113, !dbg !304
  %117 = getelementptr inbounds nuw float, ptr %5, i64 %116, !dbg !304
  %118 = load float, ptr %117, align 4, !dbg !304
  %119 = getelementptr inbounds nuw float, ptr %4, i64 %116, !dbg !304
  store float %118, ptr %119, align 4, !dbg !304
  %120 = add i64 %113, 1, !dbg !304
  br label %112, !dbg !304

121:                                              ; preds = %124, %112
  %122 = phi i64 [ %141, %124 ], [ 0, %112 ], !dbg !312
  %123 = icmp slt i64 %122, %46, !dbg !312
  br i1 %123, label %124, label %142, !dbg !312

124:                                              ; preds = %121
  %125 = add i64 0, %122, !dbg !312
  %126 = getelementptr float, ptr %4, i64 %125, !dbg !312
  %127 = load <1 x float>, ptr %126, align 4, !dbg !312
  %128 = fadd contract <1 x float> %127, zeroinitializer, !dbg !313
  %129 = fcmp ult <1 x float> %128, zeroinitializer, !dbg !314
  %130 = select <1 x i1> %129, <1 x float> zeroinitializer, <1 x float> %128, !dbg !315
  %131 = fcmp ugt <1 x float> %130, splat (float 6.000000e+00), !dbg !316
  %132 = select <1 x i1> %131, <1 x float> splat (float 6.000000e+00), <1 x float> %130, !dbg !317
  %133 = extractelement <1 x float> %132, i64 0, !dbg !312
  %134 = add i64 %35, %38, !dbg !312
  %135 = add i64 %41, %122, !dbg !312
  %136 = mul nuw nsw i64 %56, 784, !dbg !312
  %137 = mul nuw nsw i64 %134, 28, !dbg !312
  %138 = add nuw nsw i64 %136, %137, !dbg !312
  %139 = add nuw nsw i64 %138, %135, !dbg !312
  %140 = getelementptr inbounds nuw float, ptr %20, i64 %139, !dbg !312
  store float %133, ptr %140, align 4, !dbg !312
  %141 = add i64 %122, 1, !dbg !312
  br label %121, !dbg !312

142:                                              ; preds = %121
  %143 = add i64 %53, 1, !dbg !304
  br label %52, !dbg !304

144:                                              ; preds = %52
  %145 = add i64 %41, 8, !dbg !304
  br label %40, !dbg !304

146:                                              ; preds = %40
  %147 = add i64 %38, 1, !dbg !304
  br label %37, !dbg !304

148:                                              ; preds = %37
  ret i32 0, !dbg !318
}

define internal i32 @"main_graph$async_dispatch_13_matmul_like_256x784x256_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !319 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !320
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !320
  %6 = load ptr, ptr %5, align 8, !dbg !320
  %7 = getelementptr float, ptr %6, i64 401408, !dbg !320
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !320
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !321
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !321
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !321
  %11 = load ptr, ptr %10, align 8, !dbg !321
  %12 = getelementptr float, ptr %11, i64 3713024, !dbg !321
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !321
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !322
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !322
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !322
  %16 = load ptr, ptr %15, align 8, !dbg !322
  %17 = getelementptr float, ptr %16, i64 602112, !dbg !322
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !322
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !323
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !323
  %20 = zext i32 %19 to i64, !dbg !323
  %21 = sdiv i64 %20, 14, !dbg !323
  %22 = mul i64 %21, 14, !dbg !323
  %23 = icmp ne i64 %20, %22, !dbg !323
  %24 = icmp slt i64 %20, 0, !dbg !323
  %25 = and i1 %23, %24, !dbg !323
  %26 = add i64 %21, -1, !dbg !323
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !323
  %28 = srem i64 %20, 14, !dbg !323
  %29 = icmp slt i64 %28, 0, !dbg !323
  %30 = add nsw i64 %28, 14, !dbg !323
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !323
  %32 = mul nsw i64 %27, 64, !dbg !323
  %33 = mul nsw i64 %31, 56, !dbg !323
  br label %34, !dbg !323

34:                                               ; preds = %141, %3
  %35 = phi i64 [ %142, %141 ], [ 0, %3 ], !dbg !323
  %36 = icmp slt i64 %35, 64, !dbg !323
  br i1 %36, label %37, label %143, !dbg !323

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !323
  br label %39, !dbg !323

39:                                               ; preds = %130, %37
  %40 = phi i64 [ %140, %130 ], [ 0, %37 ], !dbg !323
  %41 = icmp slt i64 %40, 56, !dbg !323
  br i1 %41, label %42, label %141, !dbg !323

42:                                               ; preds = %39
  %43 = add i64 %40, %33, !dbg !323
  br label %44, !dbg !323

44:                                               ; preds = %48, %42
  %45 = phi i64 [ %129, %48 ], [ 0, %42 ], !dbg !323
  %46 = phi <1 x float> [ %128, %48 ], [ zeroinitializer, %42 ], !dbg !323
  %47 = icmp slt i64 %45, 256, !dbg !323
  br i1 %47, label %48, label %130, !dbg !323

48:                                               ; preds = %44
  %49 = mul i64 %45, 784, !dbg !323
  %50 = add i64 %49, %43, !dbg !323
  %51 = getelementptr float, ptr %7, i64 %50, !dbg !323
  %52 = load <1 x float>, ptr %51, align 4, !dbg !323
  %53 = add i64 %45, 1, !dbg !323
  %54 = mul i64 %53, 784, !dbg !323
  %55 = add i64 %54, %43, !dbg !323
  %56 = getelementptr float, ptr %7, i64 %55, !dbg !323
  %57 = load <1 x float>, ptr %56, align 4, !dbg !323
  %58 = add i64 %45, 2, !dbg !323
  %59 = mul i64 %58, 784, !dbg !323
  %60 = add i64 %59, %43, !dbg !323
  %61 = getelementptr float, ptr %7, i64 %60, !dbg !323
  %62 = load <1 x float>, ptr %61, align 4, !dbg !323
  %63 = add i64 %45, 3, !dbg !323
  %64 = mul i64 %63, 784, !dbg !323
  %65 = add i64 %64, %43, !dbg !323
  %66 = getelementptr float, ptr %7, i64 %65, !dbg !323
  %67 = load <1 x float>, ptr %66, align 4, !dbg !323
  %68 = add i64 %45, 4, !dbg !323
  %69 = mul i64 %68, 784, !dbg !323
  %70 = add i64 %69, %43, !dbg !323
  %71 = getelementptr float, ptr %7, i64 %70, !dbg !323
  %72 = load <1 x float>, ptr %71, align 4, !dbg !323
  %73 = add i64 %45, 5, !dbg !323
  %74 = mul i64 %73, 784, !dbg !323
  %75 = add i64 %74, %43, !dbg !323
  %76 = getelementptr float, ptr %7, i64 %75, !dbg !323
  %77 = load <1 x float>, ptr %76, align 4, !dbg !323
  %78 = add i64 %45, 6, !dbg !323
  %79 = mul i64 %78, 784, !dbg !323
  %80 = add i64 %79, %43, !dbg !323
  %81 = getelementptr float, ptr %7, i64 %80, !dbg !323
  %82 = load <1 x float>, ptr %81, align 4, !dbg !323
  %83 = add i64 %45, 7, !dbg !323
  %84 = mul i64 %83, 784, !dbg !323
  %85 = add i64 %84, %43, !dbg !323
  %86 = getelementptr float, ptr %7, i64 %85, !dbg !323
  %87 = load <1 x float>, ptr %86, align 4, !dbg !323
  %88 = mul nuw nsw i64 %38, 256, !dbg !324
  %89 = add nuw nsw i64 %88, %45, !dbg !324
  %90 = getelementptr inbounds nuw float, ptr %12, i64 %89, !dbg !324
  %91 = load float, ptr %90, align 4, !dbg !324
  %92 = insertelement <1 x float> poison, float %91, i32 0, !dbg !324
  %93 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %92, <1 x float> %46), !dbg !324
  %94 = add nuw nsw i64 %88, %53, !dbg !324
  %95 = getelementptr inbounds nuw float, ptr %12, i64 %94, !dbg !324
  %96 = load float, ptr %95, align 4, !dbg !324
  %97 = insertelement <1 x float> poison, float %96, i32 0, !dbg !324
  %98 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %57, <1 x float> %97, <1 x float> %93), !dbg !324
  %99 = add nuw nsw i64 %88, %58, !dbg !324
  %100 = getelementptr inbounds nuw float, ptr %12, i64 %99, !dbg !324
  %101 = load float, ptr %100, align 4, !dbg !324
  %102 = insertelement <1 x float> poison, float %101, i32 0, !dbg !324
  %103 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %102, <1 x float> %98), !dbg !324
  %104 = add nuw nsw i64 %88, %63, !dbg !324
  %105 = getelementptr inbounds nuw float, ptr %12, i64 %104, !dbg !324
  %106 = load float, ptr %105, align 4, !dbg !324
  %107 = insertelement <1 x float> poison, float %106, i32 0, !dbg !324
  %108 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %107, <1 x float> %103), !dbg !324
  %109 = add nuw nsw i64 %88, %68, !dbg !324
  %110 = getelementptr inbounds nuw float, ptr %12, i64 %109, !dbg !324
  %111 = load float, ptr %110, align 4, !dbg !324
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !324
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %112, <1 x float> %108), !dbg !324
  %114 = add nuw nsw i64 %88, %73, !dbg !324
  %115 = getelementptr inbounds nuw float, ptr %12, i64 %114, !dbg !324
  %116 = load float, ptr %115, align 4, !dbg !324
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !324
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %77, <1 x float> %117, <1 x float> %113), !dbg !324
  %119 = add nuw nsw i64 %88, %78, !dbg !324
  %120 = getelementptr inbounds nuw float, ptr %12, i64 %119, !dbg !324
  %121 = load float, ptr %120, align 4, !dbg !324
  %122 = insertelement <1 x float> poison, float %121, i32 0, !dbg !324
  %123 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %82, <1 x float> %122, <1 x float> %118), !dbg !324
  %124 = add nuw nsw i64 %88, %83, !dbg !324
  %125 = getelementptr inbounds nuw float, ptr %12, i64 %124, !dbg !324
  %126 = load float, ptr %125, align 4, !dbg !324
  %127 = insertelement <1 x float> poison, float %126, i32 0, !dbg !324
  %128 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %87, <1 x float> %127, <1 x float> %123), !dbg !324
  %129 = add i64 %45, 8, !dbg !323
  br label %44, !dbg !323

130:                                              ; preds = %44
  %131 = fadd contract <1 x float> %46, zeroinitializer, !dbg !325
  %132 = fcmp ult <1 x float> %131, zeroinitializer, !dbg !326
  %133 = select <1 x i1> %132, <1 x float> zeroinitializer, <1 x float> %131, !dbg !327
  %134 = fcmp ugt <1 x float> %133, splat (float 6.000000e+00), !dbg !328
  %135 = select <1 x i1> %134, <1 x float> splat (float 6.000000e+00), <1 x float> %133, !dbg !329
  %136 = extractelement <1 x float> %135, i64 0, !dbg !323
  %137 = mul nuw nsw i64 %38, 784, !dbg !323
  %138 = add nuw nsw i64 %137, %43, !dbg !323
  %139 = getelementptr inbounds nuw float, ptr %17, i64 %138, !dbg !323
  store float %136, ptr %139, align 4, !dbg !323
  %140 = add i64 %40, 1, !dbg !323
  br label %39, !dbg !323

141:                                              ; preds = %39
  %142 = add i64 %35, 1, !dbg !323
  br label %34, !dbg !323

143:                                              ; preds = %34
  ret i32 0, !dbg !330
}

define internal i32 @"main_graph$async_dispatch_14_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !331 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !332
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !332
  %6 = load ptr, ptr %5, align 8, !dbg !332
  %7 = getelementptr float, ptr %6, i64 602112, !dbg !333
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !333
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !334
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !334
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !334
  %11 = load ptr, ptr %10, align 8, !dbg !334
  %12 = getelementptr float, ptr %11, i64 1773328, !dbg !335
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !335
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !336
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !336
  %15 = zext i32 %14 to i64, !dbg !336
  %16 = sdiv i64 %15, 2, !dbg !336
  %17 = mul i64 %16, 2, !dbg !336
  %18 = icmp ne i64 %15, %17, !dbg !336
  %19 = icmp slt i64 %15, 0, !dbg !336
  %20 = and i1 %18, %19, !dbg !336
  %21 = add i64 %16, -1, !dbg !336
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !336
  %23 = srem i64 %15, 2, !dbg !336
  %24 = icmp slt i64 %23, 0, !dbg !336
  %25 = add nsw i64 %23, 2, !dbg !336
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !336
  %27 = mul nsw i64 %22, 32, !dbg !336
  %28 = mul nsw i64 %26, 14, !dbg !336
  br label %29, !dbg !336

29:                                               ; preds = %71, %3
  %30 = phi i64 [ %72, %71 ], [ 0, %3 ], !dbg !336
  %31 = icmp slt i64 %30, 32, !dbg !336
  br i1 %31, label %32, label %73, !dbg !336

32:                                               ; preds = %55, %29
  %33 = phi i64 [ %70, %55 ], [ 0, %29 ], !dbg !336
  %34 = icmp slt i64 %33, 14, !dbg !336
  br i1 %34, label %35, label %71, !dbg !336

35:                                               ; preds = %38, %32
  %36 = phi i64 [ %54, %38 ], [ 0, %32 ], !dbg !336
  %37 = icmp slt i64 %36, 24, !dbg !336
  br i1 %37, label %38, label %55, !dbg !336

38:                                               ; preds = %35
  %39 = add i64 %27, %30, !dbg !336
  %40 = add i64 %28, %33, !dbg !336
  %41 = mul i64 %39, 784, !dbg !336
  %42 = mul i64 %40, 28, !dbg !336
  %43 = add i64 %41, %42, !dbg !336
  %44 = add i64 %43, %36, !dbg !336
  %45 = getelementptr float, ptr %7, i64 %44, !dbg !336
  %46 = load <8 x float>, ptr %45, align 4, !dbg !336
  %47 = add i64 %40, 1, !dbg !336
  %48 = add i64 %36, 1, !dbg !336
  %49 = mul i64 %39, 900, !dbg !336
  %50 = mul i64 %47, 30, !dbg !336
  %51 = add i64 %49, %50, !dbg !336
  %52 = add i64 %51, %48, !dbg !336
  %53 = getelementptr float, ptr %12, i64 %52, !dbg !336
  store <8 x float> %46, ptr %53, align 4, !dbg !336
  %54 = add i64 %36, 8, !dbg !336
  br label %35, !dbg !336

55:                                               ; preds = %35
  %56 = add i64 %27, %30, !dbg !336
  %57 = add i64 %28, %33, !dbg !336
  %58 = mul i64 %56, 784, !dbg !336
  %59 = mul i64 %57, 28, !dbg !336
  %60 = add i64 %58, %59, !dbg !336
  %61 = add i64 %60, 24, !dbg !336
  %62 = getelementptr float, ptr %7, i64 %61, !dbg !336
  %63 = load <4 x float>, ptr %62, align 4, !dbg !336
  %64 = add i64 %57, 1, !dbg !336
  %65 = mul i64 %56, 900, !dbg !336
  %66 = mul i64 %64, 30, !dbg !336
  %67 = add i64 %65, %66, !dbg !336
  %68 = add i64 %67, 25, !dbg !336
  %69 = getelementptr float, ptr %12, i64 %68, !dbg !336
  store <4 x float> %63, ptr %69, align 4, !dbg !336
  %70 = add i64 %33, 1, !dbg !336
  br label %32, !dbg !336

71:                                               ; preds = %32
  %72 = add i64 %30, 1, !dbg !336
  br label %29, !dbg !336

73:                                               ; preds = %29
  ret i32 0, !dbg !337
}

define internal i32 @"main_graph$async_dispatch_15_conv_14x14x256x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !338 {
  %4 = alloca float, i64 8, align 64, !dbg !339
  %5 = alloca float, i64 8, align 64, !dbg !339
  %6 = alloca float, i64 8, align 64, !dbg !340
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !341
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !341
  %9 = load ptr, ptr %8, align 8, !dbg !341
  %10 = getelementptr float, ptr %9, i64 1773328, !dbg !341
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !341
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !342
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !342
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !342
  %14 = load ptr, ptr %13, align 8, !dbg !342
  %15 = getelementptr float, ptr %14, i64 3924416, !dbg !342
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !342
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !343
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !343
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !343
  %19 = load ptr, ptr %18, align 8, !dbg !343
  %20 = getelementptr float, ptr %19, i64 802816, !dbg !343
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !343
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !339
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !339
  %23 = zext i32 %22 to i64, !dbg !339
  %24 = sdiv i64 %23, 8, !dbg !339
  %25 = mul i64 %24, 8, !dbg !339
  %26 = icmp ne i64 %23, %25, !dbg !339
  %27 = icmp slt i64 %23, 0, !dbg !339
  %28 = and i1 %26, %27, !dbg !339
  %29 = add i64 %24, -1, !dbg !339
  %30 = select i1 %28, i64 %29, i64 %24, !dbg !339
  %31 = srem i64 %23, 8, !dbg !339
  %32 = icmp slt i64 %31, 0, !dbg !339
  %33 = add nsw i64 %31, 8, !dbg !339
  %34 = select i1 %32, i64 %33, i64 %31, !dbg !339
  %35 = mul nsw i64 %30, 7, !dbg !339
  %36 = mul nsw i64 %34, 32, !dbg !339
  br label %37, !dbg !339

37:                                               ; preds = %150, %3
  %38 = phi i64 [ %151, %150 ], [ 0, %3 ], !dbg !339
  %39 = icmp slt i64 %38, 7, !dbg !339
  br i1 %39, label %40, label %152, !dbg !339

40:                                               ; preds = %148, %37
  %41 = phi i64 [ %149, %148 ], [ 0, %37 ], !dbg !339
  %42 = icmp slt i64 %41, 14, !dbg !339
  br i1 %42, label %43, label %150, !dbg !339

43:                                               ; preds = %40
  %44 = sub i64 14, %41, !dbg !339
  %45 = icmp slt i64 %44, 8, !dbg !339
  %46 = select i1 %45, i64 %44, i64 8, !dbg !339
  %47 = trunc i64 %46 to i32, !dbg !344
  %48 = insertelement <8 x i32> poison, i32 %47, i32 0, !dbg !344
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !344
  %50 = icmp sgt <8 x i32> %49, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !344
  %51 = getelementptr float, ptr %6, i64 0, !dbg !344
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %51, i32 4, <8 x i1> %50), !dbg !344
  %52 = mul nsw i64 %41, 2, !dbg !339
  br label %53, !dbg !339

53:                                               ; preds = %146, %43
  %54 = phi i64 [ %147, %146 ], [ 0, %43 ], !dbg !339
  %55 = icmp slt i64 %54, 32, !dbg !339
  br i1 %55, label %56, label %148, !dbg !339

56:                                               ; preds = %53
  %57 = add i64 %54, %36, !dbg !339
  br label %58, !dbg !339

58:                                               ; preds = %61, %56
  %59 = phi i64 [ %66, %61 ], [ 0, %56 ], !dbg !339
  %60 = icmp slt i64 %59, %46, !dbg !339
  br i1 %60, label %61, label %67, !dbg !339

61:                                               ; preds = %58
  %62 = add nuw nsw i64 0, %59, !dbg !339
  %63 = getelementptr inbounds nuw float, ptr %6, i64 %62, !dbg !339
  %64 = load float, ptr %63, align 4, !dbg !339
  %65 = getelementptr inbounds nuw float, ptr %5, i64 %62, !dbg !339
  store float %64, ptr %65, align 4, !dbg !339
  %66 = add i64 %59, 1, !dbg !339
  br label %58, !dbg !339

67:                                               ; preds = %105, %58
  %68 = phi i64 [ %106, %105 ], [ 0, %58 ], !dbg !339
  %69 = icmp slt i64 %68, 3, !dbg !339
  br i1 %69, label %70, label %107, !dbg !339

70:                                               ; preds = %67
  %71 = mul nsw i64 %38, 2, !dbg !339
  %72 = mul nsw i64 %30, 14, !dbg !339
  %73 = add i64 %71, %72, !dbg !339
  %74 = add i64 %73, %68, !dbg !339
  br label %75, !dbg !339

75:                                               ; preds = %103, %70
  %76 = phi i64 [ %104, %103 ], [ 0, %70 ], !dbg !339
  %77 = icmp slt i64 %76, %46, !dbg !339
  br i1 %77, label %78, label %105, !dbg !339

78:                                               ; preds = %81, %75
  %79 = phi i64 [ %102, %81 ], [ 0, %75 ], !dbg !339
  %80 = icmp slt i64 %79, 3, !dbg !339
  br i1 %80, label %81, label %103, !dbg !339

81:                                               ; preds = %78
  %82 = mul nsw i64 %76, 2, !dbg !339
  %83 = add i64 %52, %82, !dbg !339
  %84 = add i64 %83, %79, !dbg !339
  %85 = mul nuw nsw i64 %57, 900, !dbg !339
  %86 = mul nuw nsw i64 %74, 30, !dbg !339
  %87 = add nuw nsw i64 %85, %86, !dbg !339
  %88 = add nuw nsw i64 %87, %84, !dbg !339
  %89 = getelementptr inbounds nuw float, ptr %10, i64 %88, !dbg !339
  %90 = load float, ptr %89, align 4, !dbg !339
  %91 = mul nuw nsw i64 %57, 9, !dbg !339
  %92 = mul nuw nsw i64 %68, 3, !dbg !339
  %93 = add nuw nsw i64 %91, %92, !dbg !339
  %94 = add nuw nsw i64 %93, %79, !dbg !339
  %95 = getelementptr inbounds nuw float, ptr %15, i64 %94, !dbg !339
  %96 = load float, ptr %95, align 4, !dbg !339
  %97 = add nuw nsw i64 0, %76, !dbg !339
  %98 = getelementptr inbounds nuw float, ptr %5, i64 %97, !dbg !339
  %99 = load float, ptr %98, align 4, !dbg !339
  %100 = fmul contract float %90, %96, !dbg !345
  %101 = fadd contract float %99, %100, !dbg !346
  store float %101, ptr %98, align 4, !dbg !339
  %102 = add i64 %79, 1, !dbg !339
  br label %78, !dbg !339

103:                                              ; preds = %78
  %104 = add i64 %76, 1, !dbg !339
  br label %75, !dbg !339

105:                                              ; preds = %75
  %106 = add i64 %68, 1, !dbg !339
  br label %67, !dbg !339

107:                                              ; preds = %110, %67
  %108 = phi i64 [ %115, %110 ], [ 0, %67 ], !dbg !339
  %109 = icmp slt i64 %108, %46, !dbg !339
  br i1 %109, label %110, label %116, !dbg !339

110:                                              ; preds = %107
  %111 = add nuw nsw i64 0, %108, !dbg !339
  %112 = getelementptr inbounds nuw float, ptr %6, i64 %111, !dbg !339
  %113 = load float, ptr %112, align 4, !dbg !339
  %114 = getelementptr inbounds nuw float, ptr %4, i64 %111, !dbg !339
  store float %113, ptr %114, align 4, !dbg !339
  %115 = add i64 %108, 1, !dbg !339
  br label %107, !dbg !339

116:                                              ; preds = %119, %107
  %117 = phi i64 [ %124, %119 ], [ 0, %107 ], !dbg !339
  %118 = icmp slt i64 %117, %46, !dbg !339
  br i1 %118, label %119, label %125, !dbg !339

119:                                              ; preds = %116
  %120 = add nuw nsw i64 0, %117, !dbg !339
  %121 = getelementptr inbounds nuw float, ptr %5, i64 %120, !dbg !339
  %122 = load float, ptr %121, align 4, !dbg !339
  %123 = getelementptr inbounds nuw float, ptr %4, i64 %120, !dbg !339
  store float %122, ptr %123, align 4, !dbg !339
  %124 = add i64 %117, 1, !dbg !339
  br label %116, !dbg !339

125:                                              ; preds = %128, %116
  %126 = phi i64 [ %145, %128 ], [ 0, %116 ], !dbg !347
  %127 = icmp slt i64 %126, %46, !dbg !347
  br i1 %127, label %128, label %146, !dbg !347

128:                                              ; preds = %125
  %129 = add i64 0, %126, !dbg !347
  %130 = getelementptr float, ptr %4, i64 %129, !dbg !347
  %131 = load <1 x float>, ptr %130, align 4, !dbg !347
  %132 = fadd contract <1 x float> %131, zeroinitializer, !dbg !348
  %133 = fcmp ult <1 x float> %132, zeroinitializer, !dbg !349
  %134 = select <1 x i1> %133, <1 x float> zeroinitializer, <1 x float> %132, !dbg !350
  %135 = fcmp ugt <1 x float> %134, splat (float 6.000000e+00), !dbg !351
  %136 = select <1 x i1> %135, <1 x float> splat (float 6.000000e+00), <1 x float> %134, !dbg !352
  %137 = extractelement <1 x float> %136, i64 0, !dbg !347
  %138 = add i64 %35, %38, !dbg !347
  %139 = add i64 %41, %126, !dbg !347
  %140 = mul nuw nsw i64 %57, 196, !dbg !347
  %141 = mul nuw nsw i64 %138, 14, !dbg !347
  %142 = add nuw nsw i64 %140, %141, !dbg !347
  %143 = add nuw nsw i64 %142, %139, !dbg !347
  %144 = getelementptr inbounds nuw float, ptr %20, i64 %143, !dbg !347
  store float %137, ptr %144, align 4, !dbg !347
  %145 = add i64 %126, 1, !dbg !347
  br label %125, !dbg !347

146:                                              ; preds = %125
  %147 = add i64 %54, 1, !dbg !339
  br label %53, !dbg !339

148:                                              ; preds = %53
  %149 = add i64 %41, 8, !dbg !339
  br label %40, !dbg !339

150:                                              ; preds = %40
  %151 = add i64 %38, 1, !dbg !339
  br label %37, !dbg !339

152:                                              ; preds = %37
  ret i32 0, !dbg !353
}

define internal i32 @"main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !354 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !355
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !355
  %6 = load ptr, ptr %5, align 8, !dbg !355
  %7 = getelementptr float, ptr %6, i64 802816, !dbg !355
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !355
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !356
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !356
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !356
  %11 = load ptr, ptr %10, align 8, !dbg !356
  %12 = getelementptr float, ptr %11, i64 3581952, !dbg !356
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !356
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !357
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !357
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !357
  %16 = load ptr, ptr %15, align 8, !dbg !357
  %17 = getelementptr float, ptr %16, i64 401408, !dbg !357
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !357
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !358
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !358
  %20 = zext i32 %19 to i64, !dbg !358
  %21 = sdiv i64 %20, 2, !dbg !358
  %22 = mul i64 %21, 2, !dbg !358
  %23 = icmp ne i64 %20, %22, !dbg !358
  %24 = icmp slt i64 %20, 0, !dbg !358
  %25 = and i1 %23, %24, !dbg !358
  %26 = add i64 %21, -1, !dbg !358
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !358
  %28 = srem i64 %20, 2, !dbg !358
  %29 = icmp slt i64 %28, 0, !dbg !358
  %30 = add nsw i64 %28, 2, !dbg !358
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !358
  %32 = mul nsw i64 %27, 64, !dbg !358
  %33 = mul nsw i64 %31, 7, !dbg !358
  br label %34, !dbg !358

34:                                               ; preds = %158, %3
  %35 = phi i64 [ %159, %158 ], [ 0, %3 ], !dbg !358
  %36 = icmp slt i64 %35, 64, !dbg !358
  br i1 %36, label %37, label %160, !dbg !358

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !358
  br label %39, !dbg !358

39:                                               ; preds = %156, %37
  %40 = phi i64 [ %157, %156 ], [ 0, %37 ], !dbg !358
  %41 = icmp slt i64 %40, 7, !dbg !358
  br i1 %41, label %42, label %158, !dbg !358

42:                                               ; preds = %141, %39
  %43 = phi i64 [ %150, %141 ], [ 0, %39 ], !dbg !358
  %44 = icmp slt i64 %43, 14, !dbg !358
  br i1 %44, label %45, label %156, !dbg !358

45:                                               ; preds = %49, %42
  %46 = phi i64 [ %140, %49 ], [ 0, %42 ], !dbg !358
  %47 = phi <1 x float> [ %139, %49 ], [ zeroinitializer, %42 ], !dbg !358
  %48 = icmp slt i64 %46, 256, !dbg !358
  br i1 %48, label %49, label %141, !dbg !358

49:                                               ; preds = %45
  %50 = add i64 %40, %33, !dbg !358
  %51 = mul i64 %46, 196, !dbg !358
  %52 = mul i64 %50, 14, !dbg !358
  %53 = add i64 %51, %52, !dbg !358
  %54 = add i64 %53, %43, !dbg !358
  %55 = getelementptr float, ptr %7, i64 %54, !dbg !358
  %56 = load <1 x float>, ptr %55, align 4, !dbg !358
  %57 = add i64 %46, 1, !dbg !358
  %58 = mul i64 %57, 196, !dbg !358
  %59 = add i64 %58, %52, !dbg !358
  %60 = add i64 %59, %43, !dbg !358
  %61 = getelementptr float, ptr %7, i64 %60, !dbg !358
  %62 = load <1 x float>, ptr %61, align 4, !dbg !358
  %63 = add i64 %46, 2, !dbg !358
  %64 = mul i64 %63, 196, !dbg !358
  %65 = add i64 %64, %52, !dbg !358
  %66 = add i64 %65, %43, !dbg !358
  %67 = getelementptr float, ptr %7, i64 %66, !dbg !358
  %68 = load <1 x float>, ptr %67, align 4, !dbg !358
  %69 = add i64 %46, 3, !dbg !358
  %70 = mul i64 %69, 196, !dbg !358
  %71 = add i64 %70, %52, !dbg !358
  %72 = add i64 %71, %43, !dbg !358
  %73 = getelementptr float, ptr %7, i64 %72, !dbg !358
  %74 = load <1 x float>, ptr %73, align 4, !dbg !358
  %75 = add i64 %46, 4, !dbg !358
  %76 = mul i64 %75, 196, !dbg !358
  %77 = add i64 %76, %52, !dbg !358
  %78 = add i64 %77, %43, !dbg !358
  %79 = getelementptr float, ptr %7, i64 %78, !dbg !358
  %80 = load <1 x float>, ptr %79, align 4, !dbg !358
  %81 = add i64 %46, 5, !dbg !358
  %82 = mul i64 %81, 196, !dbg !358
  %83 = add i64 %82, %52, !dbg !358
  %84 = add i64 %83, %43, !dbg !358
  %85 = getelementptr float, ptr %7, i64 %84, !dbg !358
  %86 = load <1 x float>, ptr %85, align 4, !dbg !358
  %87 = add i64 %46, 6, !dbg !358
  %88 = mul i64 %87, 196, !dbg !358
  %89 = add i64 %88, %52, !dbg !358
  %90 = add i64 %89, %43, !dbg !358
  %91 = getelementptr float, ptr %7, i64 %90, !dbg !358
  %92 = load <1 x float>, ptr %91, align 4, !dbg !358
  %93 = add i64 %46, 7, !dbg !358
  %94 = mul i64 %93, 196, !dbg !358
  %95 = add i64 %94, %52, !dbg !358
  %96 = add i64 %95, %43, !dbg !358
  %97 = getelementptr float, ptr %7, i64 %96, !dbg !358
  %98 = load <1 x float>, ptr %97, align 4, !dbg !358
  %99 = mul nuw nsw i64 %38, 256, !dbg !359
  %100 = add nuw nsw i64 %99, %46, !dbg !359
  %101 = getelementptr inbounds nuw float, ptr %12, i64 %100, !dbg !359
  %102 = load float, ptr %101, align 4, !dbg !359
  %103 = insertelement <1 x float> poison, float %102, i32 0, !dbg !359
  %104 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %56, <1 x float> %103, <1 x float> %47), !dbg !359
  %105 = add nuw nsw i64 %99, %57, !dbg !359
  %106 = getelementptr inbounds nuw float, ptr %12, i64 %105, !dbg !359
  %107 = load float, ptr %106, align 4, !dbg !359
  %108 = insertelement <1 x float> poison, float %107, i32 0, !dbg !359
  %109 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %108, <1 x float> %104), !dbg !359
  %110 = add nuw nsw i64 %99, %63, !dbg !359
  %111 = getelementptr inbounds nuw float, ptr %12, i64 %110, !dbg !359
  %112 = load float, ptr %111, align 4, !dbg !359
  %113 = insertelement <1 x float> poison, float %112, i32 0, !dbg !359
  %114 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %68, <1 x float> %113, <1 x float> %109), !dbg !359
  %115 = add nuw nsw i64 %99, %69, !dbg !359
  %116 = getelementptr inbounds nuw float, ptr %12, i64 %115, !dbg !359
  %117 = load float, ptr %116, align 4, !dbg !359
  %118 = insertelement <1 x float> poison, float %117, i32 0, !dbg !359
  %119 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %74, <1 x float> %118, <1 x float> %114), !dbg !359
  %120 = add nuw nsw i64 %99, %75, !dbg !359
  %121 = getelementptr inbounds nuw float, ptr %12, i64 %120, !dbg !359
  %122 = load float, ptr %121, align 4, !dbg !359
  %123 = insertelement <1 x float> poison, float %122, i32 0, !dbg !359
  %124 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %80, <1 x float> %123, <1 x float> %119), !dbg !359
  %125 = add nuw nsw i64 %99, %81, !dbg !359
  %126 = getelementptr inbounds nuw float, ptr %12, i64 %125, !dbg !359
  %127 = load float, ptr %126, align 4, !dbg !359
  %128 = insertelement <1 x float> poison, float %127, i32 0, !dbg !359
  %129 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %86, <1 x float> %128, <1 x float> %124), !dbg !359
  %130 = add nuw nsw i64 %99, %87, !dbg !359
  %131 = getelementptr inbounds nuw float, ptr %12, i64 %130, !dbg !359
  %132 = load float, ptr %131, align 4, !dbg !359
  %133 = insertelement <1 x float> poison, float %132, i32 0, !dbg !359
  %134 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %92, <1 x float> %133, <1 x float> %129), !dbg !359
  %135 = add nuw nsw i64 %99, %93, !dbg !359
  %136 = getelementptr inbounds nuw float, ptr %12, i64 %135, !dbg !359
  %137 = load float, ptr %136, align 4, !dbg !359
  %138 = insertelement <1 x float> poison, float %137, i32 0, !dbg !359
  %139 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %98, <1 x float> %138, <1 x float> %134), !dbg !359
  %140 = add i64 %46, 8, !dbg !358
  br label %45, !dbg !358

141:                                              ; preds = %45
  %142 = fadd contract <1 x float> %47, zeroinitializer, !dbg !360
  %143 = fcmp ult <1 x float> %142, zeroinitializer, !dbg !361
  %144 = select <1 x i1> %143, <1 x float> zeroinitializer, <1 x float> %142, !dbg !362
  %145 = fcmp ugt <1 x float> %144, splat (float 6.000000e+00), !dbg !363
  %146 = select <1 x i1> %145, <1 x float> splat (float 6.000000e+00), <1 x float> %144, !dbg !364
  %147 = extractelement <1 x float> %146, i64 0, !dbg !358
  %148 = add i64 %33, %40, !dbg !358
  %149 = add i64 %148, 1, !dbg !358
  %150 = add i64 %43, 1, !dbg !358
  %151 = mul nuw nsw i64 %38, 256, !dbg !358
  %152 = mul nuw nsw i64 %149, 16, !dbg !358
  %153 = add nuw nsw i64 %151, %152, !dbg !358
  %154 = add nuw nsw i64 %153, %150, !dbg !358
  %155 = getelementptr inbounds nuw float, ptr %17, i64 %154, !dbg !358
  store float %147, ptr %155, align 4, !dbg !358
  br label %42, !dbg !358

156:                                              ; preds = %42
  %157 = add i64 %40, 1, !dbg !358
  br label %39, !dbg !358

158:                                              ; preds = %39
  %159 = add i64 %35, 1, !dbg !358
  br label %34, !dbg !358

160:                                              ; preds = %34
  ret i32 0, !dbg !365
}

define internal i32 @"main_graph$async_dispatch_17_conv_14x14x512x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !366 {
  %4 = alloca float, i64 8, align 64, !dbg !367
  %5 = alloca float, i64 8, align 64, !dbg !367
  %6 = alloca float, i64 8, align 64, !dbg !368
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !369
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 9, !dbg !369
  %9 = load i32, ptr %8, align 4, !dbg !369
  %10 = getelementptr i32, ptr %8, i32 1, !dbg !370
  %11 = load i32, ptr %10, align 4, !dbg !370
  %12 = zext i32 %9 to i64, !dbg !371
  %13 = zext i32 %11 to i64, !dbg !372
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !373
  %15 = load ptr, ptr %14, align 8, !dbg !373
  %16 = mul i64 %12, 8, !dbg !373
  %17 = udiv i64 %16, 32, !dbg !373
  %18 = getelementptr float, ptr %15, i64 %17, !dbg !373
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !373
  %19 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !374
  %20 = extractvalue %iree_hal_executable_dispatch_state_v0_t %19, 10, !dbg !374
  %21 = getelementptr ptr, ptr %20, i32 1, !dbg !374
  %22 = load ptr, ptr %21, align 8, !dbg !374
  %23 = mul i64 %13, 8, !dbg !374
  %24 = udiv i64 %23, 32, !dbg !374
  %25 = getelementptr float, ptr %22, i64 %24, !dbg !374
  call void @llvm.assume(i1 true) [ "align"(ptr %25, i64 64) ], !dbg !374
  %26 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !375
  %27 = extractvalue %iree_hal_executable_dispatch_state_v0_t %26, 10, !dbg !375
  %28 = getelementptr ptr, ptr %27, i32 2, !dbg !375
  %29 = load ptr, ptr %28, align 8, !dbg !375
  %30 = getelementptr float, ptr %29, i64 802816, !dbg !375
  call void @llvm.assume(i1 true) [ "align"(ptr %30, i64 64) ], !dbg !375
  %31 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !367
  %32 = extractvalue %iree_hal_executable_workgroup_state_v0_t %31, 0, !dbg !367
  %33 = zext i32 %32 to i64, !dbg !367
  %34 = mul nsw i64 %33, 32, !dbg !367
  br label %35, !dbg !367

35:                                               ; preds = %142, %3
  %36 = phi i64 [ %143, %142 ], [ 0, %3 ], !dbg !367
  %37 = icmp slt i64 %36, 14, !dbg !367
  br i1 %37, label %38, label %144, !dbg !367

38:                                               ; preds = %140, %35
  %39 = phi i64 [ %141, %140 ], [ 0, %35 ], !dbg !367
  %40 = icmp slt i64 %39, 14, !dbg !367
  br i1 %40, label %41, label %142, !dbg !367

41:                                               ; preds = %38
  %42 = sub i64 14, %39, !dbg !367
  %43 = icmp slt i64 %42, 8, !dbg !367
  %44 = select i1 %43, i64 %42, i64 8, !dbg !367
  %45 = trunc i64 %44 to i32, !dbg !376
  %46 = insertelement <8 x i32> poison, i32 %45, i32 0, !dbg !376
  %47 = shufflevector <8 x i32> %46, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !376
  %48 = icmp sgt <8 x i32> %47, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !376
  %49 = getelementptr float, ptr %6, i64 0, !dbg !376
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %49, i32 4, <8 x i1> %48), !dbg !376
  br label %50, !dbg !367

50:                                               ; preds = %138, %41
  %51 = phi i64 [ %139, %138 ], [ 0, %41 ], !dbg !367
  %52 = icmp slt i64 %51, 32, !dbg !367
  br i1 %52, label %53, label %140, !dbg !367

53:                                               ; preds = %50
  %54 = add i64 %51, %34, !dbg !367
  br label %55, !dbg !367

55:                                               ; preds = %58, %53
  %56 = phi i64 [ %63, %58 ], [ 0, %53 ], !dbg !367
  %57 = icmp slt i64 %56, %44, !dbg !367
  br i1 %57, label %58, label %64, !dbg !367

58:                                               ; preds = %55
  %59 = add nuw nsw i64 0, %56, !dbg !367
  %60 = getelementptr inbounds nuw float, ptr %6, i64 %59, !dbg !367
  %61 = load float, ptr %60, align 4, !dbg !367
  %62 = getelementptr inbounds nuw float, ptr %5, i64 %59, !dbg !367
  store float %61, ptr %62, align 4, !dbg !367
  %63 = add i64 %56, 1, !dbg !367
  br label %55, !dbg !367

64:                                               ; preds = %98, %55
  %65 = phi i64 [ %99, %98 ], [ 0, %55 ], !dbg !367
  %66 = icmp slt i64 %65, 3, !dbg !367
  br i1 %66, label %67, label %100, !dbg !367

67:                                               ; preds = %64
  %68 = add i64 %65, %36, !dbg !367
  br label %69, !dbg !367

69:                                               ; preds = %96, %67
  %70 = phi i64 [ %97, %96 ], [ 0, %67 ], !dbg !367
  %71 = icmp slt i64 %70, %44, !dbg !367
  br i1 %71, label %72, label %98, !dbg !367

72:                                               ; preds = %75, %69
  %73 = phi i64 [ %95, %75 ], [ 0, %69 ], !dbg !367
  %74 = icmp slt i64 %73, 3, !dbg !367
  br i1 %74, label %75, label %96, !dbg !367

75:                                               ; preds = %72
  %76 = add i64 %39, %70, !dbg !367
  %77 = add i64 %76, %73, !dbg !367
  %78 = mul nuw nsw i64 %54, 256, !dbg !367
  %79 = mul nuw nsw i64 %68, 16, !dbg !367
  %80 = add nuw nsw i64 %78, %79, !dbg !367
  %81 = add nuw nsw i64 %80, %77, !dbg !367
  %82 = getelementptr inbounds nuw float, ptr %18, i64 %81, !dbg !367
  %83 = load float, ptr %82, align 4, !dbg !367
  %84 = mul nuw nsw i64 %54, 9, !dbg !367
  %85 = mul nuw nsw i64 %65, 3, !dbg !367
  %86 = add nuw nsw i64 %84, %85, !dbg !367
  %87 = add nuw nsw i64 %86, %73, !dbg !367
  %88 = getelementptr inbounds nuw float, ptr %25, i64 %87, !dbg !367
  %89 = load float, ptr %88, align 4, !dbg !367
  %90 = add nuw nsw i64 0, %70, !dbg !367
  %91 = getelementptr inbounds nuw float, ptr %5, i64 %90, !dbg !367
  %92 = load float, ptr %91, align 4, !dbg !367
  %93 = fmul contract float %83, %89, !dbg !377
  %94 = fadd contract float %92, %93, !dbg !378
  store float %94, ptr %91, align 4, !dbg !367
  %95 = add i64 %73, 1, !dbg !367
  br label %72, !dbg !367

96:                                               ; preds = %72
  %97 = add i64 %70, 1, !dbg !367
  br label %69, !dbg !367

98:                                               ; preds = %69
  %99 = add i64 %65, 1, !dbg !367
  br label %64, !dbg !367

100:                                              ; preds = %103, %64
  %101 = phi i64 [ %108, %103 ], [ 0, %64 ], !dbg !367
  %102 = icmp slt i64 %101, %44, !dbg !367
  br i1 %102, label %103, label %109, !dbg !367

103:                                              ; preds = %100
  %104 = add nuw nsw i64 0, %101, !dbg !367
  %105 = getelementptr inbounds nuw float, ptr %6, i64 %104, !dbg !367
  %106 = load float, ptr %105, align 4, !dbg !367
  %107 = getelementptr inbounds nuw float, ptr %4, i64 %104, !dbg !367
  store float %106, ptr %107, align 4, !dbg !367
  %108 = add i64 %101, 1, !dbg !367
  br label %100, !dbg !367

109:                                              ; preds = %112, %100
  %110 = phi i64 [ %117, %112 ], [ 0, %100 ], !dbg !367
  %111 = icmp slt i64 %110, %44, !dbg !367
  br i1 %111, label %112, label %118, !dbg !367

112:                                              ; preds = %109
  %113 = add nuw nsw i64 0, %110, !dbg !367
  %114 = getelementptr inbounds nuw float, ptr %5, i64 %113, !dbg !367
  %115 = load float, ptr %114, align 4, !dbg !367
  %116 = getelementptr inbounds nuw float, ptr %4, i64 %113, !dbg !367
  store float %115, ptr %116, align 4, !dbg !367
  %117 = add i64 %110, 1, !dbg !367
  br label %109, !dbg !367

118:                                              ; preds = %121, %109
  %119 = phi i64 [ %137, %121 ], [ 0, %109 ], !dbg !379
  %120 = icmp slt i64 %119, %44, !dbg !379
  br i1 %120, label %121, label %138, !dbg !379

121:                                              ; preds = %118
  %122 = add i64 0, %119, !dbg !379
  %123 = getelementptr float, ptr %4, i64 %122, !dbg !379
  %124 = load <1 x float>, ptr %123, align 4, !dbg !379
  %125 = fadd contract <1 x float> %124, zeroinitializer, !dbg !380
  %126 = fcmp ult <1 x float> %125, zeroinitializer, !dbg !381
  %127 = select <1 x i1> %126, <1 x float> zeroinitializer, <1 x float> %125, !dbg !382
  %128 = fcmp ugt <1 x float> %127, splat (float 6.000000e+00), !dbg !383
  %129 = select <1 x i1> %128, <1 x float> splat (float 6.000000e+00), <1 x float> %127, !dbg !384
  %130 = extractelement <1 x float> %129, i64 0, !dbg !379
  %131 = add i64 %39, %119, !dbg !379
  %132 = mul nuw nsw i64 %54, 196, !dbg !379
  %133 = mul nuw nsw i64 %36, 14, !dbg !379
  %134 = add nuw nsw i64 %132, %133, !dbg !379
  %135 = add nuw nsw i64 %134, %131, !dbg !379
  %136 = getelementptr inbounds nuw float, ptr %30, i64 %135, !dbg !379
  store float %130, ptr %136, align 4, !dbg !379
  %137 = add i64 %119, 1, !dbg !379
  br label %118, !dbg !379

138:                                              ; preds = %118
  %139 = add i64 %51, 1, !dbg !367
  br label %50, !dbg !367

140:                                              ; preds = %50
  %141 = add i64 %39, 8, !dbg !367
  br label %38, !dbg !367

142:                                              ; preds = %38
  %143 = add i64 %36, 1, !dbg !367
  br label %35, !dbg !367

144:                                              ; preds = %35
  ret i32 0, !dbg !385
}

define internal i32 @"main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !386 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !387
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !387
  %6 = load i32, ptr %5, align 4, !dbg !387
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !388
  %8 = load i32, ptr %7, align 4, !dbg !388
  %9 = zext i32 %6 to i64, !dbg !389
  %10 = zext i32 %8 to i64, !dbg !390
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !391
  %12 = load ptr, ptr %11, align 8, !dbg !391
  %13 = getelementptr float, ptr %12, i64 802816, !dbg !391
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !391
  %14 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !392
  %15 = extractvalue %iree_hal_executable_dispatch_state_v0_t %14, 10, !dbg !392
  %16 = getelementptr ptr, ptr %15, i32 1, !dbg !392
  %17 = load ptr, ptr %16, align 8, !dbg !392
  %18 = mul i64 %9, 8, !dbg !392
  %19 = udiv i64 %18, 32, !dbg !392
  %20 = getelementptr float, ptr %17, i64 %19, !dbg !392
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !392
  %21 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !393
  %22 = extractvalue %iree_hal_executable_dispatch_state_v0_t %21, 10, !dbg !393
  %23 = getelementptr ptr, ptr %22, i32 2, !dbg !393
  %24 = load ptr, ptr %23, align 8, !dbg !393
  %25 = mul i64 %10, 8, !dbg !393
  %26 = udiv i64 %25, 32, !dbg !393
  %27 = getelementptr float, ptr %24, i64 %26, !dbg !393
  call void @llvm.assume(i1 true) [ "align"(ptr %27, i64 64) ], !dbg !393
  %28 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !394
  %29 = extractvalue %iree_hal_executable_workgroup_state_v0_t %28, 0, !dbg !394
  %30 = zext i32 %29 to i64, !dbg !394
  %31 = sdiv i64 %30, 2, !dbg !394
  %32 = mul i64 %31, 2, !dbg !394
  %33 = icmp ne i64 %30, %32, !dbg !394
  %34 = icmp slt i64 %30, 0, !dbg !394
  %35 = and i1 %33, %34, !dbg !394
  %36 = add i64 %31, -1, !dbg !394
  %37 = select i1 %35, i64 %36, i64 %31, !dbg !394
  %38 = srem i64 %30, 2, !dbg !394
  %39 = icmp slt i64 %38, 0, !dbg !394
  %40 = add nsw i64 %38, 2, !dbg !394
  %41 = select i1 %39, i64 %40, i64 %38, !dbg !394
  %42 = mul nsw i64 %37, 64, !dbg !394
  %43 = mul nsw i64 %41, 7, !dbg !394
  br label %44, !dbg !394

44:                                               ; preds = %168, %3
  %45 = phi i64 [ %169, %168 ], [ 0, %3 ], !dbg !394
  %46 = icmp slt i64 %45, 64, !dbg !394
  br i1 %46, label %47, label %170, !dbg !394

47:                                               ; preds = %44
  %48 = add i64 %45, %42, !dbg !394
  br label %49, !dbg !394

49:                                               ; preds = %166, %47
  %50 = phi i64 [ %167, %166 ], [ 0, %47 ], !dbg !394
  %51 = icmp slt i64 %50, 7, !dbg !394
  br i1 %51, label %52, label %168, !dbg !394

52:                                               ; preds = %151, %49
  %53 = phi i64 [ %160, %151 ], [ 0, %49 ], !dbg !394
  %54 = icmp slt i64 %53, 14, !dbg !394
  br i1 %54, label %55, label %166, !dbg !394

55:                                               ; preds = %59, %52
  %56 = phi i64 [ %150, %59 ], [ 0, %52 ], !dbg !394
  %57 = phi <1 x float> [ %149, %59 ], [ zeroinitializer, %52 ], !dbg !394
  %58 = icmp slt i64 %56, 512, !dbg !394
  br i1 %58, label %59, label %151, !dbg !394

59:                                               ; preds = %55
  %60 = add i64 %50, %43, !dbg !394
  %61 = mul i64 %56, 196, !dbg !394
  %62 = mul i64 %60, 14, !dbg !394
  %63 = add i64 %61, %62, !dbg !394
  %64 = add i64 %63, %53, !dbg !394
  %65 = getelementptr float, ptr %13, i64 %64, !dbg !394
  %66 = load <1 x float>, ptr %65, align 4, !dbg !394
  %67 = add i64 %56, 1, !dbg !394
  %68 = mul i64 %67, 196, !dbg !394
  %69 = add i64 %68, %62, !dbg !394
  %70 = add i64 %69, %53, !dbg !394
  %71 = getelementptr float, ptr %13, i64 %70, !dbg !394
  %72 = load <1 x float>, ptr %71, align 4, !dbg !394
  %73 = add i64 %56, 2, !dbg !394
  %74 = mul i64 %73, 196, !dbg !394
  %75 = add i64 %74, %62, !dbg !394
  %76 = add i64 %75, %53, !dbg !394
  %77 = getelementptr float, ptr %13, i64 %76, !dbg !394
  %78 = load <1 x float>, ptr %77, align 4, !dbg !394
  %79 = add i64 %56, 3, !dbg !394
  %80 = mul i64 %79, 196, !dbg !394
  %81 = add i64 %80, %62, !dbg !394
  %82 = add i64 %81, %53, !dbg !394
  %83 = getelementptr float, ptr %13, i64 %82, !dbg !394
  %84 = load <1 x float>, ptr %83, align 4, !dbg !394
  %85 = add i64 %56, 4, !dbg !394
  %86 = mul i64 %85, 196, !dbg !394
  %87 = add i64 %86, %62, !dbg !394
  %88 = add i64 %87, %53, !dbg !394
  %89 = getelementptr float, ptr %13, i64 %88, !dbg !394
  %90 = load <1 x float>, ptr %89, align 4, !dbg !394
  %91 = add i64 %56, 5, !dbg !394
  %92 = mul i64 %91, 196, !dbg !394
  %93 = add i64 %92, %62, !dbg !394
  %94 = add i64 %93, %53, !dbg !394
  %95 = getelementptr float, ptr %13, i64 %94, !dbg !394
  %96 = load <1 x float>, ptr %95, align 4, !dbg !394
  %97 = add i64 %56, 6, !dbg !394
  %98 = mul i64 %97, 196, !dbg !394
  %99 = add i64 %98, %62, !dbg !394
  %100 = add i64 %99, %53, !dbg !394
  %101 = getelementptr float, ptr %13, i64 %100, !dbg !394
  %102 = load <1 x float>, ptr %101, align 4, !dbg !394
  %103 = add i64 %56, 7, !dbg !394
  %104 = mul i64 %103, 196, !dbg !394
  %105 = add i64 %104, %62, !dbg !394
  %106 = add i64 %105, %53, !dbg !394
  %107 = getelementptr float, ptr %13, i64 %106, !dbg !394
  %108 = load <1 x float>, ptr %107, align 4, !dbg !394
  %109 = mul nuw nsw i64 %48, 512, !dbg !395
  %110 = add nuw nsw i64 %109, %56, !dbg !395
  %111 = getelementptr inbounds nuw float, ptr %20, i64 %110, !dbg !395
  %112 = load float, ptr %111, align 4, !dbg !395
  %113 = insertelement <1 x float> poison, float %112, i32 0, !dbg !395
  %114 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %113, <1 x float> %57), !dbg !395
  %115 = add nuw nsw i64 %109, %67, !dbg !395
  %116 = getelementptr inbounds nuw float, ptr %20, i64 %115, !dbg !395
  %117 = load float, ptr %116, align 4, !dbg !395
  %118 = insertelement <1 x float> poison, float %117, i32 0, !dbg !395
  %119 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %118, <1 x float> %114), !dbg !395
  %120 = add nuw nsw i64 %109, %73, !dbg !395
  %121 = getelementptr inbounds nuw float, ptr %20, i64 %120, !dbg !395
  %122 = load float, ptr %121, align 4, !dbg !395
  %123 = insertelement <1 x float> poison, float %122, i32 0, !dbg !395
  %124 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %78, <1 x float> %123, <1 x float> %119), !dbg !395
  %125 = add nuw nsw i64 %109, %79, !dbg !395
  %126 = getelementptr inbounds nuw float, ptr %20, i64 %125, !dbg !395
  %127 = load float, ptr %126, align 4, !dbg !395
  %128 = insertelement <1 x float> poison, float %127, i32 0, !dbg !395
  %129 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %84, <1 x float> %128, <1 x float> %124), !dbg !395
  %130 = add nuw nsw i64 %109, %85, !dbg !395
  %131 = getelementptr inbounds nuw float, ptr %20, i64 %130, !dbg !395
  %132 = load float, ptr %131, align 4, !dbg !395
  %133 = insertelement <1 x float> poison, float %132, i32 0, !dbg !395
  %134 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %90, <1 x float> %133, <1 x float> %129), !dbg !395
  %135 = add nuw nsw i64 %109, %91, !dbg !395
  %136 = getelementptr inbounds nuw float, ptr %20, i64 %135, !dbg !395
  %137 = load float, ptr %136, align 4, !dbg !395
  %138 = insertelement <1 x float> poison, float %137, i32 0, !dbg !395
  %139 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %96, <1 x float> %138, <1 x float> %134), !dbg !395
  %140 = add nuw nsw i64 %109, %97, !dbg !395
  %141 = getelementptr inbounds nuw float, ptr %20, i64 %140, !dbg !395
  %142 = load float, ptr %141, align 4, !dbg !395
  %143 = insertelement <1 x float> poison, float %142, i32 0, !dbg !395
  %144 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %102, <1 x float> %143, <1 x float> %139), !dbg !395
  %145 = add nuw nsw i64 %109, %103, !dbg !395
  %146 = getelementptr inbounds nuw float, ptr %20, i64 %145, !dbg !395
  %147 = load float, ptr %146, align 4, !dbg !395
  %148 = insertelement <1 x float> poison, float %147, i32 0, !dbg !395
  %149 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %108, <1 x float> %148, <1 x float> %144), !dbg !395
  %150 = add i64 %56, 8, !dbg !394
  br label %55, !dbg !394

151:                                              ; preds = %55
  %152 = fadd contract <1 x float> %57, zeroinitializer, !dbg !396
  %153 = fcmp ult <1 x float> %152, zeroinitializer, !dbg !397
  %154 = select <1 x i1> %153, <1 x float> zeroinitializer, <1 x float> %152, !dbg !398
  %155 = fcmp ugt <1 x float> %154, splat (float 6.000000e+00), !dbg !399
  %156 = select <1 x i1> %155, <1 x float> splat (float 6.000000e+00), <1 x float> %154, !dbg !400
  %157 = extractelement <1 x float> %156, i64 0, !dbg !394
  %158 = add i64 %43, %50, !dbg !394
  %159 = add i64 %158, 1, !dbg !394
  %160 = add i64 %53, 1, !dbg !394
  %161 = mul nuw nsw i64 %48, 256, !dbg !394
  %162 = mul nuw nsw i64 %159, 16, !dbg !394
  %163 = add nuw nsw i64 %161, %162, !dbg !394
  %164 = add nuw nsw i64 %163, %160, !dbg !394
  %165 = getelementptr inbounds nuw float, ptr %27, i64 %164, !dbg !394
  store float %157, ptr %165, align 4, !dbg !394
  br label %52, !dbg !394

166:                                              ; preds = %52
  %167 = add i64 %50, 1, !dbg !394
  br label %49, !dbg !394

168:                                              ; preds = %49
  %169 = add i64 %45, 1, !dbg !394
  br label %44, !dbg !394

170:                                              ; preds = %44
  ret i32 0, !dbg !401
}

define internal i32 @"main_graph$async_dispatch_27_conv_7x7x512x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !402 {
  %4 = alloca float, i64 7, align 64, !dbg !403
  %5 = alloca float, i64 7, align 64, !dbg !404
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !405
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !405
  %8 = load ptr, ptr %7, align 8, !dbg !405
  %9 = getelementptr float, ptr %8, i64 1773328, !dbg !405
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !405
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !406
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !406
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !406
  %13 = load ptr, ptr %12, align 8, !dbg !406
  %14 = getelementptr float, ptr %13, i64 3896768, !dbg !406
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !406
  %15 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !407
  %16 = extractvalue %iree_hal_executable_dispatch_state_v0_t %15, 10, !dbg !407
  %17 = getelementptr ptr, ptr %16, i32 2, !dbg !407
  %18 = load ptr, ptr %17, align 8, !dbg !407
  %19 = getelementptr float, ptr %18, i64 802816, !dbg !407
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !407
  %20 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !403
  %21 = extractvalue %iree_hal_executable_workgroup_state_v0_t %20, 0, !dbg !403
  %22 = zext i32 %21 to i64, !dbg !403
  %23 = mul nsw i64 %22, 32, !dbg !403
  %24 = getelementptr float, ptr %5, i64 0, !dbg !408
  store <7 x float> zeroinitializer, ptr %24, align 4, !dbg !408
  br label %25, !dbg !403

25:                                               ; preds = %100, %3
  %26 = phi i64 [ %101, %100 ], [ 0, %3 ], !dbg !403
  %27 = icmp slt i64 %26, 7, !dbg !403
  br i1 %27, label %28, label %102, !dbg !403

28:                                               ; preds = %98, %25
  %29 = phi i64 [ %99, %98 ], [ 0, %25 ], !dbg !403
  %30 = icmp slt i64 %29, 32, !dbg !403
  br i1 %30, label %31, label %100, !dbg !403

31:                                               ; preds = %28
  %32 = add i64 %29, %23, !dbg !403
  br label %33, !dbg !403

33:                                               ; preds = %36, %31
  %34 = phi i64 [ %41, %36 ], [ 0, %31 ], !dbg !403
  %35 = icmp slt i64 %34, 7, !dbg !403
  br i1 %35, label %36, label %42, !dbg !403

36:                                               ; preds = %33
  %37 = add nuw nsw i64 0, %34, !dbg !403
  %38 = getelementptr inbounds nuw float, ptr %5, i64 %37, !dbg !403
  %39 = load float, ptr %38, align 4, !dbg !403
  %40 = getelementptr inbounds nuw float, ptr %4, i64 %37, !dbg !403
  store float %39, ptr %40, align 4, !dbg !403
  %41 = add i64 %34, 1, !dbg !403
  br label %33, !dbg !403

42:                                               ; preds = %77, %33
  %43 = phi i64 [ %78, %77 ], [ 0, %33 ], !dbg !403
  %44 = icmp slt i64 %43, 3, !dbg !403
  br i1 %44, label %45, label %79, !dbg !403

45:                                               ; preds = %42
  %46 = mul nsw i64 %26, 2, !dbg !403
  %47 = add i64 %46, %43, !dbg !403
  br label %48, !dbg !403

48:                                               ; preds = %75, %45
  %49 = phi i64 [ %76, %75 ], [ 0, %45 ], !dbg !403
  %50 = icmp slt i64 %49, 7, !dbg !403
  br i1 %50, label %51, label %77, !dbg !403

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %74, %54 ], [ 0, %48 ], !dbg !403
  %53 = icmp slt i64 %52, 3, !dbg !403
  br i1 %53, label %54, label %75, !dbg !403

54:                                               ; preds = %51
  %55 = mul nsw i64 %49, 2, !dbg !403
  %56 = add i64 %55, %52, !dbg !403
  %57 = mul nuw nsw i64 %32, 256, !dbg !403
  %58 = mul nuw nsw i64 %47, 16, !dbg !403
  %59 = add nuw nsw i64 %57, %58, !dbg !403
  %60 = add nuw nsw i64 %59, %56, !dbg !403
  %61 = getelementptr inbounds nuw float, ptr %9, i64 %60, !dbg !403
  %62 = load float, ptr %61, align 4, !dbg !403
  %63 = mul nuw nsw i64 %32, 9, !dbg !403
  %64 = mul nuw nsw i64 %43, 3, !dbg !403
  %65 = add nuw nsw i64 %63, %64, !dbg !403
  %66 = add nuw nsw i64 %65, %52, !dbg !403
  %67 = getelementptr inbounds nuw float, ptr %14, i64 %66, !dbg !403
  %68 = load float, ptr %67, align 4, !dbg !403
  %69 = add nuw nsw i64 0, %49, !dbg !403
  %70 = getelementptr inbounds nuw float, ptr %4, i64 %69, !dbg !403
  %71 = load float, ptr %70, align 4, !dbg !403
  %72 = fmul contract float %62, %68, !dbg !409
  %73 = fadd contract float %71, %72, !dbg !410
  store float %73, ptr %70, align 4, !dbg !403
  %74 = add i64 %52, 1, !dbg !403
  br label %51, !dbg !403

75:                                               ; preds = %51
  %76 = add i64 %49, 1, !dbg !403
  br label %48, !dbg !403

77:                                               ; preds = %48
  %78 = add i64 %43, 1, !dbg !403
  br label %42, !dbg !403

79:                                               ; preds = %82, %42
  %80 = phi i64 [ %97, %82 ], [ 0, %42 ], !dbg !411
  %81 = icmp slt i64 %80, 7, !dbg !411
  br i1 %81, label %82, label %98, !dbg !411

82:                                               ; preds = %79
  %83 = add i64 0, %80, !dbg !411
  %84 = getelementptr float, ptr %4, i64 %83, !dbg !411
  %85 = load <1 x float>, ptr %84, align 4, !dbg !411
  %86 = fadd contract <1 x float> %85, zeroinitializer, !dbg !412
  %87 = fcmp ult <1 x float> %86, zeroinitializer, !dbg !413
  %88 = select <1 x i1> %87, <1 x float> zeroinitializer, <1 x float> %86, !dbg !414
  %89 = fcmp ugt <1 x float> %88, splat (float 6.000000e+00), !dbg !415
  %90 = select <1 x i1> %89, <1 x float> splat (float 6.000000e+00), <1 x float> %88, !dbg !416
  %91 = extractelement <1 x float> %90, i64 0, !dbg !411
  %92 = mul nuw nsw i64 %32, 49, !dbg !411
  %93 = mul nuw nsw i64 %26, 7, !dbg !411
  %94 = add nuw nsw i64 %92, %93, !dbg !411
  %95 = add nuw nsw i64 %94, %80, !dbg !411
  %96 = getelementptr inbounds nuw float, ptr %19, i64 %95, !dbg !411
  store float %91, ptr %96, align 4, !dbg !411
  %97 = add i64 %80, 1, !dbg !411
  br label %79, !dbg !411

98:                                               ; preds = %79
  %99 = add i64 %29, 1, !dbg !403
  br label %28, !dbg !403

100:                                              ; preds = %28
  %101 = add i64 %26, 1, !dbg !403
  br label %25, !dbg !403

102:                                              ; preds = %25
  ret i32 0, !dbg !417
}

define internal i32 @"main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !418 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !419
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !419
  %6 = load ptr, ptr %5, align 8, !dbg !419
  %7 = getelementptr float, ptr %6, i64 802816, !dbg !419
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !419
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !420
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !420
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !420
  %11 = load ptr, ptr %10, align 8, !dbg !420
  %12 = getelementptr float, ptr %11, i64 1746944, !dbg !420
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !420
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !421
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !421
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !421
  %16 = load ptr, ptr %15, align 8, !dbg !421
  %17 = getelementptr float, ptr %16, i64 827904, !dbg !421
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !421
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !422
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !422
  %20 = zext i32 %19 to i64, !dbg !422
  %21 = mul nsw i64 %20, 64, !dbg !422
  br label %22, !dbg !422

22:                                               ; preds = %144, %3
  %23 = phi i64 [ %145, %144 ], [ 0, %3 ], !dbg !422
  %24 = icmp slt i64 %23, 64, !dbg !422
  br i1 %24, label %25, label %146, !dbg !422

25:                                               ; preds = %22
  %26 = add i64 %23, %21, !dbg !422
  br label %27, !dbg !422

27:                                               ; preds = %142, %25
  %28 = phi i64 [ %143, %142 ], [ 0, %25 ], !dbg !422
  %29 = icmp slt i64 %28, 7, !dbg !422
  br i1 %29, label %30, label %144, !dbg !422

30:                                               ; preds = %128, %27
  %31 = phi i64 [ %136, %128 ], [ 0, %27 ], !dbg !422
  %32 = icmp slt i64 %31, 7, !dbg !422
  br i1 %32, label %33, label %142, !dbg !422

33:                                               ; preds = %37, %30
  %34 = phi i64 [ %127, %37 ], [ 0, %30 ], !dbg !422
  %35 = phi <1 x float> [ %126, %37 ], [ zeroinitializer, %30 ], !dbg !422
  %36 = icmp slt i64 %34, 512, !dbg !422
  br i1 %36, label %37, label %128, !dbg !422

37:                                               ; preds = %33
  %38 = mul i64 %34, 49, !dbg !422
  %39 = mul i64 %28, 7, !dbg !422
  %40 = add i64 %38, %39, !dbg !422
  %41 = add i64 %40, %31, !dbg !422
  %42 = getelementptr float, ptr %7, i64 %41, !dbg !422
  %43 = load <1 x float>, ptr %42, align 4, !dbg !422
  %44 = add i64 %34, 1, !dbg !422
  %45 = mul i64 %44, 49, !dbg !422
  %46 = add i64 %45, %39, !dbg !422
  %47 = add i64 %46, %31, !dbg !422
  %48 = getelementptr float, ptr %7, i64 %47, !dbg !422
  %49 = load <1 x float>, ptr %48, align 4, !dbg !422
  %50 = add i64 %34, 2, !dbg !422
  %51 = mul i64 %50, 49, !dbg !422
  %52 = add i64 %51, %39, !dbg !422
  %53 = add i64 %52, %31, !dbg !422
  %54 = getelementptr float, ptr %7, i64 %53, !dbg !422
  %55 = load <1 x float>, ptr %54, align 4, !dbg !422
  %56 = add i64 %34, 3, !dbg !422
  %57 = mul i64 %56, 49, !dbg !422
  %58 = add i64 %57, %39, !dbg !422
  %59 = add i64 %58, %31, !dbg !422
  %60 = getelementptr float, ptr %7, i64 %59, !dbg !422
  %61 = load <1 x float>, ptr %60, align 4, !dbg !422
  %62 = add i64 %34, 4, !dbg !422
  %63 = mul i64 %62, 49, !dbg !422
  %64 = add i64 %63, %39, !dbg !422
  %65 = add i64 %64, %31, !dbg !422
  %66 = getelementptr float, ptr %7, i64 %65, !dbg !422
  %67 = load <1 x float>, ptr %66, align 4, !dbg !422
  %68 = add i64 %34, 5, !dbg !422
  %69 = mul i64 %68, 49, !dbg !422
  %70 = add i64 %69, %39, !dbg !422
  %71 = add i64 %70, %31, !dbg !422
  %72 = getelementptr float, ptr %7, i64 %71, !dbg !422
  %73 = load <1 x float>, ptr %72, align 4, !dbg !422
  %74 = add i64 %34, 6, !dbg !422
  %75 = mul i64 %74, 49, !dbg !422
  %76 = add i64 %75, %39, !dbg !422
  %77 = add i64 %76, %31, !dbg !422
  %78 = getelementptr float, ptr %7, i64 %77, !dbg !422
  %79 = load <1 x float>, ptr %78, align 4, !dbg !422
  %80 = add i64 %34, 7, !dbg !422
  %81 = mul i64 %80, 49, !dbg !422
  %82 = add i64 %81, %39, !dbg !422
  %83 = add i64 %82, %31, !dbg !422
  %84 = getelementptr float, ptr %7, i64 %83, !dbg !422
  %85 = load <1 x float>, ptr %84, align 4, !dbg !422
  %86 = mul nuw nsw i64 %26, 512, !dbg !423
  %87 = add nuw nsw i64 %86, %34, !dbg !423
  %88 = getelementptr inbounds nuw float, ptr %12, i64 %87, !dbg !423
  %89 = load float, ptr %88, align 4, !dbg !423
  %90 = insertelement <1 x float> poison, float %89, i32 0, !dbg !423
  %91 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %43, <1 x float> %90, <1 x float> %35), !dbg !423
  %92 = add nuw nsw i64 %86, %44, !dbg !423
  %93 = getelementptr inbounds nuw float, ptr %12, i64 %92, !dbg !423
  %94 = load float, ptr %93, align 4, !dbg !423
  %95 = insertelement <1 x float> poison, float %94, i32 0, !dbg !423
  %96 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %49, <1 x float> %95, <1 x float> %91), !dbg !423
  %97 = add nuw nsw i64 %86, %50, !dbg !423
  %98 = getelementptr inbounds nuw float, ptr %12, i64 %97, !dbg !423
  %99 = load float, ptr %98, align 4, !dbg !423
  %100 = insertelement <1 x float> poison, float %99, i32 0, !dbg !423
  %101 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %55, <1 x float> %100, <1 x float> %96), !dbg !423
  %102 = add nuw nsw i64 %86, %56, !dbg !423
  %103 = getelementptr inbounds nuw float, ptr %12, i64 %102, !dbg !423
  %104 = load float, ptr %103, align 4, !dbg !423
  %105 = insertelement <1 x float> poison, float %104, i32 0, !dbg !423
  %106 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %105, <1 x float> %101), !dbg !423
  %107 = add nuw nsw i64 %86, %62, !dbg !423
  %108 = getelementptr inbounds nuw float, ptr %12, i64 %107, !dbg !423
  %109 = load float, ptr %108, align 4, !dbg !423
  %110 = insertelement <1 x float> poison, float %109, i32 0, !dbg !423
  %111 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %110, <1 x float> %106), !dbg !423
  %112 = add nuw nsw i64 %86, %68, !dbg !423
  %113 = getelementptr inbounds nuw float, ptr %12, i64 %112, !dbg !423
  %114 = load float, ptr %113, align 4, !dbg !423
  %115 = insertelement <1 x float> poison, float %114, i32 0, !dbg !423
  %116 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %115, <1 x float> %111), !dbg !423
  %117 = add nuw nsw i64 %86, %74, !dbg !423
  %118 = getelementptr inbounds nuw float, ptr %12, i64 %117, !dbg !423
  %119 = load float, ptr %118, align 4, !dbg !423
  %120 = insertelement <1 x float> poison, float %119, i32 0, !dbg !423
  %121 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %79, <1 x float> %120, <1 x float> %116), !dbg !423
  %122 = add nuw nsw i64 %86, %80, !dbg !423
  %123 = getelementptr inbounds nuw float, ptr %12, i64 %122, !dbg !423
  %124 = load float, ptr %123, align 4, !dbg !423
  %125 = insertelement <1 x float> poison, float %124, i32 0, !dbg !423
  %126 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %85, <1 x float> %125, <1 x float> %121), !dbg !423
  %127 = add i64 %34, 8, !dbg !422
  br label %33, !dbg !422

128:                                              ; preds = %33
  %129 = fadd contract <1 x float> %35, zeroinitializer, !dbg !424
  %130 = fcmp ult <1 x float> %129, zeroinitializer, !dbg !425
  %131 = select <1 x i1> %130, <1 x float> zeroinitializer, <1 x float> %129, !dbg !426
  %132 = fcmp ugt <1 x float> %131, splat (float 6.000000e+00), !dbg !427
  %133 = select <1 x i1> %132, <1 x float> splat (float 6.000000e+00), <1 x float> %131, !dbg !428
  %134 = extractelement <1 x float> %133, i64 0, !dbg !422
  %135 = add i64 %28, 1, !dbg !422
  %136 = add i64 %31, 1, !dbg !422
  %137 = mul nuw nsw i64 %26, 81, !dbg !422
  %138 = mul nuw nsw i64 %135, 9, !dbg !422
  %139 = add nuw nsw i64 %137, %138, !dbg !422
  %140 = add nuw nsw i64 %139, %136, !dbg !422
  %141 = getelementptr inbounds nuw float, ptr %17, i64 %140, !dbg !422
  store float %134, ptr %141, align 4, !dbg !422
  br label %30, !dbg !422

142:                                              ; preds = %30
  %143 = add i64 %28, 1, !dbg !422
  br label %27, !dbg !422

144:                                              ; preds = %27
  %145 = add i64 %23, 1, !dbg !422
  br label %22, !dbg !422

146:                                              ; preds = %22
  ret i32 0, !dbg !429
}

define internal i32 @"main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !430 {
  %4 = alloca float, i64 7, align 64, !dbg !431
  %5 = alloca float, i64 7, align 64, !dbg !432
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !433
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !433
  %8 = load ptr, ptr %7, align 8, !dbg !433
  %9 = getelementptr float, ptr %8, i64 827904, !dbg !433
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !433
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !434
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !434
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !434
  %13 = load ptr, ptr %12, align 8, !dbg !434
  %14 = getelementptr float, ptr %13, i64 3887552, !dbg !434
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !434
  %15 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !435
  %16 = extractvalue %iree_hal_executable_dispatch_state_v0_t %15, 10, !dbg !435
  %17 = getelementptr ptr, ptr %16, i32 2, !dbg !435
  %18 = load ptr, ptr %17, align 8, !dbg !435
  %19 = getelementptr float, ptr %18, i64 910848, !dbg !435
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !435
  %20 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !431
  %21 = extractvalue %iree_hal_executable_workgroup_state_v0_t %20, 0, !dbg !431
  %22 = zext i32 %21 to i64, !dbg !431
  %23 = mul nsw i64 %22, 32, !dbg !431
  %24 = getelementptr float, ptr %5, i64 0, !dbg !436
  store <7 x float> zeroinitializer, ptr %24, align 4, !dbg !436
  br label %25, !dbg !431

25:                                               ; preds = %98, %3
  %26 = phi i64 [ %99, %98 ], [ 0, %3 ], !dbg !431
  %27 = icmp slt i64 %26, 7, !dbg !431
  br i1 %27, label %28, label %100, !dbg !431

28:                                               ; preds = %96, %25
  %29 = phi i64 [ %97, %96 ], [ 0, %25 ], !dbg !431
  %30 = icmp slt i64 %29, 32, !dbg !431
  br i1 %30, label %31, label %98, !dbg !431

31:                                               ; preds = %28
  %32 = add i64 %29, %23, !dbg !431
  br label %33, !dbg !431

33:                                               ; preds = %36, %31
  %34 = phi i64 [ %41, %36 ], [ 0, %31 ], !dbg !431
  %35 = icmp slt i64 %34, 7, !dbg !431
  br i1 %35, label %36, label %42, !dbg !431

36:                                               ; preds = %33
  %37 = add nuw nsw i64 0, %34, !dbg !431
  %38 = getelementptr inbounds nuw float, ptr %5, i64 %37, !dbg !431
  %39 = load float, ptr %38, align 4, !dbg !431
  %40 = getelementptr inbounds nuw float, ptr %4, i64 %37, !dbg !431
  store float %39, ptr %40, align 4, !dbg !431
  %41 = add i64 %34, 1, !dbg !431
  br label %33, !dbg !431

42:                                               ; preds = %75, %33
  %43 = phi i64 [ %76, %75 ], [ 0, %33 ], !dbg !431
  %44 = icmp slt i64 %43, 3, !dbg !431
  br i1 %44, label %45, label %77, !dbg !431

45:                                               ; preds = %42
  %46 = add i64 %43, %26, !dbg !431
  br label %47, !dbg !431

47:                                               ; preds = %73, %45
  %48 = phi i64 [ %74, %73 ], [ 0, %45 ], !dbg !431
  %49 = icmp slt i64 %48, 7, !dbg !431
  br i1 %49, label %50, label %75, !dbg !431

50:                                               ; preds = %53, %47
  %51 = phi i64 [ %72, %53 ], [ 0, %47 ], !dbg !431
  %52 = icmp slt i64 %51, 3, !dbg !431
  br i1 %52, label %53, label %73, !dbg !431

53:                                               ; preds = %50
  %54 = add i64 %48, %51, !dbg !431
  %55 = mul nuw nsw i64 %32, 81, !dbg !431
  %56 = mul nuw nsw i64 %46, 9, !dbg !431
  %57 = add nuw nsw i64 %55, %56, !dbg !431
  %58 = add nuw nsw i64 %57, %54, !dbg !431
  %59 = getelementptr inbounds nuw float, ptr %9, i64 %58, !dbg !431
  %60 = load float, ptr %59, align 4, !dbg !431
  %61 = mul nuw nsw i64 %32, 9, !dbg !431
  %62 = mul nuw nsw i64 %43, 3, !dbg !431
  %63 = add nuw nsw i64 %61, %62, !dbg !431
  %64 = add nuw nsw i64 %63, %51, !dbg !431
  %65 = getelementptr inbounds nuw float, ptr %14, i64 %64, !dbg !431
  %66 = load float, ptr %65, align 4, !dbg !431
  %67 = add nuw nsw i64 0, %48, !dbg !431
  %68 = getelementptr inbounds nuw float, ptr %4, i64 %67, !dbg !431
  %69 = load float, ptr %68, align 4, !dbg !431
  %70 = fmul contract float %60, %66, !dbg !437
  %71 = fadd contract float %69, %70, !dbg !438
  store float %71, ptr %68, align 4, !dbg !431
  %72 = add i64 %51, 1, !dbg !431
  br label %50, !dbg !431

73:                                               ; preds = %50
  %74 = add i64 %48, 1, !dbg !431
  br label %47, !dbg !431

75:                                               ; preds = %47
  %76 = add i64 %43, 1, !dbg !431
  br label %42, !dbg !431

77:                                               ; preds = %80, %42
  %78 = phi i64 [ %95, %80 ], [ 0, %42 ], !dbg !439
  %79 = icmp slt i64 %78, 7, !dbg !439
  br i1 %79, label %80, label %96, !dbg !439

80:                                               ; preds = %77
  %81 = add i64 0, %78, !dbg !439
  %82 = getelementptr float, ptr %4, i64 %81, !dbg !439
  %83 = load <1 x float>, ptr %82, align 4, !dbg !439
  %84 = fadd contract <1 x float> %83, zeroinitializer, !dbg !440
  %85 = fcmp ult <1 x float> %84, zeroinitializer, !dbg !441
  %86 = select <1 x i1> %85, <1 x float> zeroinitializer, <1 x float> %84, !dbg !442
  %87 = fcmp ugt <1 x float> %86, splat (float 6.000000e+00), !dbg !443
  %88 = select <1 x i1> %87, <1 x float> splat (float 6.000000e+00), <1 x float> %86, !dbg !444
  %89 = extractelement <1 x float> %88, i64 0, !dbg !439
  %90 = mul nuw nsw i64 %32, 49, !dbg !439
  %91 = mul nuw nsw i64 %26, 7, !dbg !439
  %92 = add nuw nsw i64 %90, %91, !dbg !439
  %93 = add nuw nsw i64 %92, %78, !dbg !439
  %94 = getelementptr inbounds nuw float, ptr %19, i64 %93, !dbg !439
  store float %89, ptr %94, align 4, !dbg !439
  %95 = add i64 %78, 1, !dbg !439
  br label %77, !dbg !439

96:                                               ; preds = %77
  %97 = add i64 %29, 1, !dbg !431
  br label %28, !dbg !431

98:                                               ; preds = %28
  %99 = add i64 %26, 1, !dbg !431
  br label %25, !dbg !431

100:                                              ; preds = %25
  ret i32 0, !dbg !445
}

define internal i32 @"main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !446 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !447
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !447
  %6 = load ptr, ptr %5, align 8, !dbg !447
  %7 = getelementptr float, ptr %6, i64 910848, !dbg !447
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !447
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !448
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !448
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !448
  %11 = load ptr, ptr %10, align 8, !dbg !448
  %12 = getelementptr float, ptr %11, i64 698368, !dbg !448
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !448
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !449
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !449
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !449
  %16 = load ptr, ptr %15, align 8, !dbg !449
  %17 = getelementptr float, ptr %16, i64 401408, !dbg !449
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !449
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !450
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !450
  %20 = zext i32 %19 to i64, !dbg !450
  %21 = mul nsw i64 %20, 64, !dbg !450
  br label %22, !dbg !450

22:                                               ; preds = %145, %3
  %23 = phi i64 [ %146, %145 ], [ 0, %3 ], !dbg !450
  %24 = icmp slt i64 %23, 64, !dbg !450
  br i1 %24, label %25, label %147, !dbg !450

25:                                               ; preds = %22
  %26 = add i64 %23, %21, !dbg !450
  br label %27, !dbg !450

27:                                               ; preds = %143, %25
  %28 = phi i64 [ %144, %143 ], [ 0, %25 ], !dbg !450
  %29 = icmp slt i64 %28, 7, !dbg !450
  br i1 %29, label %30, label %145, !dbg !450

30:                                               ; preds = %128, %27
  %31 = phi i64 [ %142, %128 ], [ 0, %27 ], !dbg !450
  %32 = icmp slt i64 %31, 7, !dbg !450
  br i1 %32, label %33, label %143, !dbg !450

33:                                               ; preds = %37, %30
  %34 = phi i64 [ %127, %37 ], [ 0, %30 ], !dbg !450
  %35 = phi <1 x float> [ %126, %37 ], [ zeroinitializer, %30 ], !dbg !450
  %36 = icmp slt i64 %34, 1024, !dbg !450
  br i1 %36, label %37, label %128, !dbg !450

37:                                               ; preds = %33
  %38 = mul i64 %34, 49, !dbg !450
  %39 = mul i64 %28, 7, !dbg !450
  %40 = add i64 %38, %39, !dbg !450
  %41 = add i64 %40, %31, !dbg !450
  %42 = getelementptr float, ptr %7, i64 %41, !dbg !450
  %43 = load <1 x float>, ptr %42, align 4, !dbg !450
  %44 = add i64 %34, 1, !dbg !450
  %45 = mul i64 %44, 49, !dbg !450
  %46 = add i64 %45, %39, !dbg !450
  %47 = add i64 %46, %31, !dbg !450
  %48 = getelementptr float, ptr %7, i64 %47, !dbg !450
  %49 = load <1 x float>, ptr %48, align 4, !dbg !450
  %50 = add i64 %34, 2, !dbg !450
  %51 = mul i64 %50, 49, !dbg !450
  %52 = add i64 %51, %39, !dbg !450
  %53 = add i64 %52, %31, !dbg !450
  %54 = getelementptr float, ptr %7, i64 %53, !dbg !450
  %55 = load <1 x float>, ptr %54, align 4, !dbg !450
  %56 = add i64 %34, 3, !dbg !450
  %57 = mul i64 %56, 49, !dbg !450
  %58 = add i64 %57, %39, !dbg !450
  %59 = add i64 %58, %31, !dbg !450
  %60 = getelementptr float, ptr %7, i64 %59, !dbg !450
  %61 = load <1 x float>, ptr %60, align 4, !dbg !450
  %62 = add i64 %34, 4, !dbg !450
  %63 = mul i64 %62, 49, !dbg !450
  %64 = add i64 %63, %39, !dbg !450
  %65 = add i64 %64, %31, !dbg !450
  %66 = getelementptr float, ptr %7, i64 %65, !dbg !450
  %67 = load <1 x float>, ptr %66, align 4, !dbg !450
  %68 = add i64 %34, 5, !dbg !450
  %69 = mul i64 %68, 49, !dbg !450
  %70 = add i64 %69, %39, !dbg !450
  %71 = add i64 %70, %31, !dbg !450
  %72 = getelementptr float, ptr %7, i64 %71, !dbg !450
  %73 = load <1 x float>, ptr %72, align 4, !dbg !450
  %74 = add i64 %34, 6, !dbg !450
  %75 = mul i64 %74, 49, !dbg !450
  %76 = add i64 %75, %39, !dbg !450
  %77 = add i64 %76, %31, !dbg !450
  %78 = getelementptr float, ptr %7, i64 %77, !dbg !450
  %79 = load <1 x float>, ptr %78, align 4, !dbg !450
  %80 = add i64 %34, 7, !dbg !450
  %81 = mul i64 %80, 49, !dbg !450
  %82 = add i64 %81, %39, !dbg !450
  %83 = add i64 %82, %31, !dbg !450
  %84 = getelementptr float, ptr %7, i64 %83, !dbg !450
  %85 = load <1 x float>, ptr %84, align 4, !dbg !450
  %86 = mul nuw nsw i64 %26, 1024, !dbg !451
  %87 = add nuw nsw i64 %86, %34, !dbg !451
  %88 = getelementptr inbounds nuw float, ptr %12, i64 %87, !dbg !451
  %89 = load float, ptr %88, align 4, !dbg !451
  %90 = insertelement <1 x float> poison, float %89, i32 0, !dbg !451
  %91 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %43, <1 x float> %90, <1 x float> %35), !dbg !451
  %92 = add nuw nsw i64 %86, %44, !dbg !451
  %93 = getelementptr inbounds nuw float, ptr %12, i64 %92, !dbg !451
  %94 = load float, ptr %93, align 4, !dbg !451
  %95 = insertelement <1 x float> poison, float %94, i32 0, !dbg !451
  %96 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %49, <1 x float> %95, <1 x float> %91), !dbg !451
  %97 = add nuw nsw i64 %86, %50, !dbg !451
  %98 = getelementptr inbounds nuw float, ptr %12, i64 %97, !dbg !451
  %99 = load float, ptr %98, align 4, !dbg !451
  %100 = insertelement <1 x float> poison, float %99, i32 0, !dbg !451
  %101 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %55, <1 x float> %100, <1 x float> %96), !dbg !451
  %102 = add nuw nsw i64 %86, %56, !dbg !451
  %103 = getelementptr inbounds nuw float, ptr %12, i64 %102, !dbg !451
  %104 = load float, ptr %103, align 4, !dbg !451
  %105 = insertelement <1 x float> poison, float %104, i32 0, !dbg !451
  %106 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %105, <1 x float> %101), !dbg !451
  %107 = add nuw nsw i64 %86, %62, !dbg !451
  %108 = getelementptr inbounds nuw float, ptr %12, i64 %107, !dbg !451
  %109 = load float, ptr %108, align 4, !dbg !451
  %110 = insertelement <1 x float> poison, float %109, i32 0, !dbg !451
  %111 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %110, <1 x float> %106), !dbg !451
  %112 = add nuw nsw i64 %86, %68, !dbg !451
  %113 = getelementptr inbounds nuw float, ptr %12, i64 %112, !dbg !451
  %114 = load float, ptr %113, align 4, !dbg !451
  %115 = insertelement <1 x float> poison, float %114, i32 0, !dbg !451
  %116 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %115, <1 x float> %111), !dbg !451
  %117 = add nuw nsw i64 %86, %74, !dbg !451
  %118 = getelementptr inbounds nuw float, ptr %12, i64 %117, !dbg !451
  %119 = load float, ptr %118, align 4, !dbg !451
  %120 = insertelement <1 x float> poison, float %119, i32 0, !dbg !451
  %121 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %79, <1 x float> %120, <1 x float> %116), !dbg !451
  %122 = add nuw nsw i64 %86, %80, !dbg !451
  %123 = getelementptr inbounds nuw float, ptr %12, i64 %122, !dbg !451
  %124 = load float, ptr %123, align 4, !dbg !451
  %125 = insertelement <1 x float> poison, float %124, i32 0, !dbg !451
  %126 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %85, <1 x float> %125, <1 x float> %121), !dbg !451
  %127 = add i64 %34, 8, !dbg !450
  br label %33, !dbg !450

128:                                              ; preds = %33
  %129 = fadd contract <1 x float> %35, zeroinitializer, !dbg !452
  %130 = fcmp ult <1 x float> %129, zeroinitializer, !dbg !453
  %131 = select <1 x i1> %130, <1 x float> zeroinitializer, <1 x float> %129, !dbg !454
  %132 = fcmp ugt <1 x float> %131, splat (float 6.000000e+00), !dbg !455
  %133 = select <1 x i1> %132, <1 x float> splat (float 6.000000e+00), <1 x float> %131, !dbg !456
  %134 = extractelement <1 x float> %133, i64 0, !dbg !450
  %135 = add i64 %28, 2, !dbg !450
  %136 = add i64 %31, 2, !dbg !450
  %137 = mul nuw nsw i64 %26, 121, !dbg !450
  %138 = mul nuw nsw i64 %135, 11, !dbg !450
  %139 = add nuw nsw i64 %137, %138, !dbg !450
  %140 = add nuw nsw i64 %139, %136, !dbg !450
  %141 = getelementptr inbounds nuw float, ptr %17, i64 %140, !dbg !450
  store float %134, ptr %141, align 4, !dbg !450
  %142 = add i64 %31, 1, !dbg !450
  br label %30, !dbg !450

143:                                              ; preds = %30
  %144 = add i64 %28, 1, !dbg !450
  br label %27, !dbg !450

145:                                              ; preds = %27
  %146 = add i64 %23, 1, !dbg !450
  br label %22, !dbg !450

147:                                              ; preds = %22
  ret i32 0, !dbg !457
}

define internal i32 @"main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !458 {
  %4 = alloca float, i64 7, align 64, !dbg !459
  %5 = alloca float, i64 7, align 64, !dbg !460
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !461
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !461
  %8 = load ptr, ptr %7, align 8, !dbg !461
  %9 = getelementptr float, ptr %8, i64 401408, !dbg !461
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !461
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !462
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !462
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !462
  %13 = load ptr, ptr %12, align 8, !dbg !462
  %14 = getelementptr float, ptr %13, i64 3861952, !dbg !462
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !462
  %15 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !463
  %16 = extractvalue %iree_hal_executable_dispatch_state_v0_t %15, 10, !dbg !463
  %17 = getelementptr ptr, ptr %16, i32 2, !dbg !463
  %18 = load ptr, ptr %17, align 8, !dbg !463
  %19 = getelementptr float, ptr %18, i64 525312, !dbg !463
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !463
  %20 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !459
  %21 = extractvalue %iree_hal_executable_workgroup_state_v0_t %20, 0, !dbg !459
  %22 = zext i32 %21 to i64, !dbg !459
  %23 = mul nsw i64 %22, 32, !dbg !459
  %24 = getelementptr float, ptr %5, i64 0, !dbg !464
  store <7 x float> zeroinitializer, ptr %24, align 4, !dbg !464
  br label %25, !dbg !459

25:                                               ; preds = %96, %3
  %26 = phi i64 [ %97, %96 ], [ 0, %3 ], !dbg !459
  %27 = icmp slt i64 %26, 7, !dbg !459
  br i1 %27, label %28, label %98, !dbg !459

28:                                               ; preds = %94, %25
  %29 = phi i64 [ %95, %94 ], [ 0, %25 ], !dbg !459
  %30 = icmp slt i64 %29, 32, !dbg !459
  br i1 %30, label %31, label %96, !dbg !459

31:                                               ; preds = %28
  %32 = add i64 %29, %23, !dbg !459
  br label %33, !dbg !459

33:                                               ; preds = %36, %31
  %34 = phi i64 [ %41, %36 ], [ 0, %31 ], !dbg !459
  %35 = icmp slt i64 %34, 7, !dbg !459
  br i1 %35, label %36, label %42, !dbg !459

36:                                               ; preds = %33
  %37 = add nuw nsw i64 0, %34, !dbg !459
  %38 = getelementptr inbounds nuw float, ptr %5, i64 %37, !dbg !459
  %39 = load float, ptr %38, align 4, !dbg !459
  %40 = getelementptr inbounds nuw float, ptr %4, i64 %37, !dbg !459
  store float %39, ptr %40, align 4, !dbg !459
  %41 = add i64 %34, 1, !dbg !459
  br label %33, !dbg !459

42:                                               ; preds = %75, %33
  %43 = phi i64 [ %76, %75 ], [ 0, %33 ], !dbg !459
  %44 = icmp slt i64 %43, 5, !dbg !459
  br i1 %44, label %45, label %77, !dbg !459

45:                                               ; preds = %42
  %46 = add i64 %43, %26, !dbg !459
  br label %47, !dbg !459

47:                                               ; preds = %73, %45
  %48 = phi i64 [ %74, %73 ], [ 0, %45 ], !dbg !459
  %49 = icmp slt i64 %48, 7, !dbg !459
  br i1 %49, label %50, label %75, !dbg !459

50:                                               ; preds = %53, %47
  %51 = phi i64 [ %72, %53 ], [ 0, %47 ], !dbg !459
  %52 = icmp slt i64 %51, 5, !dbg !459
  br i1 %52, label %53, label %73, !dbg !459

53:                                               ; preds = %50
  %54 = add i64 %48, %51, !dbg !459
  %55 = mul nuw nsw i64 %32, 121, !dbg !459
  %56 = mul nuw nsw i64 %46, 11, !dbg !459
  %57 = add nuw nsw i64 %55, %56, !dbg !459
  %58 = add nuw nsw i64 %57, %54, !dbg !459
  %59 = getelementptr inbounds nuw float, ptr %9, i64 %58, !dbg !459
  %60 = load float, ptr %59, align 4, !dbg !459
  %61 = mul nuw nsw i64 %32, 25, !dbg !459
  %62 = mul nuw nsw i64 %43, 5, !dbg !459
  %63 = add nuw nsw i64 %61, %62, !dbg !459
  %64 = add nuw nsw i64 %63, %51, !dbg !459
  %65 = getelementptr inbounds nuw float, ptr %14, i64 %64, !dbg !459
  %66 = load float, ptr %65, align 4, !dbg !459
  %67 = add nuw nsw i64 0, %48, !dbg !459
  %68 = getelementptr inbounds nuw float, ptr %4, i64 %67, !dbg !459
  %69 = load float, ptr %68, align 4, !dbg !459
  %70 = fmul contract float %60, %66, !dbg !465
  %71 = fadd contract float %69, %70, !dbg !466
  store float %71, ptr %68, align 4, !dbg !459
  %72 = add i64 %51, 1, !dbg !459
  br label %50, !dbg !459

73:                                               ; preds = %50
  %74 = add i64 %48, 1, !dbg !459
  br label %47, !dbg !459

75:                                               ; preds = %47
  %76 = add i64 %43, 1, !dbg !459
  br label %42, !dbg !459

77:                                               ; preds = %80, %42
  %78 = phi i64 [ %93, %80 ], [ 0, %42 ], !dbg !467
  %79 = icmp slt i64 %78, 7, !dbg !467
  br i1 %79, label %80, label %94, !dbg !467

80:                                               ; preds = %77
  %81 = add i64 0, %78, !dbg !467
  %82 = getelementptr float, ptr %4, i64 %81, !dbg !467
  %83 = load <1 x float>, ptr %82, align 4, !dbg !467
  %84 = fadd contract <1 x float> %83, zeroinitializer, !dbg !468
  %85 = fcmp ugt <1 x float> %84, zeroinitializer, !dbg !469
  %86 = select <1 x i1> %85, <1 x float> %84, <1 x float> zeroinitializer, !dbg !470
  %87 = extractelement <1 x float> %86, i64 0, !dbg !467
  %88 = mul nuw nsw i64 %32, 49, !dbg !467
  %89 = mul nuw nsw i64 %26, 7, !dbg !467
  %90 = add nuw nsw i64 %88, %89, !dbg !467
  %91 = add nuw nsw i64 %90, %78, !dbg !467
  %92 = getelementptr inbounds nuw float, ptr %19, i64 %91, !dbg !467
  store float %87, ptr %92, align 4, !dbg !467
  %93 = add i64 %78, 1, !dbg !467
  br label %77, !dbg !467

94:                                               ; preds = %77
  %95 = add i64 %29, 1, !dbg !459
  br label %28, !dbg !459

96:                                               ; preds = %28
  %97 = add i64 %26, 1, !dbg !459
  br label %25, !dbg !459

98:                                               ; preds = %25
  ret i32 0, !dbg !471
}

define internal i32 @"main_graph$async_dispatch_32_matmul_like_512x49x1024_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !472 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !473
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !473
  %6 = load ptr, ptr %5, align 8, !dbg !473
  %7 = getelementptr float, ptr %6, i64 525312, !dbg !473
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !473
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !474
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !474
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !474
  %11 = load ptr, ptr %10, align 8, !dbg !474
  %12 = getelementptr float, ptr %11, i64 174080, !dbg !474
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !474
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !475
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !475
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !475
  %16 = load ptr, ptr %15, align 8, !dbg !475
  %17 = getelementptr float, ptr %16, i64 575488, !dbg !475
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !475
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !476
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !476
  %20 = zext i32 %19 to i64, !dbg !476
  %21 = mul nsw i64 %20, 64, !dbg !476
  br label %22, !dbg !476

22:                                               ; preds = %125, %3
  %23 = phi i64 [ %126, %125 ], [ 0, %3 ], !dbg !476
  %24 = icmp slt i64 %23, 64, !dbg !476
  br i1 %24, label %25, label %127, !dbg !476

25:                                               ; preds = %22
  %26 = add i64 %23, %21, !dbg !476
  br label %27, !dbg !476

27:                                               ; preds = %116, %25
  %28 = phi i64 [ %124, %116 ], [ 0, %25 ], !dbg !476
  %29 = icmp slt i64 %28, 49, !dbg !476
  br i1 %29, label %30, label %125, !dbg !476

30:                                               ; preds = %34, %27
  %31 = phi i64 [ %115, %34 ], [ 0, %27 ], !dbg !476
  %32 = phi <1 x float> [ %114, %34 ], [ zeroinitializer, %27 ], !dbg !476
  %33 = icmp slt i64 %31, 1024, !dbg !476
  br i1 %33, label %34, label %116, !dbg !476

34:                                               ; preds = %30
  %35 = mul i64 %31, 49, !dbg !476
  %36 = add i64 %35, %28, !dbg !476
  %37 = getelementptr float, ptr %7, i64 %36, !dbg !476
  %38 = load <1 x float>, ptr %37, align 4, !dbg !476
  %39 = add i64 %31, 1, !dbg !476
  %40 = mul i64 %39, 49, !dbg !476
  %41 = add i64 %40, %28, !dbg !476
  %42 = getelementptr float, ptr %7, i64 %41, !dbg !476
  %43 = load <1 x float>, ptr %42, align 4, !dbg !476
  %44 = add i64 %31, 2, !dbg !476
  %45 = mul i64 %44, 49, !dbg !476
  %46 = add i64 %45, %28, !dbg !476
  %47 = getelementptr float, ptr %7, i64 %46, !dbg !476
  %48 = load <1 x float>, ptr %47, align 4, !dbg !476
  %49 = add i64 %31, 3, !dbg !476
  %50 = mul i64 %49, 49, !dbg !476
  %51 = add i64 %50, %28, !dbg !476
  %52 = getelementptr float, ptr %7, i64 %51, !dbg !476
  %53 = load <1 x float>, ptr %52, align 4, !dbg !476
  %54 = add i64 %31, 4, !dbg !476
  %55 = mul i64 %54, 49, !dbg !476
  %56 = add i64 %55, %28, !dbg !476
  %57 = getelementptr float, ptr %7, i64 %56, !dbg !476
  %58 = load <1 x float>, ptr %57, align 4, !dbg !476
  %59 = add i64 %31, 5, !dbg !476
  %60 = mul i64 %59, 49, !dbg !476
  %61 = add i64 %60, %28, !dbg !476
  %62 = getelementptr float, ptr %7, i64 %61, !dbg !476
  %63 = load <1 x float>, ptr %62, align 4, !dbg !476
  %64 = add i64 %31, 6, !dbg !476
  %65 = mul i64 %64, 49, !dbg !476
  %66 = add i64 %65, %28, !dbg !476
  %67 = getelementptr float, ptr %7, i64 %66, !dbg !476
  %68 = load <1 x float>, ptr %67, align 4, !dbg !476
  %69 = add i64 %31, 7, !dbg !476
  %70 = mul i64 %69, 49, !dbg !476
  %71 = add i64 %70, %28, !dbg !476
  %72 = getelementptr float, ptr %7, i64 %71, !dbg !476
  %73 = load <1 x float>, ptr %72, align 4, !dbg !476
  %74 = mul nuw nsw i64 %26, 1024, !dbg !477
  %75 = add nuw nsw i64 %74, %31, !dbg !477
  %76 = getelementptr inbounds nuw float, ptr %12, i64 %75, !dbg !477
  %77 = load float, ptr %76, align 4, !dbg !477
  %78 = insertelement <1 x float> poison, float %77, i32 0, !dbg !477
  %79 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %38, <1 x float> %78, <1 x float> %32), !dbg !477
  %80 = add nuw nsw i64 %74, %39, !dbg !477
  %81 = getelementptr inbounds nuw float, ptr %12, i64 %80, !dbg !477
  %82 = load float, ptr %81, align 4, !dbg !477
  %83 = insertelement <1 x float> poison, float %82, i32 0, !dbg !477
  %84 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %43, <1 x float> %83, <1 x float> %79), !dbg !477
  %85 = add nuw nsw i64 %74, %44, !dbg !477
  %86 = getelementptr inbounds nuw float, ptr %12, i64 %85, !dbg !477
  %87 = load float, ptr %86, align 4, !dbg !477
  %88 = insertelement <1 x float> poison, float %87, i32 0, !dbg !477
  %89 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %48, <1 x float> %88, <1 x float> %84), !dbg !477
  %90 = add nuw nsw i64 %74, %49, !dbg !477
  %91 = getelementptr inbounds nuw float, ptr %12, i64 %90, !dbg !477
  %92 = load float, ptr %91, align 4, !dbg !477
  %93 = insertelement <1 x float> poison, float %92, i32 0, !dbg !477
  %94 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %53, <1 x float> %93, <1 x float> %89), !dbg !477
  %95 = add nuw nsw i64 %74, %54, !dbg !477
  %96 = getelementptr inbounds nuw float, ptr %12, i64 %95, !dbg !477
  %97 = load float, ptr %96, align 4, !dbg !477
  %98 = insertelement <1 x float> poison, float %97, i32 0, !dbg !477
  %99 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %58, <1 x float> %98, <1 x float> %94), !dbg !477
  %100 = add nuw nsw i64 %74, %59, !dbg !477
  %101 = getelementptr inbounds nuw float, ptr %12, i64 %100, !dbg !477
  %102 = load float, ptr %101, align 4, !dbg !477
  %103 = insertelement <1 x float> poison, float %102, i32 0, !dbg !477
  %104 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %63, <1 x float> %103, <1 x float> %99), !dbg !477
  %105 = add nuw nsw i64 %74, %64, !dbg !477
  %106 = getelementptr inbounds nuw float, ptr %12, i64 %105, !dbg !477
  %107 = load float, ptr %106, align 4, !dbg !477
  %108 = insertelement <1 x float> poison, float %107, i32 0, !dbg !477
  %109 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %68, <1 x float> %108, <1 x float> %104), !dbg !477
  %110 = add nuw nsw i64 %74, %69, !dbg !477
  %111 = getelementptr inbounds nuw float, ptr %12, i64 %110, !dbg !477
  %112 = load float, ptr %111, align 4, !dbg !477
  %113 = insertelement <1 x float> poison, float %112, i32 0, !dbg !477
  %114 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %73, <1 x float> %113, <1 x float> %109), !dbg !477
  %115 = add i64 %31, 8, !dbg !476
  br label %30, !dbg !476

116:                                              ; preds = %30
  %117 = fadd contract <1 x float> %32, zeroinitializer, !dbg !478
  %118 = fcmp ugt <1 x float> %117, zeroinitializer, !dbg !479
  %119 = select <1 x i1> %118, <1 x float> %117, <1 x float> zeroinitializer, !dbg !480
  %120 = extractelement <1 x float> %119, i64 0, !dbg !476
  %121 = mul nuw nsw i64 %26, 49, !dbg !476
  %122 = add nuw nsw i64 %121, %28, !dbg !476
  %123 = getelementptr inbounds nuw float, ptr %17, i64 %122, !dbg !476
  store float %120, ptr %123, align 4, !dbg !476
  %124 = add i64 %28, 1, !dbg !476
  br label %27, !dbg !476

125:                                              ; preds = %27
  %126 = add i64 %23, 1, !dbg !476
  br label %22, !dbg !476

127:                                              ; preds = %22
  ret i32 0, !dbg !481
}

define internal i32 @"main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !482 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !483
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !483
  %6 = load ptr, ptr %5, align 8, !dbg !483
  %7 = getelementptr float, ptr %6, i64 575488, !dbg !483
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !483
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !484
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !484
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !484
  %11 = load ptr, ptr %10, align 8, !dbg !484
  %12 = getelementptr float, ptr %11, i64 802816, !dbg !484
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !484
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !485
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !485
  %15 = zext i32 %14 to i64, !dbg !485
  %16 = sdiv i64 %15, 2, !dbg !485
  %17 = mul i64 %16, 2, !dbg !485
  %18 = icmp ne i64 %15, %17, !dbg !485
  %19 = icmp slt i64 %15, 0, !dbg !485
  %20 = and i1 %18, %19, !dbg !485
  %21 = add i64 %16, -1, !dbg !485
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !485
  %23 = srem i64 %15, 2, !dbg !485
  %24 = icmp slt i64 %23, 0, !dbg !485
  %25 = add nsw i64 %23, 2, !dbg !485
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !485
  %27 = mul nsw i64 %22, 64, !dbg !485
  %28 = mul nsw i64 %26, 7, !dbg !485
  %29 = call <8 x float> @llvm.floor.v8f32(<8 x float> <float 0.000000e+00, float 5.000000e-01, float 1.000000e+00, float 1.500000e+00, float 2.000000e+00, float 2.500000e+00, float 3.000000e+00, float 3.500000e+00>), !dbg !486
  %30 = fptosi <8 x float> %29 to <8 x i64>, !dbg !487
  %31 = call <6 x float> @llvm.floor.v6f32(<6 x float> <float 4.000000e+00, float 4.500000e+00, float 5.000000e+00, float 5.500000e+00, float 6.000000e+00, float 6.500000e+00>), !dbg !486
  %32 = fptosi <6 x float> %31 to <6 x i64>, !dbg !487
  br label %33, !dbg !485

33:                                               ; preds = %149, %3
  %34 = phi i64 [ %150, %149 ], [ 0, %3 ], !dbg !485
  %35 = icmp slt i64 %34, 64, !dbg !485
  br i1 %35, label %36, label %151, !dbg !485

36:                                               ; preds = %33
  %37 = add i64 %27, %34, !dbg !488
  %38 = mul i64 %37, 7, !dbg !489
  br label %39, !dbg !485

39:                                               ; preds = %42, %36
  %40 = phi i64 [ %148, %42 ], [ 0, %36 ], !dbg !485
  %41 = icmp slt i64 %40, 7, !dbg !485
  br i1 %41, label %42, label %149, !dbg !485

42:                                               ; preds = %39
  %43 = add i64 %28, %40, !dbg !490
  %44 = sitofp i64 %43 to float, !dbg !491
  %45 = fdiv float %44, 2.000000e+00, !dbg !492
  %46 = call float @llvm.floor.f32(float %45), !dbg !493
  %47 = fptosi float %46 to i64, !dbg !494
  %48 = add i64 %47, %38, !dbg !489
  %49 = mul i64 %48, 7, !dbg !489
  %50 = insertelement <8 x i64> poison, i64 %49, i32 0, !dbg !489
  %51 = shufflevector <8 x i64> %50, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !489
  %52 = add <8 x i64> %30, %51, !dbg !489
  %53 = extractelement <8 x i64> %52, i64 0, !dbg !489
  %54 = add i64 0, %53, !dbg !489
  %55 = getelementptr float, ptr %7, i64 %54, !dbg !489
  %56 = load <1 x float>, ptr %55, align 4, !dbg !489
  %57 = extractelement <1 x float> %56, i64 0, !dbg !489
  %58 = extractelement <8 x i64> %52, i64 1, !dbg !489
  %59 = add i64 0, %58, !dbg !489
  %60 = getelementptr float, ptr %7, i64 %59, !dbg !489
  %61 = load <1 x float>, ptr %60, align 4, !dbg !489
  %62 = extractelement <1 x float> %61, i64 0, !dbg !489
  %63 = extractelement <8 x i64> %52, i64 2, !dbg !489
  %64 = add i64 0, %63, !dbg !489
  %65 = getelementptr float, ptr %7, i64 %64, !dbg !489
  %66 = load <1 x float>, ptr %65, align 4, !dbg !489
  %67 = extractelement <1 x float> %66, i64 0, !dbg !489
  %68 = extractelement <8 x i64> %52, i64 3, !dbg !489
  %69 = add i64 0, %68, !dbg !489
  %70 = getelementptr float, ptr %7, i64 %69, !dbg !489
  %71 = load <1 x float>, ptr %70, align 4, !dbg !489
  %72 = extractelement <1 x float> %71, i64 0, !dbg !489
  %73 = extractelement <8 x i64> %52, i64 4, !dbg !489
  %74 = add i64 0, %73, !dbg !489
  %75 = getelementptr float, ptr %7, i64 %74, !dbg !489
  %76 = load <1 x float>, ptr %75, align 4, !dbg !489
  %77 = extractelement <1 x float> %76, i64 0, !dbg !489
  %78 = extractelement <8 x i64> %52, i64 5, !dbg !489
  %79 = add i64 0, %78, !dbg !489
  %80 = getelementptr float, ptr %7, i64 %79, !dbg !489
  %81 = load <1 x float>, ptr %80, align 4, !dbg !489
  %82 = extractelement <1 x float> %81, i64 0, !dbg !489
  %83 = extractelement <8 x i64> %52, i64 6, !dbg !489
  %84 = add i64 0, %83, !dbg !489
  %85 = getelementptr float, ptr %7, i64 %84, !dbg !489
  %86 = load <1 x float>, ptr %85, align 4, !dbg !489
  %87 = extractelement <1 x float> %86, i64 0, !dbg !489
  %88 = extractelement <8 x i64> %52, i64 7, !dbg !489
  %89 = add i64 0, %88, !dbg !489
  %90 = getelementptr float, ptr %7, i64 %89, !dbg !489
  %91 = load <1 x float>, ptr %90, align 4, !dbg !489
  %92 = extractelement <1 x float> %91, i64 0, !dbg !489
  %93 = insertelement <8 x float> poison, float %57, i64 0, !dbg !489
  %94 = insertelement <8 x float> %93, float %62, i64 1, !dbg !489
  %95 = insertelement <8 x float> %94, float %67, i64 2, !dbg !489
  %96 = insertelement <8 x float> %95, float %72, i64 3, !dbg !489
  %97 = insertelement <8 x float> %96, float %77, i64 4, !dbg !489
  %98 = insertelement <8 x float> %97, float %82, i64 5, !dbg !489
  %99 = insertelement <8 x float> %98, float %87, i64 6, !dbg !489
  %100 = insertelement <8 x float> %99, float %92, i64 7, !dbg !489
  %101 = add i64 %43, 2, !dbg !485
  %102 = mul i64 %37, 324, !dbg !485
  %103 = mul i64 %101, 18, !dbg !485
  %104 = add i64 %102, %103, !dbg !485
  %105 = add i64 %104, 2, !dbg !485
  %106 = getelementptr float, ptr %12, i64 %105, !dbg !485
  store <8 x float> %100, ptr %106, align 4, !dbg !485
  %107 = insertelement <6 x i64> poison, i64 %49, i32 0, !dbg !489
  %108 = shufflevector <6 x i64> %107, <6 x i64> poison, <6 x i32> zeroinitializer, !dbg !489
  %109 = add <6 x i64> %32, %108, !dbg !489
  %110 = extractelement <6 x i64> %109, i64 0, !dbg !489
  %111 = add i64 0, %110, !dbg !489
  %112 = getelementptr float, ptr %7, i64 %111, !dbg !489
  %113 = load <1 x float>, ptr %112, align 4, !dbg !489
  %114 = extractelement <1 x float> %113, i64 0, !dbg !489
  %115 = extractelement <6 x i64> %109, i64 1, !dbg !489
  %116 = add i64 0, %115, !dbg !489
  %117 = getelementptr float, ptr %7, i64 %116, !dbg !489
  %118 = load <1 x float>, ptr %117, align 4, !dbg !489
  %119 = extractelement <1 x float> %118, i64 0, !dbg !489
  %120 = extractelement <6 x i64> %109, i64 2, !dbg !489
  %121 = add i64 0, %120, !dbg !489
  %122 = getelementptr float, ptr %7, i64 %121, !dbg !489
  %123 = load <1 x float>, ptr %122, align 4, !dbg !489
  %124 = extractelement <1 x float> %123, i64 0, !dbg !489
  %125 = extractelement <6 x i64> %109, i64 3, !dbg !489
  %126 = add i64 0, %125, !dbg !489
  %127 = getelementptr float, ptr %7, i64 %126, !dbg !489
  %128 = load <1 x float>, ptr %127, align 4, !dbg !489
  %129 = extractelement <1 x float> %128, i64 0, !dbg !489
  %130 = extractelement <6 x i64> %109, i64 4, !dbg !489
  %131 = add i64 0, %130, !dbg !489
  %132 = getelementptr float, ptr %7, i64 %131, !dbg !489
  %133 = load <1 x float>, ptr %132, align 4, !dbg !489
  %134 = extractelement <1 x float> %133, i64 0, !dbg !489
  %135 = extractelement <6 x i64> %109, i64 5, !dbg !489
  %136 = add i64 0, %135, !dbg !489
  %137 = getelementptr float, ptr %7, i64 %136, !dbg !489
  %138 = load <1 x float>, ptr %137, align 4, !dbg !489
  %139 = extractelement <1 x float> %138, i64 0, !dbg !489
  %140 = insertelement <6 x float> poison, float %114, i64 0, !dbg !489
  %141 = insertelement <6 x float> %140, float %119, i64 1, !dbg !489
  %142 = insertelement <6 x float> %141, float %124, i64 2, !dbg !489
  %143 = insertelement <6 x float> %142, float %129, i64 3, !dbg !489
  %144 = insertelement <6 x float> %143, float %134, i64 4, !dbg !489
  %145 = insertelement <6 x float> %144, float %139, i64 5, !dbg !489
  %146 = add i64 %104, 10, !dbg !485
  %147 = getelementptr float, ptr %12, i64 %146, !dbg !485
  store <6 x float> %145, ptr %147, align 4, !dbg !485
  %148 = add i64 %40, 1, !dbg !485
  br label %39, !dbg !485

149:                                              ; preds = %39
  %150 = add i64 %34, 1, !dbg !485
  br label %33, !dbg !485

151:                                              ; preds = %33
  ret i32 0, !dbg !495
}

define internal i32 @"main_graph$async_dispatch_34_conv_14x14x512x5x5_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !496 {
  %4 = alloca float, i64 8, align 64, !dbg !497
  %5 = alloca float, i64 8, align 64, !dbg !497
  %6 = alloca float, i64 8, align 64, !dbg !498
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !499
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !499
  %9 = load ptr, ptr %8, align 8, !dbg !499
  %10 = getelementptr float, ptr %9, i64 802816, !dbg !499
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !499
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !500
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !500
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !500
  %14 = load ptr, ptr %13, align 8, !dbg !500
  %15 = getelementptr float, ptr %14, i64 3849152, !dbg !500
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !500
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !501
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !501
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !501
  %19 = load ptr, ptr %18, align 8, !dbg !501
  %20 = getelementptr float, ptr %19, i64 401408, !dbg !501
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !501
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !497
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !497
  %23 = zext i32 %22 to i64, !dbg !497
  %24 = mul nsw i64 %23, 32, !dbg !497
  br label %25, !dbg !497

25:                                               ; preds = %130, %3
  %26 = phi i64 [ %131, %130 ], [ 0, %3 ], !dbg !497
  %27 = icmp slt i64 %26, 14, !dbg !497
  br i1 %27, label %28, label %132, !dbg !497

28:                                               ; preds = %128, %25
  %29 = phi i64 [ %129, %128 ], [ 0, %25 ], !dbg !497
  %30 = icmp slt i64 %29, 14, !dbg !497
  br i1 %30, label %31, label %130, !dbg !497

31:                                               ; preds = %28
  %32 = sub i64 14, %29, !dbg !497
  %33 = icmp slt i64 %32, 8, !dbg !497
  %34 = select i1 %33, i64 %32, i64 8, !dbg !497
  %35 = trunc i64 %34 to i32, !dbg !502
  %36 = insertelement <8 x i32> poison, i32 %35, i32 0, !dbg !502
  %37 = shufflevector <8 x i32> %36, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !502
  %38 = icmp sgt <8 x i32> %37, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !502
  %39 = getelementptr float, ptr %6, i64 0, !dbg !502
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %39, i32 4, <8 x i1> %38), !dbg !502
  br label %40, !dbg !497

40:                                               ; preds = %126, %31
  %41 = phi i64 [ %127, %126 ], [ 0, %31 ], !dbg !497
  %42 = icmp slt i64 %41, 32, !dbg !497
  br i1 %42, label %43, label %128, !dbg !497

43:                                               ; preds = %40
  %44 = add i64 %41, %24, !dbg !497
  br label %45, !dbg !497

45:                                               ; preds = %48, %43
  %46 = phi i64 [ %53, %48 ], [ 0, %43 ], !dbg !497
  %47 = icmp slt i64 %46, %34, !dbg !497
  br i1 %47, label %48, label %54, !dbg !497

48:                                               ; preds = %45
  %49 = add nuw nsw i64 0, %46, !dbg !497
  %50 = getelementptr inbounds nuw float, ptr %6, i64 %49, !dbg !497
  %51 = load float, ptr %50, align 4, !dbg !497
  %52 = getelementptr inbounds nuw float, ptr %5, i64 %49, !dbg !497
  store float %51, ptr %52, align 4, !dbg !497
  %53 = add i64 %46, 1, !dbg !497
  br label %45, !dbg !497

54:                                               ; preds = %88, %45
  %55 = phi i64 [ %89, %88 ], [ 0, %45 ], !dbg !497
  %56 = icmp slt i64 %55, 5, !dbg !497
  br i1 %56, label %57, label %90, !dbg !497

57:                                               ; preds = %54
  %58 = add i64 %55, %26, !dbg !497
  br label %59, !dbg !497

59:                                               ; preds = %86, %57
  %60 = phi i64 [ %87, %86 ], [ 0, %57 ], !dbg !497
  %61 = icmp slt i64 %60, %34, !dbg !497
  br i1 %61, label %62, label %88, !dbg !497

62:                                               ; preds = %65, %59
  %63 = phi i64 [ %85, %65 ], [ 0, %59 ], !dbg !497
  %64 = icmp slt i64 %63, 5, !dbg !497
  br i1 %64, label %65, label %86, !dbg !497

65:                                               ; preds = %62
  %66 = add i64 %29, %60, !dbg !497
  %67 = add i64 %66, %63, !dbg !497
  %68 = mul nuw nsw i64 %44, 324, !dbg !497
  %69 = mul nuw nsw i64 %58, 18, !dbg !497
  %70 = add nuw nsw i64 %68, %69, !dbg !497
  %71 = add nuw nsw i64 %70, %67, !dbg !497
  %72 = getelementptr inbounds nuw float, ptr %10, i64 %71, !dbg !497
  %73 = load float, ptr %72, align 4, !dbg !497
  %74 = mul nuw nsw i64 %44, 25, !dbg !497
  %75 = mul nuw nsw i64 %55, 5, !dbg !497
  %76 = add nuw nsw i64 %74, %75, !dbg !497
  %77 = add nuw nsw i64 %76, %63, !dbg !497
  %78 = getelementptr inbounds nuw float, ptr %15, i64 %77, !dbg !497
  %79 = load float, ptr %78, align 4, !dbg !497
  %80 = add nuw nsw i64 0, %60, !dbg !497
  %81 = getelementptr inbounds nuw float, ptr %5, i64 %80, !dbg !497
  %82 = load float, ptr %81, align 4, !dbg !497
  %83 = fmul contract float %73, %79, !dbg !503
  %84 = fadd contract float %82, %83, !dbg !504
  store float %84, ptr %81, align 4, !dbg !497
  %85 = add i64 %63, 1, !dbg !497
  br label %62, !dbg !497

86:                                               ; preds = %62
  %87 = add i64 %60, 1, !dbg !497
  br label %59, !dbg !497

88:                                               ; preds = %59
  %89 = add i64 %55, 1, !dbg !497
  br label %54, !dbg !497

90:                                               ; preds = %93, %54
  %91 = phi i64 [ %98, %93 ], [ 0, %54 ], !dbg !497
  %92 = icmp slt i64 %91, %34, !dbg !497
  br i1 %92, label %93, label %99, !dbg !497

93:                                               ; preds = %90
  %94 = add nuw nsw i64 0, %91, !dbg !497
  %95 = getelementptr inbounds nuw float, ptr %6, i64 %94, !dbg !497
  %96 = load float, ptr %95, align 4, !dbg !497
  %97 = getelementptr inbounds nuw float, ptr %4, i64 %94, !dbg !497
  store float %96, ptr %97, align 4, !dbg !497
  %98 = add i64 %91, 1, !dbg !497
  br label %90, !dbg !497

99:                                               ; preds = %102, %90
  %100 = phi i64 [ %107, %102 ], [ 0, %90 ], !dbg !497
  %101 = icmp slt i64 %100, %34, !dbg !497
  br i1 %101, label %102, label %108, !dbg !497

102:                                              ; preds = %99
  %103 = add nuw nsw i64 0, %100, !dbg !497
  %104 = getelementptr inbounds nuw float, ptr %5, i64 %103, !dbg !497
  %105 = load float, ptr %104, align 4, !dbg !497
  %106 = getelementptr inbounds nuw float, ptr %4, i64 %103, !dbg !497
  store float %105, ptr %106, align 4, !dbg !497
  %107 = add i64 %100, 1, !dbg !497
  br label %99, !dbg !497

108:                                              ; preds = %111, %99
  %109 = phi i64 [ %125, %111 ], [ 0, %99 ], !dbg !505
  %110 = icmp slt i64 %109, %34, !dbg !505
  br i1 %110, label %111, label %126, !dbg !505

111:                                              ; preds = %108
  %112 = add i64 0, %109, !dbg !505
  %113 = getelementptr float, ptr %4, i64 %112, !dbg !505
  %114 = load <1 x float>, ptr %113, align 4, !dbg !505
  %115 = fadd contract <1 x float> %114, zeroinitializer, !dbg !506
  %116 = fcmp ugt <1 x float> %115, zeroinitializer, !dbg !507
  %117 = select <1 x i1> %116, <1 x float> %115, <1 x float> zeroinitializer, !dbg !508
  %118 = extractelement <1 x float> %117, i64 0, !dbg !505
  %119 = add i64 %29, %109, !dbg !505
  %120 = mul nuw nsw i64 %44, 196, !dbg !505
  %121 = mul nuw nsw i64 %26, 14, !dbg !505
  %122 = add nuw nsw i64 %120, %121, !dbg !505
  %123 = add nuw nsw i64 %122, %119, !dbg !505
  %124 = getelementptr inbounds nuw float, ptr %20, i64 %123, !dbg !505
  store float %118, ptr %124, align 4, !dbg !505
  %125 = add i64 %109, 1, !dbg !505
  br label %108, !dbg !505

126:                                              ; preds = %108
  %127 = add i64 %41, 1, !dbg !497
  br label %40, !dbg !497

128:                                              ; preds = %40
  %129 = add i64 %29, 8, !dbg !497
  br label %28, !dbg !497

130:                                              ; preds = %28
  %131 = add i64 %26, 1, !dbg !497
  br label %25, !dbg !497

132:                                              ; preds = %25
  ret i32 0, !dbg !509
}

define internal i32 @"main_graph$async_dispatch_35_matmul_like_256x196x512_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !510 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !511
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !511
  %6 = load ptr, ptr %5, align 8, !dbg !511
  %7 = getelementptr float, ptr %6, i64 401408, !dbg !511
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !511
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !512
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !512
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !512
  %11 = load ptr, ptr %10, align 8, !dbg !512
  %12 = getelementptr float, ptr %11, i64 43008, !dbg !512
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !512
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !513
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !513
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !513
  %16 = load ptr, ptr %15, align 8, !dbg !513
  %17 = getelementptr float, ptr %16, i64 501760, !dbg !513
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !513
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !514
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !514
  %20 = zext i32 %19 to i64, !dbg !514
  %21 = sdiv i64 %20, 4, !dbg !514
  %22 = mul i64 %21, 4, !dbg !514
  %23 = icmp ne i64 %20, %22, !dbg !514
  %24 = icmp slt i64 %20, 0, !dbg !514
  %25 = and i1 %23, %24, !dbg !514
  %26 = add i64 %21, -1, !dbg !514
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !514
  %28 = srem i64 %20, 4, !dbg !514
  %29 = icmp slt i64 %28, 0, !dbg !514
  %30 = add nsw i64 %28, 4, !dbg !514
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !514
  %32 = mul nsw i64 %27, 64, !dbg !514
  %33 = mul nsw i64 %31, 49, !dbg !514
  br label %34, !dbg !514

34:                                               ; preds = %139, %3
  %35 = phi i64 [ %140, %139 ], [ 0, %3 ], !dbg !514
  %36 = icmp slt i64 %35, 64, !dbg !514
  br i1 %36, label %37, label %141, !dbg !514

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !514
  br label %39, !dbg !514

39:                                               ; preds = %130, %37
  %40 = phi i64 [ %138, %130 ], [ 0, %37 ], !dbg !514
  %41 = icmp slt i64 %40, 49, !dbg !514
  br i1 %41, label %42, label %139, !dbg !514

42:                                               ; preds = %39
  %43 = add i64 %40, %33, !dbg !514
  br label %44, !dbg !514

44:                                               ; preds = %48, %42
  %45 = phi i64 [ %129, %48 ], [ 0, %42 ], !dbg !514
  %46 = phi <1 x float> [ %128, %48 ], [ zeroinitializer, %42 ], !dbg !514
  %47 = icmp slt i64 %45, 512, !dbg !514
  br i1 %47, label %48, label %130, !dbg !514

48:                                               ; preds = %44
  %49 = mul i64 %45, 196, !dbg !514
  %50 = add i64 %49, %43, !dbg !514
  %51 = getelementptr float, ptr %7, i64 %50, !dbg !514
  %52 = load <1 x float>, ptr %51, align 4, !dbg !514
  %53 = add i64 %45, 1, !dbg !514
  %54 = mul i64 %53, 196, !dbg !514
  %55 = add i64 %54, %43, !dbg !514
  %56 = getelementptr float, ptr %7, i64 %55, !dbg !514
  %57 = load <1 x float>, ptr %56, align 4, !dbg !514
  %58 = add i64 %45, 2, !dbg !514
  %59 = mul i64 %58, 196, !dbg !514
  %60 = add i64 %59, %43, !dbg !514
  %61 = getelementptr float, ptr %7, i64 %60, !dbg !514
  %62 = load <1 x float>, ptr %61, align 4, !dbg !514
  %63 = add i64 %45, 3, !dbg !514
  %64 = mul i64 %63, 196, !dbg !514
  %65 = add i64 %64, %43, !dbg !514
  %66 = getelementptr float, ptr %7, i64 %65, !dbg !514
  %67 = load <1 x float>, ptr %66, align 4, !dbg !514
  %68 = add i64 %45, 4, !dbg !514
  %69 = mul i64 %68, 196, !dbg !514
  %70 = add i64 %69, %43, !dbg !514
  %71 = getelementptr float, ptr %7, i64 %70, !dbg !514
  %72 = load <1 x float>, ptr %71, align 4, !dbg !514
  %73 = add i64 %45, 5, !dbg !514
  %74 = mul i64 %73, 196, !dbg !514
  %75 = add i64 %74, %43, !dbg !514
  %76 = getelementptr float, ptr %7, i64 %75, !dbg !514
  %77 = load <1 x float>, ptr %76, align 4, !dbg !514
  %78 = add i64 %45, 6, !dbg !514
  %79 = mul i64 %78, 196, !dbg !514
  %80 = add i64 %79, %43, !dbg !514
  %81 = getelementptr float, ptr %7, i64 %80, !dbg !514
  %82 = load <1 x float>, ptr %81, align 4, !dbg !514
  %83 = add i64 %45, 7, !dbg !514
  %84 = mul i64 %83, 196, !dbg !514
  %85 = add i64 %84, %43, !dbg !514
  %86 = getelementptr float, ptr %7, i64 %85, !dbg !514
  %87 = load <1 x float>, ptr %86, align 4, !dbg !514
  %88 = mul nuw nsw i64 %38, 512, !dbg !515
  %89 = add nuw nsw i64 %88, %45, !dbg !515
  %90 = getelementptr inbounds nuw float, ptr %12, i64 %89, !dbg !515
  %91 = load float, ptr %90, align 4, !dbg !515
  %92 = insertelement <1 x float> poison, float %91, i32 0, !dbg !515
  %93 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %92, <1 x float> %46), !dbg !515
  %94 = add nuw nsw i64 %88, %53, !dbg !515
  %95 = getelementptr inbounds nuw float, ptr %12, i64 %94, !dbg !515
  %96 = load float, ptr %95, align 4, !dbg !515
  %97 = insertelement <1 x float> poison, float %96, i32 0, !dbg !515
  %98 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %57, <1 x float> %97, <1 x float> %93), !dbg !515
  %99 = add nuw nsw i64 %88, %58, !dbg !515
  %100 = getelementptr inbounds nuw float, ptr %12, i64 %99, !dbg !515
  %101 = load float, ptr %100, align 4, !dbg !515
  %102 = insertelement <1 x float> poison, float %101, i32 0, !dbg !515
  %103 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %102, <1 x float> %98), !dbg !515
  %104 = add nuw nsw i64 %88, %63, !dbg !515
  %105 = getelementptr inbounds nuw float, ptr %12, i64 %104, !dbg !515
  %106 = load float, ptr %105, align 4, !dbg !515
  %107 = insertelement <1 x float> poison, float %106, i32 0, !dbg !515
  %108 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %107, <1 x float> %103), !dbg !515
  %109 = add nuw nsw i64 %88, %68, !dbg !515
  %110 = getelementptr inbounds nuw float, ptr %12, i64 %109, !dbg !515
  %111 = load float, ptr %110, align 4, !dbg !515
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !515
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %112, <1 x float> %108), !dbg !515
  %114 = add nuw nsw i64 %88, %73, !dbg !515
  %115 = getelementptr inbounds nuw float, ptr %12, i64 %114, !dbg !515
  %116 = load float, ptr %115, align 4, !dbg !515
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !515
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %77, <1 x float> %117, <1 x float> %113), !dbg !515
  %119 = add nuw nsw i64 %88, %78, !dbg !515
  %120 = getelementptr inbounds nuw float, ptr %12, i64 %119, !dbg !515
  %121 = load float, ptr %120, align 4, !dbg !515
  %122 = insertelement <1 x float> poison, float %121, i32 0, !dbg !515
  %123 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %82, <1 x float> %122, <1 x float> %118), !dbg !515
  %124 = add nuw nsw i64 %88, %83, !dbg !515
  %125 = getelementptr inbounds nuw float, ptr %12, i64 %124, !dbg !515
  %126 = load float, ptr %125, align 4, !dbg !515
  %127 = insertelement <1 x float> poison, float %126, i32 0, !dbg !515
  %128 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %87, <1 x float> %127, <1 x float> %123), !dbg !515
  %129 = add i64 %45, 8, !dbg !514
  br label %44, !dbg !514

130:                                              ; preds = %44
  %131 = fadd contract <1 x float> %46, zeroinitializer, !dbg !516
  %132 = fcmp ugt <1 x float> %131, zeroinitializer, !dbg !517
  %133 = select <1 x i1> %132, <1 x float> %131, <1 x float> zeroinitializer, !dbg !518
  %134 = extractelement <1 x float> %133, i64 0, !dbg !514
  %135 = mul nuw nsw i64 %38, 196, !dbg !514
  %136 = add nuw nsw i64 %135, %43, !dbg !514
  %137 = getelementptr inbounds nuw float, ptr %17, i64 %136, !dbg !514
  store float %134, ptr %137, align 4, !dbg !514
  %138 = add i64 %40, 1, !dbg !514
  br label %39, !dbg !514

139:                                              ; preds = %39
  %140 = add i64 %35, 1, !dbg !514
  br label %34, !dbg !514

141:                                              ; preds = %34
  ret i32 0, !dbg !519
}

define internal i32 @"main_graph$async_dispatch_36_elementwise_256x28x28_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !520 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !521
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !521
  %6 = load ptr, ptr %5, align 8, !dbg !521
  %7 = getelementptr float, ptr %6, i64 501760, !dbg !521
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !521
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !522
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !522
  %10 = load ptr, ptr %9, align 8, !dbg !522
  %11 = getelementptr float, ptr %10, i64 602112, !dbg !522
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !522
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !523
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !523
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !523
  %15 = load ptr, ptr %14, align 8, !dbg !523
  %16 = getelementptr float, ptr %15, i64 1773328, !dbg !523
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !523
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !524
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !524
  %19 = zext i32 %18 to i64, !dbg !524
  %20 = sdiv i64 %19, 2, !dbg !524
  %21 = mul i64 %20, 2, !dbg !524
  %22 = icmp ne i64 %19, %21, !dbg !524
  %23 = icmp slt i64 %19, 0, !dbg !524
  %24 = and i1 %22, %23, !dbg !524
  %25 = add i64 %20, -1, !dbg !524
  %26 = select i1 %24, i64 %25, i64 %20, !dbg !524
  %27 = srem i64 %19, 2, !dbg !524
  %28 = icmp slt i64 %27, 0, !dbg !524
  %29 = add nsw i64 %27, 2, !dbg !524
  %30 = select i1 %28, i64 %29, i64 %27, !dbg !524
  %31 = mul nsw i64 %26, 32, !dbg !524
  %32 = mul nsw i64 %30, 14, !dbg !524
  %33 = call <4 x float> @llvm.floor.v4f32(<4 x float> <float 1.200000e+01, float 1.250000e+01, float 1.300000e+01, float 1.350000e+01>), !dbg !525
  %34 = fptosi <4 x float> %33 to <4 x i64>, !dbg !526
  br label %35, !dbg !524

35:                                               ; preds = %171, %3
  %36 = phi i64 [ %172, %171 ], [ 0, %3 ], !dbg !524
  %37 = icmp slt i64 %36, 32, !dbg !524
  br i1 %37, label %38, label %173, !dbg !524

38:                                               ; preds = %35
  %39 = add i64 %36, %31, !dbg !524
  %40 = mul i64 %39, 14, !dbg !527
  br label %41, !dbg !524

41:                                               ; preds = %129, %38
  %42 = phi i64 [ %170, %129 ], [ 0, %38 ], !dbg !524
  %43 = icmp slt i64 %42, 14, !dbg !524
  br i1 %43, label %44, label %171, !dbg !524

44:                                               ; preds = %41
  %45 = add i64 %42, %32, !dbg !524
  %46 = sitofp i64 %45 to float, !dbg !528
  %47 = fdiv float %46, 2.000000e+00, !dbg !529
  %48 = call float @llvm.floor.f32(float %47), !dbg !530
  %49 = fptosi float %48 to i64, !dbg !531
  %50 = add i64 %49, %40, !dbg !527
  %51 = mul i64 %50, 14, !dbg !527
  br label %52, !dbg !524

52:                                               ; preds = %55, %44
  %53 = phi i64 [ %128, %55 ], [ 0, %44 ], !dbg !524
  %54 = icmp slt i64 %53, 24, !dbg !524
  br i1 %54, label %55, label %129, !dbg !524

55:                                               ; preds = %52
  %56 = mul i64 %39, 784, !dbg !524
  %57 = mul i64 %45, 28, !dbg !524
  %58 = add i64 %56, %57, !dbg !524
  %59 = add i64 %58, %53, !dbg !524
  %60 = getelementptr float, ptr %11, i64 %59, !dbg !524
  %61 = load <8 x float>, ptr %60, align 4, !dbg !524
  %62 = insertelement <8 x i64> poison, i64 %53, i32 0, !dbg !524
  %63 = shufflevector <8 x i64> %62, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !524
  %64 = add <8 x i64> %63, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, !dbg !532
  %65 = sitofp <8 x i64> %64 to <8 x float>, !dbg !533
  %66 = fdiv <8 x float> %65, splat (float 2.000000e+00), !dbg !534
  %67 = call <8 x float> @llvm.floor.v8f32(<8 x float> %66), !dbg !525
  %68 = fptosi <8 x float> %67 to <8 x i64>, !dbg !526
  %69 = insertelement <8 x i64> poison, i64 %51, i32 0, !dbg !527
  %70 = shufflevector <8 x i64> %69, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !527
  %71 = add <8 x i64> %68, %70, !dbg !527
  %72 = extractelement <8 x i64> %71, i64 0, !dbg !527
  %73 = add i64 0, %72, !dbg !527
  %74 = getelementptr float, ptr %7, i64 %73, !dbg !527
  %75 = load <1 x float>, ptr %74, align 4, !dbg !527
  %76 = extractelement <1 x float> %75, i64 0, !dbg !527
  %77 = extractelement <8 x i64> %71, i64 1, !dbg !527
  %78 = add i64 0, %77, !dbg !527
  %79 = getelementptr float, ptr %7, i64 %78, !dbg !527
  %80 = load <1 x float>, ptr %79, align 4, !dbg !527
  %81 = extractelement <1 x float> %80, i64 0, !dbg !527
  %82 = extractelement <8 x i64> %71, i64 2, !dbg !527
  %83 = add i64 0, %82, !dbg !527
  %84 = getelementptr float, ptr %7, i64 %83, !dbg !527
  %85 = load <1 x float>, ptr %84, align 4, !dbg !527
  %86 = extractelement <1 x float> %85, i64 0, !dbg !527
  %87 = extractelement <8 x i64> %71, i64 3, !dbg !527
  %88 = add i64 0, %87, !dbg !527
  %89 = getelementptr float, ptr %7, i64 %88, !dbg !527
  %90 = load <1 x float>, ptr %89, align 4, !dbg !527
  %91 = extractelement <1 x float> %90, i64 0, !dbg !527
  %92 = extractelement <8 x i64> %71, i64 4, !dbg !527
  %93 = add i64 0, %92, !dbg !527
  %94 = getelementptr float, ptr %7, i64 %93, !dbg !527
  %95 = load <1 x float>, ptr %94, align 4, !dbg !527
  %96 = extractelement <1 x float> %95, i64 0, !dbg !527
  %97 = extractelement <8 x i64> %71, i64 5, !dbg !527
  %98 = add i64 0, %97, !dbg !527
  %99 = getelementptr float, ptr %7, i64 %98, !dbg !527
  %100 = load <1 x float>, ptr %99, align 4, !dbg !527
  %101 = extractelement <1 x float> %100, i64 0, !dbg !527
  %102 = extractelement <8 x i64> %71, i64 6, !dbg !527
  %103 = add i64 0, %102, !dbg !527
  %104 = getelementptr float, ptr %7, i64 %103, !dbg !527
  %105 = load <1 x float>, ptr %104, align 4, !dbg !527
  %106 = extractelement <1 x float> %105, i64 0, !dbg !527
  %107 = extractelement <8 x i64> %71, i64 7, !dbg !527
  %108 = add i64 0, %107, !dbg !527
  %109 = getelementptr float, ptr %7, i64 %108, !dbg !527
  %110 = load <1 x float>, ptr %109, align 4, !dbg !527
  %111 = extractelement <1 x float> %110, i64 0, !dbg !527
  %112 = insertelement <8 x float> poison, float %76, i64 0, !dbg !527
  %113 = insertelement <8 x float> %112, float %81, i64 1, !dbg !527
  %114 = insertelement <8 x float> %113, float %86, i64 2, !dbg !527
  %115 = insertelement <8 x float> %114, float %91, i64 3, !dbg !527
  %116 = insertelement <8 x float> %115, float %96, i64 4, !dbg !527
  %117 = insertelement <8 x float> %116, float %101, i64 5, !dbg !527
  %118 = insertelement <8 x float> %117, float %106, i64 6, !dbg !527
  %119 = insertelement <8 x float> %118, float %111, i64 7, !dbg !527
  %120 = fadd contract <8 x float> %119, %61, !dbg !535
  %121 = add i64 %45, 2, !dbg !524
  %122 = add i64 %53, 2, !dbg !524
  %123 = mul i64 %39, 1024, !dbg !524
  %124 = mul i64 %121, 32, !dbg !524
  %125 = add i64 %123, %124, !dbg !524
  %126 = add i64 %125, %122, !dbg !524
  %127 = getelementptr float, ptr %16, i64 %126, !dbg !524
  store <8 x float> %120, ptr %127, align 4, !dbg !524
  %128 = add i64 %53, 8, !dbg !524
  br label %52, !dbg !524

129:                                              ; preds = %52
  %130 = mul i64 %39, 784, !dbg !524
  %131 = mul i64 %45, 28, !dbg !524
  %132 = add i64 %130, %131, !dbg !524
  %133 = add i64 %132, 24, !dbg !524
  %134 = getelementptr float, ptr %11, i64 %133, !dbg !524
  %135 = load <4 x float>, ptr %134, align 4, !dbg !524
  %136 = insertelement <4 x i64> poison, i64 %51, i32 0, !dbg !527
  %137 = shufflevector <4 x i64> %136, <4 x i64> poison, <4 x i32> zeroinitializer, !dbg !527
  %138 = add <4 x i64> %34, %137, !dbg !527
  %139 = extractelement <4 x i64> %138, i64 0, !dbg !527
  %140 = add i64 0, %139, !dbg !527
  %141 = getelementptr float, ptr %7, i64 %140, !dbg !527
  %142 = load <1 x float>, ptr %141, align 4, !dbg !527
  %143 = extractelement <1 x float> %142, i64 0, !dbg !527
  %144 = extractelement <4 x i64> %138, i64 1, !dbg !527
  %145 = add i64 0, %144, !dbg !527
  %146 = getelementptr float, ptr %7, i64 %145, !dbg !527
  %147 = load <1 x float>, ptr %146, align 4, !dbg !527
  %148 = extractelement <1 x float> %147, i64 0, !dbg !527
  %149 = extractelement <4 x i64> %138, i64 2, !dbg !527
  %150 = add i64 0, %149, !dbg !527
  %151 = getelementptr float, ptr %7, i64 %150, !dbg !527
  %152 = load <1 x float>, ptr %151, align 4, !dbg !527
  %153 = extractelement <1 x float> %152, i64 0, !dbg !527
  %154 = extractelement <4 x i64> %138, i64 3, !dbg !527
  %155 = add i64 0, %154, !dbg !527
  %156 = getelementptr float, ptr %7, i64 %155, !dbg !527
  %157 = load <1 x float>, ptr %156, align 4, !dbg !527
  %158 = extractelement <1 x float> %157, i64 0, !dbg !527
  %159 = insertelement <4 x float> poison, float %143, i64 0, !dbg !527
  %160 = insertelement <4 x float> %159, float %148, i64 1, !dbg !527
  %161 = insertelement <4 x float> %160, float %153, i64 2, !dbg !527
  %162 = insertelement <4 x float> %161, float %158, i64 3, !dbg !527
  %163 = fadd contract <4 x float> %162, %135, !dbg !535
  %164 = add i64 %45, 2, !dbg !524
  %165 = mul i64 %39, 1024, !dbg !524
  %166 = mul i64 %164, 32, !dbg !524
  %167 = add i64 %165, %166, !dbg !524
  %168 = add i64 %167, 26, !dbg !524
  %169 = getelementptr float, ptr %16, i64 %168, !dbg !524
  store <4 x float> %163, ptr %169, align 4, !dbg !524
  %170 = add i64 %42, 1, !dbg !524
  br label %41, !dbg !524

171:                                              ; preds = %41
  %172 = add i64 %36, 1, !dbg !524
  br label %35, !dbg !524

173:                                              ; preds = %35
  ret i32 0, !dbg !536
}

define internal i32 @"main_graph$async_dispatch_37_conv_28x28x256x5x5_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !537 {
  %4 = alloca float, i64 8, align 64, !dbg !538
  %5 = alloca float, i64 8, align 64, !dbg !538
  %6 = alloca float, i64 8, align 64, !dbg !539
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !540
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !540
  %9 = load ptr, ptr %8, align 8, !dbg !540
  %10 = getelementptr float, ptr %9, i64 1773328, !dbg !540
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !540
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !541
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !541
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !541
  %14 = load ptr, ptr %13, align 8, !dbg !541
  %15 = getelementptr float, ptr %14, i64 3842752, !dbg !541
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !541
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !542
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !542
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !542
  %19 = load ptr, ptr %18, align 8, !dbg !542
  %20 = getelementptr float, ptr %19, i64 401408, !dbg !542
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !542
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !538
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !538
  %23 = zext i32 %22 to i64, !dbg !538
  %24 = sdiv i64 %23, 8, !dbg !538
  %25 = mul i64 %24, 8, !dbg !538
  %26 = icmp ne i64 %23, %25, !dbg !538
  %27 = icmp slt i64 %23, 0, !dbg !538
  %28 = and i1 %26, %27, !dbg !538
  %29 = add i64 %24, -1, !dbg !538
  %30 = select i1 %28, i64 %29, i64 %24, !dbg !538
  %31 = srem i64 %23, 8, !dbg !538
  %32 = icmp slt i64 %31, 0, !dbg !538
  %33 = add nsw i64 %31, 8, !dbg !538
  %34 = select i1 %32, i64 %33, i64 %31, !dbg !538
  %35 = mul nsw i64 %30, 14, !dbg !538
  %36 = mul nsw i64 %34, 32, !dbg !538
  br label %37, !dbg !538

37:                                               ; preds = %144, %3
  %38 = phi i64 [ %145, %144 ], [ 0, %3 ], !dbg !538
  %39 = icmp slt i64 %38, 14, !dbg !538
  br i1 %39, label %40, label %146, !dbg !538

40:                                               ; preds = %142, %37
  %41 = phi i64 [ %143, %142 ], [ 0, %37 ], !dbg !538
  %42 = icmp slt i64 %41, 28, !dbg !538
  br i1 %42, label %43, label %144, !dbg !538

43:                                               ; preds = %40
  %44 = sub i64 28, %41, !dbg !538
  %45 = icmp slt i64 %44, 8, !dbg !538
  %46 = select i1 %45, i64 %44, i64 8, !dbg !538
  %47 = trunc i64 %46 to i32, !dbg !543
  %48 = insertelement <8 x i32> poison, i32 %47, i32 0, !dbg !543
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !543
  %50 = icmp sgt <8 x i32> %49, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !543
  %51 = getelementptr float, ptr %6, i64 0, !dbg !543
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %51, i32 4, <8 x i1> %50), !dbg !543
  br label %52, !dbg !538

52:                                               ; preds = %140, %43
  %53 = phi i64 [ %141, %140 ], [ 0, %43 ], !dbg !538
  %54 = icmp slt i64 %53, 32, !dbg !538
  br i1 %54, label %55, label %142, !dbg !538

55:                                               ; preds = %52
  %56 = add i64 %53, %36, !dbg !538
  br label %57, !dbg !538

57:                                               ; preds = %60, %55
  %58 = phi i64 [ %65, %60 ], [ 0, %55 ], !dbg !538
  %59 = icmp slt i64 %58, %46, !dbg !538
  br i1 %59, label %60, label %66, !dbg !538

60:                                               ; preds = %57
  %61 = add nuw nsw i64 0, %58, !dbg !538
  %62 = getelementptr inbounds nuw float, ptr %6, i64 %61, !dbg !538
  %63 = load float, ptr %62, align 4, !dbg !538
  %64 = getelementptr inbounds nuw float, ptr %5, i64 %61, !dbg !538
  store float %63, ptr %64, align 4, !dbg !538
  %65 = add i64 %58, 1, !dbg !538
  br label %57, !dbg !538

66:                                               ; preds = %101, %57
  %67 = phi i64 [ %102, %101 ], [ 0, %57 ], !dbg !538
  %68 = icmp slt i64 %67, 5, !dbg !538
  br i1 %68, label %69, label %103, !dbg !538

69:                                               ; preds = %66
  %70 = add i64 %67, %38, !dbg !538
  %71 = add i64 %70, %35, !dbg !538
  br label %72, !dbg !538

72:                                               ; preds = %99, %69
  %73 = phi i64 [ %100, %99 ], [ 0, %69 ], !dbg !538
  %74 = icmp slt i64 %73, %46, !dbg !538
  br i1 %74, label %75, label %101, !dbg !538

75:                                               ; preds = %78, %72
  %76 = phi i64 [ %98, %78 ], [ 0, %72 ], !dbg !538
  %77 = icmp slt i64 %76, 5, !dbg !538
  br i1 %77, label %78, label %99, !dbg !538

78:                                               ; preds = %75
  %79 = add i64 %41, %73, !dbg !538
  %80 = add i64 %79, %76, !dbg !538
  %81 = mul nuw nsw i64 %56, 1024, !dbg !538
  %82 = mul nuw nsw i64 %71, 32, !dbg !538
  %83 = add nuw nsw i64 %81, %82, !dbg !538
  %84 = add nuw nsw i64 %83, %80, !dbg !538
  %85 = getelementptr inbounds nuw float, ptr %10, i64 %84, !dbg !538
  %86 = load float, ptr %85, align 4, !dbg !538
  %87 = mul nuw nsw i64 %56, 25, !dbg !538
  %88 = mul nuw nsw i64 %67, 5, !dbg !538
  %89 = add nuw nsw i64 %87, %88, !dbg !538
  %90 = add nuw nsw i64 %89, %76, !dbg !538
  %91 = getelementptr inbounds nuw float, ptr %15, i64 %90, !dbg !538
  %92 = load float, ptr %91, align 4, !dbg !538
  %93 = add nuw nsw i64 0, %73, !dbg !538
  %94 = getelementptr inbounds nuw float, ptr %5, i64 %93, !dbg !538
  %95 = load float, ptr %94, align 4, !dbg !538
  %96 = fmul contract float %86, %92, !dbg !544
  %97 = fadd contract float %95, %96, !dbg !545
  store float %97, ptr %94, align 4, !dbg !538
  %98 = add i64 %76, 1, !dbg !538
  br label %75, !dbg !538

99:                                               ; preds = %75
  %100 = add i64 %73, 1, !dbg !538
  br label %72, !dbg !538

101:                                              ; preds = %72
  %102 = add i64 %67, 1, !dbg !538
  br label %66, !dbg !538

103:                                              ; preds = %106, %66
  %104 = phi i64 [ %111, %106 ], [ 0, %66 ], !dbg !538
  %105 = icmp slt i64 %104, %46, !dbg !538
  br i1 %105, label %106, label %112, !dbg !538

106:                                              ; preds = %103
  %107 = add nuw nsw i64 0, %104, !dbg !538
  %108 = getelementptr inbounds nuw float, ptr %6, i64 %107, !dbg !538
  %109 = load float, ptr %108, align 4, !dbg !538
  %110 = getelementptr inbounds nuw float, ptr %4, i64 %107, !dbg !538
  store float %109, ptr %110, align 4, !dbg !538
  %111 = add i64 %104, 1, !dbg !538
  br label %103, !dbg !538

112:                                              ; preds = %115, %103
  %113 = phi i64 [ %120, %115 ], [ 0, %103 ], !dbg !538
  %114 = icmp slt i64 %113, %46, !dbg !538
  br i1 %114, label %115, label %121, !dbg !538

115:                                              ; preds = %112
  %116 = add nuw nsw i64 0, %113, !dbg !538
  %117 = getelementptr inbounds nuw float, ptr %5, i64 %116, !dbg !538
  %118 = load float, ptr %117, align 4, !dbg !538
  %119 = getelementptr inbounds nuw float, ptr %4, i64 %116, !dbg !538
  store float %118, ptr %119, align 4, !dbg !538
  %120 = add i64 %113, 1, !dbg !538
  br label %112, !dbg !538

121:                                              ; preds = %124, %112
  %122 = phi i64 [ %139, %124 ], [ 0, %112 ], !dbg !546
  %123 = icmp slt i64 %122, %46, !dbg !546
  br i1 %123, label %124, label %140, !dbg !546

124:                                              ; preds = %121
  %125 = add i64 0, %122, !dbg !546
  %126 = getelementptr float, ptr %4, i64 %125, !dbg !546
  %127 = load <1 x float>, ptr %126, align 4, !dbg !546
  %128 = fadd contract <1 x float> %127, zeroinitializer, !dbg !547
  %129 = fcmp ugt <1 x float> %128, zeroinitializer, !dbg !548
  %130 = select <1 x i1> %129, <1 x float> %128, <1 x float> zeroinitializer, !dbg !549
  %131 = extractelement <1 x float> %130, i64 0, !dbg !546
  %132 = add i64 %35, %38, !dbg !546
  %133 = add i64 %41, %122, !dbg !546
  %134 = mul nuw nsw i64 %56, 784, !dbg !546
  %135 = mul nuw nsw i64 %132, 28, !dbg !546
  %136 = add nuw nsw i64 %134, %135, !dbg !546
  %137 = add nuw nsw i64 %136, %133, !dbg !546
  %138 = getelementptr inbounds nuw float, ptr %20, i64 %137, !dbg !546
  store float %131, ptr %138, align 4, !dbg !546
  %139 = add i64 %122, 1, !dbg !546
  br label %121, !dbg !546

140:                                              ; preds = %121
  %141 = add i64 %53, 1, !dbg !538
  br label %52, !dbg !538

142:                                              ; preds = %52
  %143 = add i64 %41, 8, !dbg !538
  br label %40, !dbg !538

144:                                              ; preds = %40
  %145 = add i64 %38, 1, !dbg !538
  br label %37, !dbg !538

146:                                              ; preds = %37
  ret i32 0, !dbg !550
}

define internal i32 @"main_graph$async_dispatch_38_matmul_like_128x784x256_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !551 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !552
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !552
  %6 = load ptr, ptr %5, align 8, !dbg !552
  %7 = getelementptr float, ptr %6, i64 401408, !dbg !552
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !552
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !553
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !553
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !553
  %11 = load ptr, ptr %10, align 8, !dbg !553
  %12 = getelementptr float, ptr %11, i64 10240, !dbg !553
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !553
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !554
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !554
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !554
  %16 = load ptr, ptr %15, align 8, !dbg !554
  %17 = getelementptr float, ptr %16, i64 602112, !dbg !554
  call void @llvm.assume(i1 true) [ "align"(ptr %17, i64 64) ], !dbg !554
  %18 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !555
  %19 = extractvalue %iree_hal_executable_workgroup_state_v0_t %18, 0, !dbg !555
  %20 = zext i32 %19 to i64, !dbg !555
  %21 = sdiv i64 %20, 14, !dbg !555
  %22 = mul i64 %21, 14, !dbg !555
  %23 = icmp ne i64 %20, %22, !dbg !555
  %24 = icmp slt i64 %20, 0, !dbg !555
  %25 = and i1 %23, %24, !dbg !555
  %26 = add i64 %21, -1, !dbg !555
  %27 = select i1 %25, i64 %26, i64 %21, !dbg !555
  %28 = srem i64 %20, 14, !dbg !555
  %29 = icmp slt i64 %28, 0, !dbg !555
  %30 = add nsw i64 %28, 14, !dbg !555
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !555
  %32 = mul nsw i64 %27, 64, !dbg !555
  %33 = mul nsw i64 %31, 56, !dbg !555
  br label %34, !dbg !555

34:                                               ; preds = %139, %3
  %35 = phi i64 [ %140, %139 ], [ 0, %3 ], !dbg !555
  %36 = icmp slt i64 %35, 64, !dbg !555
  br i1 %36, label %37, label %141, !dbg !555

37:                                               ; preds = %34
  %38 = add i64 %35, %32, !dbg !555
  br label %39, !dbg !555

39:                                               ; preds = %130, %37
  %40 = phi i64 [ %138, %130 ], [ 0, %37 ], !dbg !555
  %41 = icmp slt i64 %40, 56, !dbg !555
  br i1 %41, label %42, label %139, !dbg !555

42:                                               ; preds = %39
  %43 = add i64 %40, %33, !dbg !555
  br label %44, !dbg !555

44:                                               ; preds = %48, %42
  %45 = phi i64 [ %129, %48 ], [ 0, %42 ], !dbg !555
  %46 = phi <1 x float> [ %128, %48 ], [ zeroinitializer, %42 ], !dbg !555
  %47 = icmp slt i64 %45, 256, !dbg !555
  br i1 %47, label %48, label %130, !dbg !555

48:                                               ; preds = %44
  %49 = mul i64 %45, 784, !dbg !555
  %50 = add i64 %49, %43, !dbg !555
  %51 = getelementptr float, ptr %7, i64 %50, !dbg !555
  %52 = load <1 x float>, ptr %51, align 4, !dbg !555
  %53 = add i64 %45, 1, !dbg !555
  %54 = mul i64 %53, 784, !dbg !555
  %55 = add i64 %54, %43, !dbg !555
  %56 = getelementptr float, ptr %7, i64 %55, !dbg !555
  %57 = load <1 x float>, ptr %56, align 4, !dbg !555
  %58 = add i64 %45, 2, !dbg !555
  %59 = mul i64 %58, 784, !dbg !555
  %60 = add i64 %59, %43, !dbg !555
  %61 = getelementptr float, ptr %7, i64 %60, !dbg !555
  %62 = load <1 x float>, ptr %61, align 4, !dbg !555
  %63 = add i64 %45, 3, !dbg !555
  %64 = mul i64 %63, 784, !dbg !555
  %65 = add i64 %64, %43, !dbg !555
  %66 = getelementptr float, ptr %7, i64 %65, !dbg !555
  %67 = load <1 x float>, ptr %66, align 4, !dbg !555
  %68 = add i64 %45, 4, !dbg !555
  %69 = mul i64 %68, 784, !dbg !555
  %70 = add i64 %69, %43, !dbg !555
  %71 = getelementptr float, ptr %7, i64 %70, !dbg !555
  %72 = load <1 x float>, ptr %71, align 4, !dbg !555
  %73 = add i64 %45, 5, !dbg !555
  %74 = mul i64 %73, 784, !dbg !555
  %75 = add i64 %74, %43, !dbg !555
  %76 = getelementptr float, ptr %7, i64 %75, !dbg !555
  %77 = load <1 x float>, ptr %76, align 4, !dbg !555
  %78 = add i64 %45, 6, !dbg !555
  %79 = mul i64 %78, 784, !dbg !555
  %80 = add i64 %79, %43, !dbg !555
  %81 = getelementptr float, ptr %7, i64 %80, !dbg !555
  %82 = load <1 x float>, ptr %81, align 4, !dbg !555
  %83 = add i64 %45, 7, !dbg !555
  %84 = mul i64 %83, 784, !dbg !555
  %85 = add i64 %84, %43, !dbg !555
  %86 = getelementptr float, ptr %7, i64 %85, !dbg !555
  %87 = load <1 x float>, ptr %86, align 4, !dbg !555
  %88 = mul nuw nsw i64 %38, 256, !dbg !556
  %89 = add nuw nsw i64 %88, %45, !dbg !556
  %90 = getelementptr inbounds nuw float, ptr %12, i64 %89, !dbg !556
  %91 = load float, ptr %90, align 4, !dbg !556
  %92 = insertelement <1 x float> poison, float %91, i32 0, !dbg !556
  %93 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %92, <1 x float> %46), !dbg !556
  %94 = add nuw nsw i64 %88, %53, !dbg !556
  %95 = getelementptr inbounds nuw float, ptr %12, i64 %94, !dbg !556
  %96 = load float, ptr %95, align 4, !dbg !556
  %97 = insertelement <1 x float> poison, float %96, i32 0, !dbg !556
  %98 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %57, <1 x float> %97, <1 x float> %93), !dbg !556
  %99 = add nuw nsw i64 %88, %58, !dbg !556
  %100 = getelementptr inbounds nuw float, ptr %12, i64 %99, !dbg !556
  %101 = load float, ptr %100, align 4, !dbg !556
  %102 = insertelement <1 x float> poison, float %101, i32 0, !dbg !556
  %103 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %102, <1 x float> %98), !dbg !556
  %104 = add nuw nsw i64 %88, %63, !dbg !556
  %105 = getelementptr inbounds nuw float, ptr %12, i64 %104, !dbg !556
  %106 = load float, ptr %105, align 4, !dbg !556
  %107 = insertelement <1 x float> poison, float %106, i32 0, !dbg !556
  %108 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %107, <1 x float> %103), !dbg !556
  %109 = add nuw nsw i64 %88, %68, !dbg !556
  %110 = getelementptr inbounds nuw float, ptr %12, i64 %109, !dbg !556
  %111 = load float, ptr %110, align 4, !dbg !556
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !556
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %112, <1 x float> %108), !dbg !556
  %114 = add nuw nsw i64 %88, %73, !dbg !556
  %115 = getelementptr inbounds nuw float, ptr %12, i64 %114, !dbg !556
  %116 = load float, ptr %115, align 4, !dbg !556
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !556
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %77, <1 x float> %117, <1 x float> %113), !dbg !556
  %119 = add nuw nsw i64 %88, %78, !dbg !556
  %120 = getelementptr inbounds nuw float, ptr %12, i64 %119, !dbg !556
  %121 = load float, ptr %120, align 4, !dbg !556
  %122 = insertelement <1 x float> poison, float %121, i32 0, !dbg !556
  %123 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %82, <1 x float> %122, <1 x float> %118), !dbg !556
  %124 = add nuw nsw i64 %88, %83, !dbg !556
  %125 = getelementptr inbounds nuw float, ptr %12, i64 %124, !dbg !556
  %126 = load float, ptr %125, align 4, !dbg !556
  %127 = insertelement <1 x float> poison, float %126, i32 0, !dbg !556
  %128 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %87, <1 x float> %127, <1 x float> %123), !dbg !556
  %129 = add i64 %45, 8, !dbg !555
  br label %44, !dbg !555

130:                                              ; preds = %44
  %131 = fadd contract <1 x float> %46, zeroinitializer, !dbg !557
  %132 = fcmp ugt <1 x float> %131, zeroinitializer, !dbg !558
  %133 = select <1 x i1> %132, <1 x float> %131, <1 x float> zeroinitializer, !dbg !559
  %134 = extractelement <1 x float> %133, i64 0, !dbg !555
  %135 = mul nuw nsw i64 %38, 784, !dbg !555
  %136 = add nuw nsw i64 %135, %43, !dbg !555
  %137 = getelementptr inbounds nuw float, ptr %17, i64 %136, !dbg !555
  store float %134, ptr %137, align 4, !dbg !555
  %138 = add i64 %40, 1, !dbg !555
  br label %39, !dbg !555

139:                                              ; preds = %39
  %140 = add i64 %35, 1, !dbg !555
  br label %34, !dbg !555

141:                                              ; preds = %34
  ret i32 0, !dbg !560
}

define internal i32 @"main_graph$async_dispatch_39_elementwise_128x56x56_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !561 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !562
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !562
  %6 = load ptr, ptr %5, align 8, !dbg !562
  %7 = getelementptr float, ptr %6, i64 602112, !dbg !562
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !562
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !563
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !563
  %10 = load ptr, ptr %9, align 8, !dbg !563
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !563
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !564
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !564
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !564
  %14 = load ptr, ptr %13, align 8, !dbg !564
  %15 = getelementptr float, ptr %14, i64 1773328, !dbg !564
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !564
  %16 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !565
  %17 = extractvalue %iree_hal_executable_workgroup_state_v0_t %16, 0, !dbg !565
  %18 = zext i32 %17 to i64, !dbg !565
  %19 = sdiv i64 %18, 2, !dbg !565
  %20 = mul i64 %19, 2, !dbg !565
  %21 = icmp ne i64 %18, %20, !dbg !565
  %22 = icmp slt i64 %18, 0, !dbg !565
  %23 = and i1 %21, %22, !dbg !565
  %24 = add i64 %19, -1, !dbg !565
  %25 = select i1 %23, i64 %24, i64 %19, !dbg !565
  %26 = srem i64 %18, 2, !dbg !565
  %27 = icmp slt i64 %26, 0, !dbg !565
  %28 = add nsw i64 %26, 2, !dbg !565
  %29 = select i1 %27, i64 %28, i64 %26, !dbg !565
  %30 = mul nsw i64 %25, 16, !dbg !565
  %31 = mul nsw i64 %29, 28, !dbg !565
  br label %32, !dbg !565

32:                                               ; preds = %128, %3
  %33 = phi i64 [ %129, %128 ], [ 0, %3 ], !dbg !565
  %34 = icmp slt i64 %33, 16, !dbg !565
  br i1 %34, label %35, label %130, !dbg !565

35:                                               ; preds = %32
  %36 = add i64 %33, %30, !dbg !565
  %37 = mul i64 %36, 28, !dbg !566
  br label %38, !dbg !565

38:                                               ; preds = %126, %35
  %39 = phi i64 [ %127, %126 ], [ 0, %35 ], !dbg !565
  %40 = icmp slt i64 %39, 28, !dbg !565
  br i1 %40, label %41, label %128, !dbg !565

41:                                               ; preds = %38
  %42 = add i64 %39, %31, !dbg !565
  %43 = sitofp i64 %42 to float, !dbg !567
  %44 = fdiv float %43, 2.000000e+00, !dbg !568
  %45 = call float @llvm.floor.f32(float %44), !dbg !569
  %46 = fptosi float %45 to i64, !dbg !570
  %47 = add i64 %46, %37, !dbg !566
  %48 = mul i64 %47, 28, !dbg !566
  br label %49, !dbg !565

49:                                               ; preds = %52, %41
  %50 = phi i64 [ %125, %52 ], [ 0, %41 ], !dbg !565
  %51 = icmp slt i64 %50, 56, !dbg !565
  br i1 %51, label %52, label %126, !dbg !565

52:                                               ; preds = %49
  %53 = mul i64 %36, 3136, !dbg !565
  %54 = mul i64 %42, 56, !dbg !565
  %55 = add i64 %53, %54, !dbg !565
  %56 = add i64 %55, %50, !dbg !565
  %57 = getelementptr float, ptr %10, i64 %56, !dbg !565
  %58 = load <8 x float>, ptr %57, align 4, !dbg !565
  %59 = insertelement <8 x i64> poison, i64 %50, i32 0, !dbg !565
  %60 = shufflevector <8 x i64> %59, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !565
  %61 = add <8 x i64> %60, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, !dbg !571
  %62 = sitofp <8 x i64> %61 to <8 x float>, !dbg !572
  %63 = fdiv <8 x float> %62, splat (float 2.000000e+00), !dbg !573
  %64 = call <8 x float> @llvm.floor.v8f32(<8 x float> %63), !dbg !574
  %65 = fptosi <8 x float> %64 to <8 x i64>, !dbg !575
  %66 = insertelement <8 x i64> poison, i64 %48, i32 0, !dbg !566
  %67 = shufflevector <8 x i64> %66, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !566
  %68 = add <8 x i64> %65, %67, !dbg !566
  %69 = extractelement <8 x i64> %68, i64 0, !dbg !566
  %70 = add i64 0, %69, !dbg !566
  %71 = getelementptr float, ptr %7, i64 %70, !dbg !566
  %72 = load <1 x float>, ptr %71, align 4, !dbg !566
  %73 = extractelement <1 x float> %72, i64 0, !dbg !566
  %74 = extractelement <8 x i64> %68, i64 1, !dbg !566
  %75 = add i64 0, %74, !dbg !566
  %76 = getelementptr float, ptr %7, i64 %75, !dbg !566
  %77 = load <1 x float>, ptr %76, align 4, !dbg !566
  %78 = extractelement <1 x float> %77, i64 0, !dbg !566
  %79 = extractelement <8 x i64> %68, i64 2, !dbg !566
  %80 = add i64 0, %79, !dbg !566
  %81 = getelementptr float, ptr %7, i64 %80, !dbg !566
  %82 = load <1 x float>, ptr %81, align 4, !dbg !566
  %83 = extractelement <1 x float> %82, i64 0, !dbg !566
  %84 = extractelement <8 x i64> %68, i64 3, !dbg !566
  %85 = add i64 0, %84, !dbg !566
  %86 = getelementptr float, ptr %7, i64 %85, !dbg !566
  %87 = load <1 x float>, ptr %86, align 4, !dbg !566
  %88 = extractelement <1 x float> %87, i64 0, !dbg !566
  %89 = extractelement <8 x i64> %68, i64 4, !dbg !566
  %90 = add i64 0, %89, !dbg !566
  %91 = getelementptr float, ptr %7, i64 %90, !dbg !566
  %92 = load <1 x float>, ptr %91, align 4, !dbg !566
  %93 = extractelement <1 x float> %92, i64 0, !dbg !566
  %94 = extractelement <8 x i64> %68, i64 5, !dbg !566
  %95 = add i64 0, %94, !dbg !566
  %96 = getelementptr float, ptr %7, i64 %95, !dbg !566
  %97 = load <1 x float>, ptr %96, align 4, !dbg !566
  %98 = extractelement <1 x float> %97, i64 0, !dbg !566
  %99 = extractelement <8 x i64> %68, i64 6, !dbg !566
  %100 = add i64 0, %99, !dbg !566
  %101 = getelementptr float, ptr %7, i64 %100, !dbg !566
  %102 = load <1 x float>, ptr %101, align 4, !dbg !566
  %103 = extractelement <1 x float> %102, i64 0, !dbg !566
  %104 = extractelement <8 x i64> %68, i64 7, !dbg !566
  %105 = add i64 0, %104, !dbg !566
  %106 = getelementptr float, ptr %7, i64 %105, !dbg !566
  %107 = load <1 x float>, ptr %106, align 4, !dbg !566
  %108 = extractelement <1 x float> %107, i64 0, !dbg !566
  %109 = insertelement <8 x float> poison, float %73, i64 0, !dbg !566
  %110 = insertelement <8 x float> %109, float %78, i64 1, !dbg !566
  %111 = insertelement <8 x float> %110, float %83, i64 2, !dbg !566
  %112 = insertelement <8 x float> %111, float %88, i64 3, !dbg !566
  %113 = insertelement <8 x float> %112, float %93, i64 4, !dbg !566
  %114 = insertelement <8 x float> %113, float %98, i64 5, !dbg !566
  %115 = insertelement <8 x float> %114, float %103, i64 6, !dbg !566
  %116 = insertelement <8 x float> %115, float %108, i64 7, !dbg !566
  %117 = fadd contract <8 x float> %116, %58, !dbg !576
  %118 = add i64 %42, 2, !dbg !565
  %119 = add i64 %50, 2, !dbg !565
  %120 = mul i64 %36, 3600, !dbg !565
  %121 = mul i64 %118, 60, !dbg !565
  %122 = add i64 %120, %121, !dbg !565
  %123 = add i64 %122, %119, !dbg !565
  %124 = getelementptr float, ptr %15, i64 %123, !dbg !565
  store <8 x float> %117, ptr %124, align 4, !dbg !565
  %125 = add i64 %50, 8, !dbg !565
  br label %49, !dbg !565

126:                                              ; preds = %49
  %127 = add i64 %39, 1, !dbg !565
  br label %38, !dbg !565

128:                                              ; preds = %38
  %129 = add i64 %33, 1, !dbg !565
  br label %32, !dbg !565

130:                                              ; preds = %32
  ret i32 0, !dbg !577
}

define internal i32 @"main_graph$async_dispatch_40_conv_56x56x128x5x5_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !578 {
  %4 = alloca float, i64 8, align 64, !dbg !579
  %5 = alloca float, i64 8, align 64, !dbg !579
  %6 = alloca float, i64 8, align 64, !dbg !580
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !581
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !581
  %9 = load ptr, ptr %8, align 8, !dbg !581
  %10 = getelementptr float, ptr %9, i64 1773328, !dbg !581
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !581
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !582
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !582
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !582
  %14 = load ptr, ptr %13, align 8, !dbg !582
  %15 = getelementptr float, ptr %14, i64 3839552, !dbg !582
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !582
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !583
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !583
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !583
  %19 = load ptr, ptr %18, align 8, !dbg !583
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !583
  %20 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !579
  %21 = extractvalue %iree_hal_executable_workgroup_state_v0_t %20, 0, !dbg !579
  %22 = zext i32 %21 to i64, !dbg !579
  %23 = sdiv i64 %22, 8, !dbg !579
  %24 = mul i64 %23, 8, !dbg !579
  %25 = icmp ne i64 %22, %24, !dbg !579
  %26 = icmp slt i64 %22, 0, !dbg !579
  %27 = and i1 %25, %26, !dbg !579
  %28 = add i64 %23, -1, !dbg !579
  %29 = select i1 %27, i64 %28, i64 %23, !dbg !579
  %30 = srem i64 %22, 8, !dbg !579
  %31 = icmp slt i64 %30, 0, !dbg !579
  %32 = add nsw i64 %30, 8, !dbg !579
  %33 = select i1 %31, i64 %32, i64 %30, !dbg !579
  %34 = sdiv i64 %33, 4, !dbg !579
  %35 = srem i64 %22, 4, !dbg !579
  %36 = icmp slt i64 %35, 0, !dbg !579
  %37 = add nsw i64 %35, 4, !dbg !579
  %38 = select i1 %36, i64 %37, i64 %35, !dbg !579
  %39 = mul nsw i64 %29, 28, !dbg !579
  %40 = mul nsw i64 %34, 28, !dbg !579
  %41 = mul nsw i64 %38, 32, !dbg !579
  br label %42, !dbg !579

42:                                               ; preds = %150, %3
  %43 = phi i64 [ %151, %150 ], [ 0, %3 ], !dbg !579
  %44 = icmp slt i64 %43, 28, !dbg !579
  br i1 %44, label %45, label %152, !dbg !579

45:                                               ; preds = %148, %42
  %46 = phi i64 [ %149, %148 ], [ 0, %42 ], !dbg !579
  %47 = icmp slt i64 %46, 28, !dbg !579
  br i1 %47, label %48, label %150, !dbg !579

48:                                               ; preds = %45
  %49 = sub i64 28, %46, !dbg !579
  %50 = icmp slt i64 %49, 8, !dbg !579
  %51 = select i1 %50, i64 %49, i64 8, !dbg !579
  %52 = trunc i64 %51 to i32, !dbg !584
  %53 = insertelement <8 x i32> poison, i32 %52, i32 0, !dbg !584
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !584
  %55 = icmp sgt <8 x i32> %54, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !584
  %56 = getelementptr float, ptr %6, i64 0, !dbg !584
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %56, i32 4, <8 x i1> %55), !dbg !584
  %57 = add i64 %46, %40, !dbg !579
  br label %58, !dbg !579

58:                                               ; preds = %146, %48
  %59 = phi i64 [ %147, %146 ], [ 0, %48 ], !dbg !579
  %60 = icmp slt i64 %59, 32, !dbg !579
  br i1 %60, label %61, label %148, !dbg !579

61:                                               ; preds = %58
  %62 = add i64 %59, %41, !dbg !579
  br label %63, !dbg !579

63:                                               ; preds = %66, %61
  %64 = phi i64 [ %71, %66 ], [ 0, %61 ], !dbg !579
  %65 = icmp slt i64 %64, %51, !dbg !579
  br i1 %65, label %66, label %72, !dbg !579

66:                                               ; preds = %63
  %67 = add nuw nsw i64 0, %64, !dbg !579
  %68 = getelementptr inbounds nuw float, ptr %6, i64 %67, !dbg !579
  %69 = load float, ptr %68, align 4, !dbg !579
  %70 = getelementptr inbounds nuw float, ptr %5, i64 %67, !dbg !579
  store float %69, ptr %70, align 4, !dbg !579
  %71 = add i64 %64, 1, !dbg !579
  br label %63, !dbg !579

72:                                               ; preds = %107, %63
  %73 = phi i64 [ %108, %107 ], [ 0, %63 ], !dbg !579
  %74 = icmp slt i64 %73, 5, !dbg !579
  br i1 %74, label %75, label %109, !dbg !579

75:                                               ; preds = %72
  %76 = add i64 %73, %43, !dbg !579
  %77 = add i64 %76, %39, !dbg !579
  br label %78, !dbg !579

78:                                               ; preds = %105, %75
  %79 = phi i64 [ %106, %105 ], [ 0, %75 ], !dbg !579
  %80 = icmp slt i64 %79, %51, !dbg !579
  br i1 %80, label %81, label %107, !dbg !579

81:                                               ; preds = %84, %78
  %82 = phi i64 [ %104, %84 ], [ 0, %78 ], !dbg !579
  %83 = icmp slt i64 %82, 5, !dbg !579
  br i1 %83, label %84, label %105, !dbg !579

84:                                               ; preds = %81
  %85 = add i64 %57, %79, !dbg !579
  %86 = add i64 %85, %82, !dbg !579
  %87 = mul nuw nsw i64 %62, 3600, !dbg !579
  %88 = mul nuw nsw i64 %77, 60, !dbg !579
  %89 = add nuw nsw i64 %87, %88, !dbg !579
  %90 = add nuw nsw i64 %89, %86, !dbg !579
  %91 = getelementptr inbounds nuw float, ptr %10, i64 %90, !dbg !579
  %92 = load float, ptr %91, align 4, !dbg !579
  %93 = mul nuw nsw i64 %62, 25, !dbg !579
  %94 = mul nuw nsw i64 %73, 5, !dbg !579
  %95 = add nuw nsw i64 %93, %94, !dbg !579
  %96 = add nuw nsw i64 %95, %82, !dbg !579
  %97 = getelementptr inbounds nuw float, ptr %15, i64 %96, !dbg !579
  %98 = load float, ptr %97, align 4, !dbg !579
  %99 = add nuw nsw i64 0, %79, !dbg !579
  %100 = getelementptr inbounds nuw float, ptr %5, i64 %99, !dbg !579
  %101 = load float, ptr %100, align 4, !dbg !579
  %102 = fmul contract float %92, %98, !dbg !585
  %103 = fadd contract float %101, %102, !dbg !586
  store float %103, ptr %100, align 4, !dbg !579
  %104 = add i64 %82, 1, !dbg !579
  br label %81, !dbg !579

105:                                              ; preds = %81
  %106 = add i64 %79, 1, !dbg !579
  br label %78, !dbg !579

107:                                              ; preds = %78
  %108 = add i64 %73, 1, !dbg !579
  br label %72, !dbg !579

109:                                              ; preds = %112, %72
  %110 = phi i64 [ %117, %112 ], [ 0, %72 ], !dbg !579
  %111 = icmp slt i64 %110, %51, !dbg !579
  br i1 %111, label %112, label %118, !dbg !579

112:                                              ; preds = %109
  %113 = add nuw nsw i64 0, %110, !dbg !579
  %114 = getelementptr inbounds nuw float, ptr %6, i64 %113, !dbg !579
  %115 = load float, ptr %114, align 4, !dbg !579
  %116 = getelementptr inbounds nuw float, ptr %4, i64 %113, !dbg !579
  store float %115, ptr %116, align 4, !dbg !579
  %117 = add i64 %110, 1, !dbg !579
  br label %109, !dbg !579

118:                                              ; preds = %121, %109
  %119 = phi i64 [ %126, %121 ], [ 0, %109 ], !dbg !579
  %120 = icmp slt i64 %119, %51, !dbg !579
  br i1 %120, label %121, label %127, !dbg !579

121:                                              ; preds = %118
  %122 = add nuw nsw i64 0, %119, !dbg !579
  %123 = getelementptr inbounds nuw float, ptr %5, i64 %122, !dbg !579
  %124 = load float, ptr %123, align 4, !dbg !579
  %125 = getelementptr inbounds nuw float, ptr %4, i64 %122, !dbg !579
  store float %124, ptr %125, align 4, !dbg !579
  %126 = add i64 %119, 1, !dbg !579
  br label %118, !dbg !579

127:                                              ; preds = %130, %118
  %128 = phi i64 [ %145, %130 ], [ 0, %118 ], !dbg !587
  %129 = icmp slt i64 %128, %51, !dbg !587
  br i1 %129, label %130, label %146, !dbg !587

130:                                              ; preds = %127
  %131 = add i64 0, %128, !dbg !587
  %132 = getelementptr float, ptr %4, i64 %131, !dbg !587
  %133 = load <1 x float>, ptr %132, align 4, !dbg !587
  %134 = fadd contract <1 x float> %133, zeroinitializer, !dbg !588
  %135 = fcmp ugt <1 x float> %134, zeroinitializer, !dbg !589
  %136 = select <1 x i1> %135, <1 x float> %134, <1 x float> zeroinitializer, !dbg !590
  %137 = extractelement <1 x float> %136, i64 0, !dbg !587
  %138 = add i64 %39, %43, !dbg !587
  %139 = add i64 %57, %128, !dbg !587
  %140 = mul nuw nsw i64 %62, 3136, !dbg !587
  %141 = mul nuw nsw i64 %138, 56, !dbg !587
  %142 = add nuw nsw i64 %140, %141, !dbg !587
  %143 = add nuw nsw i64 %142, %139, !dbg !587
  %144 = getelementptr inbounds nuw float, ptr %19, i64 %143, !dbg !587
  store float %137, ptr %144, align 4, !dbg !587
  %145 = add i64 %128, 1, !dbg !587
  br label %127, !dbg !587

146:                                              ; preds = %127
  %147 = add i64 %59, 1, !dbg !579
  br label %58, !dbg !579

148:                                              ; preds = %58
  %149 = add i64 %46, 8, !dbg !579
  br label %45, !dbg !579

150:                                              ; preds = %45
  %151 = add i64 %43, 1, !dbg !579
  br label %42, !dbg !579

152:                                              ; preds = %42
  ret i32 0, !dbg !591
}

define internal i32 @"main_graph$async_dispatch_41_matmul_like_64x3136x128_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !592 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !593
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !593
  %6 = load ptr, ptr %5, align 8, !dbg !593
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !593
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !594
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !594
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !594
  %10 = load ptr, ptr %9, align 8, !dbg !594
  %11 = getelementptr float, ptr %10, i64 2048, !dbg !594
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !594
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !595
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !595
  %14 = getelementptr ptr, ptr %13, i32 2, !dbg !595
  %15 = load ptr, ptr %14, align 8, !dbg !595
  %16 = getelementptr float, ptr %15, i64 401408, !dbg !595
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !595
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !596
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !596
  %19 = zext i32 %18 to i64, !dbg !596
  %20 = mul nsw i64 %19, 64, !dbg !596
  br label %21, !dbg !596

21:                                               ; preds = %124, %3
  %22 = phi i64 [ %125, %124 ], [ 0, %3 ], !dbg !596
  %23 = icmp slt i64 %22, 64, !dbg !596
  br i1 %23, label %24, label %126, !dbg !596

24:                                               ; preds = %115, %21
  %25 = phi i64 [ %123, %115 ], [ 0, %21 ], !dbg !596
  %26 = icmp slt i64 %25, 64, !dbg !596
  br i1 %26, label %27, label %124, !dbg !596

27:                                               ; preds = %24
  %28 = add i64 %25, %20, !dbg !596
  br label %29, !dbg !596

29:                                               ; preds = %33, %27
  %30 = phi i64 [ %114, %33 ], [ 0, %27 ], !dbg !596
  %31 = phi <1 x float> [ %113, %33 ], [ zeroinitializer, %27 ], !dbg !596
  %32 = icmp slt i64 %30, 128, !dbg !596
  br i1 %32, label %33, label %115, !dbg !596

33:                                               ; preds = %29
  %34 = mul i64 %30, 3136, !dbg !596
  %35 = add i64 %34, %28, !dbg !596
  %36 = getelementptr float, ptr %6, i64 %35, !dbg !596
  %37 = load <1 x float>, ptr %36, align 4, !dbg !596
  %38 = add i64 %30, 1, !dbg !596
  %39 = mul i64 %38, 3136, !dbg !596
  %40 = add i64 %39, %28, !dbg !596
  %41 = getelementptr float, ptr %6, i64 %40, !dbg !596
  %42 = load <1 x float>, ptr %41, align 4, !dbg !596
  %43 = add i64 %30, 2, !dbg !596
  %44 = mul i64 %43, 3136, !dbg !596
  %45 = add i64 %44, %28, !dbg !596
  %46 = getelementptr float, ptr %6, i64 %45, !dbg !596
  %47 = load <1 x float>, ptr %46, align 4, !dbg !596
  %48 = add i64 %30, 3, !dbg !596
  %49 = mul i64 %48, 3136, !dbg !596
  %50 = add i64 %49, %28, !dbg !596
  %51 = getelementptr float, ptr %6, i64 %50, !dbg !596
  %52 = load <1 x float>, ptr %51, align 4, !dbg !596
  %53 = add i64 %30, 4, !dbg !596
  %54 = mul i64 %53, 3136, !dbg !596
  %55 = add i64 %54, %28, !dbg !596
  %56 = getelementptr float, ptr %6, i64 %55, !dbg !596
  %57 = load <1 x float>, ptr %56, align 4, !dbg !596
  %58 = add i64 %30, 5, !dbg !596
  %59 = mul i64 %58, 3136, !dbg !596
  %60 = add i64 %59, %28, !dbg !596
  %61 = getelementptr float, ptr %6, i64 %60, !dbg !596
  %62 = load <1 x float>, ptr %61, align 4, !dbg !596
  %63 = add i64 %30, 6, !dbg !596
  %64 = mul i64 %63, 3136, !dbg !596
  %65 = add i64 %64, %28, !dbg !596
  %66 = getelementptr float, ptr %6, i64 %65, !dbg !596
  %67 = load <1 x float>, ptr %66, align 4, !dbg !596
  %68 = add i64 %30, 7, !dbg !596
  %69 = mul i64 %68, 3136, !dbg !596
  %70 = add i64 %69, %28, !dbg !596
  %71 = getelementptr float, ptr %6, i64 %70, !dbg !596
  %72 = load <1 x float>, ptr %71, align 4, !dbg !596
  %73 = mul nuw nsw i64 %22, 128, !dbg !597
  %74 = add nuw nsw i64 %73, %30, !dbg !597
  %75 = getelementptr inbounds nuw float, ptr %11, i64 %74, !dbg !597
  %76 = load float, ptr %75, align 4, !dbg !597
  %77 = insertelement <1 x float> poison, float %76, i32 0, !dbg !597
  %78 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %37, <1 x float> %77, <1 x float> %31), !dbg !597
  %79 = add nuw nsw i64 %73, %38, !dbg !597
  %80 = getelementptr inbounds nuw float, ptr %11, i64 %79, !dbg !597
  %81 = load float, ptr %80, align 4, !dbg !597
  %82 = insertelement <1 x float> poison, float %81, i32 0, !dbg !597
  %83 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %42, <1 x float> %82, <1 x float> %78), !dbg !597
  %84 = add nuw nsw i64 %73, %43, !dbg !597
  %85 = getelementptr inbounds nuw float, ptr %11, i64 %84, !dbg !597
  %86 = load float, ptr %85, align 4, !dbg !597
  %87 = insertelement <1 x float> poison, float %86, i32 0, !dbg !597
  %88 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %47, <1 x float> %87, <1 x float> %83), !dbg !597
  %89 = add nuw nsw i64 %73, %48, !dbg !597
  %90 = getelementptr inbounds nuw float, ptr %11, i64 %89, !dbg !597
  %91 = load float, ptr %90, align 4, !dbg !597
  %92 = insertelement <1 x float> poison, float %91, i32 0, !dbg !597
  %93 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %92, <1 x float> %88), !dbg !597
  %94 = add nuw nsw i64 %73, %53, !dbg !597
  %95 = getelementptr inbounds nuw float, ptr %11, i64 %94, !dbg !597
  %96 = load float, ptr %95, align 4, !dbg !597
  %97 = insertelement <1 x float> poison, float %96, i32 0, !dbg !597
  %98 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %57, <1 x float> %97, <1 x float> %93), !dbg !597
  %99 = add nuw nsw i64 %73, %58, !dbg !597
  %100 = getelementptr inbounds nuw float, ptr %11, i64 %99, !dbg !597
  %101 = load float, ptr %100, align 4, !dbg !597
  %102 = insertelement <1 x float> poison, float %101, i32 0, !dbg !597
  %103 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %102, <1 x float> %98), !dbg !597
  %104 = add nuw nsw i64 %73, %63, !dbg !597
  %105 = getelementptr inbounds nuw float, ptr %11, i64 %104, !dbg !597
  %106 = load float, ptr %105, align 4, !dbg !597
  %107 = insertelement <1 x float> poison, float %106, i32 0, !dbg !597
  %108 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %107, <1 x float> %103), !dbg !597
  %109 = add nuw nsw i64 %73, %68, !dbg !597
  %110 = getelementptr inbounds nuw float, ptr %11, i64 %109, !dbg !597
  %111 = load float, ptr %110, align 4, !dbg !597
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !597
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %112, <1 x float> %108), !dbg !597
  %114 = add i64 %30, 8, !dbg !596
  br label %29, !dbg !596

115:                                              ; preds = %29
  %116 = fadd contract <1 x float> %31, zeroinitializer, !dbg !598
  %117 = fcmp ugt <1 x float> %116, zeroinitializer, !dbg !599
  %118 = select <1 x i1> %117, <1 x float> %116, <1 x float> zeroinitializer, !dbg !600
  %119 = extractelement <1 x float> %118, i64 0, !dbg !596
  %120 = mul nuw nsw i64 %22, 3136, !dbg !596
  %121 = add nuw nsw i64 %120, %28, !dbg !596
  %122 = getelementptr inbounds nuw float, ptr %16, i64 %121, !dbg !596
  store float %119, ptr %122, align 4, !dbg !596
  %123 = add i64 %25, 1, !dbg !596
  br label %24, !dbg !596

124:                                              ; preds = %24
  %125 = add i64 %22, 1, !dbg !596
  br label %21, !dbg !596

126:                                              ; preds = %21
  ret i32 0, !dbg !601
}

define internal i32 @"main_graph$async_dispatch_42_elementwise_64x112x112_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !602 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !603
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !603
  %6 = load ptr, ptr %5, align 8, !dbg !603
  %7 = getelementptr float, ptr %6, i64 401408, !dbg !603
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !603
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !604
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !604
  %10 = load ptr, ptr %9, align 8, !dbg !604
  %11 = getelementptr float, ptr %10, i64 970512, !dbg !604
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !604
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !605
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !605
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !605
  %15 = load ptr, ptr %14, align 8, !dbg !605
  %16 = getelementptr float, ptr %15, i64 1773328, !dbg !605
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !605
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !606
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !606
  %19 = zext i32 %18 to i64, !dbg !606
  %20 = sdiv i64 %19, 4, !dbg !606
  %21 = mul i64 %20, 4, !dbg !606
  %22 = icmp ne i64 %19, %21, !dbg !606
  %23 = icmp slt i64 %19, 0, !dbg !606
  %24 = and i1 %22, %23, !dbg !606
  %25 = add i64 %20, -1, !dbg !606
  %26 = select i1 %24, i64 %25, i64 %20, !dbg !606
  %27 = srem i64 %19, 4, !dbg !606
  %28 = icmp slt i64 %27, 0, !dbg !606
  %29 = add nsw i64 %27, 4, !dbg !606
  %30 = select i1 %28, i64 %29, i64 %27, !dbg !606
  %31 = sdiv i64 %30, 2, !dbg !606
  %32 = srem i64 %19, 2, !dbg !606
  %33 = icmp slt i64 %32, 0, !dbg !606
  %34 = add nsw i64 %32, 2, !dbg !606
  %35 = select i1 %33, i64 %34, i64 %32, !dbg !606
  %36 = mul nsw i64 %26, 16, !dbg !606
  %37 = mul nsw i64 %31, 56, !dbg !606
  %38 = mul nsw i64 %35, 56, !dbg !606
  br label %39, !dbg !606

39:                                               ; preds = %136, %3
  %40 = phi i64 [ %137, %136 ], [ 0, %3 ], !dbg !606
  %41 = icmp slt i64 %40, 16, !dbg !606
  br i1 %41, label %42, label %138, !dbg !606

42:                                               ; preds = %39
  %43 = add i64 %40, %36, !dbg !606
  %44 = mul i64 %43, 56, !dbg !607
  br label %45, !dbg !606

45:                                               ; preds = %134, %42
  %46 = phi i64 [ %135, %134 ], [ 0, %42 ], !dbg !606
  %47 = icmp slt i64 %46, 56, !dbg !606
  br i1 %47, label %48, label %136, !dbg !606

48:                                               ; preds = %45
  %49 = add i64 %46, %37, !dbg !606
  %50 = sitofp i64 %49 to float, !dbg !608
  %51 = fdiv float %50, 2.000000e+00, !dbg !609
  %52 = call float @llvm.floor.f32(float %51), !dbg !610
  %53 = fptosi float %52 to i64, !dbg !611
  %54 = add i64 %53, %44, !dbg !607
  %55 = mul i64 %54, 56, !dbg !607
  br label %56, !dbg !606

56:                                               ; preds = %59, %48
  %57 = phi i64 [ %133, %59 ], [ 0, %48 ], !dbg !606
  %58 = icmp slt i64 %57, 56, !dbg !606
  br i1 %58, label %59, label %134, !dbg !606

59:                                               ; preds = %56
  %60 = add i64 %57, %38, !dbg !606
  %61 = mul i64 %43, 12544, !dbg !606
  %62 = mul i64 %49, 112, !dbg !606
  %63 = add i64 %61, %62, !dbg !606
  %64 = add i64 %63, %60, !dbg !606
  %65 = getelementptr float, ptr %11, i64 %64, !dbg !606
  %66 = load <8 x float>, ptr %65, align 4, !dbg !606
  %67 = insertelement <8 x i64> poison, i64 %60, i32 0, !dbg !606
  %68 = shufflevector <8 x i64> %67, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !606
  %69 = add <8 x i64> %68, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, !dbg !612
  %70 = sitofp <8 x i64> %69 to <8 x float>, !dbg !613
  %71 = fdiv <8 x float> %70, splat (float 2.000000e+00), !dbg !614
  %72 = call <8 x float> @llvm.floor.v8f32(<8 x float> %71), !dbg !615
  %73 = fptosi <8 x float> %72 to <8 x i64>, !dbg !616
  %74 = insertelement <8 x i64> poison, i64 %55, i32 0, !dbg !607
  %75 = shufflevector <8 x i64> %74, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !607
  %76 = add <8 x i64> %73, %75, !dbg !607
  %77 = extractelement <8 x i64> %76, i64 0, !dbg !607
  %78 = add i64 0, %77, !dbg !607
  %79 = getelementptr float, ptr %7, i64 %78, !dbg !607
  %80 = load <1 x float>, ptr %79, align 4, !dbg !607
  %81 = extractelement <1 x float> %80, i64 0, !dbg !607
  %82 = extractelement <8 x i64> %76, i64 1, !dbg !607
  %83 = add i64 0, %82, !dbg !607
  %84 = getelementptr float, ptr %7, i64 %83, !dbg !607
  %85 = load <1 x float>, ptr %84, align 4, !dbg !607
  %86 = extractelement <1 x float> %85, i64 0, !dbg !607
  %87 = extractelement <8 x i64> %76, i64 2, !dbg !607
  %88 = add i64 0, %87, !dbg !607
  %89 = getelementptr float, ptr %7, i64 %88, !dbg !607
  %90 = load <1 x float>, ptr %89, align 4, !dbg !607
  %91 = extractelement <1 x float> %90, i64 0, !dbg !607
  %92 = extractelement <8 x i64> %76, i64 3, !dbg !607
  %93 = add i64 0, %92, !dbg !607
  %94 = getelementptr float, ptr %7, i64 %93, !dbg !607
  %95 = load <1 x float>, ptr %94, align 4, !dbg !607
  %96 = extractelement <1 x float> %95, i64 0, !dbg !607
  %97 = extractelement <8 x i64> %76, i64 4, !dbg !607
  %98 = add i64 0, %97, !dbg !607
  %99 = getelementptr float, ptr %7, i64 %98, !dbg !607
  %100 = load <1 x float>, ptr %99, align 4, !dbg !607
  %101 = extractelement <1 x float> %100, i64 0, !dbg !607
  %102 = extractelement <8 x i64> %76, i64 5, !dbg !607
  %103 = add i64 0, %102, !dbg !607
  %104 = getelementptr float, ptr %7, i64 %103, !dbg !607
  %105 = load <1 x float>, ptr %104, align 4, !dbg !607
  %106 = extractelement <1 x float> %105, i64 0, !dbg !607
  %107 = extractelement <8 x i64> %76, i64 6, !dbg !607
  %108 = add i64 0, %107, !dbg !607
  %109 = getelementptr float, ptr %7, i64 %108, !dbg !607
  %110 = load <1 x float>, ptr %109, align 4, !dbg !607
  %111 = extractelement <1 x float> %110, i64 0, !dbg !607
  %112 = extractelement <8 x i64> %76, i64 7, !dbg !607
  %113 = add i64 0, %112, !dbg !607
  %114 = getelementptr float, ptr %7, i64 %113, !dbg !607
  %115 = load <1 x float>, ptr %114, align 4, !dbg !607
  %116 = extractelement <1 x float> %115, i64 0, !dbg !607
  %117 = insertelement <8 x float> poison, float %81, i64 0, !dbg !607
  %118 = insertelement <8 x float> %117, float %86, i64 1, !dbg !607
  %119 = insertelement <8 x float> %118, float %91, i64 2, !dbg !607
  %120 = insertelement <8 x float> %119, float %96, i64 3, !dbg !607
  %121 = insertelement <8 x float> %120, float %101, i64 4, !dbg !607
  %122 = insertelement <8 x float> %121, float %106, i64 5, !dbg !607
  %123 = insertelement <8 x float> %122, float %111, i64 6, !dbg !607
  %124 = insertelement <8 x float> %123, float %116, i64 7, !dbg !607
  %125 = fadd contract <8 x float> %124, %66, !dbg !617
  %126 = add i64 %49, 2, !dbg !606
  %127 = add i64 %60, 2, !dbg !606
  %128 = mul i64 %43, 13456, !dbg !606
  %129 = mul i64 %126, 116, !dbg !606
  %130 = add i64 %128, %129, !dbg !606
  %131 = add i64 %130, %127, !dbg !606
  %132 = getelementptr float, ptr %16, i64 %131, !dbg !606
  store <8 x float> %125, ptr %132, align 4, !dbg !606
  %133 = add i64 %57, 8, !dbg !606
  br label %56, !dbg !606

134:                                              ; preds = %56
  %135 = add i64 %46, 1, !dbg !606
  br label %45, !dbg !606

136:                                              ; preds = %45
  %137 = add i64 %40, 1, !dbg !606
  br label %39, !dbg !606

138:                                              ; preds = %39
  ret i32 0, !dbg !618
}

define internal i32 @"main_graph$async_dispatch_43_conv_112x112x64x5x5_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !619 {
  %4 = alloca float, i64 8, align 64, !dbg !620
  %5 = alloca float, i64 8, align 64, !dbg !620
  %6 = alloca float, i64 8, align 64, !dbg !621
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !622
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !622
  %9 = load ptr, ptr %8, align 8, !dbg !622
  %10 = getelementptr float, ptr %9, i64 1773328, !dbg !622
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !622
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !623
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !623
  %13 = getelementptr ptr, ptr %12, i32 1, !dbg !623
  %14 = load ptr, ptr %13, align 8, !dbg !623
  %15 = getelementptr float, ptr %14, i64 3837952, !dbg !623
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !623
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !624
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !624
  %18 = getelementptr ptr, ptr %17, i32 2, !dbg !624
  %19 = load ptr, ptr %18, align 8, !dbg !624
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 64) ], !dbg !624
  %20 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !620
  %21 = extractvalue %iree_hal_executable_workgroup_state_v0_t %20, 0, !dbg !620
  %22 = zext i32 %21 to i64, !dbg !620
  %23 = sdiv i64 %22, 8, !dbg !620
  %24 = mul i64 %23, 8, !dbg !620
  %25 = icmp ne i64 %22, %24, !dbg !620
  %26 = icmp slt i64 %22, 0, !dbg !620
  %27 = and i1 %25, %26, !dbg !620
  %28 = add i64 %23, -1, !dbg !620
  %29 = select i1 %27, i64 %28, i64 %23, !dbg !620
  %30 = srem i64 %22, 8, !dbg !620
  %31 = icmp slt i64 %30, 0, !dbg !620
  %32 = add nsw i64 %30, 8, !dbg !620
  %33 = select i1 %31, i64 %32, i64 %30, !dbg !620
  %34 = sdiv i64 %33, 2, !dbg !620
  %35 = srem i64 %22, 2, !dbg !620
  %36 = icmp slt i64 %35, 0, !dbg !620
  %37 = add nsw i64 %35, 2, !dbg !620
  %38 = select i1 %36, i64 %37, i64 %35, !dbg !620
  %39 = mul nsw i64 %29, 28, !dbg !620
  %40 = mul nsw i64 %34, 28, !dbg !620
  %41 = mul nsw i64 %38, 32, !dbg !620
  br label %42, !dbg !620

42:                                               ; preds = %150, %3
  %43 = phi i64 [ %151, %150 ], [ 0, %3 ], !dbg !620
  %44 = icmp slt i64 %43, 28, !dbg !620
  br i1 %44, label %45, label %152, !dbg !620

45:                                               ; preds = %148, %42
  %46 = phi i64 [ %149, %148 ], [ 0, %42 ], !dbg !620
  %47 = icmp slt i64 %46, 28, !dbg !620
  br i1 %47, label %48, label %150, !dbg !620

48:                                               ; preds = %45
  %49 = sub i64 28, %46, !dbg !620
  %50 = icmp slt i64 %49, 8, !dbg !620
  %51 = select i1 %50, i64 %49, i64 8, !dbg !620
  %52 = trunc i64 %51 to i32, !dbg !625
  %53 = insertelement <8 x i32> poison, i32 %52, i32 0, !dbg !625
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !625
  %55 = icmp sgt <8 x i32> %54, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !625
  %56 = getelementptr float, ptr %6, i64 0, !dbg !625
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr %56, i32 4, <8 x i1> %55), !dbg !625
  %57 = add i64 %46, %40, !dbg !620
  br label %58, !dbg !620

58:                                               ; preds = %146, %48
  %59 = phi i64 [ %147, %146 ], [ 0, %48 ], !dbg !620
  %60 = icmp slt i64 %59, 32, !dbg !620
  br i1 %60, label %61, label %148, !dbg !620

61:                                               ; preds = %58
  %62 = add i64 %59, %41, !dbg !620
  br label %63, !dbg !620

63:                                               ; preds = %66, %61
  %64 = phi i64 [ %71, %66 ], [ 0, %61 ], !dbg !620
  %65 = icmp slt i64 %64, %51, !dbg !620
  br i1 %65, label %66, label %72, !dbg !620

66:                                               ; preds = %63
  %67 = add nuw nsw i64 0, %64, !dbg !620
  %68 = getelementptr inbounds nuw float, ptr %6, i64 %67, !dbg !620
  %69 = load float, ptr %68, align 4, !dbg !620
  %70 = getelementptr inbounds nuw float, ptr %5, i64 %67, !dbg !620
  store float %69, ptr %70, align 4, !dbg !620
  %71 = add i64 %64, 1, !dbg !620
  br label %63, !dbg !620

72:                                               ; preds = %107, %63
  %73 = phi i64 [ %108, %107 ], [ 0, %63 ], !dbg !620
  %74 = icmp slt i64 %73, 5, !dbg !620
  br i1 %74, label %75, label %109, !dbg !620

75:                                               ; preds = %72
  %76 = add i64 %73, %43, !dbg !620
  %77 = add i64 %76, %39, !dbg !620
  br label %78, !dbg !620

78:                                               ; preds = %105, %75
  %79 = phi i64 [ %106, %105 ], [ 0, %75 ], !dbg !620
  %80 = icmp slt i64 %79, %51, !dbg !620
  br i1 %80, label %81, label %107, !dbg !620

81:                                               ; preds = %84, %78
  %82 = phi i64 [ %104, %84 ], [ 0, %78 ], !dbg !620
  %83 = icmp slt i64 %82, 5, !dbg !620
  br i1 %83, label %84, label %105, !dbg !620

84:                                               ; preds = %81
  %85 = add i64 %57, %79, !dbg !620
  %86 = add i64 %85, %82, !dbg !620
  %87 = mul nuw nsw i64 %62, 13456, !dbg !620
  %88 = mul nuw nsw i64 %77, 116, !dbg !620
  %89 = add nuw nsw i64 %87, %88, !dbg !620
  %90 = add nuw nsw i64 %89, %86, !dbg !620
  %91 = getelementptr inbounds nuw float, ptr %10, i64 %90, !dbg !620
  %92 = load float, ptr %91, align 4, !dbg !620
  %93 = mul nuw nsw i64 %62, 25, !dbg !620
  %94 = mul nuw nsw i64 %73, 5, !dbg !620
  %95 = add nuw nsw i64 %93, %94, !dbg !620
  %96 = add nuw nsw i64 %95, %82, !dbg !620
  %97 = getelementptr inbounds nuw float, ptr %15, i64 %96, !dbg !620
  %98 = load float, ptr %97, align 4, !dbg !620
  %99 = add nuw nsw i64 0, %79, !dbg !620
  %100 = getelementptr inbounds nuw float, ptr %5, i64 %99, !dbg !620
  %101 = load float, ptr %100, align 4, !dbg !620
  %102 = fmul contract float %92, %98, !dbg !626
  %103 = fadd contract float %101, %102, !dbg !627
  store float %103, ptr %100, align 4, !dbg !620
  %104 = add i64 %82, 1, !dbg !620
  br label %81, !dbg !620

105:                                              ; preds = %81
  %106 = add i64 %79, 1, !dbg !620
  br label %78, !dbg !620

107:                                              ; preds = %78
  %108 = add i64 %73, 1, !dbg !620
  br label %72, !dbg !620

109:                                              ; preds = %112, %72
  %110 = phi i64 [ %117, %112 ], [ 0, %72 ], !dbg !620
  %111 = icmp slt i64 %110, %51, !dbg !620
  br i1 %111, label %112, label %118, !dbg !620

112:                                              ; preds = %109
  %113 = add nuw nsw i64 0, %110, !dbg !620
  %114 = getelementptr inbounds nuw float, ptr %6, i64 %113, !dbg !620
  %115 = load float, ptr %114, align 4, !dbg !620
  %116 = getelementptr inbounds nuw float, ptr %4, i64 %113, !dbg !620
  store float %115, ptr %116, align 4, !dbg !620
  %117 = add i64 %110, 1, !dbg !620
  br label %109, !dbg !620

118:                                              ; preds = %121, %109
  %119 = phi i64 [ %126, %121 ], [ 0, %109 ], !dbg !620
  %120 = icmp slt i64 %119, %51, !dbg !620
  br i1 %120, label %121, label %127, !dbg !620

121:                                              ; preds = %118
  %122 = add nuw nsw i64 0, %119, !dbg !620
  %123 = getelementptr inbounds nuw float, ptr %5, i64 %122, !dbg !620
  %124 = load float, ptr %123, align 4, !dbg !620
  %125 = getelementptr inbounds nuw float, ptr %4, i64 %122, !dbg !620
  store float %124, ptr %125, align 4, !dbg !620
  %126 = add i64 %119, 1, !dbg !620
  br label %118, !dbg !620

127:                                              ; preds = %130, %118
  %128 = phi i64 [ %145, %130 ], [ 0, %118 ], !dbg !628
  %129 = icmp slt i64 %128, %51, !dbg !628
  br i1 %129, label %130, label %146, !dbg !628

130:                                              ; preds = %127
  %131 = add i64 0, %128, !dbg !628
  %132 = getelementptr float, ptr %4, i64 %131, !dbg !628
  %133 = load <1 x float>, ptr %132, align 4, !dbg !628
  %134 = fadd contract <1 x float> %133, zeroinitializer, !dbg !629
  %135 = fcmp ugt <1 x float> %134, zeroinitializer, !dbg !630
  %136 = select <1 x i1> %135, <1 x float> %134, <1 x float> zeroinitializer, !dbg !631
  %137 = extractelement <1 x float> %136, i64 0, !dbg !628
  %138 = add i64 %39, %43, !dbg !628
  %139 = add i64 %57, %128, !dbg !628
  %140 = mul nuw nsw i64 %62, 12544, !dbg !628
  %141 = mul nuw nsw i64 %138, 112, !dbg !628
  %142 = add nuw nsw i64 %140, %141, !dbg !628
  %143 = add nuw nsw i64 %142, %139, !dbg !628
  %144 = getelementptr inbounds nuw float, ptr %19, i64 %143, !dbg !628
  store float %137, ptr %144, align 4, !dbg !628
  %145 = add i64 %128, 1, !dbg !628
  br label %127, !dbg !628

146:                                              ; preds = %127
  %147 = add i64 %59, 1, !dbg !620
  br label %58, !dbg !620

148:                                              ; preds = %58
  %149 = add i64 %46, 8, !dbg !620
  br label %45, !dbg !620

150:                                              ; preds = %45
  %151 = add i64 %43, 1, !dbg !620
  br label %42, !dbg !620

152:                                              ; preds = %42
  ret i32 0, !dbg !632
}

define internal i32 @"main_graph$async_dispatch_44_matmul_like_32x12544x64_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !633 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !634
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !634
  %6 = load ptr, ptr %5, align 8, !dbg !634
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !634
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !635
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !635
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !635
  %10 = load ptr, ptr %9, align 8, !dbg !635
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !635
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !636
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !636
  %13 = getelementptr ptr, ptr %12, i32 2, !dbg !636
  %14 = load ptr, ptr %13, align 8, !dbg !636
  %15 = getelementptr float, ptr %14, i64 802816, !dbg !636
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !636
  %16 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !637
  %17 = extractvalue %iree_hal_executable_workgroup_state_v0_t %16, 0, !dbg !637
  %18 = zext i32 %17 to i64, !dbg !637
  %19 = mul nsw i64 %18, 64, !dbg !637
  br label %20, !dbg !637

20:                                               ; preds = %123, %3
  %21 = phi i64 [ %124, %123 ], [ 0, %3 ], !dbg !637
  %22 = icmp slt i64 %21, 32, !dbg !637
  br i1 %22, label %23, label %125, !dbg !637

23:                                               ; preds = %114, %20
  %24 = phi i64 [ %122, %114 ], [ 0, %20 ], !dbg !637
  %25 = icmp slt i64 %24, 64, !dbg !637
  br i1 %25, label %26, label %123, !dbg !637

26:                                               ; preds = %23
  %27 = add i64 %24, %19, !dbg !637
  br label %28, !dbg !637

28:                                               ; preds = %32, %26
  %29 = phi i64 [ %113, %32 ], [ 0, %26 ], !dbg !637
  %30 = phi <1 x float> [ %112, %32 ], [ zeroinitializer, %26 ], !dbg !637
  %31 = icmp slt i64 %29, 64, !dbg !637
  br i1 %31, label %32, label %114, !dbg !637

32:                                               ; preds = %28
  %33 = mul i64 %29, 12544, !dbg !637
  %34 = add i64 %33, %27, !dbg !637
  %35 = getelementptr float, ptr %6, i64 %34, !dbg !637
  %36 = load <1 x float>, ptr %35, align 4, !dbg !637
  %37 = add i64 %29, 1, !dbg !637
  %38 = mul i64 %37, 12544, !dbg !637
  %39 = add i64 %38, %27, !dbg !637
  %40 = getelementptr float, ptr %6, i64 %39, !dbg !637
  %41 = load <1 x float>, ptr %40, align 4, !dbg !637
  %42 = add i64 %29, 2, !dbg !637
  %43 = mul i64 %42, 12544, !dbg !637
  %44 = add i64 %43, %27, !dbg !637
  %45 = getelementptr float, ptr %6, i64 %44, !dbg !637
  %46 = load <1 x float>, ptr %45, align 4, !dbg !637
  %47 = add i64 %29, 3, !dbg !637
  %48 = mul i64 %47, 12544, !dbg !637
  %49 = add i64 %48, %27, !dbg !637
  %50 = getelementptr float, ptr %6, i64 %49, !dbg !637
  %51 = load <1 x float>, ptr %50, align 4, !dbg !637
  %52 = add i64 %29, 4, !dbg !637
  %53 = mul i64 %52, 12544, !dbg !637
  %54 = add i64 %53, %27, !dbg !637
  %55 = getelementptr float, ptr %6, i64 %54, !dbg !637
  %56 = load <1 x float>, ptr %55, align 4, !dbg !637
  %57 = add i64 %29, 5, !dbg !637
  %58 = mul i64 %57, 12544, !dbg !637
  %59 = add i64 %58, %27, !dbg !637
  %60 = getelementptr float, ptr %6, i64 %59, !dbg !637
  %61 = load <1 x float>, ptr %60, align 4, !dbg !637
  %62 = add i64 %29, 6, !dbg !637
  %63 = mul i64 %62, 12544, !dbg !637
  %64 = add i64 %63, %27, !dbg !637
  %65 = getelementptr float, ptr %6, i64 %64, !dbg !637
  %66 = load <1 x float>, ptr %65, align 4, !dbg !637
  %67 = add i64 %29, 7, !dbg !637
  %68 = mul i64 %67, 12544, !dbg !637
  %69 = add i64 %68, %27, !dbg !637
  %70 = getelementptr float, ptr %6, i64 %69, !dbg !637
  %71 = load <1 x float>, ptr %70, align 4, !dbg !637
  %72 = mul nuw nsw i64 %21, 64, !dbg !638
  %73 = add nuw nsw i64 %72, %29, !dbg !638
  %74 = getelementptr inbounds nuw float, ptr %10, i64 %73, !dbg !638
  %75 = load float, ptr %74, align 4, !dbg !638
  %76 = insertelement <1 x float> poison, float %75, i32 0, !dbg !638
  %77 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %76, <1 x float> %30), !dbg !638
  %78 = add nuw nsw i64 %72, %37, !dbg !638
  %79 = getelementptr inbounds nuw float, ptr %10, i64 %78, !dbg !638
  %80 = load float, ptr %79, align 4, !dbg !638
  %81 = insertelement <1 x float> poison, float %80, i32 0, !dbg !638
  %82 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %41, <1 x float> %81, <1 x float> %77), !dbg !638
  %83 = add nuw nsw i64 %72, %42, !dbg !638
  %84 = getelementptr inbounds nuw float, ptr %10, i64 %83, !dbg !638
  %85 = load float, ptr %84, align 4, !dbg !638
  %86 = insertelement <1 x float> poison, float %85, i32 0, !dbg !638
  %87 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %46, <1 x float> %86, <1 x float> %82), !dbg !638
  %88 = add nuw nsw i64 %72, %47, !dbg !638
  %89 = getelementptr inbounds nuw float, ptr %10, i64 %88, !dbg !638
  %90 = load float, ptr %89, align 4, !dbg !638
  %91 = insertelement <1 x float> poison, float %90, i32 0, !dbg !638
  %92 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %51, <1 x float> %91, <1 x float> %87), !dbg !638
  %93 = add nuw nsw i64 %72, %52, !dbg !638
  %94 = getelementptr inbounds nuw float, ptr %10, i64 %93, !dbg !638
  %95 = load float, ptr %94, align 4, !dbg !638
  %96 = insertelement <1 x float> poison, float %95, i32 0, !dbg !638
  %97 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %56, <1 x float> %96, <1 x float> %92), !dbg !638
  %98 = add nuw nsw i64 %72, %57, !dbg !638
  %99 = getelementptr inbounds nuw float, ptr %10, i64 %98, !dbg !638
  %100 = load float, ptr %99, align 4, !dbg !638
  %101 = insertelement <1 x float> poison, float %100, i32 0, !dbg !638
  %102 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %101, <1 x float> %97), !dbg !638
  %103 = add nuw nsw i64 %72, %62, !dbg !638
  %104 = getelementptr inbounds nuw float, ptr %10, i64 %103, !dbg !638
  %105 = load float, ptr %104, align 4, !dbg !638
  %106 = insertelement <1 x float> poison, float %105, i32 0, !dbg !638
  %107 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %106, <1 x float> %102), !dbg !638
  %108 = add nuw nsw i64 %72, %67, !dbg !638
  %109 = getelementptr inbounds nuw float, ptr %10, i64 %108, !dbg !638
  %110 = load float, ptr %109, align 4, !dbg !638
  %111 = insertelement <1 x float> poison, float %110, i32 0, !dbg !638
  %112 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %71, <1 x float> %111, <1 x float> %107), !dbg !638
  %113 = add i64 %29, 8, !dbg !637
  br label %28, !dbg !637

114:                                              ; preds = %28
  %115 = fadd contract <1 x float> %30, zeroinitializer, !dbg !639
  %116 = fcmp ugt <1 x float> %115, zeroinitializer, !dbg !640
  %117 = select <1 x i1> %116, <1 x float> %115, <1 x float> zeroinitializer, !dbg !641
  %118 = extractelement <1 x float> %117, i64 0, !dbg !637
  %119 = mul nuw nsw i64 %21, 12544, !dbg !637
  %120 = add nuw nsw i64 %119, %27, !dbg !637
  %121 = getelementptr inbounds nuw float, ptr %15, i64 %120, !dbg !637
  store float %118, ptr %121, align 4, !dbg !637
  %122 = add i64 %24, 1, !dbg !637
  br label %23, !dbg !637

123:                                              ; preds = %23
  %124 = add i64 %21, 1, !dbg !637
  br label %20, !dbg !637

125:                                              ; preds = %20
  ret i32 0, !dbg !642
}

define internal i32 @"main_graph$async_dispatch_45_matvec_like_50176x32_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !643 {
  %4 = alloca float, i64 512, align 64, !dbg !644
  %5 = alloca float, i64 64, align 64, !dbg !645
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !646
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !646
  %8 = load ptr, ptr %7, align 8, !dbg !646
  %9 = getelementptr float, ptr %8, i64 802816, !dbg !646
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !646
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !647
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !647
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !647
  %13 = load ptr, ptr %12, align 8, !dbg !647
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !647
  %14 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !648
  %15 = extractvalue %iree_hal_executable_workgroup_state_v0_t %14, 0, !dbg !648
  %16 = zext i32 %15 to i64, !dbg !648
  %17 = mul nsw i64 %16, 64, !dbg !648
  br label %18, !dbg !648

18:                                               ; preds = %105, %3
  %19 = phi i64 [ %169, %105 ], [ 0, %3 ], !dbg !648
  %20 = phi <64 x float> [ %168, %105 ], [ zeroinitializer, %3 ], !dbg !648
  %21 = icmp slt i64 %19, 32, !dbg !648
  br i1 %21, label %22, label %170, !dbg !648

22:                                               ; preds = %103, %18
  %23 = phi i64 [ %104, %103 ], [ 0, %18 ], !dbg !644
  %24 = icmp slt i64 %23, 8, !dbg !644
  br i1 %24, label %25, label %105, !dbg !644

25:                                               ; preds = %22
  %26 = add i64 %19, %23, !dbg !649
  %27 = mul i64 %26, 112, !dbg !650
  br label %28, !dbg !644

28:                                               ; preds = %31, %25
  %29 = phi i64 [ %102, %31 ], [ 0, %25 ], !dbg !644
  %30 = icmp slt i64 %29, 64, !dbg !644
  br i1 %30, label %31, label %103, !dbg !644

31:                                               ; preds = %28
  %32 = add i64 %17, %29, !dbg !651
  %33 = insertelement <8 x i64> poison, i64 %32, i32 0, !dbg !644
  %34 = shufflevector <8 x i64> %33, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !644
  %35 = add <8 x i64> %34, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, !dbg !651
  %36 = srem <8 x i64> %35, splat (i64 224), !dbg !652
  %37 = sdiv <8 x i64> %35, splat (i64 224), !dbg !653
  %38 = sitofp <8 x i64> %37 to <8 x float>, !dbg !654
  %39 = fdiv <8 x float> %38, splat (float 2.000000e+00), !dbg !655
  %40 = call <8 x float> @llvm.floor.v8f32(<8 x float> %39), !dbg !656
  %41 = fptosi <8 x float> %40 to <8 x i64>, !dbg !657
  %42 = sitofp <8 x i64> %36 to <8 x float>, !dbg !658
  %43 = fdiv <8 x float> %42, splat (float 2.000000e+00), !dbg !659
  %44 = call <8 x float> @llvm.floor.v8f32(<8 x float> %43), !dbg !660
  %45 = fptosi <8 x float> %44 to <8 x i64>, !dbg !661
  %46 = insertelement <8 x i64> poison, i64 %27, i32 0, !dbg !650
  %47 = shufflevector <8 x i64> %46, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !650
  %48 = add <8 x i64> %41, %47, !dbg !650
  %49 = mul <8 x i64> %48, splat (i64 112), !dbg !650
  %50 = add <8 x i64> %45, %49, !dbg !650
  %51 = extractelement <8 x i64> %50, i64 0, !dbg !650
  %52 = add i64 0, %51, !dbg !650
  %53 = getelementptr float, ptr %9, i64 %52, !dbg !650
  %54 = load <1 x float>, ptr %53, align 4, !dbg !650
  %55 = extractelement <1 x float> %54, i64 0, !dbg !650
  %56 = extractelement <8 x i64> %50, i64 1, !dbg !650
  %57 = add i64 0, %56, !dbg !650
  %58 = getelementptr float, ptr %9, i64 %57, !dbg !650
  %59 = load <1 x float>, ptr %58, align 4, !dbg !650
  %60 = extractelement <1 x float> %59, i64 0, !dbg !650
  %61 = extractelement <8 x i64> %50, i64 2, !dbg !650
  %62 = add i64 0, %61, !dbg !650
  %63 = getelementptr float, ptr %9, i64 %62, !dbg !650
  %64 = load <1 x float>, ptr %63, align 4, !dbg !650
  %65 = extractelement <1 x float> %64, i64 0, !dbg !650
  %66 = extractelement <8 x i64> %50, i64 3, !dbg !650
  %67 = add i64 0, %66, !dbg !650
  %68 = getelementptr float, ptr %9, i64 %67, !dbg !650
  %69 = load <1 x float>, ptr %68, align 4, !dbg !650
  %70 = extractelement <1 x float> %69, i64 0, !dbg !650
  %71 = extractelement <8 x i64> %50, i64 4, !dbg !650
  %72 = add i64 0, %71, !dbg !650
  %73 = getelementptr float, ptr %9, i64 %72, !dbg !650
  %74 = load <1 x float>, ptr %73, align 4, !dbg !650
  %75 = extractelement <1 x float> %74, i64 0, !dbg !650
  %76 = extractelement <8 x i64> %50, i64 5, !dbg !650
  %77 = add i64 0, %76, !dbg !650
  %78 = getelementptr float, ptr %9, i64 %77, !dbg !650
  %79 = load <1 x float>, ptr %78, align 4, !dbg !650
  %80 = extractelement <1 x float> %79, i64 0, !dbg !650
  %81 = extractelement <8 x i64> %50, i64 6, !dbg !650
  %82 = add i64 0, %81, !dbg !650
  %83 = getelementptr float, ptr %9, i64 %82, !dbg !650
  %84 = load <1 x float>, ptr %83, align 4, !dbg !650
  %85 = extractelement <1 x float> %84, i64 0, !dbg !650
  %86 = extractelement <8 x i64> %50, i64 7, !dbg !650
  %87 = add i64 0, %86, !dbg !650
  %88 = getelementptr float, ptr %9, i64 %87, !dbg !650
  %89 = load <1 x float>, ptr %88, align 4, !dbg !650
  %90 = extractelement <1 x float> %89, i64 0, !dbg !650
  %91 = insertelement <8 x float> poison, float %55, i64 0, !dbg !650
  %92 = insertelement <8 x float> %91, float %60, i64 1, !dbg !650
  %93 = insertelement <8 x float> %92, float %65, i64 2, !dbg !650
  %94 = insertelement <8 x float> %93, float %70, i64 3, !dbg !650
  %95 = insertelement <8 x float> %94, float %75, i64 4, !dbg !650
  %96 = insertelement <8 x float> %95, float %80, i64 5, !dbg !650
  %97 = insertelement <8 x float> %96, float %85, i64 6, !dbg !650
  %98 = insertelement <8 x float> %97, float %90, i64 7, !dbg !650
  %99 = mul i64 %23, 64, !dbg !644
  %100 = add i64 %99, %29, !dbg !644
  %101 = getelementptr float, ptr %4, i64 %100, !dbg !644
  store <8 x float> %98, ptr %101, align 4, !dbg !644
  %102 = add i64 %29, 8, !dbg !644
  br label %28, !dbg !644

103:                                              ; preds = %28
  %104 = add i64 %23, 1, !dbg !644
  br label %22, !dbg !644

105:                                              ; preds = %22
  %106 = getelementptr float, ptr %4, i64 0, !dbg !648
  %107 = load <64 x float>, ptr %106, align 4, !dbg !648
  %108 = getelementptr float, ptr %4, i64 64, !dbg !648
  %109 = load <64 x float>, ptr %108, align 4, !dbg !648
  %110 = getelementptr float, ptr %4, i64 128, !dbg !648
  %111 = load <64 x float>, ptr %110, align 4, !dbg !648
  %112 = getelementptr float, ptr %4, i64 192, !dbg !648
  %113 = load <64 x float>, ptr %112, align 4, !dbg !648
  %114 = getelementptr float, ptr %4, i64 256, !dbg !648
  %115 = load <64 x float>, ptr %114, align 4, !dbg !648
  %116 = getelementptr float, ptr %4, i64 320, !dbg !648
  %117 = load <64 x float>, ptr %116, align 4, !dbg !648
  %118 = getelementptr float, ptr %4, i64 384, !dbg !648
  %119 = load <64 x float>, ptr %118, align 4, !dbg !648
  %120 = getelementptr float, ptr %4, i64 448, !dbg !648
  %121 = load <64 x float>, ptr %120, align 4, !dbg !648
  %122 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %19, !dbg !662
  %123 = load float, ptr %122, align 4, !dbg !662
  %124 = insertelement <64 x float> poison, float %123, i32 0, !dbg !662
  %125 = shufflevector <64 x float> %124, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !662
  %126 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %107, <64 x float> %125, <64 x float> %20), !dbg !662
  %127 = add i64 %19, 1, !dbg !662
  %128 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %127, !dbg !662
  %129 = load float, ptr %128, align 4, !dbg !662
  %130 = insertelement <64 x float> poison, float %129, i32 0, !dbg !662
  %131 = shufflevector <64 x float> %130, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !662
  %132 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %109, <64 x float> %131, <64 x float> %126), !dbg !662
  %133 = add i64 %19, 2, !dbg !662
  %134 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %133, !dbg !662
  %135 = load float, ptr %134, align 4, !dbg !662
  %136 = insertelement <64 x float> poison, float %135, i32 0, !dbg !662
  %137 = shufflevector <64 x float> %136, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !662
  %138 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %111, <64 x float> %137, <64 x float> %132), !dbg !662
  %139 = add i64 %19, 3, !dbg !662
  %140 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %139, !dbg !662
  %141 = load float, ptr %140, align 4, !dbg !662
  %142 = insertelement <64 x float> poison, float %141, i32 0, !dbg !662
  %143 = shufflevector <64 x float> %142, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !662
  %144 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %113, <64 x float> %143, <64 x float> %138), !dbg !662
  %145 = add i64 %19, 4, !dbg !662
  %146 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %145, !dbg !662
  %147 = load float, ptr %146, align 4, !dbg !662
  %148 = insertelement <64 x float> poison, float %147, i32 0, !dbg !662
  %149 = shufflevector <64 x float> %148, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !662
  %150 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %115, <64 x float> %149, <64 x float> %144), !dbg !662
  %151 = add i64 %19, 5, !dbg !662
  %152 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %151, !dbg !662
  %153 = load float, ptr %152, align 4, !dbg !662
  %154 = insertelement <64 x float> poison, float %153, i32 0, !dbg !662
  %155 = shufflevector <64 x float> %154, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !662
  %156 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %117, <64 x float> %155, <64 x float> %150), !dbg !662
  %157 = add i64 %19, 6, !dbg !662
  %158 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %157, !dbg !662
  %159 = load float, ptr %158, align 4, !dbg !662
  %160 = insertelement <64 x float> poison, float %159, i32 0, !dbg !662
  %161 = shufflevector <64 x float> %160, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !662
  %162 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %119, <64 x float> %161, <64 x float> %156), !dbg !662
  %163 = add i64 %19, 7, !dbg !662
  %164 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %163, !dbg !662
  %165 = load float, ptr %164, align 4, !dbg !662
  %166 = insertelement <64 x float> poison, float %165, i32 0, !dbg !662
  %167 = shufflevector <64 x float> %166, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !662
  %168 = call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %121, <64 x float> %167, <64 x float> %162), !dbg !662
  %169 = add i64 %19, 8, !dbg !648
  br label %18, !dbg !648

170:                                              ; preds = %18
  store <64 x float> %20, ptr %5, align 4, !dbg !662
  br label %171, !dbg !663

171:                                              ; preds = %174, %170
  %172 = phi i64 [ %183, %174 ], [ 0, %170 ], !dbg !663
  %173 = icmp slt i64 %172, 64, !dbg !663
  br i1 %173, label %174, label %184, !dbg !663

174:                                              ; preds = %171
  %175 = getelementptr float, ptr %5, i64 %172, !dbg !663
  %176 = load <1 x float>, ptr %175, align 4, !dbg !663
  %177 = fadd contract <1 x float> %176, zeroinitializer, !dbg !664
  %178 = fcmp ugt <1 x float> %177, zeroinitializer, !dbg !665
  %179 = select <1 x i1> %178, <1 x float> %177, <1 x float> zeroinitializer, !dbg !666
  %180 = extractelement <1 x float> %179, i64 0, !dbg !663
  %181 = add i64 %17, %172, !dbg !663
  %182 = getelementptr inbounds nuw float, ptr %13, i64 %181, !dbg !663
  store float %180, ptr %182, align 4, !dbg !663
  %183 = add i64 %172, 1, !dbg !663
  br label %171, !dbg !663

184:                                              ; preds = %171
  ret i32 0, !dbg !667
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @iree_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #5 {
  %2 = and i16 %0, 31744
  %3 = and i16 %0, 1023
  %4 = and i16 %0, -32768
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  switch i16 %2, label %15 [
    i16 31744, label %7
    i16 0, label %23
  ]

7:                                                ; preds = %1
  %8 = icmp eq i16 %3, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = or disjoint i32 %6, 2143289344
  %11 = bitcast i32 %10 to float
  br label %28

12:                                               ; preds = %7
  %13 = or disjoint i32 %6, 2139095040
  %14 = bitcast i32 %13 to float
  br label %28

15:                                               ; preds = %1
  %16 = zext nneg i16 %3 to i32
  %17 = zext nneg i16 %2 to i32
  %18 = add nuw nsw i32 %17, 114688
  %19 = or disjoint i32 %18, %16
  %20 = shl nuw nsw i32 %19, 13
  %21 = or disjoint i32 %20, %6
  %22 = bitcast i32 %21 to float
  br label %28

23:                                               ; preds = %1
  %24 = or disjoint i32 %6, 864026624
  %25 = uitofp nneg i16 %3 to float
  %26 = bitcast i32 %24 to float
  %27 = fmul float %25, %26
  br label %28

28:                                               ; preds = %23, %15, %12, %9
  %29 = phi float [ %11, %9 ], [ %14, %12 ], [ %22, %15 ], [ %27, %23 ]
  ret float %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden signext i16 @iree_f2h_ieee(float noundef %0) local_unnamed_addr #5 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2139095040
  %4 = and i32 %2, 8388607
  %5 = lshr i32 %2, 16
  %6 = and i32 %5, 32768
  switch i32 %3, label %12 [
    i32 2139095040, label %7
    i32 0, label %29
  ]

7:                                                ; preds = %1
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %7
  %10 = trunc nuw i32 %5 to i16
  %11 = or i16 %10, 32767
  br label %35

12:                                               ; preds = %1
  %13 = lshr exact i32 %3, 23
  %14 = icmp samesign ugt i32 %3, 1191182336
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = icmp samesign ult i32 %3, 947912704
  br i1 %16, label %29, label %17

17:                                               ; preds = %15
  %18 = and i32 %2, 8192
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 4095, i32 4096
  %21 = add nuw nsw i32 %20, %4
  %22 = icmp samesign ugt i32 %21, 8388607
  %23 = select i1 %22, i32 -126, i32 -127
  %24 = add nsw i32 %23, %13
  %25 = shl nsw i32 %24, 10
  %26 = add nsw i32 %25, 15360
  %27 = lshr i32 %21, 13
  %28 = select i1 %22, i32 0, i32 %27
  br label %29

29:                                               ; preds = %17, %12, %15, %1, %7
  %30 = phi i32 [ 0, %7 ], [ %3, %1 ], [ %28, %17 ], [ 0, %12 ], [ 0, %15 ]
  %31 = phi i32 [ 31744, %7 ], [ %3, %1 ], [ %26, %17 ], [ 31744, %12 ], [ 0, %15 ]
  %32 = or i32 %30, %6
  %33 = or i32 %32, %31
  %34 = trunc i32 %33 to i16
  br label %35

35:                                               ; preds = %29, %9
  %36 = phi i16 [ %11, %9 ], [ %34, %29 ]
  ret i16 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @__gnu_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #5 {
  %2 = and i16 %0, 31744
  %3 = and i16 %0, 1023
  %4 = and i16 %0, -32768
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  switch i16 %2, label %15 [
    i16 31744, label %7
    i16 0, label %23
  ]

7:                                                ; preds = %1
  %8 = icmp eq i16 %3, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = or disjoint i32 %6, 2143289344
  %11 = bitcast i32 %10 to float
  br label %28

12:                                               ; preds = %7
  %13 = or disjoint i32 %6, 2139095040
  %14 = bitcast i32 %13 to float
  br label %28

15:                                               ; preds = %1
  %16 = zext nneg i16 %3 to i32
  %17 = zext nneg i16 %2 to i32
  %18 = add nuw nsw i32 %17, 114688
  %19 = or disjoint i32 %18, %16
  %20 = shl nuw nsw i32 %19, 13
  %21 = or disjoint i32 %20, %6
  %22 = bitcast i32 %21 to float
  br label %28

23:                                               ; preds = %1
  %24 = or disjoint i32 %6, 864026624
  %25 = uitofp nneg i16 %3 to float
  %26 = bitcast i32 %24 to float
  %27 = fmul float %25, %26
  br label %28

28:                                               ; preds = %9, %12, %15, %23
  %29 = phi float [ %11, %9 ], [ %14, %12 ], [ %22, %15 ], [ %27, %23 ]
  ret float %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @__extendhfsf2(float noundef %0) local_unnamed_addr #5 {
  %2 = bitcast float %0 to i32
  %3 = trunc i32 %2 to i16
  %4 = and i16 %3, 31744
  %5 = and i16 %3, 1023
  %6 = shl i32 %2, 16
  %7 = and i32 %6, -2147483648
  switch i16 %4, label %16 [
    i16 31744, label %8
    i16 0, label %24
  ]

8:                                                ; preds = %1
  %9 = icmp eq i16 %5, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = or disjoint i32 %7, 2143289344
  %12 = bitcast i32 %11 to float
  br label %29

13:                                               ; preds = %8
  %14 = or disjoint i32 %7, 2139095040
  %15 = bitcast i32 %14 to float
  br label %29

16:                                               ; preds = %1
  %17 = and i32 %2, 1023
  %18 = and i32 %2, 31744
  %19 = add nuw nsw i32 %18, 114688
  %20 = or disjoint i32 %19, %17
  %21 = shl nuw nsw i32 %20, 13
  %22 = or disjoint i32 %21, %7
  %23 = bitcast i32 %22 to float
  br label %29

24:                                               ; preds = %1
  %25 = or disjoint i32 %7, 864026624
  %26 = uitofp nneg i16 %5 to float
  %27 = bitcast i32 %25 to float
  %28 = fmul float %26, %27
  br label %29

29:                                               ; preds = %10, %13, %16, %24
  %30 = phi float [ %12, %10 ], [ %15, %13 ], [ %23, %16 ], [ %28, %24 ]
  ret float %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden signext i16 @__gnu_f2h_ieee(float noundef %0) local_unnamed_addr #5 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2139095040
  %4 = and i32 %2, 8388607
  %5 = lshr i32 %2, 16
  %6 = and i32 %5, 32768
  switch i32 %3, label %12 [
    i32 2139095040, label %7
    i32 0, label %29
  ]

7:                                                ; preds = %1
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %7
  %10 = trunc nuw i32 %5 to i16
  %11 = or i16 %10, 32767
  br label %35

12:                                               ; preds = %1
  %13 = lshr exact i32 %3, 23
  %14 = icmp samesign ugt i32 %3, 1191182336
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = icmp samesign ult i32 %3, 947912704
  br i1 %16, label %29, label %17

17:                                               ; preds = %15
  %18 = and i32 %2, 8192
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 4095, i32 4096
  %21 = add nuw nsw i32 %20, %4
  %22 = icmp samesign ugt i32 %21, 8388607
  %23 = select i1 %22, i32 -126, i32 -127
  %24 = add nsw i32 %23, %13
  %25 = shl nsw i32 %24, 10
  %26 = add nsw i32 %25, 15360
  %27 = lshr i32 %21, 13
  %28 = select i1 %22, i32 0, i32 %27
  br label %29

29:                                               ; preds = %17, %15, %12, %7, %1
  %30 = phi i32 [ 0, %7 ], [ %3, %1 ], [ %28, %17 ], [ 0, %12 ], [ 0, %15 ]
  %31 = phi i32 [ 31744, %7 ], [ %3, %1 ], [ %26, %17 ], [ 31744, %12 ], [ 0, %15 ]
  %32 = or i32 %30, %6
  %33 = or i32 %32, %31
  %34 = trunc i32 %33 to i16
  br label %35

35:                                               ; preds = %9, %29
  %36 = phi i16 [ %11, %9 ], [ %34, %29 ]
  ret i16 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @__truncsfhf2(float noundef %0) local_unnamed_addr #5 {
  %2 = alloca i16, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %3 = bitcast float %0 to i32
  %4 = and i32 %3, 2139095040
  %5 = and i32 %3, 8388607
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 32768
  switch i32 %4, label %13 [
    i32 2139095040, label %8
    i32 0, label %30
  ]

8:                                                ; preds = %1
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %8
  %11 = trunc nuw i32 %6 to i16
  %12 = or i16 %11, 32767
  br label %36

13:                                               ; preds = %1
  %14 = lshr exact i32 %4, 23
  %15 = icmp samesign ugt i32 %4, 1191182336
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = icmp samesign ult i32 %4, 947912704
  br i1 %17, label %30, label %18

18:                                               ; preds = %16
  %19 = and i32 %3, 8192
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 4095, i32 4096
  %22 = add nuw nsw i32 %21, %5
  %23 = icmp samesign ugt i32 %22, 8388607
  %24 = select i1 %23, i32 -126, i32 -127
  %25 = add nsw i32 %24, %14
  %26 = shl nsw i32 %25, 10
  %27 = add nsw i32 %26, 15360
  %28 = lshr i32 %22, 13
  %29 = select i1 %23, i32 0, i32 %28
  br label %30

30:                                               ; preds = %18, %16, %13, %8, %1
  %31 = phi i32 [ 0, %8 ], [ %4, %1 ], [ %29, %18 ], [ 0, %13 ], [ 0, %16 ]
  %32 = phi i32 [ 31744, %8 ], [ %4, %1 ], [ %27, %18 ], [ 31744, %13 ], [ 0, %16 ]
  %33 = or i32 %31, %7
  %34 = or i32 %33, %32
  %35 = trunc i32 %34 to i16
  br label %36

36:                                               ; preds = %10, %30
  %37 = phi i16 [ %12, %10 ], [ %35, %30 ]
  store i16 %37, ptr %2, align 4, !tbaa !668
  %38 = load float, ptr %2, align 4, !tbaa !672
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "target-cpu"="znver3" "target-features"="+64bit,+64bit-mode,+adx,+aes,+allow-light-256-bit,+avx,+avx2,+bmi,+bmi2,+branchfusion,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fast-15bytenop,+fast-bextr,+fast-imm16,+fast-lzcnt,+fast-movbe,+fast-scalar-fsqrt,+fast-scalar-shift-masks,+fast-variable-perlane-shuffle,+fast-vector-fsqrt,+fma,+fsgsbase,+fsrm,+fxsr,+idivq-to-divl,+invpcid,+lzcnt,+macrofusion,+mmx,+movbe,+mwaitx,+nopl,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sbb-dep-breaking,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+vzeroupper,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "hot" "no-builtins" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78}

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
!77 = !{i32 1, !"wchar_size", i32 4}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = distinct !DISubprogram(name: "main_graph$async_dispatch_0_slow_memcpy", linkageName: "main_graph$async_dispatch_0_slow_memcpy", scope: !1, file: !1, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!80 = !DISubroutineType(cc: DW_CC_normal, types: !81)
!81 = !{!82, !83, !114, !143}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !87, file: !87, line: 246, size: 768, elements: !88)
!87 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!88 = !{!89, !97, !100, !103, !105}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, scope: !87, file: !87, line: 227, baseType: !93, size: 2048, elements: !95)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !94)
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !{!96}
!96 = !DISubrange(count: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !104, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !106, offset: 256)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !87, file: !87, line: 227, size: 512, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !109)
!109 = !DICompositeType(tag: DW_TAG_array_type, scope: !87, file: !87, line: 227, baseType: !110, size: 512, elements: !112)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !111)
!111 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !{!113}
!113 = !DISubrange(count: 8)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !87, file: !87, line: 275, size: 384, elements: !118)
!118 = !{!119, !120, !121, !124, !125, !126, !127, !128, !131, !132, !133, !138}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !93, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !93, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !122, size: 16, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !123)
!123 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !122, size: 16, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !93, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !93, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !122, size: 16, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !129, size: 8, offset: 176)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !130)
!130 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !129, size: 8, offset: 184)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !90, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !134, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DICompositeType(tag: DW_TAG_array_type, scope: !87, file: !87, line: 227, baseType: !137, size: 4096, elements: !95)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !139, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DICompositeType(tag: DW_TAG_array_type, scope: !87, file: !87, line: 227, baseType: !142, size: 4096, elements: !95)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !110)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !87, file: !87, line: 321, size: 256, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !93, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !93, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !122, size: 16, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !122, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !93, size: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !98, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !93, size: 32, offset: 192)
!155 = !DILocation(line: 10, column: 8, scope: !79)
!156 = !DILocation(line: 11, column: 8, scope: !79)
!157 = !DILocation(line: 12, column: 8, scope: !79)
!158 = !DILocation(line: 13, column: 8, scope: !79)
!159 = !DILocation(line: 15, column: 8, scope: !79)
!160 = !DILocation(line: 19, column: 8, scope: !79)
!161 = distinct !DISubprogram(name: "main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32", linkageName: "main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32", scope: !3, file: !3, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!162 = !DILocation(line: 20, column: 8, scope: !161)
!163 = !DILocation(line: 14, column: 8, scope: !161)
!164 = !DILocation(line: 15, column: 8, scope: !161)
!165 = !DILocation(line: 16, column: 8, scope: !161)
!166 = !DILocation(line: 21, column: 8, scope: !161)
!167 = !DILocation(line: 9, column: 8, scope: !161)
!168 = !DILocation(line: 23, column: 10, scope: !161)
!169 = !DILocation(line: 24, column: 10, scope: !161)
!170 = !DILocation(line: 27, column: 8, scope: !161)
!171 = !DILocation(line: 29, column: 10, scope: !161)
!172 = !DILocation(line: 30, column: 10, scope: !161)
!173 = !DILocation(line: 31, column: 10, scope: !161)
!174 = !DILocation(line: 32, column: 10, scope: !161)
!175 = !DILocation(line: 33, column: 10, scope: !161)
!176 = !DILocation(line: 37, column: 8, scope: !161)
!177 = distinct !DISubprogram(name: "main_graph$async_dispatch_2_conv_112x112x32x3x3_f32", linkageName: "main_graph$async_dispatch_2_conv_112x112x32x3x3_f32", scope: !5, file: !5, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!178 = !DILocation(line: 21, column: 8, scope: !177)
!179 = !DILocation(line: 20, column: 8, scope: !177)
!180 = !DILocation(line: 14, column: 8, scope: !177)
!181 = !DILocation(line: 15, column: 8, scope: !177)
!182 = !DILocation(line: 16, column: 8, scope: !177)
!183 = !DILocation(line: 9, column: 8, scope: !177)
!184 = !DILocation(line: 23, column: 10, scope: !177)
!185 = !DILocation(line: 24, column: 10, scope: !177)
!186 = !DILocation(line: 27, column: 8, scope: !177)
!187 = !DILocation(line: 29, column: 10, scope: !177)
!188 = !DILocation(line: 30, column: 10, scope: !177)
!189 = !DILocation(line: 31, column: 10, scope: !177)
!190 = !DILocation(line: 32, column: 10, scope: !177)
!191 = !DILocation(line: 33, column: 10, scope: !177)
!192 = !DILocation(line: 37, column: 8, scope: !177)
!193 = distinct !DISubprogram(name: "main_graph$async_dispatch_3_matmul_like_64x12544x32_f32", linkageName: "main_graph$async_dispatch_3_matmul_like_64x12544x32_f32", scope: !7, file: !7, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!194 = !DILocation(line: 14, column: 8, scope: !193)
!195 = !DILocation(line: 15, column: 8, scope: !193)
!196 = !DILocation(line: 16, column: 8, scope: !193)
!197 = !DILocation(line: 21, column: 8, scope: !193)
!198 = !DILocation(line: 24, column: 10, scope: !193)
!199 = !DILocation(line: 29, column: 10, scope: !193)
!200 = !DILocation(line: 30, column: 10, scope: !193)
!201 = !DILocation(line: 31, column: 10, scope: !193)
!202 = !DILocation(line: 32, column: 10, scope: !193)
!203 = !DILocation(line: 33, column: 10, scope: !193)
!204 = !DILocation(line: 37, column: 8, scope: !193)
!205 = distinct !DISubprogram(name: "main_graph$async_dispatch_4_slow_memcpy", linkageName: "main_graph$async_dispatch_4_slow_memcpy", scope: !9, file: !9, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8)
!206 = !DILocation(line: 11, column: 8, scope: !205)
!207 = !DILocation(line: 12, column: 8, scope: !205)
!208 = !DILocation(line: 13, column: 8, scope: !205)
!209 = !DILocation(line: 14, column: 8, scope: !205)
!210 = !DILocation(line: 16, column: 8, scope: !205)
!211 = !DILocation(line: 20, column: 8, scope: !205)
!212 = distinct !DISubprogram(name: "main_graph$async_dispatch_5_conv_56x56x64x3x3_f32", linkageName: "main_graph$async_dispatch_5_conv_56x56x64x3x3_f32", scope: !11, file: !11, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!213 = !DILocation(line: 21, column: 8, scope: !212)
!214 = !DILocation(line: 20, column: 8, scope: !212)
!215 = !DILocation(line: 14, column: 8, scope: !212)
!216 = !DILocation(line: 15, column: 8, scope: !212)
!217 = !DILocation(line: 16, column: 8, scope: !212)
!218 = !DILocation(line: 9, column: 8, scope: !212)
!219 = !DILocation(line: 23, column: 10, scope: !212)
!220 = !DILocation(line: 24, column: 10, scope: !212)
!221 = !DILocation(line: 27, column: 8, scope: !212)
!222 = !DILocation(line: 29, column: 10, scope: !212)
!223 = !DILocation(line: 30, column: 10, scope: !212)
!224 = !DILocation(line: 31, column: 10, scope: !212)
!225 = !DILocation(line: 32, column: 10, scope: !212)
!226 = !DILocation(line: 33, column: 10, scope: !212)
!227 = !DILocation(line: 37, column: 8, scope: !212)
!228 = distinct !DISubprogram(name: "main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32", linkageName: "main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32", scope: !13, file: !13, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!229 = !DILocation(line: 14, column: 8, scope: !228)
!230 = !DILocation(line: 15, column: 8, scope: !228)
!231 = !DILocation(line: 16, column: 8, scope: !228)
!232 = !DILocation(line: 21, column: 8, scope: !228)
!233 = !DILocation(line: 24, column: 10, scope: !228)
!234 = !DILocation(line: 29, column: 10, scope: !228)
!235 = !DILocation(line: 30, column: 10, scope: !228)
!236 = !DILocation(line: 31, column: 10, scope: !228)
!237 = !DILocation(line: 32, column: 10, scope: !228)
!238 = !DILocation(line: 33, column: 10, scope: !228)
!239 = !DILocation(line: 37, column: 8, scope: !228)
!240 = distinct !DISubprogram(name: "main_graph$async_dispatch_7_conv_56x56x128x3x3_f32", linkageName: "main_graph$async_dispatch_7_conv_56x56x128x3x3_f32", scope: !15, file: !15, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!241 = !DILocation(line: 21, column: 8, scope: !240)
!242 = !DILocation(line: 20, column: 8, scope: !240)
!243 = !DILocation(line: 14, column: 8, scope: !240)
!244 = !DILocation(line: 15, column: 8, scope: !240)
!245 = !DILocation(line: 16, column: 8, scope: !240)
!246 = !DILocation(line: 9, column: 8, scope: !240)
!247 = !DILocation(line: 23, column: 10, scope: !240)
!248 = !DILocation(line: 24, column: 10, scope: !240)
!249 = !DILocation(line: 27, column: 8, scope: !240)
!250 = !DILocation(line: 29, column: 10, scope: !240)
!251 = !DILocation(line: 30, column: 10, scope: !240)
!252 = !DILocation(line: 31, column: 10, scope: !240)
!253 = !DILocation(line: 32, column: 10, scope: !240)
!254 = !DILocation(line: 33, column: 10, scope: !240)
!255 = !DILocation(line: 37, column: 8, scope: !240)
!256 = distinct !DISubprogram(name: "main_graph$async_dispatch_8_matmul_like_128x3136x128_f32", linkageName: "main_graph$async_dispatch_8_matmul_like_128x3136x128_f32", scope: !17, file: !17, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16)
!257 = !DILocation(line: 14, column: 8, scope: !256)
!258 = !DILocation(line: 15, column: 8, scope: !256)
!259 = !DILocation(line: 16, column: 8, scope: !256)
!260 = !DILocation(line: 21, column: 8, scope: !256)
!261 = !DILocation(line: 24, column: 10, scope: !256)
!262 = !DILocation(line: 29, column: 10, scope: !256)
!263 = !DILocation(line: 30, column: 10, scope: !256)
!264 = !DILocation(line: 31, column: 10, scope: !256)
!265 = !DILocation(line: 32, column: 10, scope: !256)
!266 = !DILocation(line: 33, column: 10, scope: !256)
!267 = !DILocation(line: 37, column: 8, scope: !256)
!268 = distinct !DISubprogram(name: "main_graph$async_dispatch_9_slow_memcpy", linkageName: "main_graph$async_dispatch_9_slow_memcpy", scope: !19, file: !19, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!269 = !DILocation(line: 11, column: 8, scope: !268)
!270 = !DILocation(line: 12, column: 8, scope: !268)
!271 = !DILocation(line: 13, column: 8, scope: !268)
!272 = !DILocation(line: 14, column: 8, scope: !268)
!273 = !DILocation(line: 16, column: 8, scope: !268)
!274 = !DILocation(line: 20, column: 8, scope: !268)
!275 = distinct !DISubprogram(name: "main_graph$async_dispatch_10_conv_28x28x128x3x3_f32", linkageName: "main_graph$async_dispatch_10_conv_28x28x128x3x3_f32", scope: !21, file: !21, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20)
!276 = !DILocation(line: 21, column: 8, scope: !275)
!277 = !DILocation(line: 20, column: 8, scope: !275)
!278 = !DILocation(line: 14, column: 8, scope: !275)
!279 = !DILocation(line: 15, column: 8, scope: !275)
!280 = !DILocation(line: 16, column: 8, scope: !275)
!281 = !DILocation(line: 9, column: 8, scope: !275)
!282 = !DILocation(line: 23, column: 10, scope: !275)
!283 = !DILocation(line: 24, column: 10, scope: !275)
!284 = !DILocation(line: 27, column: 8, scope: !275)
!285 = !DILocation(line: 29, column: 10, scope: !275)
!286 = !DILocation(line: 30, column: 10, scope: !275)
!287 = !DILocation(line: 31, column: 10, scope: !275)
!288 = !DILocation(line: 32, column: 10, scope: !275)
!289 = !DILocation(line: 33, column: 10, scope: !275)
!290 = !DILocation(line: 37, column: 8, scope: !275)
!291 = distinct !DISubprogram(name: "main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32", linkageName: "main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32", scope: !23, file: !23, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22)
!292 = !DILocation(line: 14, column: 8, scope: !291)
!293 = !DILocation(line: 15, column: 8, scope: !291)
!294 = !DILocation(line: 16, column: 8, scope: !291)
!295 = !DILocation(line: 21, column: 8, scope: !291)
!296 = !DILocation(line: 24, column: 10, scope: !291)
!297 = !DILocation(line: 29, column: 10, scope: !291)
!298 = !DILocation(line: 30, column: 10, scope: !291)
!299 = !DILocation(line: 31, column: 10, scope: !291)
!300 = !DILocation(line: 32, column: 10, scope: !291)
!301 = !DILocation(line: 33, column: 10, scope: !291)
!302 = !DILocation(line: 37, column: 8, scope: !291)
!303 = distinct !DISubprogram(name: "main_graph$async_dispatch_12_conv_28x28x256x3x3_f32", linkageName: "main_graph$async_dispatch_12_conv_28x28x256x3x3_f32", scope: !25, file: !25, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!304 = !DILocation(line: 21, column: 8, scope: !303)
!305 = !DILocation(line: 20, column: 8, scope: !303)
!306 = !DILocation(line: 14, column: 8, scope: !303)
!307 = !DILocation(line: 15, column: 8, scope: !303)
!308 = !DILocation(line: 16, column: 8, scope: !303)
!309 = !DILocation(line: 9, column: 8, scope: !303)
!310 = !DILocation(line: 23, column: 10, scope: !303)
!311 = !DILocation(line: 24, column: 10, scope: !303)
!312 = !DILocation(line: 27, column: 8, scope: !303)
!313 = !DILocation(line: 29, column: 10, scope: !303)
!314 = !DILocation(line: 30, column: 10, scope: !303)
!315 = !DILocation(line: 31, column: 10, scope: !303)
!316 = !DILocation(line: 32, column: 10, scope: !303)
!317 = !DILocation(line: 33, column: 10, scope: !303)
!318 = !DILocation(line: 37, column: 8, scope: !303)
!319 = distinct !DISubprogram(name: "main_graph$async_dispatch_13_matmul_like_256x784x256_f32", linkageName: "main_graph$async_dispatch_13_matmul_like_256x784x256_f32", scope: !27, file: !27, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!320 = !DILocation(line: 14, column: 8, scope: !319)
!321 = !DILocation(line: 15, column: 8, scope: !319)
!322 = !DILocation(line: 16, column: 8, scope: !319)
!323 = !DILocation(line: 21, column: 8, scope: !319)
!324 = !DILocation(line: 24, column: 10, scope: !319)
!325 = !DILocation(line: 29, column: 10, scope: !319)
!326 = !DILocation(line: 30, column: 10, scope: !319)
!327 = !DILocation(line: 31, column: 10, scope: !319)
!328 = !DILocation(line: 32, column: 10, scope: !319)
!329 = !DILocation(line: 33, column: 10, scope: !319)
!330 = !DILocation(line: 37, column: 8, scope: !319)
!331 = distinct !DISubprogram(name: "main_graph$async_dispatch_14_slow_memcpy", linkageName: "main_graph$async_dispatch_14_slow_memcpy", scope: !29, file: !29, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28)
!332 = !DILocation(line: 11, column: 8, scope: !331)
!333 = !DILocation(line: 12, column: 8, scope: !331)
!334 = !DILocation(line: 13, column: 8, scope: !331)
!335 = !DILocation(line: 14, column: 8, scope: !331)
!336 = !DILocation(line: 16, column: 8, scope: !331)
!337 = !DILocation(line: 20, column: 8, scope: !331)
!338 = distinct !DISubprogram(name: "main_graph$async_dispatch_15_conv_14x14x256x3x3_f32", linkageName: "main_graph$async_dispatch_15_conv_14x14x256x3x3_f32", scope: !31, file: !31, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30)
!339 = !DILocation(line: 21, column: 8, scope: !338)
!340 = !DILocation(line: 20, column: 8, scope: !338)
!341 = !DILocation(line: 14, column: 8, scope: !338)
!342 = !DILocation(line: 15, column: 8, scope: !338)
!343 = !DILocation(line: 16, column: 8, scope: !338)
!344 = !DILocation(line: 9, column: 8, scope: !338)
!345 = !DILocation(line: 23, column: 10, scope: !338)
!346 = !DILocation(line: 24, column: 10, scope: !338)
!347 = !DILocation(line: 27, column: 8, scope: !338)
!348 = !DILocation(line: 29, column: 10, scope: !338)
!349 = !DILocation(line: 30, column: 10, scope: !338)
!350 = !DILocation(line: 31, column: 10, scope: !338)
!351 = !DILocation(line: 32, column: 10, scope: !338)
!352 = !DILocation(line: 33, column: 10, scope: !338)
!353 = !DILocation(line: 37, column: 8, scope: !338)
!354 = distinct !DISubprogram(name: "main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32", linkageName: "main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32", scope: !33, file: !33, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32)
!355 = !DILocation(line: 14, column: 8, scope: !354)
!356 = !DILocation(line: 15, column: 8, scope: !354)
!357 = !DILocation(line: 16, column: 8, scope: !354)
!358 = !DILocation(line: 21, column: 8, scope: !354)
!359 = !DILocation(line: 24, column: 10, scope: !354)
!360 = !DILocation(line: 29, column: 10, scope: !354)
!361 = !DILocation(line: 30, column: 10, scope: !354)
!362 = !DILocation(line: 31, column: 10, scope: !354)
!363 = !DILocation(line: 32, column: 10, scope: !354)
!364 = !DILocation(line: 33, column: 10, scope: !354)
!365 = !DILocation(line: 37, column: 8, scope: !354)
!366 = distinct !DISubprogram(name: "main_graph$async_dispatch_17_conv_14x14x512x3x3_f32", linkageName: "main_graph$async_dispatch_17_conv_14x14x512x3x3_f32", scope: !35, file: !35, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!367 = !DILocation(line: 27, column: 8, scope: !366)
!368 = !DILocation(line: 26, column: 8, scope: !366)
!369 = !DILocation(line: 12, column: 8, scope: !366)
!370 = !DILocation(line: 13, column: 8, scope: !366)
!371 = !DILocation(line: 14, column: 8, scope: !366)
!372 = !DILocation(line: 15, column: 8, scope: !366)
!373 = !DILocation(line: 20, column: 8, scope: !366)
!374 = !DILocation(line: 21, column: 8, scope: !366)
!375 = !DILocation(line: 22, column: 8, scope: !366)
!376 = !DILocation(line: 10, column: 8, scope: !366)
!377 = !DILocation(line: 29, column: 10, scope: !366)
!378 = !DILocation(line: 30, column: 10, scope: !366)
!379 = !DILocation(line: 33, column: 8, scope: !366)
!380 = !DILocation(line: 35, column: 10, scope: !366)
!381 = !DILocation(line: 36, column: 10, scope: !366)
!382 = !DILocation(line: 37, column: 10, scope: !366)
!383 = !DILocation(line: 38, column: 10, scope: !366)
!384 = !DILocation(line: 39, column: 10, scope: !366)
!385 = !DILocation(line: 43, column: 8, scope: !366)
!386 = distinct !DISubprogram(name: "main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32", linkageName: "main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32", scope: !37, file: !37, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36)
!387 = !DILocation(line: 12, column: 8, scope: !386)
!388 = !DILocation(line: 13, column: 8, scope: !386)
!389 = !DILocation(line: 14, column: 8, scope: !386)
!390 = !DILocation(line: 15, column: 8, scope: !386)
!391 = !DILocation(line: 20, column: 8, scope: !386)
!392 = !DILocation(line: 21, column: 8, scope: !386)
!393 = !DILocation(line: 22, column: 8, scope: !386)
!394 = !DILocation(line: 27, column: 8, scope: !386)
!395 = !DILocation(line: 30, column: 10, scope: !386)
!396 = !DILocation(line: 35, column: 10, scope: !386)
!397 = !DILocation(line: 36, column: 10, scope: !386)
!398 = !DILocation(line: 37, column: 10, scope: !386)
!399 = !DILocation(line: 38, column: 10, scope: !386)
!400 = !DILocation(line: 39, column: 10, scope: !386)
!401 = !DILocation(line: 43, column: 8, scope: !386)
!402 = distinct !DISubprogram(name: "main_graph$async_dispatch_27_conv_7x7x512x3x3_f32", linkageName: "main_graph$async_dispatch_27_conv_7x7x512x3x3_f32", scope: !39, file: !39, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38)
!403 = !DILocation(line: 21, column: 8, scope: !402)
!404 = !DILocation(line: 20, column: 8, scope: !402)
!405 = !DILocation(line: 14, column: 8, scope: !402)
!406 = !DILocation(line: 15, column: 8, scope: !402)
!407 = !DILocation(line: 16, column: 8, scope: !402)
!408 = !DILocation(line: 9, column: 8, scope: !402)
!409 = !DILocation(line: 23, column: 10, scope: !402)
!410 = !DILocation(line: 24, column: 10, scope: !402)
!411 = !DILocation(line: 27, column: 8, scope: !402)
!412 = !DILocation(line: 29, column: 10, scope: !402)
!413 = !DILocation(line: 30, column: 10, scope: !402)
!414 = !DILocation(line: 31, column: 10, scope: !402)
!415 = !DILocation(line: 32, column: 10, scope: !402)
!416 = !DILocation(line: 33, column: 10, scope: !402)
!417 = !DILocation(line: 37, column: 8, scope: !402)
!418 = distinct !DISubprogram(name: "main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32", linkageName: "main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32", scope: !41, file: !41, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40)
!419 = !DILocation(line: 14, column: 8, scope: !418)
!420 = !DILocation(line: 15, column: 8, scope: !418)
!421 = !DILocation(line: 16, column: 8, scope: !418)
!422 = !DILocation(line: 21, column: 8, scope: !418)
!423 = !DILocation(line: 24, column: 10, scope: !418)
!424 = !DILocation(line: 29, column: 10, scope: !418)
!425 = !DILocation(line: 30, column: 10, scope: !418)
!426 = !DILocation(line: 31, column: 10, scope: !418)
!427 = !DILocation(line: 32, column: 10, scope: !418)
!428 = !DILocation(line: 33, column: 10, scope: !418)
!429 = !DILocation(line: 37, column: 8, scope: !418)
!430 = distinct !DISubprogram(name: "main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32", linkageName: "main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32", scope: !43, file: !43, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42)
!431 = !DILocation(line: 21, column: 8, scope: !430)
!432 = !DILocation(line: 20, column: 8, scope: !430)
!433 = !DILocation(line: 14, column: 8, scope: !430)
!434 = !DILocation(line: 15, column: 8, scope: !430)
!435 = !DILocation(line: 16, column: 8, scope: !430)
!436 = !DILocation(line: 9, column: 8, scope: !430)
!437 = !DILocation(line: 23, column: 10, scope: !430)
!438 = !DILocation(line: 24, column: 10, scope: !430)
!439 = !DILocation(line: 27, column: 8, scope: !430)
!440 = !DILocation(line: 29, column: 10, scope: !430)
!441 = !DILocation(line: 30, column: 10, scope: !430)
!442 = !DILocation(line: 31, column: 10, scope: !430)
!443 = !DILocation(line: 32, column: 10, scope: !430)
!444 = !DILocation(line: 33, column: 10, scope: !430)
!445 = !DILocation(line: 37, column: 8, scope: !430)
!446 = distinct !DISubprogram(name: "main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32", linkageName: "main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32", scope: !45, file: !45, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44)
!447 = !DILocation(line: 14, column: 8, scope: !446)
!448 = !DILocation(line: 15, column: 8, scope: !446)
!449 = !DILocation(line: 16, column: 8, scope: !446)
!450 = !DILocation(line: 21, column: 8, scope: !446)
!451 = !DILocation(line: 24, column: 10, scope: !446)
!452 = !DILocation(line: 29, column: 10, scope: !446)
!453 = !DILocation(line: 30, column: 10, scope: !446)
!454 = !DILocation(line: 31, column: 10, scope: !446)
!455 = !DILocation(line: 32, column: 10, scope: !446)
!456 = !DILocation(line: 33, column: 10, scope: !446)
!457 = !DILocation(line: 37, column: 8, scope: !446)
!458 = distinct !DISubprogram(name: "main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32", linkageName: "main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32", scope: !47, file: !47, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46)
!459 = !DILocation(line: 20, column: 8, scope: !458)
!460 = !DILocation(line: 19, column: 8, scope: !458)
!461 = !DILocation(line: 13, column: 8, scope: !458)
!462 = !DILocation(line: 14, column: 8, scope: !458)
!463 = !DILocation(line: 15, column: 8, scope: !458)
!464 = !DILocation(line: 9, column: 8, scope: !458)
!465 = !DILocation(line: 22, column: 10, scope: !458)
!466 = !DILocation(line: 23, column: 10, scope: !458)
!467 = !DILocation(line: 26, column: 8, scope: !458)
!468 = !DILocation(line: 28, column: 10, scope: !458)
!469 = !DILocation(line: 29, column: 10, scope: !458)
!470 = !DILocation(line: 30, column: 10, scope: !458)
!471 = !DILocation(line: 34, column: 8, scope: !458)
!472 = distinct !DISubprogram(name: "main_graph$async_dispatch_32_matmul_like_512x49x1024_f32", linkageName: "main_graph$async_dispatch_32_matmul_like_512x49x1024_f32", scope: !49, file: !49, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48)
!473 = !DILocation(line: 13, column: 8, scope: !472)
!474 = !DILocation(line: 14, column: 8, scope: !472)
!475 = !DILocation(line: 15, column: 8, scope: !472)
!476 = !DILocation(line: 20, column: 8, scope: !472)
!477 = !DILocation(line: 23, column: 10, scope: !472)
!478 = !DILocation(line: 28, column: 10, scope: !472)
!479 = !DILocation(line: 29, column: 10, scope: !472)
!480 = !DILocation(line: 30, column: 10, scope: !472)
!481 = !DILocation(line: 34, column: 8, scope: !472)
!482 = distinct !DISubprogram(name: "main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32", linkageName: "main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32", scope: !51, file: !51, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50)
!483 = !DILocation(line: 13, column: 8, scope: !482)
!484 = !DILocation(line: 14, column: 8, scope: !482)
!485 = !DILocation(line: 17, column: 8, scope: !482)
!486 = !DILocation(line: 31, column: 10, scope: !482)
!487 = !DILocation(line: 32, column: 10, scope: !482)
!488 = !DILocation(line: 19, column: 10, scope: !482)
!489 = !DILocation(line: 34, column: 10, scope: !482)
!490 = !DILocation(line: 20, column: 10, scope: !482)
!491 = !DILocation(line: 23, column: 10, scope: !482)
!492 = !DILocation(line: 24, column: 10, scope: !482)
!493 = !DILocation(line: 25, column: 10, scope: !482)
!494 = !DILocation(line: 26, column: 10, scope: !482)
!495 = !DILocation(line: 38, column: 8, scope: !482)
!496 = distinct !DISubprogram(name: "main_graph$async_dispatch_34_conv_14x14x512x5x5_f32", linkageName: "main_graph$async_dispatch_34_conv_14x14x512x5x5_f32", scope: !53, file: !53, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !52)
!497 = !DILocation(line: 20, column: 8, scope: !496)
!498 = !DILocation(line: 19, column: 8, scope: !496)
!499 = !DILocation(line: 13, column: 8, scope: !496)
!500 = !DILocation(line: 14, column: 8, scope: !496)
!501 = !DILocation(line: 15, column: 8, scope: !496)
!502 = !DILocation(line: 9, column: 8, scope: !496)
!503 = !DILocation(line: 22, column: 10, scope: !496)
!504 = !DILocation(line: 23, column: 10, scope: !496)
!505 = !DILocation(line: 26, column: 8, scope: !496)
!506 = !DILocation(line: 28, column: 10, scope: !496)
!507 = !DILocation(line: 29, column: 10, scope: !496)
!508 = !DILocation(line: 30, column: 10, scope: !496)
!509 = !DILocation(line: 34, column: 8, scope: !496)
!510 = distinct !DISubprogram(name: "main_graph$async_dispatch_35_matmul_like_256x196x512_f32", linkageName: "main_graph$async_dispatch_35_matmul_like_256x196x512_f32", scope: !55, file: !55, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54)
!511 = !DILocation(line: 13, column: 8, scope: !510)
!512 = !DILocation(line: 14, column: 8, scope: !510)
!513 = !DILocation(line: 15, column: 8, scope: !510)
!514 = !DILocation(line: 20, column: 8, scope: !510)
!515 = !DILocation(line: 23, column: 10, scope: !510)
!516 = !DILocation(line: 28, column: 10, scope: !510)
!517 = !DILocation(line: 29, column: 10, scope: !510)
!518 = !DILocation(line: 30, column: 10, scope: !510)
!519 = !DILocation(line: 34, column: 8, scope: !510)
!520 = distinct !DISubprogram(name: "main_graph$async_dispatch_36_elementwise_256x28x28_f32", linkageName: "main_graph$async_dispatch_36_elementwise_256x28x28_f32", scope: !57, file: !57, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56)
!521 = !DILocation(line: 14, column: 8, scope: !520)
!522 = !DILocation(line: 15, column: 8, scope: !520)
!523 = !DILocation(line: 16, column: 8, scope: !520)
!524 = !DILocation(line: 20, column: 8, scope: !520)
!525 = !DILocation(line: 34, column: 10, scope: !520)
!526 = !DILocation(line: 35, column: 10, scope: !520)
!527 = !DILocation(line: 37, column: 10, scope: !520)
!528 = !DILocation(line: 26, column: 10, scope: !520)
!529 = !DILocation(line: 27, column: 10, scope: !520)
!530 = !DILocation(line: 28, column: 10, scope: !520)
!531 = !DILocation(line: 29, column: 10, scope: !520)
!532 = !DILocation(line: 24, column: 10, scope: !520)
!533 = !DILocation(line: 32, column: 10, scope: !520)
!534 = !DILocation(line: 33, column: 10, scope: !520)
!535 = !DILocation(line: 38, column: 10, scope: !520)
!536 = !DILocation(line: 42, column: 8, scope: !520)
!537 = distinct !DISubprogram(name: "main_graph$async_dispatch_37_conv_28x28x256x5x5_f32", linkageName: "main_graph$async_dispatch_37_conv_28x28x256x5x5_f32", scope: !59, file: !59, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58)
!538 = !DILocation(line: 20, column: 8, scope: !537)
!539 = !DILocation(line: 19, column: 8, scope: !537)
!540 = !DILocation(line: 13, column: 8, scope: !537)
!541 = !DILocation(line: 14, column: 8, scope: !537)
!542 = !DILocation(line: 15, column: 8, scope: !537)
!543 = !DILocation(line: 9, column: 8, scope: !537)
!544 = !DILocation(line: 22, column: 10, scope: !537)
!545 = !DILocation(line: 23, column: 10, scope: !537)
!546 = !DILocation(line: 26, column: 8, scope: !537)
!547 = !DILocation(line: 28, column: 10, scope: !537)
!548 = !DILocation(line: 29, column: 10, scope: !537)
!549 = !DILocation(line: 30, column: 10, scope: !537)
!550 = !DILocation(line: 34, column: 8, scope: !537)
!551 = distinct !DISubprogram(name: "main_graph$async_dispatch_38_matmul_like_128x784x256_f32", linkageName: "main_graph$async_dispatch_38_matmul_like_128x784x256_f32", scope: !61, file: !61, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60)
!552 = !DILocation(line: 13, column: 8, scope: !551)
!553 = !DILocation(line: 14, column: 8, scope: !551)
!554 = !DILocation(line: 15, column: 8, scope: !551)
!555 = !DILocation(line: 20, column: 8, scope: !551)
!556 = !DILocation(line: 23, column: 10, scope: !551)
!557 = !DILocation(line: 28, column: 10, scope: !551)
!558 = !DILocation(line: 29, column: 10, scope: !551)
!559 = !DILocation(line: 30, column: 10, scope: !551)
!560 = !DILocation(line: 34, column: 8, scope: !551)
!561 = distinct !DISubprogram(name: "main_graph$async_dispatch_39_elementwise_128x56x56_f32", linkageName: "main_graph$async_dispatch_39_elementwise_128x56x56_f32", scope: !63, file: !63, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62)
!562 = !DILocation(line: 13, column: 8, scope: !561)
!563 = !DILocation(line: 14, column: 8, scope: !561)
!564 = !DILocation(line: 15, column: 8, scope: !561)
!565 = !DILocation(line: 19, column: 8, scope: !561)
!566 = !DILocation(line: 36, column: 10, scope: !561)
!567 = !DILocation(line: 25, column: 10, scope: !561)
!568 = !DILocation(line: 26, column: 10, scope: !561)
!569 = !DILocation(line: 27, column: 10, scope: !561)
!570 = !DILocation(line: 28, column: 10, scope: !561)
!571 = !DILocation(line: 23, column: 10, scope: !561)
!572 = !DILocation(line: 31, column: 10, scope: !561)
!573 = !DILocation(line: 32, column: 10, scope: !561)
!574 = !DILocation(line: 33, column: 10, scope: !561)
!575 = !DILocation(line: 34, column: 10, scope: !561)
!576 = !DILocation(line: 37, column: 10, scope: !561)
!577 = !DILocation(line: 41, column: 8, scope: !561)
!578 = distinct !DISubprogram(name: "main_graph$async_dispatch_40_conv_56x56x128x5x5_f32", linkageName: "main_graph$async_dispatch_40_conv_56x56x128x5x5_f32", scope: !65, file: !65, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64)
!579 = !DILocation(line: 20, column: 8, scope: !578)
!580 = !DILocation(line: 19, column: 8, scope: !578)
!581 = !DILocation(line: 13, column: 8, scope: !578)
!582 = !DILocation(line: 14, column: 8, scope: !578)
!583 = !DILocation(line: 15, column: 8, scope: !578)
!584 = !DILocation(line: 9, column: 8, scope: !578)
!585 = !DILocation(line: 22, column: 10, scope: !578)
!586 = !DILocation(line: 23, column: 10, scope: !578)
!587 = !DILocation(line: 26, column: 8, scope: !578)
!588 = !DILocation(line: 28, column: 10, scope: !578)
!589 = !DILocation(line: 29, column: 10, scope: !578)
!590 = !DILocation(line: 30, column: 10, scope: !578)
!591 = !DILocation(line: 34, column: 8, scope: !578)
!592 = distinct !DISubprogram(name: "main_graph$async_dispatch_41_matmul_like_64x3136x128_f32", linkageName: "main_graph$async_dispatch_41_matmul_like_64x3136x128_f32", scope: !67, file: !67, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66)
!593 = !DILocation(line: 13, column: 8, scope: !592)
!594 = !DILocation(line: 14, column: 8, scope: !592)
!595 = !DILocation(line: 15, column: 8, scope: !592)
!596 = !DILocation(line: 20, column: 8, scope: !592)
!597 = !DILocation(line: 23, column: 10, scope: !592)
!598 = !DILocation(line: 28, column: 10, scope: !592)
!599 = !DILocation(line: 29, column: 10, scope: !592)
!600 = !DILocation(line: 30, column: 10, scope: !592)
!601 = !DILocation(line: 34, column: 8, scope: !592)
!602 = distinct !DISubprogram(name: "main_graph$async_dispatch_42_elementwise_64x112x112_f32", linkageName: "main_graph$async_dispatch_42_elementwise_64x112x112_f32", scope: !69, file: !69, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68)
!603 = !DILocation(line: 14, column: 8, scope: !602)
!604 = !DILocation(line: 15, column: 8, scope: !602)
!605 = !DILocation(line: 16, column: 8, scope: !602)
!606 = !DILocation(line: 20, column: 8, scope: !602)
!607 = !DILocation(line: 37, column: 10, scope: !602)
!608 = !DILocation(line: 26, column: 10, scope: !602)
!609 = !DILocation(line: 27, column: 10, scope: !602)
!610 = !DILocation(line: 28, column: 10, scope: !602)
!611 = !DILocation(line: 29, column: 10, scope: !602)
!612 = !DILocation(line: 24, column: 10, scope: !602)
!613 = !DILocation(line: 32, column: 10, scope: !602)
!614 = !DILocation(line: 33, column: 10, scope: !602)
!615 = !DILocation(line: 34, column: 10, scope: !602)
!616 = !DILocation(line: 35, column: 10, scope: !602)
!617 = !DILocation(line: 38, column: 10, scope: !602)
!618 = !DILocation(line: 42, column: 8, scope: !602)
!619 = distinct !DISubprogram(name: "main_graph$async_dispatch_43_conv_112x112x64x5x5_f32", linkageName: "main_graph$async_dispatch_43_conv_112x112x64x5x5_f32", scope: !71, file: !71, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70)
!620 = !DILocation(line: 20, column: 8, scope: !619)
!621 = !DILocation(line: 19, column: 8, scope: !619)
!622 = !DILocation(line: 13, column: 8, scope: !619)
!623 = !DILocation(line: 14, column: 8, scope: !619)
!624 = !DILocation(line: 15, column: 8, scope: !619)
!625 = !DILocation(line: 9, column: 8, scope: !619)
!626 = !DILocation(line: 22, column: 10, scope: !619)
!627 = !DILocation(line: 23, column: 10, scope: !619)
!628 = !DILocation(line: 26, column: 8, scope: !619)
!629 = !DILocation(line: 28, column: 10, scope: !619)
!630 = !DILocation(line: 29, column: 10, scope: !619)
!631 = !DILocation(line: 30, column: 10, scope: !619)
!632 = !DILocation(line: 34, column: 8, scope: !619)
!633 = distinct !DISubprogram(name: "main_graph$async_dispatch_44_matmul_like_32x12544x64_f32", linkageName: "main_graph$async_dispatch_44_matmul_like_32x12544x64_f32", scope: !73, file: !73, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72)
!634 = !DILocation(line: 12, column: 8, scope: !633)
!635 = !DILocation(line: 13, column: 8, scope: !633)
!636 = !DILocation(line: 14, column: 8, scope: !633)
!637 = !DILocation(line: 19, column: 8, scope: !633)
!638 = !DILocation(line: 22, column: 10, scope: !633)
!639 = !DILocation(line: 27, column: 10, scope: !633)
!640 = !DILocation(line: 28, column: 10, scope: !633)
!641 = !DILocation(line: 29, column: 10, scope: !633)
!642 = !DILocation(line: 33, column: 8, scope: !633)
!643 = distinct !DISubprogram(name: "main_graph$async_dispatch_45_matvec_like_50176x32_f32", linkageName: "main_graph$async_dispatch_45_matvec_like_50176x32_f32", scope: !75, file: !75, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!644 = !DILocation(line: 21, column: 8, scope: !643)
!645 = !DILocation(line: 19, column: 8, scope: !643)
!646 = !DILocation(line: 15, column: 8, scope: !643)
!647 = !DILocation(line: 16, column: 8, scope: !643)
!648 = !DILocation(line: 42, column: 8, scope: !643)
!649 = !DILocation(line: 23, column: 10, scope: !643)
!650 = !DILocation(line: 39, column: 10, scope: !643)
!651 = !DILocation(line: 24, column: 10, scope: !643)
!652 = !DILocation(line: 25, column: 10, scope: !643)
!653 = !DILocation(line: 26, column: 10, scope: !643)
!654 = !DILocation(line: 28, column: 10, scope: !643)
!655 = !DILocation(line: 29, column: 10, scope: !643)
!656 = !DILocation(line: 30, column: 10, scope: !643)
!657 = !DILocation(line: 31, column: 10, scope: !643)
!658 = !DILocation(line: 34, column: 10, scope: !643)
!659 = !DILocation(line: 35, column: 10, scope: !643)
!660 = !DILocation(line: 36, column: 10, scope: !643)
!661 = !DILocation(line: 37, column: 10, scope: !643)
!662 = !DILocation(line: 45, column: 10, scope: !643)
!663 = !DILocation(line: 48, column: 8, scope: !643)
!664 = !DILocation(line: 50, column: 10, scope: !643)
!665 = !DILocation(line: 51, column: 10, scope: !643)
!666 = !DILocation(line: 52, column: 10, scope: !643)
!667 = !DILocation(line: 56, column: 8, scope: !643)
!668 = !{!669, !669, i64 0}
!669 = !{!"short", !670, i64 0}
!670 = !{!"omnipotent char", !671, i64 0}
!671 = !{!"Simple C/C++ TBAA"}
!672 = !{!673, !673, i64 0}
!673 = !{!"float", !670, i64 0}
