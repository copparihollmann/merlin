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

@__constant_32xf32 = internal unnamed_addr constant [32 x float] [float 0xBFC32CA860000000, float 0xBFC353BC00000000, float 0x3FB3916980000000, float 0xBFC135FDC0000000, float 0xBFBE48F860000000, float 0x3FADF3AF00000000, float 0x3FC0624A60000000, float 0xBFA30202C0000000, float 0xBFB5F69AC0000000, float 0x3FAC527B60000000, float 0xBFB0FF1720000000, float 0xBFB22716E0000000, float 0x3FBE75FE00000000, float 0x3FC11D0700000000, float 0xBFB8F69600000000, float 0x3FC0DE65A0000000, float 0xBFB4A68320000000, float 0x3FC5AD2B20000000, float 0x3FB27EC620000000, float 0xBFC212E980000000, float 0x3FB5DA9380000000, float 0xBF64E788C0000000, float 0x3F9E4DE940000000, float 0x3F9D050240000000, float 0xBFAFADC460000000, float 0x3F687F08A0000000, float 0x3FC073DCC0000000, float 0xBFB22F9F60000000, float 0xBFC171E120000000, float 0xBFBD165600000000, float 0x3FACA0CD40000000, float 0xBFB3DC9CC0000000], align 64
@0 = internal constant [17 x i8] c"fastdepth_linked\00", align 1
@iree_hal_executable_library_query_v0_header = internal constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = internal constant [38 x ptr] [ptr @"main_graph$async_dispatch_0_slow_memcpy", ptr @"main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32", ptr @"main_graph$async_dispatch_2_conv_112x112x32x3x3_f32", ptr @"main_graph$async_dispatch_3_matmul_like_64x12544x32_f32", ptr @"main_graph$async_dispatch_4_slow_memcpy", ptr @"main_graph$async_dispatch_5_conv_56x56x64x3x3_f32", ptr @"main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32", ptr @"main_graph$async_dispatch_7_conv_56x56x128x3x3_f32", ptr @"main_graph$async_dispatch_8_matmul_like_128x3136x128_f32", ptr @"main_graph$async_dispatch_9_slow_memcpy", ptr @"main_graph$async_dispatch_10_conv_28x28x128x3x3_f32", ptr @"main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32", ptr @"main_graph$async_dispatch_12_conv_28x28x256x3x3_f32", ptr @"main_graph$async_dispatch_13_matmul_like_256x784x256_f32", ptr @"main_graph$async_dispatch_14_slow_memcpy", ptr @"main_graph$async_dispatch_15_conv_14x14x256x3x3_f32", ptr @"main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32", ptr @"main_graph$async_dispatch_17_conv_14x14x512x3x3_f32", ptr @"main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32", ptr @"main_graph$async_dispatch_27_conv_7x7x512x3x3_f32", ptr @"main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32", ptr @"main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32", ptr @"main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32", ptr @"main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32", ptr @"main_graph$async_dispatch_32_matmul_like_512x49x1024_f32", ptr @"main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32", ptr @"main_graph$async_dispatch_34_conv_14x14x512x5x5_f32", ptr @"main_graph$async_dispatch_35_matmul_like_256x196x512_f32", ptr @"main_graph$async_dispatch_36_elementwise_256x28x28_f32", ptr @"main_graph$async_dispatch_37_conv_28x28x256x5x5_f32", ptr @"main_graph$async_dispatch_38_matmul_like_128x784x256_f32", ptr @"main_graph$async_dispatch_39_elementwise_128x56x56_f32", ptr @"main_graph$async_dispatch_40_conv_56x56x128x5x5_f32", ptr @"main_graph$async_dispatch_41_matmul_like_64x3136x128_f32", ptr @"main_graph$async_dispatch_42_elementwise_64x112x112_f32", ptr @"main_graph$async_dispatch_43_conv_112x112x64x5x5_f32", ptr @"main_graph$async_dispatch_44_matmul_like_32x12544x64_f32", ptr @"main_graph$async_dispatch_45_matvec_like_50176x32_f32"]
@iree_hal_executable_library_query_v0_attrs = internal constant [38 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = internal constant [40 x i8] c"main_graph$async_dispatch_0_slow_memcpy\00", align 1
@2 = internal constant [54 x i8] c"main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32\00", align 1
@3 = internal constant [52 x i8] c"main_graph$async_dispatch_2_conv_112x112x32x3x3_f32\00", align 1
@4 = internal constant [56 x i8] c"main_graph$async_dispatch_3_matmul_like_64x12544x32_f32\00", align 1
@5 = internal constant [40 x i8] c"main_graph$async_dispatch_4_slow_memcpy\00", align 1
@6 = internal constant [50 x i8] c"main_graph$async_dispatch_5_conv_56x56x64x3x3_f32\00", align 1
@7 = internal constant [57 x i8] c"main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32\00", align 1
@8 = internal constant [51 x i8] c"main_graph$async_dispatch_7_conv_56x56x128x3x3_f32\00", align 1
@9 = internal constant [57 x i8] c"main_graph$async_dispatch_8_matmul_like_128x3136x128_f32\00", align 1
@10 = internal constant [40 x i8] c"main_graph$async_dispatch_9_slow_memcpy\00", align 1
@11 = internal constant [52 x i8] c"main_graph$async_dispatch_10_conv_28x28x128x3x3_f32\00", align 1
@12 = internal constant [59 x i8] c"main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32\00", align 1
@13 = internal constant [52 x i8] c"main_graph$async_dispatch_12_conv_28x28x256x3x3_f32\00", align 1
@14 = internal constant [57 x i8] c"main_graph$async_dispatch_13_matmul_like_256x784x256_f32\00", align 1
@15 = internal constant [41 x i8] c"main_graph$async_dispatch_14_slow_memcpy\00", align 1
@16 = internal constant [52 x i8] c"main_graph$async_dispatch_15_conv_14x14x256x3x3_f32\00", align 1
@17 = internal constant [59 x i8] c"main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32\00", align 1
@18 = internal constant [52 x i8] c"main_graph$async_dispatch_17_conv_14x14x512x3x3_f32\00", align 1
@19 = internal constant [59 x i8] c"main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32\00", align 1
@20 = internal constant [50 x i8] c"main_graph$async_dispatch_27_conv_7x7x512x3x3_f32\00", align 1
@21 = internal constant [58 x i8] c"main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32\00", align 1
@22 = internal constant [51 x i8] c"main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32\00", align 1
@23 = internal constant [59 x i8] c"main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32\00", align 1
@24 = internal constant [51 x i8] c"main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32\00", align 1
@25 = internal constant [57 x i8] c"main_graph$async_dispatch_32_matmul_like_512x49x1024_f32\00", align 1
@26 = internal constant [65 x i8] c"main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32\00", align 1
@27 = internal constant [52 x i8] c"main_graph$async_dispatch_34_conv_14x14x512x5x5_f32\00", align 1
@28 = internal constant [57 x i8] c"main_graph$async_dispatch_35_matmul_like_256x196x512_f32\00", align 1
@29 = internal constant [55 x i8] c"main_graph$async_dispatch_36_elementwise_256x28x28_f32\00", align 1
@30 = internal constant [52 x i8] c"main_graph$async_dispatch_37_conv_28x28x256x5x5_f32\00", align 1
@31 = internal constant [57 x i8] c"main_graph$async_dispatch_38_matmul_like_128x784x256_f32\00", align 1
@32 = internal constant [55 x i8] c"main_graph$async_dispatch_39_elementwise_128x56x56_f32\00", align 1
@33 = internal constant [52 x i8] c"main_graph$async_dispatch_40_conv_56x56x128x5x5_f32\00", align 1
@34 = internal constant [57 x i8] c"main_graph$async_dispatch_41_matmul_like_64x3136x128_f32\00", align 1
@35 = internal constant [56 x i8] c"main_graph$async_dispatch_42_elementwise_64x112x112_f32\00", align 1
@36 = internal constant [53 x i8] c"main_graph$async_dispatch_43_conv_112x112x64x5x5_f32\00", align 1
@37 = internal constant [57 x i8] c"main_graph$async_dispatch_44_matmul_like_32x12544x64_f32\00", align 1
@38 = internal constant [54 x i8] c"main_graph$async_dispatch_45_matvec_like_50176x32_f32\00", align 1
@iree_hal_executable_library_query_v0_names = internal constant [38 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4, ptr @5, ptr @6, ptr @7, ptr @8, ptr @9, ptr @10, ptr @11, ptr @12, ptr @13, ptr @14, ptr @15, ptr @16, ptr @17, ptr @18, ptr @19, ptr @20, ptr @21, ptr @22, ptr @23, ptr @24, ptr @25, ptr @26, ptr @27, ptr @28, ptr @29, ptr @30, ptr @31, ptr @32, ptr @33, ptr @34, ptr @35, ptr @36, ptr @37, ptr @38]
@39 = internal constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_0.mlir\00", align 1
@40 = internal constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_1.mlir\00", align 1
@41 = internal constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_2.mlir\00", align 1
@42 = internal constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_3.mlir\00", align 1
@43 = internal constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_4.mlir\00", align 1
@44 = internal constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_5.mlir\00", align 1
@45 = internal constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_6.mlir\00", align 1
@46 = internal constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_7.mlir\00", align 1
@47 = internal constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_8.mlir\00", align 1
@48 = internal constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_9.mlir\00", align 1
@49 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_10.mlir\00", align 1
@50 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_11.mlir\00", align 1
@51 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_12.mlir\00", align 1
@52 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_13.mlir\00", align 1
@53 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_14.mlir\00", align 1
@54 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_15.mlir\00", align 1
@55 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_16.mlir\00", align 1
@56 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_17.mlir\00", align 1
@57 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_18.mlir\00", align 1
@58 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_27.mlir\00", align 1
@59 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_28.mlir\00", align 1
@60 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_29.mlir\00", align 1
@61 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_30.mlir\00", align 1
@62 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_31.mlir\00", align 1
@63 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_32.mlir\00", align 1
@64 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_33.mlir\00", align 1
@65 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_34.mlir\00", align 1
@66 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_35.mlir\00", align 1
@67 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_36.mlir\00", align 1
@68 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_37.mlir\00", align 1
@69 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_38.mlir\00", align 1
@70 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_39.mlir\00", align 1
@71 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_40.mlir\00", align 1
@72 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_41.mlir\00", align 1
@73 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_42.mlir\00", align 1
@74 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_43.mlir\00", align 1
@75 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_44.mlir\00", align 1
@76 = internal constant [122 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_45.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = internal constant [38 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @39 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @40 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @41 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @42 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @43 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @44 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @45 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @46 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @47 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @48 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @49 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @50 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @51 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @52 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @53 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @54 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @55 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @56 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @57 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @58 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @59 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @60 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @61 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @62 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @63 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @64 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @65 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @66 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @67 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @68 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @69 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @70 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @71 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @72 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @73 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @74 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @75 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 121, ptr @76 }]
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = internal constant [38 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_source_locations" }]
@iree_hal_executable_library_query_v0 = internal constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 38, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_0_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !79 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !155
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !155
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !155
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !156
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !157
  %6 = load ptr, ptr %5, align 8, !dbg !157
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !158
  %7 = load i32, ptr %2, align 16, !dbg !159
  %8 = zext i32 %7 to i64, !dbg !159
  %9 = lshr i64 %8, 2, !dbg !159
  %10 = and i64 %8, 3, !dbg !159
  %11 = mul nuw nsw i64 %9, 56, !dbg !159
  %12 = mul nuw nsw i64 %10, 56, !dbg !159
  br label %.preheader26, !dbg !159

.preheader26:                                     ; preds = %3, %31
  %13 = phi i64 [ 0, %3 ], [ %32, %31 ]
  %.idx = mul nuw nsw i64 %13, 200704
  %14 = getelementptr i8, ptr %4, i64 %.idx
  %.idx24 = mul nuw nsw i64 %13, 204304
  %15 = getelementptr i8, ptr %6, i64 %.idx24
  br label %.preheader, !dbg !159

.preheader:                                       ; preds = %.preheader26, %29
  %16 = phi i64 [ 0, %.preheader26 ], [ %30, %29 ]
  %17 = add nuw nsw i64 %16, %11
  %.idx23 = mul nuw nsw i64 %17, 896
  %18 = getelementptr i8, ptr %14, i64 %.idx23
  %.idx25 = mul nuw nsw i64 %17, 904
  %19 = getelementptr i8, ptr %15, i64 %.idx25
  %20 = getelementptr i8, ptr %19, i64 908
  br label %21, !dbg !159

21:                                               ; preds = %.preheader, %21
  %22 = phi i64 [ 0, %.preheader ], [ %27, %21 ]
  %23 = add nuw nsw i64 %22, %12, !dbg !159
  %24 = getelementptr float, ptr %18, i64 %23, !dbg !159
  %25 = load <8 x float>, ptr %24, align 32, !dbg !159
  %26 = getelementptr float, ptr %20, i64 %23, !dbg !159
  store <8 x float> %25, ptr %26, align 4, !dbg !159
  %27 = add nuw nsw i64 %22, 8, !dbg !159
  %28 = icmp samesign ult i64 %22, 48, !dbg !159
  br i1 %28, label %21, label %29, !dbg !159

29:                                               ; preds = %21
  %30 = add nuw nsw i64 %16, 1, !dbg !159
  %exitcond.not = icmp eq i64 %30, 56, !dbg !159
  br i1 %exitcond.not, label %31, label %.preheader, !dbg !159

31:                                               ; preds = %29
  %32 = add nuw nsw i64 %13, 1, !dbg !159
  %exitcond27.not = icmp eq i64 %32, 3, !dbg !159
  br i1 %exitcond27.not, label %33, label %.preheader26, !dbg !159

33:                                               ; preds = %31
  ret i32 0, !dbg !160
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !161 {
  %4 = alloca [8 x float], align 64, !dbg !162
  %.elt21 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !163
  %.unpack22 = load ptr, ptr %.elt21, align 16, !dbg !163
  %5 = load ptr, ptr %.unpack22, align 8, !dbg !163
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !163
  %6 = getelementptr i8, ptr %.unpack22, i64 8, !dbg !164
  %7 = load ptr, ptr %6, align 8, !dbg !164
  %8 = getelementptr i8, ptr %7, i64 15728768, !dbg !164
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !164
  %9 = getelementptr i8, ptr %.unpack22, i64 16, !dbg !165
  %10 = load ptr, ptr %9, align 8, !dbg !165
  %11 = getelementptr i8, ptr %10, i64 612928, !dbg !165
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !165
  %12 = load i32, ptr %2, align 16, !dbg !166
  %13 = zext i32 %12 to i64, !dbg !166
  %14 = lshr i64 %13, 2, !dbg !166
  %15 = and i64 %13, 3, !dbg !166
  %16 = mul nuw nsw i64 %14, 28, !dbg !166
  %17 = mul nuw nsw i64 %14, 56
  %.idx31 = mul nuw nsw i64 %15, 224
  %invariant.gep = getelementptr i8, ptr %5, i64 %.idx31
  %.idx27 = mul nuw nsw i64 %15, 112
  br label %.preheader37, !dbg !166

.preheader37:                                     ; preds = %3, %70
  %18 = phi i64 [ 0, %3 ], [ %71, %70 ]
  %.idx32 = mul nuw nsw i64 %18, 108
  %19 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx32
  %.idx = mul nuw nsw i64 %18, 51984
  %20 = getelementptr i8, ptr %11, i64 %.idx
  br label %.preheader36, !dbg !166

.preheader36:                                     ; preds = %.preheader37, %68
  %21 = phi i64 [ 0, %.preheader37 ], [ %69, %68 ]
  %22 = shl nuw nsw i64 %21, 1
  %23 = add nuw nsw i64 %22, %17
  %24 = add nuw nsw i64 %21, %16
  %.idx26 = mul nuw nsw i64 %24, 456
  %25 = getelementptr i8, ptr %20, i64 %.idx26
  %26 = getelementptr i8, ptr %25, i64 460
  %27 = getelementptr i8, ptr %26, i64 %.idx27
  br label %28, !dbg !166

28:                                               ; preds = %.preheader36, %61
  %indvars.iv = phi i64 [ 28, %.preheader36 ], [ %indvars.iv.next, %61 ]
  %29 = phi i64 [ 0, %.preheader36 ], [ %66, %61 ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !166
  %30 = sub nuw nsw i64 28, %29, !dbg !166
  %31 = tail call i64 @llvm.umin.i64(i64 %30, i64 8), !dbg !166
  %32 = trunc nuw nsw i64 %31 to i32, !dbg !167
  %33 = insertelement <8 x i32> poison, i32 %32, i64 0, !dbg !167
  %34 = shufflevector <8 x i32> %33, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !167
  %35 = icmp samesign ugt <8 x i32> %34, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !167
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %4, i32 64, <8 x i1> %35), !dbg !167
  br label %.preheader35, !dbg !166

.preheader35:                                     ; preds = %28, %59
  %36 = phi i64 [ 0, %28 ], [ %60, %59 ]
  %.idx28 = mul nuw nsw i64 %36, 204304
  %gep40 = getelementptr i8, ptr %invariant.gep, i64 %.idx28, !dbg !166
  %.idx33 = mul nuw nsw i64 %36, 36
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 %.idx33
  br label %38, !dbg !166

38:                                               ; preds = %.preheader35, %57
  %39 = phi i64 [ 0, %.preheader35 ], [ %58, %57 ]
  %40 = add nuw nsw i64 %23, %39, !dbg !166
  %.idx29 = mul nuw nsw i64 %40, 904
  %gep39 = getelementptr i8, ptr %gep40, i64 %.idx29, !dbg !166
  %.idx34 = mul nuw nsw i64 %39, 12
  %41 = getelementptr inbounds nuw i8, ptr %37, i64 %.idx34
  br label %.preheader, !dbg !166

.preheader:                                       ; preds = %38, %55
  %42 = phi i64 [ 0, %38 ], [ %56, %55 ]
  %43 = add nuw nsw i64 %42, %29
  %.idx30 = shl i64 %43, 3
  %gep = getelementptr i8, ptr %gep39, i64 %.idx30
  %44 = getelementptr inbounds nuw float, ptr %4, i64 %42
  %.promoted = load float, ptr %44, align 4
  br label %45, !dbg !166

45:                                               ; preds = %.preheader, %45
  %46 = phi i64 [ 0, %.preheader ], [ %54, %45 ]
  %47 = phi float [ %.promoted, %.preheader ], [ %53, %45 ]
  %48 = getelementptr float, ptr %gep, i64 %46, !dbg !166
  %49 = load float, ptr %48, align 4, !dbg !166
  %50 = getelementptr inbounds nuw float, ptr %41, i64 %46, !dbg !166
  %51 = load float, ptr %50, align 4, !dbg !166
  %52 = fmul contract float %49, %51, !dbg !168
  %53 = fadd contract float %47, %52, !dbg !169
  %54 = add nuw nsw i64 %46, 1, !dbg !166
  %exitcond.not = icmp eq i64 %54, 3, !dbg !166
  br i1 %exitcond.not, label %55, label %45, !dbg !166

55:                                               ; preds = %45
  store float %53, ptr %44, align 4, !dbg !166
  %56 = add nuw nsw i64 %42, 1, !dbg !166
  %exitcond41.not = icmp eq i64 %56, %umin, !dbg !166
  br i1 %exitcond41.not, label %57, label %.preheader, !dbg !166

57:                                               ; preds = %55
  %58 = add nuw nsw i64 %39, 1, !dbg !166
  %exitcond42.not = icmp eq i64 %58, 3, !dbg !166
  br i1 %exitcond42.not, label %59, label %38, !dbg !166

59:                                               ; preds = %57
  %60 = add nuw nsw i64 %36, 1, !dbg !166
  %exitcond43.not = icmp eq i64 %60, 3, !dbg !166
  br i1 %exitcond43.not, label %61, label %.preheader35, !dbg !166

61:                                               ; preds = %59
  %unmaskedload = load <8 x float>, ptr %4, align 64, !dbg !170
  %62 = fadd contract <8 x float> %unmaskedload, zeroinitializer, !dbg !171
  %.inv = fcmp oge <8 x float> %unmaskedload, zeroinitializer, !dbg !172
  %63 = select <8 x i1> %.inv, <8 x float> %62, <8 x float> zeroinitializer, !dbg !172
  %.inv25 = fcmp ole <8 x float> %63, splat (float 6.000000e+00), !dbg !173
  %64 = select <8 x i1> %.inv25, <8 x float> %63, <8 x float> splat (float 6.000000e+00), !dbg !173
  %65 = getelementptr float, ptr %27, i64 %29, !dbg !173
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %64, ptr %65, i32 4, <8 x i1> %35), !dbg !173
  %66 = add nuw nsw i64 %29, 8, !dbg !166
  %67 = icmp samesign ult i64 %29, 20, !dbg !166
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !166
  br i1 %67, label %28, label %68, !dbg !166

68:                                               ; preds = %61
  %69 = add nuw nsw i64 %21, 1, !dbg !166
  %exitcond44.not = icmp eq i64 %69, 28, !dbg !166
  br i1 %exitcond44.not, label %70, label %.preheader36, !dbg !166

70:                                               ; preds = %68
  %71 = add nuw nsw i64 %18, 1, !dbg !166
  %exitcond45.not = icmp eq i64 %71, 32, !dbg !166
  br i1 %exitcond45.not, label %72, label %.preheader37, !dbg !166

72:                                               ; preds = %70
  ret i32 0, !dbg !174
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_2_conv_112x112x32x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !175 {
  %4 = alloca [8 x float], align 64, !dbg !176
  %5 = alloca [8 x float], align 64, !dbg !176
  %6 = alloca [8 x float], align 64, !dbg !177
  %.elt25 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !178
  %.unpack26 = load ptr, ptr %.elt25, align 16, !dbg !178
  %7 = load ptr, ptr %.unpack26, align 8, !dbg !178
  %8 = getelementptr i8, ptr %7, i64 612928, !dbg !178
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !178
  %9 = getelementptr i8, ptr %.unpack26, i64 8, !dbg !179
  %10 = load ptr, ptr %9, align 8, !dbg !179
  %11 = getelementptr i8, ptr %10, i64 15727616, !dbg !179
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !179
  %12 = getelementptr i8, ptr %.unpack26, i64 16, !dbg !180
  %13 = load ptr, ptr %12, align 8, !dbg !180
  %14 = getelementptr i8, ptr %13, i64 2276416, !dbg !180
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !180
  %15 = load i32, ptr %2, align 16, !dbg !176
  %16 = zext i32 %15 to i64, !dbg !176
  %17 = lshr i64 %16, 2, !dbg !176
  %18 = and i64 %16, 3, !dbg !176
  %19 = mul nuw nsw i64 %17, 28, !dbg !176
  %20 = mul nuw nsw i64 %18, 28, !dbg !176
  br label %.preheader40, !dbg !176

.preheader40:                                     ; preds = %3, %86
  %21 = phi i64 [ 0, %3 ], [ %87, %86 ]
  %22 = add nuw nsw i64 %21, %19
  %.idx30 = mul nuw nsw i64 %22, 448
  %invariant.gep = getelementptr inbounds nuw i8, ptr %14, i64 %.idx30
  br label %23, !dbg !176

23:                                               ; preds = %.preheader40, %83
  %indvars.iv = phi i64 [ 28, %.preheader40 ], [ %indvars.iv.next, %83 ]
  %24 = phi i64 [ 0, %.preheader40 ], [ %84, %83 ]
  %umin54 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !176
  %25 = sub nuw nsw i64 28, %24, !dbg !176
  %26 = tail call i64 @llvm.umin.i64(i64 %25, i64 8), !dbg !176
  %27 = trunc nuw nsw i64 %26 to i32, !dbg !181
  %28 = insertelement <8 x i32> poison, i32 %27, i64 0, !dbg !181
  %29 = shufflevector <8 x i32> %28, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !181
  %30 = icmp samesign ugt <8 x i32> %29, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !181
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %6, i32 64, <8 x i1> %30), !dbg !181
  %31 = add nuw nsw i64 %24, %20, !dbg !176
  %invariant.gep41 = getelementptr float, ptr %8, i64 %31, !dbg !176
  %invariant.gep44 = getelementptr inbounds nuw float, ptr %invariant.gep, i64 %31, !dbg !176
  br label %.preheader39, !dbg !176

.preheader39:                                     ; preds = %23, %81
  %32 = phi i64 [ 0, %23 ], [ %82, %81 ]
  br label %34, !dbg !176

.preheader38:                                     ; preds = %34
  %.idx31 = mul nuw nsw i64 %32, 51984
  %gep42 = getelementptr i8, ptr %invariant.gep41, i64 %.idx31, !dbg !176
  %.idx33 = mul nuw nsw i64 %32, 36
  %33 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx33
  br label %40, !dbg !176

34:                                               ; preds = %.preheader39, %34
  %35 = phi i64 [ 0, %.preheader39 ], [ %39, %34 ]
  %36 = getelementptr inbounds nuw float, ptr %6, i64 %35, !dbg !176
  %37 = load float, ptr %36, align 4, !dbg !176
  %38 = getelementptr inbounds nuw float, ptr %5, i64 %35, !dbg !176
  store float %37, ptr %38, align 4, !dbg !176
  %39 = add nuw nsw i64 %35, 1, !dbg !176
  %exitcond.not = icmp eq i64 %39, %umin54, !dbg !176
  br i1 %exitcond.not, label %.preheader38, label %34, !dbg !176

40:                                               ; preds = %.preheader38, %59
  %41 = phi i64 [ 0, %.preheader38 ], [ %60, %59 ]
  %42 = add nuw nsw i64 %22, %41, !dbg !176
  %.idx32 = mul nuw nsw i64 %42, 456
  %gep = getelementptr i8, ptr %gep42, i64 %.idx32
  %.idx34 = mul nuw nsw i64 %41, 12
  %43 = getelementptr inbounds nuw i8, ptr %33, i64 %.idx34
  br label %.preheader, !dbg !176

.preheader:                                       ; preds = %40, %57
  %44 = phi i64 [ 0, %40 ], [ %58, %57 ]
  %45 = getelementptr float, ptr %gep, i64 %44
  %46 = getelementptr inbounds nuw float, ptr %5, i64 %44
  %.promoted = load float, ptr %46, align 4
  br label %47, !dbg !176

47:                                               ; preds = %.preheader, %47
  %48 = phi i64 [ 0, %.preheader ], [ %56, %47 ]
  %49 = phi float [ %.promoted, %.preheader ], [ %55, %47 ]
  %50 = getelementptr float, ptr %45, i64 %48, !dbg !176
  %51 = load float, ptr %50, align 4, !dbg !176
  %52 = getelementptr inbounds nuw float, ptr %43, i64 %48, !dbg !176
  %53 = load float, ptr %52, align 4, !dbg !176
  %54 = fmul contract float %51, %53, !dbg !182
  %55 = fadd contract float %49, %54, !dbg !183
  %56 = add nuw nsw i64 %48, 1, !dbg !176
  %exitcond46.not = icmp eq i64 %56, 3, !dbg !176
  br i1 %exitcond46.not, label %57, label %47, !dbg !176

57:                                               ; preds = %47
  store float %55, ptr %46, align 4, !dbg !176
  %58 = add nuw nsw i64 %44, 1, !dbg !176
  %exitcond48.not = icmp eq i64 %58, %umin54, !dbg !176
  br i1 %exitcond48.not, label %59, label %.preheader, !dbg !176

59:                                               ; preds = %57
  %60 = add nuw nsw i64 %41, 1, !dbg !176
  %exitcond49.not = icmp eq i64 %60, 3, !dbg !176
  br i1 %exitcond49.not, label %.preheader37, label %40, !dbg !176

.preheader37:                                     ; preds = %59, %.preheader37
  %61 = phi i64 [ %65, %.preheader37 ], [ 0, %59 ]
  %62 = getelementptr inbounds nuw float, ptr %6, i64 %61, !dbg !176
  %63 = load float, ptr %62, align 4, !dbg !176
  %64 = getelementptr inbounds nuw float, ptr %4, i64 %61, !dbg !176
  store float %63, ptr %64, align 4, !dbg !176
  %65 = add nuw nsw i64 %61, 1, !dbg !176
  %exitcond51.not = icmp eq i64 %65, %umin54, !dbg !176
  br i1 %exitcond51.not, label %.preheader36, label %.preheader37, !dbg !176

.preheader35:                                     ; preds = %.preheader36
  %.idx = mul nuw nsw i64 %32, 50176
  %gep45 = getelementptr inbounds nuw i8, ptr %invariant.gep44, i64 %.idx
  br label %71, !dbg !184

.preheader36:                                     ; preds = %.preheader37, %.preheader36
  %66 = phi i64 [ %70, %.preheader36 ], [ 0, %.preheader37 ]
  %67 = getelementptr inbounds nuw float, ptr %5, i64 %66, !dbg !176
  %68 = load float, ptr %67, align 4, !dbg !176
  %69 = getelementptr inbounds nuw float, ptr %4, i64 %66, !dbg !176
  store float %68, ptr %69, align 4, !dbg !176
  %70 = add nuw nsw i64 %66, 1, !dbg !176
  %exitcond53.not = icmp eq i64 %70, %umin54, !dbg !176
  br i1 %exitcond53.not, label %.preheader35, label %.preheader36, !dbg !176

71:                                               ; preds = %.preheader35, %71
  %72 = phi i64 [ 0, %.preheader35 ], [ %80, %71 ]
  %73 = getelementptr float, ptr %4, i64 %72, !dbg !184
  %74 = load <1 x float>, ptr %73, align 4, !dbg !184
  %75 = fadd contract <1 x float> %74, zeroinitializer, !dbg !185
  %.inv = fcmp oge <1 x float> %74, zeroinitializer, !dbg !186
  %76 = select <1 x i1> %.inv, <1 x float> %75, <1 x float> zeroinitializer, !dbg !186
  %.inv29 = fcmp ole <1 x float> %76, splat (float 6.000000e+00), !dbg !187
  %77 = select <1 x i1> %.inv29, <1 x float> %76, <1 x float> splat (float 6.000000e+00), !dbg !187
  %78 = extractelement <1 x float> %77, i64 0, !dbg !184
  %79 = getelementptr inbounds nuw float, ptr %gep45, i64 %72, !dbg !184
  store float %78, ptr %79, align 4, !dbg !184
  %80 = add nuw nsw i64 %72, 1, !dbg !184
  %exitcond55.not = icmp eq i64 %80, %umin54, !dbg !184
  br i1 %exitcond55.not, label %81, label %71, !dbg !184

81:                                               ; preds = %71
  %82 = add nuw nsw i64 %32, 1, !dbg !176
  %exitcond56.not = icmp eq i64 %82, 32, !dbg !176
  br i1 %exitcond56.not, label %83, label %.preheader39, !dbg !176

83:                                               ; preds = %81
  %84 = add nuw nsw i64 %24, 8, !dbg !176
  %85 = icmp samesign ult i64 %24, 20, !dbg !176
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !176
  br i1 %85, label %23, label %86, !dbg !176

86:                                               ; preds = %83
  %87 = add nuw nsw i64 %21, 1, !dbg !176
  %exitcond57.not = icmp eq i64 %87, 28, !dbg !176
  br i1 %exitcond57.not, label %88, label %.preheader40, !dbg !176

88:                                               ; preds = %86
  ret i32 0, !dbg !188
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_3_matmul_like_64x12544x32_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !189 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !190
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !190
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !190
  %5 = getelementptr i8, ptr %4, i64 2276416, !dbg !190
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !190
  %6 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !191
  %7 = load ptr, ptr %6, align 8, !dbg !191
  %8 = getelementptr i8, ptr %7, i64 15343616, !dbg !191
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !191
  %9 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !192
  %10 = load ptr, ptr %9, align 8, !dbg !192
  %11 = getelementptr i8, ptr %10, i64 3882048, !dbg !192
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !192
  %12 = load i32, ptr %2, align 16, !dbg !193
  %13 = zext i32 %12 to i64, !dbg !193
  %14 = shl nuw nsw i64 %13, 6, !dbg !193
  br label %.preheader, !dbg !193

.preheader:                                       ; preds = %3, %80
  %15 = phi i64 [ 0, %3 ], [ %81, %80 ]
  %.idx33 = shl nuw nsw i64 %15, 7
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx33
  %.idx = mul nuw nsw i64 %15, 50176
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx
  br label %18, !dbg !193

18:                                               ; preds = %.preheader, %73
  %19 = phi i64 [ 0, %.preheader ], [ %79, %73 ]
  %20 = add nuw nsw i64 %19, %14, !dbg !193
  %invariant.gep = getelementptr float, ptr %5, i64 %20, !dbg !193
  br label %21, !dbg !193

21:                                               ; preds = %18, %21
  %22 = phi <1 x float> [ zeroinitializer, %18 ], [ %70, %21 ]
  %23 = phi i64 [ 0, %18 ], [ %71, %21 ]
  %.idx25 = mul nuw nsw i64 %23, 50176, !dbg !193
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx25, !dbg !193
  %24 = load <1 x float>, ptr %gep, align 4, !dbg !193
  %25 = or disjoint i64 %23, 1, !dbg !193
  %.idx26 = mul nuw nsw i64 %25, 50176, !dbg !193
  %gep35 = getelementptr i8, ptr %invariant.gep, i64 %.idx26, !dbg !193
  %26 = load <1 x float>, ptr %gep35, align 4, !dbg !193
  %27 = or disjoint i64 %23, 2, !dbg !193
  %.idx27 = mul nuw nsw i64 %27, 50176, !dbg !193
  %gep37 = getelementptr i8, ptr %invariant.gep, i64 %.idx27, !dbg !193
  %28 = load <1 x float>, ptr %gep37, align 4, !dbg !193
  %29 = or disjoint i64 %23, 3, !dbg !193
  %.idx28 = mul nuw nsw i64 %29, 50176, !dbg !193
  %gep39 = getelementptr i8, ptr %invariant.gep, i64 %.idx28, !dbg !193
  %30 = load <1 x float>, ptr %gep39, align 4, !dbg !193
  %31 = or disjoint i64 %23, 4, !dbg !193
  %.idx29 = mul nuw nsw i64 %31, 50176, !dbg !193
  %gep41 = getelementptr i8, ptr %invariant.gep, i64 %.idx29, !dbg !193
  %32 = load <1 x float>, ptr %gep41, align 4, !dbg !193
  %33 = or disjoint i64 %23, 5, !dbg !193
  %.idx30 = mul nuw nsw i64 %33, 50176, !dbg !193
  %gep43 = getelementptr i8, ptr %invariant.gep, i64 %.idx30, !dbg !193
  %34 = load <1 x float>, ptr %gep43, align 4, !dbg !193
  %35 = or disjoint i64 %23, 6, !dbg !193
  %.idx31 = mul nuw nsw i64 %35, 50176, !dbg !193
  %gep45 = getelementptr i8, ptr %invariant.gep, i64 %.idx31, !dbg !193
  %36 = load <1 x float>, ptr %gep45, align 4, !dbg !193
  %37 = or disjoint i64 %23, 7, !dbg !193
  %.idx32 = mul nuw nsw i64 %37, 50176, !dbg !193
  %gep47 = getelementptr i8, ptr %invariant.gep, i64 %.idx32, !dbg !193
  %38 = load <1 x float>, ptr %gep47, align 4, !dbg !193
  %39 = getelementptr inbounds nuw float, ptr %16, i64 %23, !dbg !194
  %40 = load float, ptr %39, align 32, !dbg !194
  %41 = insertelement <1 x float> poison, float %40, i64 0, !dbg !194
  %42 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %24, <1 x float> %41, <1 x float> %22), !dbg !194
  %43 = getelementptr inbounds nuw float, ptr %16, i64 %25, !dbg !194
  %44 = load float, ptr %43, align 4, !dbg !194
  %45 = insertelement <1 x float> poison, float %44, i64 0, !dbg !194
  %46 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %26, <1 x float> %45, <1 x float> %42), !dbg !194
  %47 = getelementptr inbounds nuw float, ptr %16, i64 %27, !dbg !194
  %48 = load float, ptr %47, align 8, !dbg !194
  %49 = insertelement <1 x float> poison, float %48, i64 0, !dbg !194
  %50 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %28, <1 x float> %49, <1 x float> %46), !dbg !194
  %51 = getelementptr inbounds nuw float, ptr %16, i64 %29, !dbg !194
  %52 = load float, ptr %51, align 4, !dbg !194
  %53 = insertelement <1 x float> poison, float %52, i64 0, !dbg !194
  %54 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %30, <1 x float> %53, <1 x float> %50), !dbg !194
  %55 = getelementptr inbounds nuw float, ptr %16, i64 %31, !dbg !194
  %56 = load float, ptr %55, align 16, !dbg !194
  %57 = insertelement <1 x float> poison, float %56, i64 0, !dbg !194
  %58 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %32, <1 x float> %57, <1 x float> %54), !dbg !194
  %59 = getelementptr inbounds nuw float, ptr %16, i64 %33, !dbg !194
  %60 = load float, ptr %59, align 4, !dbg !194
  %61 = insertelement <1 x float> poison, float %60, i64 0, !dbg !194
  %62 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %34, <1 x float> %61, <1 x float> %58), !dbg !194
  %63 = getelementptr inbounds nuw float, ptr %16, i64 %35, !dbg !194
  %64 = load float, ptr %63, align 8, !dbg !194
  %65 = insertelement <1 x float> poison, float %64, i64 0, !dbg !194
  %66 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %65, <1 x float> %62), !dbg !194
  %67 = getelementptr inbounds nuw float, ptr %16, i64 %37, !dbg !194
  %68 = load float, ptr %67, align 4, !dbg !194
  %69 = insertelement <1 x float> poison, float %68, i64 0, !dbg !194
  %70 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %38, <1 x float> %69, <1 x float> %66), !dbg !194
  %71 = add nuw nsw i64 %23, 8, !dbg !193
  %72 = icmp samesign ult i64 %23, 24, !dbg !193
  br i1 %72, label %21, label %73, !dbg !193

73:                                               ; preds = %21
  %74 = fadd contract <1 x float> %70, zeroinitializer, !dbg !195
  %.inv = fcmp oge <1 x float> %70, zeroinitializer, !dbg !196
  %75 = select <1 x i1> %.inv, <1 x float> %74, <1 x float> zeroinitializer, !dbg !196
  %.inv24 = fcmp ole <1 x float> %75, splat (float 6.000000e+00), !dbg !197
  %76 = select <1 x i1> %.inv24, <1 x float> %75, <1 x float> splat (float 6.000000e+00), !dbg !197
  %77 = extractelement <1 x float> %76, i64 0, !dbg !193
  %78 = getelementptr inbounds nuw float, ptr %17, i64 %20, !dbg !193
  store float %77, ptr %78, align 4, !dbg !193
  %79 = add nuw nsw i64 %19, 1, !dbg !193
  %exitcond.not = icmp eq i64 %79, 64, !dbg !193
  br i1 %exitcond.not, label %80, label %18, !dbg !193

80:                                               ; preds = %73
  %81 = add nuw nsw i64 %15, 1, !dbg !193
  %exitcond48.not = icmp eq i64 %81, 64, !dbg !193
  br i1 %exitcond48.not, label %82, label %.preheader, !dbg !193

82:                                               ; preds = %80
  ret i32 0, !dbg !198
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_4_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !199 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !200
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !200
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !200
  %5 = getelementptr i8, ptr %4, i64 3882048, !dbg !201
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !201
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !202
  %7 = load ptr, ptr %6, align 8, !dbg !202
  %8 = getelementptr i8, ptr %7, i64 7093312, !dbg !203
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !203
  %9 = load i32, ptr %2, align 16, !dbg !204
  %10 = zext i32 %9 to i64, !dbg !204
  %11 = shl nuw nsw i64 %10, 2, !dbg !204
  %12 = and i64 %11, 17179869168, !dbg !204
  %13 = and i64 %10, 2, !dbg !204
  %.not = icmp eq i64 %13, 0, !dbg !204
  %14 = select i1 %.not, i64 0, i64 56, !dbg !204
  %15 = trunc i32 %9 to i1, !dbg !204
  %16 = select i1 %15, i64 56, i64 0, !dbg !204
  br label %.preheader26, !dbg !204

.preheader26:                                     ; preds = %3, %36
  %17 = phi i64 [ 0, %3 ], [ %37, %36 ]
  %18 = add nuw nsw i64 %17, %12
  %.idx = mul nuw nsw i64 %18, 50176
  %19 = getelementptr i8, ptr %5, i64 %.idx
  %.idx24 = mul nuw nsw i64 %18, 51984
  %20 = getelementptr i8, ptr %8, i64 %.idx24
  br label %.preheader, !dbg !204

.preheader:                                       ; preds = %.preheader26, %34
  %21 = phi i64 [ 0, %.preheader26 ], [ %35, %34 ]
  %22 = add nuw nsw i64 %21, %14
  %.idx23 = mul nuw nsw i64 %22, 448
  %23 = getelementptr i8, ptr %19, i64 %.idx23
  %.idx25 = mul nuw nsw i64 %22, 456
  %24 = getelementptr i8, ptr %20, i64 %.idx25
  %25 = getelementptr i8, ptr %24, i64 460
  br label %26, !dbg !204

26:                                               ; preds = %.preheader, %26
  %27 = phi i64 [ 0, %.preheader ], [ %32, %26 ]
  %28 = add nuw nsw i64 %27, %16, !dbg !204
  %29 = getelementptr float, ptr %23, i64 %28, !dbg !204
  %30 = load <8 x float>, ptr %29, align 32, !dbg !204
  %31 = getelementptr float, ptr %25, i64 %28, !dbg !204
  store <8 x float> %30, ptr %31, align 4, !dbg !204
  %32 = add nuw nsw i64 %27, 8, !dbg !204
  %33 = icmp samesign ult i64 %27, 48, !dbg !204
  br i1 %33, label %26, label %34, !dbg !204

34:                                               ; preds = %26
  %35 = add nuw nsw i64 %21, 1, !dbg !204
  %exitcond.not = icmp eq i64 %35, 56, !dbg !204
  br i1 %exitcond.not, label %36, label %.preheader, !dbg !204

36:                                               ; preds = %34
  %37 = add nuw nsw i64 %17, 1, !dbg !204
  %exitcond27.not = icmp eq i64 %37, 16, !dbg !204
  br i1 %exitcond27.not, label %38, label %.preheader26, !dbg !204

38:                                               ; preds = %36
  ret i32 0, !dbg !205
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_5_conv_56x56x64x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !206 {
  %4 = alloca [8 x float], align 64, !dbg !207
  %5 = alloca [8 x float], align 64, !dbg !207
  %6 = alloca [8 x float], align 64, !dbg !208
  %.elt26 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !209
  %.unpack27 = load ptr, ptr %.elt26, align 16, !dbg !209
  %7 = load ptr, ptr %.unpack27, align 8, !dbg !209
  %8 = getelementptr i8, ptr %7, i64 7093312, !dbg !209
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !209
  %9 = getelementptr i8, ptr %.unpack27, i64 8, !dbg !210
  %10 = load ptr, ptr %9, align 8, !dbg !210
  %11 = getelementptr i8, ptr %10, i64 15725312, !dbg !210
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !210
  %12 = getelementptr i8, ptr %.unpack27, i64 16, !dbg !211
  %13 = load ptr, ptr %12, align 8, !dbg !211
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !211
  %14 = load i32, ptr %2, align 16, !dbg !207
  %15 = zext i32 %14 to i64, !dbg !207
  %16 = lshr i64 %15, 2, !dbg !207
  %17 = lshr i64 %15, 1, !dbg !207
  %18 = and i64 %17, 1, !dbg !207
  %19 = mul nuw nsw i64 %16, 14, !dbg !207
  %20 = shl nuw nsw i64 %15, 5, !dbg !207
  %21 = and i64 %20, 32, !dbg !207
  %22 = mul nuw nsw i64 %16, 28
  %.idx36 = mul nuw nsw i64 %18, 224
  %invariant.gep = getelementptr i8, ptr %8, i64 %.idx36
  %.idx32 = mul nuw nsw i64 %18, 112
  %invariant.gep53 = getelementptr inbounds nuw i8, ptr %13, i64 %.idx32, !dbg !207
  br label %.preheader43, !dbg !207

.preheader43:                                     ; preds = %3, %91
  %23 = phi i64 [ 0, %3 ], [ %92, %91 ]
  %24 = shl nuw nsw i64 %23, 1
  %25 = add nuw nsw i64 %24, %22
  %26 = add nuw nsw i64 %23, %19
  %.idx31 = mul nuw nsw i64 %26, 224
  %gep54 = getelementptr inbounds nuw i8, ptr %invariant.gep53, i64 %.idx31
  br label %27, !dbg !207

27:                                               ; preds = %.preheader43, %88
  %indvars.iv = phi i64 [ 28, %.preheader43 ], [ %indvars.iv.next, %88 ]
  %28 = phi i64 [ 0, %.preheader43 ], [ %89, %88 ]
  %umin63 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !207
  %29 = sub nuw nsw i64 28, %28, !dbg !207
  %30 = tail call i64 @llvm.umin.i64(i64 %29, i64 8), !dbg !207
  %31 = trunc nuw nsw i64 %30 to i32, !dbg !212
  %32 = insertelement <8 x i32> poison, i32 %31, i64 0, !dbg !212
  %33 = shufflevector <8 x i32> %32, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !212
  %34 = icmp samesign ugt <8 x i32> %33, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !212
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %6, i32 64, <8 x i1> %34), !dbg !212
  %invariant.gep51 = getelementptr inbounds nuw float, ptr %gep54, i64 %28, !dbg !207
  br label %35, !dbg !207

35:                                               ; preds = %27, %86
  %36 = phi i64 [ 0, %27 ], [ %87, %86 ]
  br label %39, !dbg !207

.preheader42:                                     ; preds = %39
  %37 = or disjoint i64 %36, %21, !dbg !207
  %.idx33 = mul nuw nsw i64 %37, 51984
  %gep46 = getelementptr i8, ptr %invariant.gep, i64 %.idx33, !dbg !207
  %.idx37 = mul nuw nsw i64 %37, 36
  %38 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx37
  br label %45, !dbg !207

39:                                               ; preds = %35, %39
  %40 = phi i64 [ 0, %35 ], [ %44, %39 ]
  %41 = getelementptr inbounds nuw float, ptr %6, i64 %40, !dbg !207
  %42 = load float, ptr %41, align 4, !dbg !207
  %43 = getelementptr inbounds nuw float, ptr %5, i64 %40, !dbg !207
  store float %42, ptr %43, align 4, !dbg !207
  %44 = add nuw nsw i64 %40, 1, !dbg !207
  %exitcond.not = icmp eq i64 %44, %umin63, !dbg !207
  br i1 %exitcond.not, label %.preheader42, label %39, !dbg !207

45:                                               ; preds = %.preheader42, %64
  %46 = phi i64 [ 0, %.preheader42 ], [ %65, %64 ]
  %47 = add nuw nsw i64 %25, %46, !dbg !207
  %.idx34 = mul nuw nsw i64 %47, 456
  %gep45 = getelementptr i8, ptr %gep46, i64 %.idx34, !dbg !207
  %.idx38 = mul nuw nsw i64 %46, 12
  %48 = getelementptr inbounds nuw i8, ptr %38, i64 %.idx38
  br label %.preheader, !dbg !207

.preheader:                                       ; preds = %45, %62
  %49 = phi i64 [ 0, %45 ], [ %63, %62 ]
  %50 = add nuw nsw i64 %49, %28
  %.idx35 = shl i64 %50, 3
  %gep = getelementptr i8, ptr %gep45, i64 %.idx35
  %51 = getelementptr inbounds nuw float, ptr %5, i64 %49
  %.promoted = load float, ptr %51, align 4
  br label %52, !dbg !207

52:                                               ; preds = %.preheader, %52
  %53 = phi i64 [ 0, %.preheader ], [ %61, %52 ]
  %54 = phi float [ %.promoted, %.preheader ], [ %60, %52 ]
  %55 = getelementptr float, ptr %gep, i64 %53, !dbg !207
  %56 = load float, ptr %55, align 4, !dbg !207
  %57 = getelementptr inbounds nuw float, ptr %48, i64 %53, !dbg !207
  %58 = load float, ptr %57, align 4, !dbg !207
  %59 = fmul contract float %56, %58, !dbg !213
  %60 = fadd contract float %54, %59, !dbg !214
  %61 = add nuw nsw i64 %53, 1, !dbg !207
  %exitcond55.not = icmp eq i64 %61, 3, !dbg !207
  br i1 %exitcond55.not, label %62, label %52, !dbg !207

62:                                               ; preds = %52
  store float %60, ptr %51, align 4, !dbg !207
  %63 = add nuw nsw i64 %49, 1, !dbg !207
  %exitcond57.not = icmp eq i64 %63, %umin63, !dbg !207
  br i1 %exitcond57.not, label %64, label %.preheader, !dbg !207

64:                                               ; preds = %62
  %65 = add nuw nsw i64 %46, 1, !dbg !207
  %exitcond58.not = icmp eq i64 %65, 3, !dbg !207
  br i1 %exitcond58.not, label %.preheader41, label %45, !dbg !207

.preheader41:                                     ; preds = %64, %.preheader41
  %66 = phi i64 [ %70, %.preheader41 ], [ 0, %64 ]
  %67 = getelementptr inbounds nuw float, ptr %6, i64 %66, !dbg !207
  %68 = load float, ptr %67, align 4, !dbg !207
  %69 = getelementptr inbounds nuw float, ptr %4, i64 %66, !dbg !207
  store float %68, ptr %69, align 4, !dbg !207
  %70 = add nuw nsw i64 %66, 1, !dbg !207
  %exitcond60.not = icmp eq i64 %70, %umin63, !dbg !207
  br i1 %exitcond60.not, label %.preheader40, label %.preheader41, !dbg !207

.preheader39:                                     ; preds = %.preheader40
  %.idx = mul nuw nsw i64 %37, 12544
  %gep52 = getelementptr inbounds nuw i8, ptr %invariant.gep51, i64 %.idx
  br label %76, !dbg !215

.preheader40:                                     ; preds = %.preheader41, %.preheader40
  %71 = phi i64 [ %75, %.preheader40 ], [ 0, %.preheader41 ]
  %72 = getelementptr inbounds nuw float, ptr %5, i64 %71, !dbg !207
  %73 = load float, ptr %72, align 4, !dbg !207
  %74 = getelementptr inbounds nuw float, ptr %4, i64 %71, !dbg !207
  store float %73, ptr %74, align 4, !dbg !207
  %75 = add nuw nsw i64 %71, 1, !dbg !207
  %exitcond62.not = icmp eq i64 %75, %umin63, !dbg !207
  br i1 %exitcond62.not, label %.preheader39, label %.preheader40, !dbg !207

76:                                               ; preds = %.preheader39, %76
  %77 = phi i64 [ 0, %.preheader39 ], [ %85, %76 ]
  %78 = getelementptr float, ptr %4, i64 %77, !dbg !215
  %79 = load <1 x float>, ptr %78, align 4, !dbg !215
  %80 = fadd contract <1 x float> %79, zeroinitializer, !dbg !216
  %.inv = fcmp oge <1 x float> %79, zeroinitializer, !dbg !217
  %81 = select <1 x i1> %.inv, <1 x float> %80, <1 x float> zeroinitializer, !dbg !217
  %.inv30 = fcmp ole <1 x float> %81, splat (float 6.000000e+00), !dbg !218
  %82 = select <1 x i1> %.inv30, <1 x float> %81, <1 x float> splat (float 6.000000e+00), !dbg !218
  %83 = extractelement <1 x float> %82, i64 0, !dbg !215
  %84 = getelementptr inbounds nuw float, ptr %gep52, i64 %77, !dbg !215
  store float %83, ptr %84, align 4, !dbg !215
  %85 = add nuw nsw i64 %77, 1, !dbg !215
  %exitcond64.not = icmp eq i64 %85, %umin63, !dbg !215
  br i1 %exitcond64.not, label %86, label %76, !dbg !215

86:                                               ; preds = %76
  %87 = add nuw nsw i64 %36, 1, !dbg !207
  %exitcond65.not = icmp eq i64 %87, 32, !dbg !207
  br i1 %exitcond65.not, label %88, label %35, !dbg !207

88:                                               ; preds = %86
  %89 = add nuw nsw i64 %28, 8, !dbg !207
  %90 = icmp samesign ult i64 %28, 20, !dbg !207
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !207
  br i1 %90, label %27, label %91, !dbg !207

91:                                               ; preds = %88
  %92 = add nuw nsw i64 %23, 1, !dbg !207
  %exitcond66.not = icmp eq i64 %92, 14, !dbg !207
  br i1 %exitcond66.not, label %93, label %.preheader43, !dbg !207

93:                                               ; preds = %91
  ret i32 0, !dbg !219
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !220 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !221
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !221
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !221
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !221
  %5 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !222
  %6 = load ptr, ptr %5, align 8, !dbg !222
  %7 = getelementptr i8, ptr %6, i64 15310848, !dbg !222
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !222
  %8 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !223
  %9 = load ptr, ptr %8, align 8, !dbg !223
  %10 = getelementptr i8, ptr %9, i64 802816, !dbg !223
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !223
  %11 = load i32, ptr %2, align 16, !dbg !224
  %12 = udiv i32 %11, 7, !dbg !224
  %.zext = zext nneg i32 %12 to i64, !dbg !224
  %13 = urem i32 %11, 7, !dbg !224
  %14 = shl nuw nsw i64 %.zext, 6, !dbg !224
  %15 = shl nuw nsw i32 %13, 3, !dbg !224
  %16 = zext nneg i32 %15 to i64, !dbg !224
  br label %17, !dbg !224

17:                                               ; preds = %3, %88
  %18 = phi i64 [ 0, %3 ], [ %89, %88 ]
  %19 = add nuw nsw i64 %18, %14, !dbg !224
  %.idx36 = shl nuw nsw i64 %19, 8
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx36
  %.idx = mul nuw nsw i64 %19, 13456
  %21 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  br label %.preheader37, !dbg !224

.preheader37:                                     ; preds = %17, %86
  %22 = phi i64 [ 0, %17 ], [ %87, %86 ]
  %23 = add nuw nsw i64 %22, %16
  %invariant.gep.idx = mul i64 %23, 224
  %invariant.gep = getelementptr i8, ptr %4, i64 %invariant.gep.idx
  %.idx25 = mul nuw nsw i64 %23, 232
  %24 = getelementptr i8, ptr %21, i64 %.idx25
  %25 = getelementptr i8, ptr %24, i64 232
  br label %.preheader, !dbg !224

.preheader:                                       ; preds = %.preheader37, %79
  %26 = phi i64 [ 0, %.preheader37 ], [ %84, %79 ]
  %invariant.gep38 = getelementptr float, ptr %invariant.gep, i64 %26, !dbg !224
  br label %27, !dbg !224

27:                                               ; preds = %.preheader, %27
  %28 = phi <1 x float> [ zeroinitializer, %.preheader ], [ %76, %27 ]
  %29 = phi i64 [ 0, %.preheader ], [ %77, %27 ]
  %.idx26 = mul nuw nsw i64 %29, 12544, !dbg !224
  %gep39 = getelementptr i8, ptr %invariant.gep38, i64 %.idx26, !dbg !224
  %30 = load <1 x float>, ptr %gep39, align 4, !dbg !224
  %31 = or disjoint i64 %29, 1, !dbg !224
  %.idx27 = mul nuw nsw i64 %31, 12544, !dbg !224
  %gep42 = getelementptr i8, ptr %invariant.gep38, i64 %.idx27, !dbg !224
  %32 = load <1 x float>, ptr %gep42, align 4, !dbg !224
  %33 = or disjoint i64 %29, 2, !dbg !224
  %.idx28 = mul nuw nsw i64 %33, 12544, !dbg !224
  %gep45 = getelementptr i8, ptr %invariant.gep38, i64 %.idx28, !dbg !224
  %34 = load <1 x float>, ptr %gep45, align 4, !dbg !224
  %35 = or disjoint i64 %29, 3, !dbg !224
  %.idx29 = mul nuw nsw i64 %35, 12544, !dbg !224
  %gep48 = getelementptr i8, ptr %invariant.gep38, i64 %.idx29, !dbg !224
  %36 = load <1 x float>, ptr %gep48, align 4, !dbg !224
  %37 = or disjoint i64 %29, 4, !dbg !224
  %.idx30 = mul nuw nsw i64 %37, 12544, !dbg !224
  %gep51 = getelementptr i8, ptr %invariant.gep38, i64 %.idx30, !dbg !224
  %38 = load <1 x float>, ptr %gep51, align 4, !dbg !224
  %39 = or disjoint i64 %29, 5, !dbg !224
  %.idx31 = mul nuw nsw i64 %39, 12544, !dbg !224
  %gep54 = getelementptr i8, ptr %invariant.gep38, i64 %.idx31, !dbg !224
  %40 = load <1 x float>, ptr %gep54, align 4, !dbg !224
  %41 = or disjoint i64 %29, 6, !dbg !224
  %.idx32 = mul nuw nsw i64 %41, 12544, !dbg !224
  %gep57 = getelementptr i8, ptr %invariant.gep38, i64 %.idx32, !dbg !224
  %42 = load <1 x float>, ptr %gep57, align 4, !dbg !224
  %43 = or disjoint i64 %29, 7, !dbg !224
  %.idx33 = mul nuw nsw i64 %43, 12544, !dbg !224
  %gep60 = getelementptr i8, ptr %invariant.gep38, i64 %.idx33, !dbg !224
  %44 = load <1 x float>, ptr %gep60, align 4, !dbg !224
  %45 = getelementptr inbounds nuw float, ptr %20, i64 %29, !dbg !225
  %46 = load float, ptr %45, align 32, !dbg !225
  %47 = insertelement <1 x float> poison, float %46, i64 0, !dbg !225
  %48 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %30, <1 x float> %47, <1 x float> %28), !dbg !225
  %49 = getelementptr inbounds nuw float, ptr %20, i64 %31, !dbg !225
  %50 = load float, ptr %49, align 4, !dbg !225
  %51 = insertelement <1 x float> poison, float %50, i64 0, !dbg !225
  %52 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %32, <1 x float> %51, <1 x float> %48), !dbg !225
  %53 = getelementptr inbounds nuw float, ptr %20, i64 %33, !dbg !225
  %54 = load float, ptr %53, align 8, !dbg !225
  %55 = insertelement <1 x float> poison, float %54, i64 0, !dbg !225
  %56 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %34, <1 x float> %55, <1 x float> %52), !dbg !225
  %57 = getelementptr inbounds nuw float, ptr %20, i64 %35, !dbg !225
  %58 = load float, ptr %57, align 4, !dbg !225
  %59 = insertelement <1 x float> poison, float %58, i64 0, !dbg !225
  %60 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %59, <1 x float> %56), !dbg !225
  %61 = getelementptr inbounds nuw float, ptr %20, i64 %37, !dbg !225
  %62 = load float, ptr %61, align 16, !dbg !225
  %63 = insertelement <1 x float> poison, float %62, i64 0, !dbg !225
  %64 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %38, <1 x float> %63, <1 x float> %60), !dbg !225
  %65 = getelementptr inbounds nuw float, ptr %20, i64 %39, !dbg !225
  %66 = load float, ptr %65, align 4, !dbg !225
  %67 = insertelement <1 x float> poison, float %66, i64 0, !dbg !225
  %68 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %40, <1 x float> %67, <1 x float> %64), !dbg !225
  %69 = getelementptr inbounds nuw float, ptr %20, i64 %41, !dbg !225
  %70 = load float, ptr %69, align 8, !dbg !225
  %71 = insertelement <1 x float> poison, float %70, i64 0, !dbg !225
  %72 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %42, <1 x float> %71, <1 x float> %68), !dbg !225
  %73 = getelementptr inbounds nuw float, ptr %20, i64 %43, !dbg !225
  %74 = load float, ptr %73, align 4, !dbg !225
  %75 = insertelement <1 x float> poison, float %74, i64 0, !dbg !225
  %76 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %44, <1 x float> %75, <1 x float> %72), !dbg !225
  %77 = add nuw nsw i64 %29, 8, !dbg !224
  %78 = icmp samesign ult i64 %29, 56, !dbg !224
  br i1 %78, label %27, label %79, !dbg !224

79:                                               ; preds = %27
  %80 = fadd contract <1 x float> %76, zeroinitializer, !dbg !226
  %.inv = fcmp oge <1 x float> %76, zeroinitializer, !dbg !227
  %81 = select <1 x i1> %.inv, <1 x float> %80, <1 x float> zeroinitializer, !dbg !227
  %.inv24 = fcmp ole <1 x float> %81, splat (float 6.000000e+00), !dbg !228
  %82 = select <1 x i1> %.inv24, <1 x float> %81, <1 x float> splat (float 6.000000e+00), !dbg !228
  %83 = extractelement <1 x float> %82, i64 0, !dbg !224
  %84 = add nuw nsw i64 %26, 1, !dbg !224
  %85 = getelementptr inbounds nuw float, ptr %25, i64 %84, !dbg !224
  store float %83, ptr %85, align 4, !dbg !224
  %exitcond.not = icmp eq i64 %84, 56, !dbg !224
  br i1 %exitcond.not, label %86, label %.preheader, !dbg !224

86:                                               ; preds = %79
  %87 = add nuw nsw i64 %22, 1, !dbg !224
  %exitcond61.not = icmp eq i64 %87, 8, !dbg !224
  br i1 %exitcond61.not, label %88, label %.preheader37, !dbg !224

88:                                               ; preds = %86
  %89 = add nuw nsw i64 %18, 1, !dbg !224
  %exitcond62.not = icmp eq i64 %89, 64, !dbg !224
  br i1 %exitcond62.not, label %90, label %17, !dbg !224

90:                                               ; preds = %88
  ret i32 0, !dbg !229
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_7_conv_56x56x128x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !230 {
  %4 = alloca [8 x float], align 64, !dbg !231
  %5 = alloca [8 x float], align 64, !dbg !231
  %6 = alloca [8 x float], align 64, !dbg !232
  %.elt26 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !233
  %.unpack27 = load ptr, ptr %.elt26, align 16, !dbg !233
  %7 = load ptr, ptr %.unpack27, align 8, !dbg !233
  %8 = getelementptr i8, ptr %7, i64 802816, !dbg !233
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !233
  %9 = getelementptr i8, ptr %.unpack27, i64 8, !dbg !234
  %10 = load ptr, ptr %9, align 8, !dbg !234
  %11 = getelementptr i8, ptr %10, i64 15720704, !dbg !234
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !234
  %12 = getelementptr i8, ptr %.unpack27, i64 16, !dbg !235
  %13 = load ptr, ptr %12, align 8, !dbg !235
  %14 = getelementptr i8, ptr %13, i64 7093312, !dbg !235
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !235
  %15 = load i32, ptr %2, align 16, !dbg !231
  %16 = zext i32 %15 to i64, !dbg !231
  %17 = lshr i64 %16, 3, !dbg !231
  %18 = mul nuw nsw i64 %17, 28, !dbg !231
  %19 = and i64 %16, 4, !dbg !231
  %.not = icmp eq i64 %19, 0, !dbg !231
  %20 = select i1 %.not, i64 0, i64 28, !dbg !231
  %21 = shl nuw nsw i64 %16, 5, !dbg !231
  %22 = and i64 %21, 96, !dbg !231
  br label %.preheader40, !dbg !231

.preheader40:                                     ; preds = %3, %90
  %23 = phi i64 [ 0, %3 ], [ %91, %90 ]
  %24 = add nuw nsw i64 %23, %18
  %.idx31 = mul nuw nsw i64 %24, 224
  %invariant.gep = getelementptr inbounds nuw i8, ptr %14, i64 %.idx31
  br label %25, !dbg !231

25:                                               ; preds = %.preheader40, %87
  %indvars.iv = phi i64 [ 28, %.preheader40 ], [ %indvars.iv.next, %87 ]
  %26 = phi i64 [ 0, %.preheader40 ], [ %88, %87 ]
  %umin54 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !231
  %27 = sub nuw nsw i64 28, %26, !dbg !231
  %28 = tail call i64 @llvm.umin.i64(i64 %27, i64 8), !dbg !231
  %29 = trunc nuw nsw i64 %28 to i32, !dbg !236
  %30 = insertelement <8 x i32> poison, i32 %29, i64 0, !dbg !236
  %31 = shufflevector <8 x i32> %30, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !236
  %32 = icmp samesign ugt <8 x i32> %31, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !236
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %6, i32 64, <8 x i1> %32), !dbg !236
  %33 = add nuw nsw i64 %26, %20, !dbg !231
  %invariant.gep41 = getelementptr float, ptr %8, i64 %33, !dbg !231
  %invariant.gep44 = getelementptr inbounds nuw float, ptr %invariant.gep, i64 %33, !dbg !231
  br label %34, !dbg !231

34:                                               ; preds = %25, %85
  %35 = phi i64 [ 0, %25 ], [ %86, %85 ]
  br label %38, !dbg !231

.preheader39:                                     ; preds = %38
  %36 = or disjoint i64 %35, %22, !dbg !231
  %.idx32 = mul nuw nsw i64 %36, 13456
  %gep42 = getelementptr i8, ptr %invariant.gep41, i64 %.idx32, !dbg !231
  %.idx34 = mul nuw nsw i64 %36, 36
  %37 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx34
  br label %44, !dbg !231

38:                                               ; preds = %34, %38
  %39 = phi i64 [ 0, %34 ], [ %43, %38 ]
  %40 = getelementptr inbounds nuw float, ptr %6, i64 %39, !dbg !231
  %41 = load float, ptr %40, align 4, !dbg !231
  %42 = getelementptr inbounds nuw float, ptr %5, i64 %39, !dbg !231
  store float %41, ptr %42, align 4, !dbg !231
  %43 = add nuw nsw i64 %39, 1, !dbg !231
  %exitcond.not = icmp eq i64 %43, %umin54, !dbg !231
  br i1 %exitcond.not, label %.preheader39, label %38, !dbg !231

44:                                               ; preds = %.preheader39, %63
  %45 = phi i64 [ 0, %.preheader39 ], [ %64, %63 ]
  %46 = add nuw nsw i64 %24, %45, !dbg !231
  %.idx33 = mul nuw nsw i64 %46, 232
  %gep = getelementptr i8, ptr %gep42, i64 %.idx33
  %.idx35 = mul nuw nsw i64 %45, 12
  %47 = getelementptr inbounds nuw i8, ptr %37, i64 %.idx35
  br label %.preheader, !dbg !231

.preheader:                                       ; preds = %44, %61
  %48 = phi i64 [ 0, %44 ], [ %62, %61 ]
  %49 = getelementptr float, ptr %gep, i64 %48
  %50 = getelementptr inbounds nuw float, ptr %5, i64 %48
  %.promoted = load float, ptr %50, align 4
  br label %51, !dbg !231

51:                                               ; preds = %.preheader, %51
  %52 = phi i64 [ 0, %.preheader ], [ %60, %51 ]
  %53 = phi float [ %.promoted, %.preheader ], [ %59, %51 ]
  %54 = getelementptr float, ptr %49, i64 %52, !dbg !231
  %55 = load float, ptr %54, align 4, !dbg !231
  %56 = getelementptr inbounds nuw float, ptr %47, i64 %52, !dbg !231
  %57 = load float, ptr %56, align 4, !dbg !231
  %58 = fmul contract float %55, %57, !dbg !237
  %59 = fadd contract float %53, %58, !dbg !238
  %60 = add nuw nsw i64 %52, 1, !dbg !231
  %exitcond46.not = icmp eq i64 %60, 3, !dbg !231
  br i1 %exitcond46.not, label %61, label %51, !dbg !231

61:                                               ; preds = %51
  store float %59, ptr %50, align 4, !dbg !231
  %62 = add nuw nsw i64 %48, 1, !dbg !231
  %exitcond48.not = icmp eq i64 %62, %umin54, !dbg !231
  br i1 %exitcond48.not, label %63, label %.preheader, !dbg !231

63:                                               ; preds = %61
  %64 = add nuw nsw i64 %45, 1, !dbg !231
  %exitcond49.not = icmp eq i64 %64, 3, !dbg !231
  br i1 %exitcond49.not, label %.preheader38, label %44, !dbg !231

.preheader38:                                     ; preds = %63, %.preheader38
  %65 = phi i64 [ %69, %.preheader38 ], [ 0, %63 ]
  %66 = getelementptr inbounds nuw float, ptr %6, i64 %65, !dbg !231
  %67 = load float, ptr %66, align 4, !dbg !231
  %68 = getelementptr inbounds nuw float, ptr %4, i64 %65, !dbg !231
  store float %67, ptr %68, align 4, !dbg !231
  %69 = add nuw nsw i64 %65, 1, !dbg !231
  %exitcond51.not = icmp eq i64 %69, %umin54, !dbg !231
  br i1 %exitcond51.not, label %.preheader37, label %.preheader38, !dbg !231

.preheader36:                                     ; preds = %.preheader37
  %.idx = mul nuw nsw i64 %36, 12544
  %gep45 = getelementptr inbounds nuw i8, ptr %invariant.gep44, i64 %.idx
  br label %75, !dbg !239

.preheader37:                                     ; preds = %.preheader38, %.preheader37
  %70 = phi i64 [ %74, %.preheader37 ], [ 0, %.preheader38 ]
  %71 = getelementptr inbounds nuw float, ptr %5, i64 %70, !dbg !231
  %72 = load float, ptr %71, align 4, !dbg !231
  %73 = getelementptr inbounds nuw float, ptr %4, i64 %70, !dbg !231
  store float %72, ptr %73, align 4, !dbg !231
  %74 = add nuw nsw i64 %70, 1, !dbg !231
  %exitcond53.not = icmp eq i64 %74, %umin54, !dbg !231
  br i1 %exitcond53.not, label %.preheader36, label %.preheader37, !dbg !231

75:                                               ; preds = %.preheader36, %75
  %76 = phi i64 [ 0, %.preheader36 ], [ %84, %75 ]
  %77 = getelementptr float, ptr %4, i64 %76, !dbg !239
  %78 = load <1 x float>, ptr %77, align 4, !dbg !239
  %79 = fadd contract <1 x float> %78, zeroinitializer, !dbg !240
  %.inv = fcmp oge <1 x float> %78, zeroinitializer, !dbg !241
  %80 = select <1 x i1> %.inv, <1 x float> %79, <1 x float> zeroinitializer, !dbg !241
  %.inv30 = fcmp ole <1 x float> %80, splat (float 6.000000e+00), !dbg !242
  %81 = select <1 x i1> %.inv30, <1 x float> %80, <1 x float> splat (float 6.000000e+00), !dbg !242
  %82 = extractelement <1 x float> %81, i64 0, !dbg !239
  %83 = getelementptr inbounds nuw float, ptr %gep45, i64 %76, !dbg !239
  store float %82, ptr %83, align 4, !dbg !239
  %84 = add nuw nsw i64 %76, 1, !dbg !239
  %exitcond55.not = icmp eq i64 %84, %umin54, !dbg !239
  br i1 %exitcond55.not, label %85, label %75, !dbg !239

85:                                               ; preds = %75
  %86 = add nuw nsw i64 %35, 1, !dbg !231
  %exitcond56.not = icmp eq i64 %86, 32, !dbg !231
  br i1 %exitcond56.not, label %87, label %34, !dbg !231

87:                                               ; preds = %85
  %88 = add nuw nsw i64 %26, 8, !dbg !231
  %89 = icmp samesign ult i64 %26, 20, !dbg !231
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !231
  br i1 %89, label %25, label %90, !dbg !231

90:                                               ; preds = %87
  %91 = add nuw nsw i64 %23, 1, !dbg !231
  %exitcond57.not = icmp eq i64 %91, 28, !dbg !231
  br i1 %exitcond57.not, label %92, label %.preheader40, !dbg !231

92:                                               ; preds = %90
  ret i32 0, !dbg !243
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_8_matmul_like_128x3136x128_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !244 {
  %.elt21 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !245
  %.unpack22 = load ptr, ptr %.elt21, align 16, !dbg !245
  %4 = load ptr, ptr %.unpack22, align 8, !dbg !245
  %5 = getelementptr i8, ptr %4, i64 7093312, !dbg !245
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !245
  %6 = getelementptr i8, ptr %.unpack22, i64 8, !dbg !246
  %7 = load ptr, ptr %6, align 8, !dbg !246
  %8 = getelementptr i8, ptr %7, i64 15245312, !dbg !246
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !246
  %9 = getelementptr i8, ptr %.unpack22, i64 16, !dbg !247
  %10 = load ptr, ptr %9, align 8, !dbg !247
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !247
  %11 = load i32, ptr %2, align 16, !dbg !248
  %12 = udiv i32 %11, 49, !dbg !248
  %.zext = zext nneg i32 %12 to i64, !dbg !248
  %13 = urem i32 %11, 49, !dbg !248
  %14 = shl nuw nsw i64 %.zext, 6, !dbg !248
  %15 = shl nuw nsw i32 %13, 6, !dbg !248
  %16 = zext nneg i32 %15 to i64, !dbg !248
  br label %17, !dbg !248

17:                                               ; preds = %3, %84
  %18 = phi i64 [ 0, %3 ], [ %85, %84 ]
  %19 = add nuw nsw i64 %18, %14, !dbg !248
  %.idx36 = shl nuw nsw i64 %19, 9
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx36
  %.idx = mul nuw nsw i64 %19, 12544
  %21 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  br label %22, !dbg !248

22:                                               ; preds = %17, %77
  %23 = phi i64 [ 0, %17 ], [ %83, %77 ]
  %24 = or disjoint i64 %23, %16, !dbg !248
  %invariant.gep = getelementptr float, ptr %5, i64 %24, !dbg !248
  br label %25, !dbg !248

25:                                               ; preds = %22, %25
  %26 = phi <1 x float> [ zeroinitializer, %22 ], [ %74, %25 ]
  %27 = phi i64 [ 0, %22 ], [ %75, %25 ]
  %.idx26 = mul nuw nsw i64 %27, 12544, !dbg !248
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx26, !dbg !248
  %28 = load <1 x float>, ptr %gep, align 4, !dbg !248
  %29 = or disjoint i64 %27, 1, !dbg !248
  %.idx27 = mul nuw nsw i64 %29, 12544, !dbg !248
  %gep38 = getelementptr i8, ptr %invariant.gep, i64 %.idx27, !dbg !248
  %30 = load <1 x float>, ptr %gep38, align 4, !dbg !248
  %31 = or disjoint i64 %27, 2, !dbg !248
  %.idx28 = mul nuw nsw i64 %31, 12544, !dbg !248
  %gep40 = getelementptr i8, ptr %invariant.gep, i64 %.idx28, !dbg !248
  %32 = load <1 x float>, ptr %gep40, align 4, !dbg !248
  %33 = or disjoint i64 %27, 3, !dbg !248
  %.idx29 = mul nuw nsw i64 %33, 12544, !dbg !248
  %gep42 = getelementptr i8, ptr %invariant.gep, i64 %.idx29, !dbg !248
  %34 = load <1 x float>, ptr %gep42, align 4, !dbg !248
  %35 = or disjoint i64 %27, 4, !dbg !248
  %.idx30 = mul nuw nsw i64 %35, 12544, !dbg !248
  %gep44 = getelementptr i8, ptr %invariant.gep, i64 %.idx30, !dbg !248
  %36 = load <1 x float>, ptr %gep44, align 4, !dbg !248
  %37 = or disjoint i64 %27, 5, !dbg !248
  %.idx31 = mul nuw nsw i64 %37, 12544, !dbg !248
  %gep46 = getelementptr i8, ptr %invariant.gep, i64 %.idx31, !dbg !248
  %38 = load <1 x float>, ptr %gep46, align 4, !dbg !248
  %39 = or disjoint i64 %27, 6, !dbg !248
  %.idx32 = mul nuw nsw i64 %39, 12544, !dbg !248
  %gep48 = getelementptr i8, ptr %invariant.gep, i64 %.idx32, !dbg !248
  %40 = load <1 x float>, ptr %gep48, align 4, !dbg !248
  %41 = or disjoint i64 %27, 7, !dbg !248
  %.idx33 = mul nuw nsw i64 %41, 12544, !dbg !248
  %gep50 = getelementptr i8, ptr %invariant.gep, i64 %.idx33, !dbg !248
  %42 = load <1 x float>, ptr %gep50, align 4, !dbg !248
  %43 = getelementptr inbounds nuw float, ptr %20, i64 %27, !dbg !249
  %44 = load float, ptr %43, align 32, !dbg !249
  %45 = insertelement <1 x float> poison, float %44, i64 0, !dbg !249
  %46 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %28, <1 x float> %45, <1 x float> %26), !dbg !249
  %47 = getelementptr inbounds nuw float, ptr %20, i64 %29, !dbg !249
  %48 = load float, ptr %47, align 4, !dbg !249
  %49 = insertelement <1 x float> poison, float %48, i64 0, !dbg !249
  %50 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %30, <1 x float> %49, <1 x float> %46), !dbg !249
  %51 = getelementptr inbounds nuw float, ptr %20, i64 %31, !dbg !249
  %52 = load float, ptr %51, align 8, !dbg !249
  %53 = insertelement <1 x float> poison, float %52, i64 0, !dbg !249
  %54 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %32, <1 x float> %53, <1 x float> %50), !dbg !249
  %55 = getelementptr inbounds nuw float, ptr %20, i64 %33, !dbg !249
  %56 = load float, ptr %55, align 4, !dbg !249
  %57 = insertelement <1 x float> poison, float %56, i64 0, !dbg !249
  %58 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %34, <1 x float> %57, <1 x float> %54), !dbg !249
  %59 = getelementptr inbounds nuw float, ptr %20, i64 %35, !dbg !249
  %60 = load float, ptr %59, align 16, !dbg !249
  %61 = insertelement <1 x float> poison, float %60, i64 0, !dbg !249
  %62 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %61, <1 x float> %58), !dbg !249
  %63 = getelementptr inbounds nuw float, ptr %20, i64 %37, !dbg !249
  %64 = load float, ptr %63, align 4, !dbg !249
  %65 = insertelement <1 x float> poison, float %64, i64 0, !dbg !249
  %66 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %38, <1 x float> %65, <1 x float> %62), !dbg !249
  %67 = getelementptr inbounds nuw float, ptr %20, i64 %39, !dbg !249
  %68 = load float, ptr %67, align 8, !dbg !249
  %69 = insertelement <1 x float> poison, float %68, i64 0, !dbg !249
  %70 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %40, <1 x float> %69, <1 x float> %66), !dbg !249
  %71 = getelementptr inbounds nuw float, ptr %20, i64 %41, !dbg !249
  %72 = load float, ptr %71, align 4, !dbg !249
  %73 = insertelement <1 x float> poison, float %72, i64 0, !dbg !249
  %74 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %42, <1 x float> %73, <1 x float> %70), !dbg !249
  %75 = add nuw nsw i64 %27, 8, !dbg !248
  %76 = icmp samesign ult i64 %27, 120, !dbg !248
  br i1 %76, label %25, label %77, !dbg !248

77:                                               ; preds = %25
  %78 = fadd contract <1 x float> %74, zeroinitializer, !dbg !250
  %.inv = fcmp oge <1 x float> %74, zeroinitializer, !dbg !251
  %79 = select <1 x i1> %.inv, <1 x float> %78, <1 x float> zeroinitializer, !dbg !251
  %.inv25 = fcmp ole <1 x float> %79, splat (float 6.000000e+00), !dbg !252
  %80 = select <1 x i1> %.inv25, <1 x float> %79, <1 x float> splat (float 6.000000e+00), !dbg !252
  %81 = extractelement <1 x float> %80, i64 0, !dbg !248
  %82 = getelementptr inbounds nuw float, ptr %21, i64 %24, !dbg !248
  store float %81, ptr %82, align 4, !dbg !248
  %83 = add nuw nsw i64 %23, 1, !dbg !248
  %exitcond.not = icmp eq i64 %83, 64, !dbg !248
  br i1 %exitcond.not, label %84, label %22, !dbg !248

84:                                               ; preds = %77
  %85 = add nuw nsw i64 %18, 1, !dbg !248
  %exitcond51.not = icmp eq i64 %85, 64, !dbg !248
  br i1 %exitcond51.not, label %86, label %17, !dbg !248

86:                                               ; preds = %84
  ret i32 0, !dbg !253
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_9_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !254 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !255
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !255
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !255
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !256
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !257
  %6 = load ptr, ptr %5, align 8, !dbg !257
  %7 = getelementptr i8, ptr %6, i64 1605632, !dbg !258
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !258
  %8 = load i32, ptr %2, align 16, !dbg !259
  %9 = zext i32 %8 to i64, !dbg !259
  %10 = shl nuw nsw i64 %9, 3, !dbg !259
  %11 = and i64 %10, 34359738352, !dbg !259
  %12 = trunc i32 %8 to i1, !dbg !259
  %13 = select i1 %12, i64 28, i64 0, !dbg !259
  br label %.preheader26, !dbg !259

.preheader26:                                     ; preds = %3, %32
  %14 = phi i64 [ 0, %3 ], [ %33, %32 ]
  %15 = add nuw nsw i64 %14, %11
  %.idx = mul nuw nsw i64 %15, 12544
  %16 = getelementptr i8, ptr %4, i64 %.idx
  %.idx24 = mul nuw nsw i64 %15, 13456
  %17 = getelementptr i8, ptr %7, i64 %.idx24
  br label %.preheader, !dbg !259

.preheader:                                       ; preds = %.preheader26, %30
  %18 = phi i64 [ 0, %.preheader26 ], [ %31, %30 ]
  %19 = add nuw nsw i64 %18, %13
  %.idx23 = mul nuw nsw i64 %19, 224
  %20 = getelementptr i8, ptr %16, i64 %.idx23
  %.idx25 = mul nuw nsw i64 %19, 232
  %21 = getelementptr i8, ptr %17, i64 %.idx25
  %22 = getelementptr i8, ptr %21, i64 236
  br label %23, !dbg !259

23:                                               ; preds = %.preheader, %23
  %24 = phi i64 [ 0, %.preheader ], [ %28, %23 ]
  %25 = getelementptr float, ptr %20, i64 %24, !dbg !259
  %26 = load <8 x float>, ptr %25, align 32, !dbg !259
  %27 = getelementptr float, ptr %22, i64 %24, !dbg !259
  store <8 x float> %26, ptr %27, align 4, !dbg !259
  %28 = add nuw nsw i64 %24, 8, !dbg !259
  %29 = icmp samesign ult i64 %24, 48, !dbg !259
  br i1 %29, label %23, label %30, !dbg !259

30:                                               ; preds = %23
  %31 = add nuw nsw i64 %18, 1, !dbg !259
  %exitcond.not = icmp eq i64 %31, 28, !dbg !259
  br i1 %exitcond.not, label %32, label %.preheader, !dbg !259

32:                                               ; preds = %30
  %33 = add nuw nsw i64 %14, 1, !dbg !259
  %exitcond27.not = icmp eq i64 %33, 16, !dbg !259
  br i1 %exitcond27.not, label %34, label %.preheader26, !dbg !259

34:                                               ; preds = %32
  ret i32 0, !dbg !260
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_10_conv_28x28x128x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !261 {
  %4 = alloca [8 x float], align 64, !dbg !262
  %5 = alloca [8 x float], align 64, !dbg !262
  %6 = alloca [8 x float], align 64, !dbg !263
  %.elt26 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !264
  %.unpack27 = load ptr, ptr %.elt26, align 16, !dbg !264
  %7 = load ptr, ptr %.unpack27, align 8, !dbg !264
  %8 = getelementptr i8, ptr %7, i64 1605632, !dbg !264
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !264
  %9 = getelementptr i8, ptr %.unpack27, i64 8, !dbg !265
  %10 = load ptr, ptr %9, align 8, !dbg !265
  %11 = getelementptr i8, ptr %10, i64 15716096, !dbg !265
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !265
  %12 = getelementptr i8, ptr %.unpack27, i64 16, !dbg !266
  %13 = load ptr, ptr %12, align 8, !dbg !266
  %14 = getelementptr i8, ptr %13, i64 3328000, !dbg !266
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !266
  %15 = load i32, ptr %2, align 16, !dbg !262
  %16 = zext i32 %15 to i64, !dbg !262
  %17 = lshr i64 %16, 2, !dbg !262
  %18 = mul nuw nsw i64 %17, 7, !dbg !262
  %19 = shl nuw nsw i64 %16, 5, !dbg !262
  %20 = and i64 %19, 96, !dbg !262
  %21 = mul nuw nsw i64 %17, 14
  br label %.preheader41, !dbg !262

.preheader41:                                     ; preds = %3, %93
  %22 = phi i64 [ 0, %3 ], [ %94, %93 ]
  %23 = shl nuw nsw i64 %22, 1
  %24 = add nuw nsw i64 %23, %21
  %25 = add nuw nsw i64 %22, %18
  %.idx31 = mul nuw nsw i64 %25, 112
  %invariant.gep = getelementptr inbounds nuw i8, ptr %14, i64 %.idx31
  br label %26, !dbg !262

26:                                               ; preds = %.preheader41, %90
  %indvars.iv = phi i64 [ 28, %.preheader41 ], [ %indvars.iv.next, %90 ]
  %27 = phi i64 [ 0, %.preheader41 ], [ %91, %90 ]
  %umin52 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !262
  %28 = sub nuw nsw i64 28, %27, !dbg !262
  %29 = tail call i64 @llvm.umin.i64(i64 %28, i64 8), !dbg !262
  %30 = trunc nuw nsw i64 %29 to i32, !dbg !267
  %31 = insertelement <8 x i32> poison, i32 %30, i64 0, !dbg !267
  %32 = shufflevector <8 x i32> %31, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !267
  %33 = icmp samesign ugt <8 x i32> %32, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !267
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %6, i32 64, <8 x i1> %33), !dbg !267
  %invariant.gep42 = getelementptr inbounds nuw float, ptr %invariant.gep, i64 %27, !dbg !262
  br label %34, !dbg !262

34:                                               ; preds = %26, %88
  %35 = phi i64 [ 0, %26 ], [ %89, %88 ]
  br label %39, !dbg !262

.preheader40:                                     ; preds = %39
  %36 = or disjoint i64 %35, %20, !dbg !262
  %.idx32 = mul nuw nsw i64 %36, 13456
  %37 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx32
  %.idx35 = mul nuw nsw i64 %36, 36
  %38 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx35
  br label %45, !dbg !262

39:                                               ; preds = %34, %39
  %40 = phi i64 [ 0, %34 ], [ %44, %39 ]
  %41 = getelementptr inbounds nuw float, ptr %6, i64 %40, !dbg !262
  %42 = load float, ptr %41, align 4, !dbg !262
  %43 = getelementptr inbounds nuw float, ptr %5, i64 %40, !dbg !262
  store float %42, ptr %43, align 4, !dbg !262
  %44 = add nuw nsw i64 %40, 1, !dbg !262
  %exitcond.not = icmp eq i64 %44, %umin52, !dbg !262
  br i1 %exitcond.not, label %.preheader40, label %39, !dbg !262

45:                                               ; preds = %.preheader40, %66
  %46 = phi i64 [ 0, %.preheader40 ], [ %67, %66 ]
  %47 = add nuw nsw i64 %24, %46, !dbg !262
  %.idx33 = mul nuw nsw i64 %47, 232
  %48 = getelementptr inbounds nuw i8, ptr %37, i64 %.idx33
  %.idx36 = mul nuw nsw i64 %46, 12
  %49 = getelementptr inbounds nuw i8, ptr %38, i64 %.idx36
  br label %.preheader, !dbg !262

.preheader:                                       ; preds = %45, %64
  %50 = phi i64 [ 0, %45 ], [ %65, %64 ]
  %51 = add nuw nsw i64 %50, %27
  %.idx34 = shl i64 %51, 3
  %52 = getelementptr i8, ptr %48, i64 %.idx34
  %53 = getelementptr inbounds nuw float, ptr %5, i64 %50
  %.promoted = load float, ptr %53, align 4
  br label %54, !dbg !262

54:                                               ; preds = %.preheader, %54
  %55 = phi i64 [ 0, %.preheader ], [ %63, %54 ]
  %56 = phi float [ %.promoted, %.preheader ], [ %62, %54 ]
  %57 = getelementptr float, ptr %52, i64 %55, !dbg !262
  %58 = load float, ptr %57, align 4, !dbg !262
  %59 = getelementptr inbounds nuw float, ptr %49, i64 %55, !dbg !262
  %60 = load float, ptr %59, align 4, !dbg !262
  %61 = fmul contract float %58, %60, !dbg !268
  %62 = fadd contract float %56, %61, !dbg !269
  %63 = add nuw nsw i64 %55, 1, !dbg !262
  %exitcond44.not = icmp eq i64 %63, 3, !dbg !262
  br i1 %exitcond44.not, label %64, label %54, !dbg !262

64:                                               ; preds = %54
  store float %62, ptr %53, align 4, !dbg !262
  %65 = add nuw nsw i64 %50, 1, !dbg !262
  %exitcond46.not = icmp eq i64 %65, %umin52, !dbg !262
  br i1 %exitcond46.not, label %66, label %.preheader, !dbg !262

66:                                               ; preds = %64
  %67 = add nuw nsw i64 %46, 1, !dbg !262
  %exitcond47.not = icmp eq i64 %67, 3, !dbg !262
  br i1 %exitcond47.not, label %.preheader39, label %45, !dbg !262

.preheader39:                                     ; preds = %66, %.preheader39
  %68 = phi i64 [ %72, %.preheader39 ], [ 0, %66 ]
  %69 = getelementptr inbounds nuw float, ptr %6, i64 %68, !dbg !262
  %70 = load float, ptr %69, align 4, !dbg !262
  %71 = getelementptr inbounds nuw float, ptr %4, i64 %68, !dbg !262
  store float %70, ptr %71, align 4, !dbg !262
  %72 = add nuw nsw i64 %68, 1, !dbg !262
  %exitcond49.not = icmp eq i64 %72, %umin52, !dbg !262
  br i1 %exitcond49.not, label %.preheader38, label %.preheader39, !dbg !262

.preheader37:                                     ; preds = %.preheader38
  %.idx = mul nuw nsw i64 %36, 3136
  %gep43 = getelementptr inbounds nuw i8, ptr %invariant.gep42, i64 %.idx
  br label %78, !dbg !270

.preheader38:                                     ; preds = %.preheader39, %.preheader38
  %73 = phi i64 [ %77, %.preheader38 ], [ 0, %.preheader39 ]
  %74 = getelementptr inbounds nuw float, ptr %5, i64 %73, !dbg !262
  %75 = load float, ptr %74, align 4, !dbg !262
  %76 = getelementptr inbounds nuw float, ptr %4, i64 %73, !dbg !262
  store float %75, ptr %76, align 4, !dbg !262
  %77 = add nuw nsw i64 %73, 1, !dbg !262
  %exitcond51.not = icmp eq i64 %77, %umin52, !dbg !262
  br i1 %exitcond51.not, label %.preheader37, label %.preheader38, !dbg !262

78:                                               ; preds = %.preheader37, %78
  %79 = phi i64 [ 0, %.preheader37 ], [ %87, %78 ]
  %80 = getelementptr float, ptr %4, i64 %79, !dbg !270
  %81 = load <1 x float>, ptr %80, align 4, !dbg !270
  %82 = fadd contract <1 x float> %81, zeroinitializer, !dbg !271
  %.inv = fcmp oge <1 x float> %81, zeroinitializer, !dbg !272
  %83 = select <1 x i1> %.inv, <1 x float> %82, <1 x float> zeroinitializer, !dbg !272
  %.inv30 = fcmp ole <1 x float> %83, splat (float 6.000000e+00), !dbg !273
  %84 = select <1 x i1> %.inv30, <1 x float> %83, <1 x float> splat (float 6.000000e+00), !dbg !273
  %85 = extractelement <1 x float> %84, i64 0, !dbg !270
  %86 = getelementptr inbounds nuw float, ptr %gep43, i64 %79, !dbg !270
  store float %85, ptr %86, align 4, !dbg !270
  %87 = add nuw nsw i64 %79, 1, !dbg !270
  %exitcond53.not = icmp eq i64 %87, %umin52, !dbg !270
  br i1 %exitcond53.not, label %88, label %78, !dbg !270

88:                                               ; preds = %78
  %89 = add nuw nsw i64 %35, 1, !dbg !262
  %exitcond54.not = icmp eq i64 %89, 32, !dbg !262
  br i1 %exitcond54.not, label %90, label %34, !dbg !262

90:                                               ; preds = %88
  %91 = add nuw nsw i64 %27, 8, !dbg !262
  %92 = icmp samesign ult i64 %27, 20, !dbg !262
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !262
  br i1 %92, label %26, label %93, !dbg !262

93:                                               ; preds = %90
  %94 = add nuw nsw i64 %22, 1, !dbg !262
  %exitcond55.not = icmp eq i64 %94, 7, !dbg !262
  br i1 %exitcond55.not, label %95, label %.preheader41, !dbg !262

95:                                               ; preds = %93
  ret i32 0, !dbg !274
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !275 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !276
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !276
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !276
  %5 = getelementptr i8, ptr %4, i64 3328000, !dbg !276
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !276
  %6 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !277
  %7 = load ptr, ptr %6, align 8, !dbg !277
  %8 = getelementptr i8, ptr %7, i64 15114240, !dbg !277
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !277
  %9 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !278
  %10 = load ptr, ptr %9, align 8, !dbg !278
  %11 = getelementptr i8, ptr %10, i64 7093312, !dbg !278
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !278
  %12 = load i32, ptr %2, align 16, !dbg !279
  %13 = zext i32 %12 to i64, !dbg !279
  %14 = shl nuw nsw i64 %13, 4, !dbg !279
  %15 = and i64 %14, 68719476704, !dbg !279
  %16 = trunc i32 %12 to i1, !dbg !279
  %17 = select i1 %16, i64 14, i64 0, !dbg !279
  br label %18, !dbg !279

18:                                               ; preds = %3, %89
  %19 = phi i64 [ 0, %3 ], [ %90, %89 ]
  %20 = or disjoint i64 %19, %15, !dbg !279
  %.idx34 = shl nuw nsw i64 %20, 9
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx34
  %.idx = mul nuw nsw i64 %20, 3600
  %22 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx
  br label %.preheader35, !dbg !279

.preheader35:                                     ; preds = %18, %87
  %23 = phi i64 [ 0, %18 ], [ %88, %87 ]
  %24 = add nuw nsw i64 %23, %17
  %invariant.gep.idx = mul i64 %24, 112
  %invariant.gep = getelementptr i8, ptr %5, i64 %invariant.gep.idx
  %.idx25 = mul nuw nsw i64 %24, 120
  %25 = getelementptr i8, ptr %22, i64 %.idx25
  %26 = getelementptr i8, ptr %25, i64 120
  br label %.preheader, !dbg !279

.preheader:                                       ; preds = %.preheader35, %80
  %27 = phi i64 [ 0, %.preheader35 ], [ %85, %80 ]
  %invariant.gep36 = getelementptr float, ptr %invariant.gep, i64 %27, !dbg !279
  br label %28, !dbg !279

28:                                               ; preds = %.preheader, %28
  %29 = phi <1 x float> [ zeroinitializer, %.preheader ], [ %77, %28 ]
  %30 = phi i64 [ 0, %.preheader ], [ %78, %28 ]
  %.idx26 = mul nuw nsw i64 %30, 3136, !dbg !279
  %gep37 = getelementptr i8, ptr %invariant.gep36, i64 %.idx26, !dbg !279
  %31 = load <1 x float>, ptr %gep37, align 4, !dbg !279
  %32 = or disjoint i64 %30, 1, !dbg !279
  %.idx27 = mul nuw nsw i64 %32, 3136, !dbg !279
  %gep40 = getelementptr i8, ptr %invariant.gep36, i64 %.idx27, !dbg !279
  %33 = load <1 x float>, ptr %gep40, align 4, !dbg !279
  %34 = or disjoint i64 %30, 2, !dbg !279
  %.idx28 = mul nuw nsw i64 %34, 3136, !dbg !279
  %gep43 = getelementptr i8, ptr %invariant.gep36, i64 %.idx28, !dbg !279
  %35 = load <1 x float>, ptr %gep43, align 4, !dbg !279
  %36 = or disjoint i64 %30, 3, !dbg !279
  %.idx29 = mul nuw nsw i64 %36, 3136, !dbg !279
  %gep46 = getelementptr i8, ptr %invariant.gep36, i64 %.idx29, !dbg !279
  %37 = load <1 x float>, ptr %gep46, align 4, !dbg !279
  %38 = or disjoint i64 %30, 4, !dbg !279
  %.idx30 = mul nuw nsw i64 %38, 3136, !dbg !279
  %gep49 = getelementptr i8, ptr %invariant.gep36, i64 %.idx30, !dbg !279
  %39 = load <1 x float>, ptr %gep49, align 4, !dbg !279
  %40 = or disjoint i64 %30, 5, !dbg !279
  %.idx31 = mul nuw nsw i64 %40, 3136, !dbg !279
  %gep52 = getelementptr i8, ptr %invariant.gep36, i64 %.idx31, !dbg !279
  %41 = load <1 x float>, ptr %gep52, align 4, !dbg !279
  %42 = or disjoint i64 %30, 6, !dbg !279
  %.idx32 = mul nuw nsw i64 %42, 3136, !dbg !279
  %gep55 = getelementptr i8, ptr %invariant.gep36, i64 %.idx32, !dbg !279
  %43 = load <1 x float>, ptr %gep55, align 4, !dbg !279
  %44 = or disjoint i64 %30, 7, !dbg !279
  %.idx33 = mul nuw nsw i64 %44, 3136, !dbg !279
  %gep58 = getelementptr i8, ptr %invariant.gep36, i64 %.idx33, !dbg !279
  %45 = load <1 x float>, ptr %gep58, align 4, !dbg !279
  %46 = getelementptr inbounds nuw float, ptr %21, i64 %30, !dbg !280
  %47 = load float, ptr %46, align 32, !dbg !280
  %48 = insertelement <1 x float> poison, float %47, i64 0, !dbg !280
  %49 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %31, <1 x float> %48, <1 x float> %29), !dbg !280
  %50 = getelementptr inbounds nuw float, ptr %21, i64 %32, !dbg !280
  %51 = load float, ptr %50, align 4, !dbg !280
  %52 = insertelement <1 x float> poison, float %51, i64 0, !dbg !280
  %53 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %33, <1 x float> %52, <1 x float> %49), !dbg !280
  %54 = getelementptr inbounds nuw float, ptr %21, i64 %34, !dbg !280
  %55 = load float, ptr %54, align 8, !dbg !280
  %56 = insertelement <1 x float> poison, float %55, i64 0, !dbg !280
  %57 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %35, <1 x float> %56, <1 x float> %53), !dbg !280
  %58 = getelementptr inbounds nuw float, ptr %21, i64 %36, !dbg !280
  %59 = load float, ptr %58, align 4, !dbg !280
  %60 = insertelement <1 x float> poison, float %59, i64 0, !dbg !280
  %61 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %37, <1 x float> %60, <1 x float> %57), !dbg !280
  %62 = getelementptr inbounds nuw float, ptr %21, i64 %38, !dbg !280
  %63 = load float, ptr %62, align 16, !dbg !280
  %64 = insertelement <1 x float> poison, float %63, i64 0, !dbg !280
  %65 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %39, <1 x float> %64, <1 x float> %61), !dbg !280
  %66 = getelementptr inbounds nuw float, ptr %21, i64 %40, !dbg !280
  %67 = load float, ptr %66, align 4, !dbg !280
  %68 = insertelement <1 x float> poison, float %67, i64 0, !dbg !280
  %69 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %41, <1 x float> %68, <1 x float> %65), !dbg !280
  %70 = getelementptr inbounds nuw float, ptr %21, i64 %42, !dbg !280
  %71 = load float, ptr %70, align 8, !dbg !280
  %72 = insertelement <1 x float> poison, float %71, i64 0, !dbg !280
  %73 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %43, <1 x float> %72, <1 x float> %69), !dbg !280
  %74 = getelementptr inbounds nuw float, ptr %21, i64 %44, !dbg !280
  %75 = load float, ptr %74, align 4, !dbg !280
  %76 = insertelement <1 x float> poison, float %75, i64 0, !dbg !280
  %77 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %45, <1 x float> %76, <1 x float> %73), !dbg !280
  %78 = add nuw nsw i64 %30, 8, !dbg !279
  %79 = icmp samesign ult i64 %30, 120, !dbg !279
  br i1 %79, label %28, label %80, !dbg !279

80:                                               ; preds = %28
  %81 = fadd contract <1 x float> %77, zeroinitializer, !dbg !281
  %.inv = fcmp oge <1 x float> %77, zeroinitializer, !dbg !282
  %82 = select <1 x i1> %.inv, <1 x float> %81, <1 x float> zeroinitializer, !dbg !282
  %.inv24 = fcmp ole <1 x float> %82, splat (float 6.000000e+00), !dbg !283
  %83 = select <1 x i1> %.inv24, <1 x float> %82, <1 x float> splat (float 6.000000e+00), !dbg !283
  %84 = extractelement <1 x float> %83, i64 0, !dbg !279
  %85 = add nuw nsw i64 %27, 1, !dbg !279
  %86 = getelementptr inbounds nuw float, ptr %26, i64 %85, !dbg !279
  store float %84, ptr %86, align 4, !dbg !279
  %exitcond.not = icmp eq i64 %85, 28, !dbg !279
  br i1 %exitcond.not, label %87, label %.preheader, !dbg !279

87:                                               ; preds = %80
  %88 = add nuw nsw i64 %23, 1, !dbg !279
  %exitcond59.not = icmp eq i64 %88, 14, !dbg !279
  br i1 %exitcond59.not, label %89, label %.preheader35, !dbg !279

89:                                               ; preds = %87
  %90 = add nuw nsw i64 %19, 1, !dbg !279
  %exitcond60.not = icmp eq i64 %90, 32, !dbg !279
  br i1 %exitcond60.not, label %91, label %18, !dbg !279

91:                                               ; preds = %89
  ret i32 0, !dbg !284
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_12_conv_28x28x256x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !285 {
  %4 = alloca [8 x float], align 64, !dbg !286
  %5 = alloca [8 x float], align 64, !dbg !286
  %6 = alloca [8 x float], align 64, !dbg !287
  %.elt26 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !288
  %.unpack27 = load ptr, ptr %.elt26, align 16, !dbg !288
  %7 = load ptr, ptr %.unpack27, align 8, !dbg !288
  %8 = getelementptr i8, ptr %7, i64 7093312, !dbg !288
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !288
  %9 = getelementptr i8, ptr %.unpack27, i64 8, !dbg !289
  %10 = load ptr, ptr %9, align 8, !dbg !289
  %11 = getelementptr i8, ptr %10, i64 15706880, !dbg !289
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !289
  %12 = getelementptr i8, ptr %.unpack27, i64 16, !dbg !290
  %13 = load ptr, ptr %12, align 8, !dbg !290
  %14 = getelementptr i8, ptr %13, i64 1605632, !dbg !290
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !290
  %15 = load i32, ptr %2, align 16, !dbg !286
  %16 = zext i32 %15 to i64, !dbg !286
  %17 = lshr i64 %16, 3, !dbg !286
  %18 = mul nuw nsw i64 %17, 14, !dbg !286
  %19 = shl nuw nsw i64 %16, 5, !dbg !286
  %20 = and i64 %19, 224, !dbg !286
  br label %.preheader40, !dbg !286

.preheader40:                                     ; preds = %3, %87
  %21 = phi i64 [ 0, %3 ], [ %88, %87 ]
  %22 = add nuw nsw i64 %21, %18
  %.idx31 = mul nuw nsw i64 %22, 112
  %invariant.gep = getelementptr inbounds nuw i8, ptr %14, i64 %.idx31
  br label %23, !dbg !286

23:                                               ; preds = %.preheader40, %84
  %indvars.iv = phi i64 [ 28, %.preheader40 ], [ %indvars.iv.next, %84 ]
  %24 = phi i64 [ 0, %.preheader40 ], [ %85, %84 ]
  %umin54 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !286
  %25 = sub nuw nsw i64 28, %24, !dbg !286
  %26 = tail call i64 @llvm.umin.i64(i64 %25, i64 8), !dbg !286
  %27 = trunc nuw nsw i64 %26 to i32, !dbg !291
  %28 = insertelement <8 x i32> poison, i32 %27, i64 0, !dbg !291
  %29 = shufflevector <8 x i32> %28, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !291
  %30 = icmp samesign ugt <8 x i32> %29, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !291
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %6, i32 64, <8 x i1> %30), !dbg !291
  %invariant.gep41 = getelementptr float, ptr %8, i64 %24, !dbg !286
  %invariant.gep44 = getelementptr inbounds nuw float, ptr %invariant.gep, i64 %24, !dbg !286
  br label %31, !dbg !286

31:                                               ; preds = %23, %82
  %32 = phi i64 [ 0, %23 ], [ %83, %82 ]
  br label %35, !dbg !286

.preheader39:                                     ; preds = %35
  %33 = or disjoint i64 %32, %20, !dbg !286
  %.idx32 = mul nuw nsw i64 %33, 3600
  %gep42 = getelementptr i8, ptr %invariant.gep41, i64 %.idx32, !dbg !286
  %.idx34 = mul nuw nsw i64 %33, 36
  %34 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx34
  br label %41, !dbg !286

35:                                               ; preds = %31, %35
  %36 = phi i64 [ 0, %31 ], [ %40, %35 ]
  %37 = getelementptr inbounds nuw float, ptr %6, i64 %36, !dbg !286
  %38 = load float, ptr %37, align 4, !dbg !286
  %39 = getelementptr inbounds nuw float, ptr %5, i64 %36, !dbg !286
  store float %38, ptr %39, align 4, !dbg !286
  %40 = add nuw nsw i64 %36, 1, !dbg !286
  %exitcond.not = icmp eq i64 %40, %umin54, !dbg !286
  br i1 %exitcond.not, label %.preheader39, label %35, !dbg !286

41:                                               ; preds = %.preheader39, %60
  %42 = phi i64 [ 0, %.preheader39 ], [ %61, %60 ]
  %43 = add nuw nsw i64 %22, %42, !dbg !286
  %.idx33 = mul nuw nsw i64 %43, 120
  %gep = getelementptr i8, ptr %gep42, i64 %.idx33
  %.idx35 = mul nuw nsw i64 %42, 12
  %44 = getelementptr inbounds nuw i8, ptr %34, i64 %.idx35
  br label %.preheader, !dbg !286

.preheader:                                       ; preds = %41, %58
  %45 = phi i64 [ 0, %41 ], [ %59, %58 ]
  %46 = getelementptr float, ptr %gep, i64 %45
  %47 = getelementptr inbounds nuw float, ptr %5, i64 %45
  %.promoted = load float, ptr %47, align 4
  br label %48, !dbg !286

48:                                               ; preds = %.preheader, %48
  %49 = phi i64 [ 0, %.preheader ], [ %57, %48 ]
  %50 = phi float [ %.promoted, %.preheader ], [ %56, %48 ]
  %51 = getelementptr float, ptr %46, i64 %49, !dbg !286
  %52 = load float, ptr %51, align 4, !dbg !286
  %53 = getelementptr inbounds nuw float, ptr %44, i64 %49, !dbg !286
  %54 = load float, ptr %53, align 4, !dbg !286
  %55 = fmul contract float %52, %54, !dbg !292
  %56 = fadd contract float %50, %55, !dbg !293
  %57 = add nuw nsw i64 %49, 1, !dbg !286
  %exitcond46.not = icmp eq i64 %57, 3, !dbg !286
  br i1 %exitcond46.not, label %58, label %48, !dbg !286

58:                                               ; preds = %48
  store float %56, ptr %47, align 4, !dbg !286
  %59 = add nuw nsw i64 %45, 1, !dbg !286
  %exitcond48.not = icmp eq i64 %59, %umin54, !dbg !286
  br i1 %exitcond48.not, label %60, label %.preheader, !dbg !286

60:                                               ; preds = %58
  %61 = add nuw nsw i64 %42, 1, !dbg !286
  %exitcond49.not = icmp eq i64 %61, 3, !dbg !286
  br i1 %exitcond49.not, label %.preheader38, label %41, !dbg !286

.preheader38:                                     ; preds = %60, %.preheader38
  %62 = phi i64 [ %66, %.preheader38 ], [ 0, %60 ]
  %63 = getelementptr inbounds nuw float, ptr %6, i64 %62, !dbg !286
  %64 = load float, ptr %63, align 4, !dbg !286
  %65 = getelementptr inbounds nuw float, ptr %4, i64 %62, !dbg !286
  store float %64, ptr %65, align 4, !dbg !286
  %66 = add nuw nsw i64 %62, 1, !dbg !286
  %exitcond51.not = icmp eq i64 %66, %umin54, !dbg !286
  br i1 %exitcond51.not, label %.preheader37, label %.preheader38, !dbg !286

.preheader36:                                     ; preds = %.preheader37
  %.idx = mul nuw nsw i64 %33, 3136
  %gep45 = getelementptr inbounds nuw i8, ptr %invariant.gep44, i64 %.idx
  br label %72, !dbg !294

.preheader37:                                     ; preds = %.preheader38, %.preheader37
  %67 = phi i64 [ %71, %.preheader37 ], [ 0, %.preheader38 ]
  %68 = getelementptr inbounds nuw float, ptr %5, i64 %67, !dbg !286
  %69 = load float, ptr %68, align 4, !dbg !286
  %70 = getelementptr inbounds nuw float, ptr %4, i64 %67, !dbg !286
  store float %69, ptr %70, align 4, !dbg !286
  %71 = add nuw nsw i64 %67, 1, !dbg !286
  %exitcond53.not = icmp eq i64 %71, %umin54, !dbg !286
  br i1 %exitcond53.not, label %.preheader36, label %.preheader37, !dbg !286

72:                                               ; preds = %.preheader36, %72
  %73 = phi i64 [ 0, %.preheader36 ], [ %81, %72 ]
  %74 = getelementptr float, ptr %4, i64 %73, !dbg !294
  %75 = load <1 x float>, ptr %74, align 4, !dbg !294
  %76 = fadd contract <1 x float> %75, zeroinitializer, !dbg !295
  %.inv = fcmp oge <1 x float> %75, zeroinitializer, !dbg !296
  %77 = select <1 x i1> %.inv, <1 x float> %76, <1 x float> zeroinitializer, !dbg !296
  %.inv30 = fcmp ole <1 x float> %77, splat (float 6.000000e+00), !dbg !297
  %78 = select <1 x i1> %.inv30, <1 x float> %77, <1 x float> splat (float 6.000000e+00), !dbg !297
  %79 = extractelement <1 x float> %78, i64 0, !dbg !294
  %80 = getelementptr inbounds nuw float, ptr %gep45, i64 %73, !dbg !294
  store float %79, ptr %80, align 4, !dbg !294
  %81 = add nuw nsw i64 %73, 1, !dbg !294
  %exitcond55.not = icmp eq i64 %81, %umin54, !dbg !294
  br i1 %exitcond55.not, label %82, label %72, !dbg !294

82:                                               ; preds = %72
  %83 = add nuw nsw i64 %32, 1, !dbg !286
  %exitcond56.not = icmp eq i64 %83, 32, !dbg !286
  br i1 %exitcond56.not, label %84, label %31, !dbg !286

84:                                               ; preds = %82
  %85 = add nuw nsw i64 %24, 8, !dbg !286
  %86 = icmp samesign ult i64 %24, 20, !dbg !286
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !286
  br i1 %86, label %23, label %87, !dbg !286

87:                                               ; preds = %84
  %88 = add nuw nsw i64 %21, 1, !dbg !286
  %exitcond57.not = icmp eq i64 %88, 14, !dbg !286
  br i1 %exitcond57.not, label %89, label %.preheader40, !dbg !286

89:                                               ; preds = %87
  ret i32 0, !dbg !298
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_13_matmul_like_256x784x256_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !299 {
  %.elt21 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !300
  %.unpack22 = load ptr, ptr %.elt21, align 16, !dbg !300
  %4 = load ptr, ptr %.unpack22, align 8, !dbg !300
  %5 = getelementptr i8, ptr %4, i64 1605632, !dbg !300
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !300
  %6 = getelementptr i8, ptr %.unpack22, i64 8, !dbg !301
  %7 = load ptr, ptr %6, align 8, !dbg !301
  %8 = getelementptr i8, ptr %7, i64 14852096, !dbg !301
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !301
  %9 = getelementptr i8, ptr %.unpack22, i64 16, !dbg !302
  %10 = load ptr, ptr %9, align 8, !dbg !302
  %11 = getelementptr i8, ptr %10, i64 2408448, !dbg !302
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !302
  %12 = load i32, ptr %2, align 16, !dbg !303
  %13 = udiv i32 %12, 14, !dbg !303
  %.zext = zext nneg i32 %13 to i64, !dbg !303
  %14 = urem i32 %12, 14, !dbg !303
  %15 = shl nuw nsw i64 %.zext, 6, !dbg !303
  %narrow = mul nuw nsw i32 %14, 56, !dbg !303
  %16 = zext nneg i32 %narrow to i64, !dbg !303
  br label %17, !dbg !303

17:                                               ; preds = %3, %84
  %18 = phi i64 [ 0, %3 ], [ %85, %84 ]
  %19 = add nuw nsw i64 %18, %15, !dbg !303
  %.idx36 = shl nuw nsw i64 %19, 10
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx36
  %.idx = mul nuw nsw i64 %19, 3136
  %21 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx
  br label %22, !dbg !303

22:                                               ; preds = %17, %77
  %23 = phi i64 [ 0, %17 ], [ %83, %77 ]
  %24 = add nuw nsw i64 %23, %16, !dbg !303
  %invariant.gep = getelementptr float, ptr %5, i64 %24, !dbg !303
  br label %25, !dbg !303

25:                                               ; preds = %22, %25
  %26 = phi <1 x float> [ zeroinitializer, %22 ], [ %74, %25 ]
  %27 = phi i64 [ 0, %22 ], [ %75, %25 ]
  %.idx26 = mul nuw nsw i64 %27, 3136, !dbg !303
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx26, !dbg !303
  %28 = load <1 x float>, ptr %gep, align 4, !dbg !303
  %29 = or disjoint i64 %27, 1, !dbg !303
  %.idx27 = mul nuw nsw i64 %29, 3136, !dbg !303
  %gep38 = getelementptr i8, ptr %invariant.gep, i64 %.idx27, !dbg !303
  %30 = load <1 x float>, ptr %gep38, align 4, !dbg !303
  %31 = or disjoint i64 %27, 2, !dbg !303
  %.idx28 = mul nuw nsw i64 %31, 3136, !dbg !303
  %gep40 = getelementptr i8, ptr %invariant.gep, i64 %.idx28, !dbg !303
  %32 = load <1 x float>, ptr %gep40, align 4, !dbg !303
  %33 = or disjoint i64 %27, 3, !dbg !303
  %.idx29 = mul nuw nsw i64 %33, 3136, !dbg !303
  %gep42 = getelementptr i8, ptr %invariant.gep, i64 %.idx29, !dbg !303
  %34 = load <1 x float>, ptr %gep42, align 4, !dbg !303
  %35 = or disjoint i64 %27, 4, !dbg !303
  %.idx30 = mul nuw nsw i64 %35, 3136, !dbg !303
  %gep44 = getelementptr i8, ptr %invariant.gep, i64 %.idx30, !dbg !303
  %36 = load <1 x float>, ptr %gep44, align 4, !dbg !303
  %37 = or disjoint i64 %27, 5, !dbg !303
  %.idx31 = mul nuw nsw i64 %37, 3136, !dbg !303
  %gep46 = getelementptr i8, ptr %invariant.gep, i64 %.idx31, !dbg !303
  %38 = load <1 x float>, ptr %gep46, align 4, !dbg !303
  %39 = or disjoint i64 %27, 6, !dbg !303
  %.idx32 = mul nuw nsw i64 %39, 3136, !dbg !303
  %gep48 = getelementptr i8, ptr %invariant.gep, i64 %.idx32, !dbg !303
  %40 = load <1 x float>, ptr %gep48, align 4, !dbg !303
  %41 = or disjoint i64 %27, 7, !dbg !303
  %.idx33 = mul nuw nsw i64 %41, 3136, !dbg !303
  %gep50 = getelementptr i8, ptr %invariant.gep, i64 %.idx33, !dbg !303
  %42 = load <1 x float>, ptr %gep50, align 4, !dbg !303
  %43 = getelementptr inbounds nuw float, ptr %20, i64 %27, !dbg !304
  %44 = load float, ptr %43, align 32, !dbg !304
  %45 = insertelement <1 x float> poison, float %44, i64 0, !dbg !304
  %46 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %28, <1 x float> %45, <1 x float> %26), !dbg !304
  %47 = getelementptr inbounds nuw float, ptr %20, i64 %29, !dbg !304
  %48 = load float, ptr %47, align 4, !dbg !304
  %49 = insertelement <1 x float> poison, float %48, i64 0, !dbg !304
  %50 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %30, <1 x float> %49, <1 x float> %46), !dbg !304
  %51 = getelementptr inbounds nuw float, ptr %20, i64 %31, !dbg !304
  %52 = load float, ptr %51, align 8, !dbg !304
  %53 = insertelement <1 x float> poison, float %52, i64 0, !dbg !304
  %54 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %32, <1 x float> %53, <1 x float> %50), !dbg !304
  %55 = getelementptr inbounds nuw float, ptr %20, i64 %33, !dbg !304
  %56 = load float, ptr %55, align 4, !dbg !304
  %57 = insertelement <1 x float> poison, float %56, i64 0, !dbg !304
  %58 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %34, <1 x float> %57, <1 x float> %54), !dbg !304
  %59 = getelementptr inbounds nuw float, ptr %20, i64 %35, !dbg !304
  %60 = load float, ptr %59, align 16, !dbg !304
  %61 = insertelement <1 x float> poison, float %60, i64 0, !dbg !304
  %62 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %61, <1 x float> %58), !dbg !304
  %63 = getelementptr inbounds nuw float, ptr %20, i64 %37, !dbg !304
  %64 = load float, ptr %63, align 4, !dbg !304
  %65 = insertelement <1 x float> poison, float %64, i64 0, !dbg !304
  %66 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %38, <1 x float> %65, <1 x float> %62), !dbg !304
  %67 = getelementptr inbounds nuw float, ptr %20, i64 %39, !dbg !304
  %68 = load float, ptr %67, align 8, !dbg !304
  %69 = insertelement <1 x float> poison, float %68, i64 0, !dbg !304
  %70 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %40, <1 x float> %69, <1 x float> %66), !dbg !304
  %71 = getelementptr inbounds nuw float, ptr %20, i64 %41, !dbg !304
  %72 = load float, ptr %71, align 4, !dbg !304
  %73 = insertelement <1 x float> poison, float %72, i64 0, !dbg !304
  %74 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %42, <1 x float> %73, <1 x float> %70), !dbg !304
  %75 = add nuw nsw i64 %27, 8, !dbg !303
  %76 = icmp samesign ult i64 %27, 248, !dbg !303
  br i1 %76, label %25, label %77, !dbg !303

77:                                               ; preds = %25
  %78 = fadd contract <1 x float> %74, zeroinitializer, !dbg !305
  %.inv = fcmp oge <1 x float> %74, zeroinitializer, !dbg !306
  %79 = select <1 x i1> %.inv, <1 x float> %78, <1 x float> zeroinitializer, !dbg !306
  %.inv25 = fcmp ole <1 x float> %79, splat (float 6.000000e+00), !dbg !307
  %80 = select <1 x i1> %.inv25, <1 x float> %79, <1 x float> splat (float 6.000000e+00), !dbg !307
  %81 = extractelement <1 x float> %80, i64 0, !dbg !303
  %82 = getelementptr inbounds nuw float, ptr %21, i64 %24, !dbg !303
  store float %81, ptr %82, align 4, !dbg !303
  %83 = add nuw nsw i64 %23, 1, !dbg !303
  %exitcond.not = icmp eq i64 %83, 56, !dbg !303
  br i1 %exitcond.not, label %84, label %22, !dbg !303

84:                                               ; preds = %77
  %85 = add nuw nsw i64 %18, 1, !dbg !303
  %exitcond51.not = icmp eq i64 %85, 64, !dbg !303
  br i1 %exitcond51.not, label %86, label %17, !dbg !303

86:                                               ; preds = %84
  ret i32 0, !dbg !308
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_14_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !309 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !310
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !310
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !310
  %5 = getelementptr i8, ptr %4, i64 2408448, !dbg !311
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !311
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !312
  %7 = load ptr, ptr %6, align 8, !dbg !312
  %8 = getelementptr i8, ptr %7, i64 7093312, !dbg !313
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !313
  %9 = load i32, ptr %2, align 16, !dbg !314
  %10 = zext i32 %9 to i64, !dbg !314
  %11 = shl nuw nsw i64 %10, 4, !dbg !314
  %12 = and i64 %11, 68719476704, !dbg !314
  %13 = trunc i32 %9 to i1, !dbg !314
  %14 = select i1 %13, i64 14, i64 0, !dbg !314
  br label %.preheader30, !dbg !314

.preheader30:                                     ; preds = %3, %36
  %15 = phi i64 [ 0, %3 ], [ %37, %36 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx26 = mul nuw nsw i64 %16, 3136
  %17 = getelementptr i8, ptr %5, i64 %.idx26
  %.idx28 = mul nuw nsw i64 %16, 3600
  %18 = getelementptr i8, ptr %8, i64 %.idx28
  br label %.preheader, !dbg !314

.preheader:                                       ; preds = %.preheader30, %31
  %19 = phi i64 [ 0, %.preheader30 ], [ %35, %31 ]
  %20 = add nuw nsw i64 %19, %14
  %.idx27 = mul nuw nsw i64 %20, 112
  %21 = getelementptr i8, ptr %17, i64 %.idx27
  %.idx29 = mul nuw nsw i64 %20, 120
  %22 = getelementptr i8, ptr %18, i64 %.idx29
  %23 = getelementptr i8, ptr %22, i64 124
  br label %24, !dbg !314

24:                                               ; preds = %.preheader, %24
  %25 = phi i64 [ 0, %.preheader ], [ %29, %24 ]
  %26 = getelementptr float, ptr %21, i64 %25, !dbg !314
  %27 = load <8 x float>, ptr %26, align 16, !dbg !314
  %28 = getelementptr float, ptr %23, i64 %25, !dbg !314
  store <8 x float> %27, ptr %28, align 4, !dbg !314
  %29 = add nuw nsw i64 %25, 8, !dbg !314
  %30 = icmp samesign ult i64 %25, 16, !dbg !314
  br i1 %30, label %24, label %31, !dbg !314

31:                                               ; preds = %24
  %32 = getelementptr i8, ptr %21, i64 96, !dbg !314
  %33 = load <4 x float>, ptr %32, align 16, !dbg !314
  %34 = getelementptr i8, ptr %22, i64 220, !dbg !314
  store <4 x float> %33, ptr %34, align 4, !dbg !314
  %35 = add nuw nsw i64 %19, 1, !dbg !314
  %exitcond.not = icmp eq i64 %35, 14, !dbg !314
  br i1 %exitcond.not, label %36, label %.preheader, !dbg !314

36:                                               ; preds = %31
  %37 = add nuw nsw i64 %15, 1, !dbg !314
  %exitcond31.not = icmp eq i64 %37, 32, !dbg !314
  br i1 %exitcond31.not, label %38, label %.preheader30, !dbg !314

38:                                               ; preds = %36
  ret i32 0, !dbg !315
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_15_conv_14x14x256x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !316 {
  %4 = alloca [8 x float], align 64, !dbg !317
  %5 = alloca [8 x float], align 64, !dbg !317
  %6 = alloca [8 x float], align 64, !dbg !318
  %.elt26 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !319
  %.unpack27 = load ptr, ptr %.elt26, align 16, !dbg !319
  %7 = load ptr, ptr %.unpack27, align 8, !dbg !319
  %8 = getelementptr i8, ptr %7, i64 7093312, !dbg !319
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !319
  %9 = getelementptr i8, ptr %.unpack27, i64 8, !dbg !320
  %10 = load ptr, ptr %9, align 8, !dbg !320
  %11 = getelementptr i8, ptr %10, i64 15697664, !dbg !320
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !320
  %12 = getelementptr i8, ptr %.unpack27, i64 16, !dbg !321
  %13 = load ptr, ptr %12, align 8, !dbg !321
  %14 = getelementptr i8, ptr %13, i64 3211264, !dbg !321
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !321
  %15 = load i32, ptr %2, align 16, !dbg !317
  %16 = zext i32 %15 to i64, !dbg !317
  %17 = lshr i64 %16, 3, !dbg !317
  %18 = mul nuw nsw i64 %17, 7, !dbg !317
  %19 = shl nuw nsw i64 %16, 5, !dbg !317
  %20 = and i64 %19, 224, !dbg !317
  %21 = mul nuw nsw i64 %17, 14
  br label %.preheader41, !dbg !317

.preheader41:                                     ; preds = %3, %92
  %22 = phi i64 [ 0, %3 ], [ %93, %92 ]
  %23 = shl nuw nsw i64 %22, 1
  %24 = add nuw nsw i64 %23, %21
  %25 = add nuw nsw i64 %22, %18
  %.idx31 = mul nuw nsw i64 %25, 56
  %invariant.gep = getelementptr inbounds nuw i8, ptr %14, i64 %.idx31
  br label %26, !dbg !317

26:                                               ; preds = %.preheader41, %91
  %indvars.iv = phi i64 [ 14, %.preheader41 ], [ %indvars.iv.next, %91 ]
  %27 = phi i1 [ true, %.preheader41 ], [ false, %91 ]
  %28 = phi i64 [ 0, %.preheader41 ], [ 8, %91 ]
  %umin52 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !317
  %29 = sub nuw nsw i64 14, %28, !dbg !317
  %30 = tail call i64 @llvm.umin.i64(i64 %29, i64 8), !dbg !317
  %31 = trunc nuw nsw i64 %30 to i32, !dbg !322
  %32 = insertelement <8 x i32> poison, i32 %31, i64 0, !dbg !322
  %33 = shufflevector <8 x i32> %32, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !322
  %34 = icmp samesign ugt <8 x i32> %33, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !322
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %6, i32 64, <8 x i1> %34), !dbg !322
  %invariant.gep42 = getelementptr inbounds nuw float, ptr %invariant.gep, i64 %28, !dbg !317
  br label %35, !dbg !317

35:                                               ; preds = %26, %89
  %36 = phi i64 [ 0, %26 ], [ %90, %89 ]
  br label %40, !dbg !317

.preheader40:                                     ; preds = %40
  %37 = or disjoint i64 %36, %20, !dbg !317
  %.idx32 = mul nuw nsw i64 %37, 3600
  %38 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx32
  %.idx35 = mul nuw nsw i64 %37, 36
  %39 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx35
  br label %46, !dbg !317

40:                                               ; preds = %35, %40
  %41 = phi i64 [ 0, %35 ], [ %45, %40 ]
  %42 = getelementptr inbounds nuw float, ptr %6, i64 %41, !dbg !317
  %43 = load float, ptr %42, align 4, !dbg !317
  %44 = getelementptr inbounds nuw float, ptr %5, i64 %41, !dbg !317
  store float %43, ptr %44, align 4, !dbg !317
  %45 = add nuw nsw i64 %41, 1, !dbg !317
  %exitcond.not = icmp eq i64 %45, %umin52, !dbg !317
  br i1 %exitcond.not, label %.preheader40, label %40, !dbg !317

46:                                               ; preds = %.preheader40, %67
  %47 = phi i64 [ 0, %.preheader40 ], [ %68, %67 ]
  %48 = add nuw nsw i64 %24, %47, !dbg !317
  %.idx33 = mul nuw nsw i64 %48, 120
  %49 = getelementptr inbounds nuw i8, ptr %38, i64 %.idx33
  %.idx36 = mul nuw nsw i64 %47, 12
  %50 = getelementptr inbounds nuw i8, ptr %39, i64 %.idx36
  br label %.preheader, !dbg !317

.preheader:                                       ; preds = %46, %65
  %51 = phi i64 [ 0, %46 ], [ %66, %65 ]
  %52 = add nuw nsw i64 %51, %28
  %.idx34 = shl i64 %52, 3
  %53 = getelementptr i8, ptr %49, i64 %.idx34
  %54 = getelementptr inbounds nuw float, ptr %5, i64 %51
  %.promoted = load float, ptr %54, align 4
  br label %55, !dbg !317

55:                                               ; preds = %.preheader, %55
  %56 = phi i64 [ 0, %.preheader ], [ %64, %55 ]
  %57 = phi float [ %.promoted, %.preheader ], [ %63, %55 ]
  %58 = getelementptr float, ptr %53, i64 %56, !dbg !317
  %59 = load float, ptr %58, align 4, !dbg !317
  %60 = getelementptr inbounds nuw float, ptr %50, i64 %56, !dbg !317
  %61 = load float, ptr %60, align 4, !dbg !317
  %62 = fmul contract float %59, %61, !dbg !323
  %63 = fadd contract float %57, %62, !dbg !324
  %64 = add nuw nsw i64 %56, 1, !dbg !317
  %exitcond44.not = icmp eq i64 %64, 3, !dbg !317
  br i1 %exitcond44.not, label %65, label %55, !dbg !317

65:                                               ; preds = %55
  store float %63, ptr %54, align 4, !dbg !317
  %66 = add nuw nsw i64 %51, 1, !dbg !317
  %exitcond46.not = icmp eq i64 %66, %umin52, !dbg !317
  br i1 %exitcond46.not, label %67, label %.preheader, !dbg !317

67:                                               ; preds = %65
  %68 = add nuw nsw i64 %47, 1, !dbg !317
  %exitcond47.not = icmp eq i64 %68, 3, !dbg !317
  br i1 %exitcond47.not, label %.preheader39, label %46, !dbg !317

.preheader39:                                     ; preds = %67, %.preheader39
  %69 = phi i64 [ %73, %.preheader39 ], [ 0, %67 ]
  %70 = getelementptr inbounds nuw float, ptr %6, i64 %69, !dbg !317
  %71 = load float, ptr %70, align 4, !dbg !317
  %72 = getelementptr inbounds nuw float, ptr %4, i64 %69, !dbg !317
  store float %71, ptr %72, align 4, !dbg !317
  %73 = add nuw nsw i64 %69, 1, !dbg !317
  %exitcond49.not = icmp eq i64 %73, %umin52, !dbg !317
  br i1 %exitcond49.not, label %.preheader38, label %.preheader39, !dbg !317

.preheader37:                                     ; preds = %.preheader38
  %.idx = mul nuw nsw i64 %37, 784
  %gep43 = getelementptr inbounds nuw i8, ptr %invariant.gep42, i64 %.idx
  br label %79, !dbg !325

.preheader38:                                     ; preds = %.preheader39, %.preheader38
  %74 = phi i64 [ %78, %.preheader38 ], [ 0, %.preheader39 ]
  %75 = getelementptr inbounds nuw float, ptr %5, i64 %74, !dbg !317
  %76 = load float, ptr %75, align 4, !dbg !317
  %77 = getelementptr inbounds nuw float, ptr %4, i64 %74, !dbg !317
  store float %76, ptr %77, align 4, !dbg !317
  %78 = add nuw nsw i64 %74, 1, !dbg !317
  %exitcond51.not = icmp eq i64 %78, %umin52, !dbg !317
  br i1 %exitcond51.not, label %.preheader37, label %.preheader38, !dbg !317

79:                                               ; preds = %.preheader37, %79
  %80 = phi i64 [ 0, %.preheader37 ], [ %88, %79 ]
  %81 = getelementptr float, ptr %4, i64 %80, !dbg !325
  %82 = load <1 x float>, ptr %81, align 4, !dbg !325
  %83 = fadd contract <1 x float> %82, zeroinitializer, !dbg !326
  %.inv = fcmp oge <1 x float> %82, zeroinitializer, !dbg !327
  %84 = select <1 x i1> %.inv, <1 x float> %83, <1 x float> zeroinitializer, !dbg !327
  %.inv30 = fcmp ole <1 x float> %84, splat (float 6.000000e+00), !dbg !328
  %85 = select <1 x i1> %.inv30, <1 x float> %84, <1 x float> splat (float 6.000000e+00), !dbg !328
  %86 = extractelement <1 x float> %85, i64 0, !dbg !325
  %87 = getelementptr inbounds nuw float, ptr %gep43, i64 %80, !dbg !325
  store float %86, ptr %87, align 4, !dbg !325
  %88 = add nuw nsw i64 %80, 1, !dbg !325
  %exitcond53.not = icmp eq i64 %88, %umin52, !dbg !325
  br i1 %exitcond53.not, label %89, label %79, !dbg !325

89:                                               ; preds = %79
  %90 = add nuw nsw i64 %36, 1, !dbg !317
  %exitcond54.not = icmp eq i64 %90, 32, !dbg !317
  br i1 %exitcond54.not, label %91, label %35, !dbg !317

91:                                               ; preds = %89
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !317
  br i1 %27, label %26, label %92, !dbg !317

92:                                               ; preds = %91
  %93 = add nuw nsw i64 %22, 1, !dbg !317
  %exitcond55.not = icmp eq i64 %93, 7, !dbg !317
  br i1 %exitcond55.not, label %94, label %.preheader41, !dbg !317

94:                                               ; preds = %92
  ret i32 0, !dbg !329
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !330 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !331
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !331
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !331
  %5 = getelementptr i8, ptr %4, i64 3211264, !dbg !331
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !331
  %6 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !332
  %7 = load ptr, ptr %6, align 8, !dbg !332
  %8 = getelementptr i8, ptr %7, i64 14327808, !dbg !332
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !332
  %9 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !333
  %10 = load ptr, ptr %9, align 8, !dbg !333
  %11 = getelementptr i8, ptr %10, i64 1605632, !dbg !333
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !333
  %12 = load i32, ptr %2, align 16, !dbg !334
  %13 = zext i32 %12 to i64, !dbg !334
  %14 = shl nuw nsw i64 %13, 5, !dbg !334
  %15 = and i64 %14, 137438953408, !dbg !334
  %16 = trunc i32 %12 to i1, !dbg !334
  %17 = select i1 %16, i64 7, i64 0, !dbg !334
  br label %18, !dbg !334

18:                                               ; preds = %3, %89
  %19 = phi i64 [ 0, %3 ], [ %90, %89 ]
  %20 = or disjoint i64 %19, %15, !dbg !334
  %.idx34 = shl nuw nsw i64 %20, 10
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx34
  %22 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx34
  br label %.preheader35, !dbg !334

.preheader35:                                     ; preds = %18, %87
  %23 = phi i64 [ 0, %18 ], [ %88, %87 ]
  %24 = add nuw nsw i64 %23, %17
  %invariant.gep.idx = mul i64 %24, 56
  %invariant.gep = getelementptr i8, ptr %5, i64 %invariant.gep.idx
  %.idx25 = shl i64 %24, 6
  %25 = getelementptr i8, ptr %22, i64 %.idx25
  %26 = getelementptr i8, ptr %25, i64 64
  br label %.preheader, !dbg !334

.preheader:                                       ; preds = %.preheader35, %80
  %27 = phi i64 [ 0, %.preheader35 ], [ %85, %80 ]
  %invariant.gep36 = getelementptr float, ptr %invariant.gep, i64 %27, !dbg !334
  br label %28, !dbg !334

28:                                               ; preds = %.preheader, %28
  %29 = phi <1 x float> [ zeroinitializer, %.preheader ], [ %77, %28 ]
  %30 = phi i64 [ 0, %.preheader ], [ %78, %28 ]
  %.idx26 = mul nuw nsw i64 %30, 784, !dbg !334
  %gep37 = getelementptr i8, ptr %invariant.gep36, i64 %.idx26, !dbg !334
  %31 = load <1 x float>, ptr %gep37, align 4, !dbg !334
  %32 = or disjoint i64 %30, 1, !dbg !334
  %.idx27 = mul nuw nsw i64 %32, 784, !dbg !334
  %gep40 = getelementptr i8, ptr %invariant.gep36, i64 %.idx27, !dbg !334
  %33 = load <1 x float>, ptr %gep40, align 4, !dbg !334
  %34 = or disjoint i64 %30, 2, !dbg !334
  %.idx28 = mul nuw nsw i64 %34, 784, !dbg !334
  %gep43 = getelementptr i8, ptr %invariant.gep36, i64 %.idx28, !dbg !334
  %35 = load <1 x float>, ptr %gep43, align 4, !dbg !334
  %36 = or disjoint i64 %30, 3, !dbg !334
  %.idx29 = mul nuw nsw i64 %36, 784, !dbg !334
  %gep46 = getelementptr i8, ptr %invariant.gep36, i64 %.idx29, !dbg !334
  %37 = load <1 x float>, ptr %gep46, align 4, !dbg !334
  %38 = or disjoint i64 %30, 4, !dbg !334
  %.idx30 = mul nuw nsw i64 %38, 784, !dbg !334
  %gep49 = getelementptr i8, ptr %invariant.gep36, i64 %.idx30, !dbg !334
  %39 = load <1 x float>, ptr %gep49, align 4, !dbg !334
  %40 = or disjoint i64 %30, 5, !dbg !334
  %.idx31 = mul nuw nsw i64 %40, 784, !dbg !334
  %gep52 = getelementptr i8, ptr %invariant.gep36, i64 %.idx31, !dbg !334
  %41 = load <1 x float>, ptr %gep52, align 4, !dbg !334
  %42 = or disjoint i64 %30, 6, !dbg !334
  %.idx32 = mul nuw nsw i64 %42, 784, !dbg !334
  %gep55 = getelementptr i8, ptr %invariant.gep36, i64 %.idx32, !dbg !334
  %43 = load <1 x float>, ptr %gep55, align 4, !dbg !334
  %44 = or disjoint i64 %30, 7, !dbg !334
  %.idx33 = mul nuw nsw i64 %44, 784, !dbg !334
  %gep58 = getelementptr i8, ptr %invariant.gep36, i64 %.idx33, !dbg !334
  %45 = load <1 x float>, ptr %gep58, align 4, !dbg !334
  %46 = getelementptr inbounds nuw float, ptr %21, i64 %30, !dbg !335
  %47 = load float, ptr %46, align 32, !dbg !335
  %48 = insertelement <1 x float> poison, float %47, i64 0, !dbg !335
  %49 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %31, <1 x float> %48, <1 x float> %29), !dbg !335
  %50 = getelementptr inbounds nuw float, ptr %21, i64 %32, !dbg !335
  %51 = load float, ptr %50, align 4, !dbg !335
  %52 = insertelement <1 x float> poison, float %51, i64 0, !dbg !335
  %53 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %33, <1 x float> %52, <1 x float> %49), !dbg !335
  %54 = getelementptr inbounds nuw float, ptr %21, i64 %34, !dbg !335
  %55 = load float, ptr %54, align 8, !dbg !335
  %56 = insertelement <1 x float> poison, float %55, i64 0, !dbg !335
  %57 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %35, <1 x float> %56, <1 x float> %53), !dbg !335
  %58 = getelementptr inbounds nuw float, ptr %21, i64 %36, !dbg !335
  %59 = load float, ptr %58, align 4, !dbg !335
  %60 = insertelement <1 x float> poison, float %59, i64 0, !dbg !335
  %61 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %37, <1 x float> %60, <1 x float> %57), !dbg !335
  %62 = getelementptr inbounds nuw float, ptr %21, i64 %38, !dbg !335
  %63 = load float, ptr %62, align 16, !dbg !335
  %64 = insertelement <1 x float> poison, float %63, i64 0, !dbg !335
  %65 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %39, <1 x float> %64, <1 x float> %61), !dbg !335
  %66 = getelementptr inbounds nuw float, ptr %21, i64 %40, !dbg !335
  %67 = load float, ptr %66, align 4, !dbg !335
  %68 = insertelement <1 x float> poison, float %67, i64 0, !dbg !335
  %69 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %41, <1 x float> %68, <1 x float> %65), !dbg !335
  %70 = getelementptr inbounds nuw float, ptr %21, i64 %42, !dbg !335
  %71 = load float, ptr %70, align 8, !dbg !335
  %72 = insertelement <1 x float> poison, float %71, i64 0, !dbg !335
  %73 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %43, <1 x float> %72, <1 x float> %69), !dbg !335
  %74 = getelementptr inbounds nuw float, ptr %21, i64 %44, !dbg !335
  %75 = load float, ptr %74, align 4, !dbg !335
  %76 = insertelement <1 x float> poison, float %75, i64 0, !dbg !335
  %77 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %45, <1 x float> %76, <1 x float> %73), !dbg !335
  %78 = add nuw nsw i64 %30, 8, !dbg !334
  %79 = icmp samesign ult i64 %30, 248, !dbg !334
  br i1 %79, label %28, label %80, !dbg !334

80:                                               ; preds = %28
  %81 = fadd contract <1 x float> %77, zeroinitializer, !dbg !336
  %.inv = fcmp oge <1 x float> %77, zeroinitializer, !dbg !337
  %82 = select <1 x i1> %.inv, <1 x float> %81, <1 x float> zeroinitializer, !dbg !337
  %.inv24 = fcmp ole <1 x float> %82, splat (float 6.000000e+00), !dbg !338
  %83 = select <1 x i1> %.inv24, <1 x float> %82, <1 x float> splat (float 6.000000e+00), !dbg !338
  %84 = extractelement <1 x float> %83, i64 0, !dbg !334
  %85 = add nuw nsw i64 %27, 1, !dbg !334
  %86 = getelementptr inbounds nuw float, ptr %26, i64 %85, !dbg !334
  store float %84, ptr %86, align 4, !dbg !334
  %exitcond.not = icmp eq i64 %85, 14, !dbg !334
  br i1 %exitcond.not, label %87, label %.preheader, !dbg !334

87:                                               ; preds = %80
  %88 = add nuw nsw i64 %23, 1, !dbg !334
  %exitcond59.not = icmp eq i64 %88, 7, !dbg !334
  br i1 %exitcond59.not, label %89, label %.preheader35, !dbg !334

89:                                               ; preds = %87
  %90 = add nuw nsw i64 %19, 1, !dbg !334
  %exitcond60.not = icmp eq i64 %90, 64, !dbg !334
  br i1 %exitcond60.not, label %91, label %18, !dbg !334

91:                                               ; preds = %89
  ret i32 0, !dbg !339
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_17_conv_14x14x512x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !340 {
  %4 = alloca [8 x float], align 64, !dbg !341
  %5 = alloca [8 x float], align 64, !dbg !341
  %6 = alloca [8 x float], align 64, !dbg !342
  %.elt24 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !343
  %.unpack25 = load ptr, ptr %.elt24, align 8, !dbg !343
  %.elt26 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !343
  %.unpack27 = load ptr, ptr %.elt26, align 16, !dbg !343
  %7 = load i32, ptr %.unpack25, align 4, !dbg !343
  %8 = getelementptr i8, ptr %.unpack25, i64 4, !dbg !344
  %9 = load i32, ptr %8, align 4, !dbg !344
  %10 = load ptr, ptr %.unpack27, align 8, !dbg !345
  %11 = lshr i32 %7, 2, !dbg !345
  %12 = zext nneg i32 %11 to i64, !dbg !345
  %13 = getelementptr float, ptr %10, i64 %12, !dbg !345
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !345
  %14 = getelementptr i8, ptr %.unpack27, i64 8, !dbg !346
  %15 = load ptr, ptr %14, align 8, !dbg !346
  %16 = lshr i32 %9, 2, !dbg !346
  %17 = zext nneg i32 %16 to i64, !dbg !346
  %18 = getelementptr float, ptr %15, i64 %17, !dbg !346
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !346
  %19 = getelementptr i8, ptr %.unpack27, i64 16, !dbg !347
  %20 = load ptr, ptr %19, align 8, !dbg !347
  %21 = getelementptr i8, ptr %20, i64 3211264, !dbg !347
  call void @llvm.assume(i1 true) [ "align"(ptr %21, i64 64) ], !dbg !347
  %22 = load i32, ptr %2, align 16, !dbg !341
  %23 = zext i32 %22 to i64, !dbg !341
  %24 = shl nuw nsw i64 %23, 5, !dbg !341
  br label %.preheader40, !dbg !341

.preheader40:                                     ; preds = %3, %89
  %25 = phi i64 [ 0, %3 ], [ %90, %89 ]
  %.idx31 = mul nuw nsw i64 %25, 56
  %invariant.gep = getelementptr inbounds nuw i8, ptr %21, i64 %.idx31
  br label %26, !dbg !341

26:                                               ; preds = %.preheader40, %88
  %indvars.iv = phi i64 [ 14, %.preheader40 ], [ %indvars.iv.next, %88 ]
  %27 = phi i1 [ true, %.preheader40 ], [ false, %88 ]
  %28 = phi i64 [ 0, %.preheader40 ], [ 8, %88 ]
  %umin54 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !341
  %29 = sub nuw nsw i64 14, %28, !dbg !341
  %30 = tail call i64 @llvm.umin.i64(i64 %29, i64 8), !dbg !341
  %31 = trunc nuw nsw i64 %30 to i32, !dbg !348
  %32 = insertelement <8 x i32> poison, i32 %31, i64 0, !dbg !348
  %33 = shufflevector <8 x i32> %32, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !348
  %34 = icmp samesign ugt <8 x i32> %33, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !348
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %6, i32 64, <8 x i1> %34), !dbg !348
  %invariant.gep41 = getelementptr float, ptr %13, i64 %28, !dbg !341
  %invariant.gep44 = getelementptr inbounds nuw float, ptr %invariant.gep, i64 %28, !dbg !341
  br label %35, !dbg !341

35:                                               ; preds = %26, %86
  %36 = phi i64 [ 0, %26 ], [ %87, %86 ]
  br label %39, !dbg !341

.preheader39:                                     ; preds = %39
  %37 = add nuw nsw i64 %36, %24, !dbg !341
  %.idx32 = shl nuw nsw i64 %37, 10
  %gep42 = getelementptr i8, ptr %invariant.gep41, i64 %.idx32, !dbg !341
  %.idx34 = mul nuw nsw i64 %37, 36
  %38 = getelementptr inbounds nuw i8, ptr %18, i64 %.idx34
  br label %45, !dbg !341

39:                                               ; preds = %35, %39
  %40 = phi i64 [ 0, %35 ], [ %44, %39 ]
  %41 = getelementptr inbounds nuw float, ptr %6, i64 %40, !dbg !341
  %42 = load float, ptr %41, align 4, !dbg !341
  %43 = getelementptr inbounds nuw float, ptr %5, i64 %40, !dbg !341
  store float %42, ptr %43, align 4, !dbg !341
  %44 = add nuw nsw i64 %40, 1, !dbg !341
  %exitcond.not = icmp eq i64 %44, %umin54, !dbg !341
  br i1 %exitcond.not, label %.preheader39, label %39, !dbg !341

45:                                               ; preds = %.preheader39, %64
  %46 = phi i64 [ 0, %.preheader39 ], [ %65, %64 ]
  %47 = add nuw nsw i64 %46, %25, !dbg !341
  %.idx33 = shl nuw nsw i64 %47, 6
  %gep = getelementptr i8, ptr %gep42, i64 %.idx33
  %.idx35 = mul nuw nsw i64 %46, 12
  %48 = getelementptr inbounds nuw i8, ptr %38, i64 %.idx35
  br label %.preheader, !dbg !341

.preheader:                                       ; preds = %45, %62
  %49 = phi i64 [ 0, %45 ], [ %63, %62 ]
  %50 = getelementptr float, ptr %gep, i64 %49
  %51 = getelementptr inbounds nuw float, ptr %5, i64 %49
  %.promoted = load float, ptr %51, align 4
  br label %52, !dbg !341

52:                                               ; preds = %.preheader, %52
  %53 = phi i64 [ 0, %.preheader ], [ %61, %52 ]
  %54 = phi float [ %.promoted, %.preheader ], [ %60, %52 ]
  %55 = getelementptr float, ptr %50, i64 %53, !dbg !341
  %56 = load float, ptr %55, align 4, !dbg !341
  %57 = getelementptr inbounds nuw float, ptr %48, i64 %53, !dbg !341
  %58 = load float, ptr %57, align 4, !dbg !341
  %59 = fmul contract float %56, %58, !dbg !349
  %60 = fadd contract float %54, %59, !dbg !350
  %61 = add nuw nsw i64 %53, 1, !dbg !341
  %exitcond46.not = icmp eq i64 %61, 3, !dbg !341
  br i1 %exitcond46.not, label %62, label %52, !dbg !341

62:                                               ; preds = %52
  store float %60, ptr %51, align 4, !dbg !341
  %63 = add nuw nsw i64 %49, 1, !dbg !341
  %exitcond48.not = icmp eq i64 %63, %umin54, !dbg !341
  br i1 %exitcond48.not, label %64, label %.preheader, !dbg !341

64:                                               ; preds = %62
  %65 = add nuw nsw i64 %46, 1, !dbg !341
  %exitcond49.not = icmp eq i64 %65, 3, !dbg !341
  br i1 %exitcond49.not, label %.preheader38, label %45, !dbg !341

.preheader38:                                     ; preds = %64, %.preheader38
  %66 = phi i64 [ %70, %.preheader38 ], [ 0, %64 ]
  %67 = getelementptr inbounds nuw float, ptr %6, i64 %66, !dbg !341
  %68 = load float, ptr %67, align 4, !dbg !341
  %69 = getelementptr inbounds nuw float, ptr %4, i64 %66, !dbg !341
  store float %68, ptr %69, align 4, !dbg !341
  %70 = add nuw nsw i64 %66, 1, !dbg !341
  %exitcond51.not = icmp eq i64 %70, %umin54, !dbg !341
  br i1 %exitcond51.not, label %.preheader37, label %.preheader38, !dbg !341

.preheader36:                                     ; preds = %.preheader37
  %.idx = mul nuw nsw i64 %37, 784
  %gep45 = getelementptr inbounds nuw i8, ptr %invariant.gep44, i64 %.idx
  br label %76, !dbg !351

.preheader37:                                     ; preds = %.preheader38, %.preheader37
  %71 = phi i64 [ %75, %.preheader37 ], [ 0, %.preheader38 ]
  %72 = getelementptr inbounds nuw float, ptr %5, i64 %71, !dbg !341
  %73 = load float, ptr %72, align 4, !dbg !341
  %74 = getelementptr inbounds nuw float, ptr %4, i64 %71, !dbg !341
  store float %73, ptr %74, align 4, !dbg !341
  %75 = add nuw nsw i64 %71, 1, !dbg !341
  %exitcond53.not = icmp eq i64 %75, %umin54, !dbg !341
  br i1 %exitcond53.not, label %.preheader36, label %.preheader37, !dbg !341

76:                                               ; preds = %.preheader36, %76
  %77 = phi i64 [ 0, %.preheader36 ], [ %85, %76 ]
  %78 = getelementptr float, ptr %4, i64 %77, !dbg !351
  %79 = load <1 x float>, ptr %78, align 4, !dbg !351
  %80 = fadd contract <1 x float> %79, zeroinitializer, !dbg !352
  %.inv = fcmp oge <1 x float> %79, zeroinitializer, !dbg !353
  %81 = select <1 x i1> %.inv, <1 x float> %80, <1 x float> zeroinitializer, !dbg !353
  %.inv30 = fcmp ole <1 x float> %81, splat (float 6.000000e+00), !dbg !354
  %82 = select <1 x i1> %.inv30, <1 x float> %81, <1 x float> splat (float 6.000000e+00), !dbg !354
  %83 = extractelement <1 x float> %82, i64 0, !dbg !351
  %84 = getelementptr inbounds nuw float, ptr %gep45, i64 %77, !dbg !351
  store float %83, ptr %84, align 4, !dbg !351
  %85 = add nuw nsw i64 %77, 1, !dbg !351
  %exitcond55.not = icmp eq i64 %85, %umin54, !dbg !351
  br i1 %exitcond55.not, label %86, label %76, !dbg !351

86:                                               ; preds = %76
  %87 = add nuw nsw i64 %36, 1, !dbg !341
  %exitcond56.not = icmp eq i64 %87, 32, !dbg !341
  br i1 %exitcond56.not, label %88, label %35, !dbg !341

88:                                               ; preds = %86
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !341
  br i1 %27, label %26, label %89, !dbg !341

89:                                               ; preds = %88
  %90 = add nuw nsw i64 %25, 1, !dbg !341
  %exitcond57.not = icmp eq i64 %90, 14, !dbg !341
  br i1 %exitcond57.not, label %91, label %.preheader40, !dbg !341

91:                                               ; preds = %89
  ret i32 0, !dbg !355
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !356 {
  %.elt18 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !357
  %.unpack19 = load ptr, ptr %.elt18, align 8, !dbg !357
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !357
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !357
  %4 = load i32, ptr %.unpack19, align 4, !dbg !357
  %5 = getelementptr i8, ptr %.unpack19, i64 4, !dbg !358
  %6 = load i32, ptr %5, align 4, !dbg !358
  %7 = load ptr, ptr %.unpack21, align 8, !dbg !359
  %8 = getelementptr i8, ptr %7, i64 3211264, !dbg !359
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !359
  %9 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !360
  %10 = load ptr, ptr %9, align 8, !dbg !360
  %11 = lshr i32 %4, 2, !dbg !360
  %12 = zext nneg i32 %11 to i64, !dbg !360
  %13 = getelementptr float, ptr %10, i64 %12, !dbg !360
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !360
  %14 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !361
  %15 = load ptr, ptr %14, align 8, !dbg !361
  %16 = lshr i32 %6, 2, !dbg !361
  %17 = zext nneg i32 %16 to i64, !dbg !361
  %18 = getelementptr float, ptr %15, i64 %17, !dbg !361
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !361
  %19 = load i32, ptr %2, align 16, !dbg !362
  %20 = zext i32 %19 to i64, !dbg !362
  %21 = shl nuw nsw i64 %20, 5, !dbg !362
  %22 = and i64 %21, 137438953408, !dbg !362
  %23 = trunc i32 %19 to i1, !dbg !362
  %24 = select i1 %23, i64 7, i64 0, !dbg !362
  br label %25, !dbg !362

25:                                               ; preds = %3, %96
  %26 = phi i64 [ 0, %3 ], [ %97, %96 ]
  %27 = or disjoint i64 %26, %22, !dbg !362
  %.idx34 = shl nuw nsw i64 %27, 11
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 %.idx34
  %.idx = shl nuw nsw i64 %27, 10
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 %.idx
  br label %.preheader35, !dbg !362

.preheader35:                                     ; preds = %25, %94
  %30 = phi i64 [ 0, %25 ], [ %95, %94 ]
  %31 = add nuw nsw i64 %30, %24
  %invariant.gep.idx = mul i64 %31, 56
  %invariant.gep = getelementptr i8, ptr %8, i64 %invariant.gep.idx
  %.idx25 = shl i64 %31, 6
  %32 = getelementptr i8, ptr %29, i64 %.idx25
  %33 = getelementptr i8, ptr %32, i64 64
  br label %.preheader, !dbg !362

.preheader:                                       ; preds = %.preheader35, %87
  %34 = phi i64 [ 0, %.preheader35 ], [ %92, %87 ]
  %invariant.gep36 = getelementptr float, ptr %invariant.gep, i64 %34, !dbg !362
  br label %35, !dbg !362

35:                                               ; preds = %.preheader, %35
  %36 = phi <1 x float> [ zeroinitializer, %.preheader ], [ %84, %35 ]
  %37 = phi i64 [ 0, %.preheader ], [ %85, %35 ]
  %.idx26 = mul nuw nsw i64 %37, 784, !dbg !362
  %gep37 = getelementptr i8, ptr %invariant.gep36, i64 %.idx26, !dbg !362
  %38 = load <1 x float>, ptr %gep37, align 4, !dbg !362
  %39 = or disjoint i64 %37, 1, !dbg !362
  %.idx27 = mul nuw nsw i64 %39, 784, !dbg !362
  %gep40 = getelementptr i8, ptr %invariant.gep36, i64 %.idx27, !dbg !362
  %40 = load <1 x float>, ptr %gep40, align 4, !dbg !362
  %41 = or disjoint i64 %37, 2, !dbg !362
  %.idx28 = mul nuw nsw i64 %41, 784, !dbg !362
  %gep43 = getelementptr i8, ptr %invariant.gep36, i64 %.idx28, !dbg !362
  %42 = load <1 x float>, ptr %gep43, align 4, !dbg !362
  %43 = or disjoint i64 %37, 3, !dbg !362
  %.idx29 = mul nuw nsw i64 %43, 784, !dbg !362
  %gep46 = getelementptr i8, ptr %invariant.gep36, i64 %.idx29, !dbg !362
  %44 = load <1 x float>, ptr %gep46, align 4, !dbg !362
  %45 = or disjoint i64 %37, 4, !dbg !362
  %.idx30 = mul nuw nsw i64 %45, 784, !dbg !362
  %gep49 = getelementptr i8, ptr %invariant.gep36, i64 %.idx30, !dbg !362
  %46 = load <1 x float>, ptr %gep49, align 4, !dbg !362
  %47 = or disjoint i64 %37, 5, !dbg !362
  %.idx31 = mul nuw nsw i64 %47, 784, !dbg !362
  %gep52 = getelementptr i8, ptr %invariant.gep36, i64 %.idx31, !dbg !362
  %48 = load <1 x float>, ptr %gep52, align 4, !dbg !362
  %49 = or disjoint i64 %37, 6, !dbg !362
  %.idx32 = mul nuw nsw i64 %49, 784, !dbg !362
  %gep55 = getelementptr i8, ptr %invariant.gep36, i64 %.idx32, !dbg !362
  %50 = load <1 x float>, ptr %gep55, align 4, !dbg !362
  %51 = or disjoint i64 %37, 7, !dbg !362
  %.idx33 = mul nuw nsw i64 %51, 784, !dbg !362
  %gep58 = getelementptr i8, ptr %invariant.gep36, i64 %.idx33, !dbg !362
  %52 = load <1 x float>, ptr %gep58, align 4, !dbg !362
  %53 = getelementptr inbounds nuw float, ptr %28, i64 %37, !dbg !363
  %54 = load float, ptr %53, align 32, !dbg !363
  %55 = insertelement <1 x float> poison, float %54, i64 0, !dbg !363
  %56 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %38, <1 x float> %55, <1 x float> %36), !dbg !363
  %57 = getelementptr inbounds nuw float, ptr %28, i64 %39, !dbg !363
  %58 = load float, ptr %57, align 4, !dbg !363
  %59 = insertelement <1 x float> poison, float %58, i64 0, !dbg !363
  %60 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %40, <1 x float> %59, <1 x float> %56), !dbg !363
  %61 = getelementptr inbounds nuw float, ptr %28, i64 %41, !dbg !363
  %62 = load float, ptr %61, align 8, !dbg !363
  %63 = insertelement <1 x float> poison, float %62, i64 0, !dbg !363
  %64 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %42, <1 x float> %63, <1 x float> %60), !dbg !363
  %65 = getelementptr inbounds nuw float, ptr %28, i64 %43, !dbg !363
  %66 = load float, ptr %65, align 4, !dbg !363
  %67 = insertelement <1 x float> poison, float %66, i64 0, !dbg !363
  %68 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %44, <1 x float> %67, <1 x float> %64), !dbg !363
  %69 = getelementptr inbounds nuw float, ptr %28, i64 %45, !dbg !363
  %70 = load float, ptr %69, align 16, !dbg !363
  %71 = insertelement <1 x float> poison, float %70, i64 0, !dbg !363
  %72 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %46, <1 x float> %71, <1 x float> %68), !dbg !363
  %73 = getelementptr inbounds nuw float, ptr %28, i64 %47, !dbg !363
  %74 = load float, ptr %73, align 4, !dbg !363
  %75 = insertelement <1 x float> poison, float %74, i64 0, !dbg !363
  %76 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %48, <1 x float> %75, <1 x float> %72), !dbg !363
  %77 = getelementptr inbounds nuw float, ptr %28, i64 %49, !dbg !363
  %78 = load float, ptr %77, align 8, !dbg !363
  %79 = insertelement <1 x float> poison, float %78, i64 0, !dbg !363
  %80 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %50, <1 x float> %79, <1 x float> %76), !dbg !363
  %81 = getelementptr inbounds nuw float, ptr %28, i64 %51, !dbg !363
  %82 = load float, ptr %81, align 4, !dbg !363
  %83 = insertelement <1 x float> poison, float %82, i64 0, !dbg !363
  %84 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %83, <1 x float> %80), !dbg !363
  %85 = add nuw nsw i64 %37, 8, !dbg !362
  %86 = icmp samesign ult i64 %37, 504, !dbg !362
  br i1 %86, label %35, label %87, !dbg !362

87:                                               ; preds = %35
  %88 = fadd contract <1 x float> %84, zeroinitializer, !dbg !364
  %.inv = fcmp oge <1 x float> %84, zeroinitializer, !dbg !365
  %89 = select <1 x i1> %.inv, <1 x float> %88, <1 x float> zeroinitializer, !dbg !365
  %.inv24 = fcmp ole <1 x float> %89, splat (float 6.000000e+00), !dbg !366
  %90 = select <1 x i1> %.inv24, <1 x float> %89, <1 x float> splat (float 6.000000e+00), !dbg !366
  %91 = extractelement <1 x float> %90, i64 0, !dbg !362
  %92 = add nuw nsw i64 %34, 1, !dbg !362
  %93 = getelementptr inbounds nuw float, ptr %33, i64 %92, !dbg !362
  store float %91, ptr %93, align 4, !dbg !362
  %exitcond.not = icmp eq i64 %92, 14, !dbg !362
  br i1 %exitcond.not, label %94, label %.preheader, !dbg !362

94:                                               ; preds = %87
  %95 = add nuw nsw i64 %30, 1, !dbg !362
  %exitcond59.not = icmp eq i64 %95, 7, !dbg !362
  br i1 %exitcond59.not, label %96, label %.preheader35, !dbg !362

96:                                               ; preds = %94
  %97 = add nuw nsw i64 %26, 1, !dbg !362
  %exitcond60.not = icmp eq i64 %97, 64, !dbg !362
  br i1 %exitcond60.not, label %98, label %25, !dbg !362

98:                                               ; preds = %96
  ret i32 0, !dbg !367
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_27_conv_7x7x512x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !368 {
  %4 = alloca [7 x float], align 64, !dbg !369
  %5 = alloca [7 x float], align 64, !dbg !370
  %.elt23 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !371
  %.unpack24 = load ptr, ptr %.elt23, align 16, !dbg !371
  %6 = load ptr, ptr %.unpack24, align 8, !dbg !371
  %7 = getelementptr i8, ptr %6, i64 7093312, !dbg !371
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !371
  %8 = getelementptr i8, ptr %.unpack24, i64 8, !dbg !372
  %9 = load ptr, ptr %8, align 8, !dbg !372
  %10 = getelementptr i8, ptr %9, i64 15587072, !dbg !372
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !372
  %11 = getelementptr i8, ptr %.unpack24, i64 16, !dbg !373
  %12 = load ptr, ptr %11, align 8, !dbg !373
  %13 = getelementptr i8, ptr %12, i64 3211264, !dbg !373
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !373
  %14 = load i32, ptr %2, align 16, !dbg !369
  %15 = zext i32 %14 to i64, !dbg !369
  %16 = shl nuw nsw i64 %15, 5, !dbg !369
  store <7 x float> zeroinitializer, ptr %5, align 64, !dbg !374
  br label %.preheader38, !dbg !369

.preheader38:                                     ; preds = %3, %60
  %17 = phi i64 [ 0, %3 ], [ %61, %60 ]
  %.idx30 = shl i64 %17, 7
  %invariant.gep = getelementptr i8, ptr %7, i64 %.idx30, !dbg !369
  %.idx28 = mul nuw nsw i64 %17, 28
  %invariant.gep39 = getelementptr inbounds nuw i8, ptr %13, i64 %.idx28, !dbg !369
  br label %18, !dbg !369

18:                                               ; preds = %.preheader38, %58
  %19 = phi i64 [ 0, %.preheader38 ], [ %59, %58 ]
  br label %22, !dbg !369

.preheader37:                                     ; preds = %22
  %20 = add nuw nsw i64 %19, %16, !dbg !369
  %.idx29 = shl nuw nsw i64 %20, 10
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx29
  %.idx33 = mul nuw nsw i64 %20, 36
  %21 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx33
  br label %.preheader35, !dbg !369

22:                                               ; preds = %18, %22
  %23 = phi i64 [ 0, %18 ], [ %27, %22 ]
  %24 = getelementptr inbounds nuw float, ptr %5, i64 %23, !dbg !369
  %25 = load float, ptr %24, align 4, !dbg !369
  %26 = getelementptr inbounds nuw float, ptr %4, i64 %23, !dbg !369
  store float %25, ptr %26, align 4, !dbg !369
  %27 = add nuw nsw i64 %23, 1, !dbg !369
  %exitcond.not = icmp eq i64 %27, 7, !dbg !369
  br i1 %exitcond.not, label %.preheader37, label %22, !dbg !369

.preheader36:                                     ; preds = %46
  %.idx = mul nuw nsw i64 %20, 196
  %gep40 = getelementptr inbounds nuw i8, ptr %invariant.gep39, i64 %.idx
  br label %48, !dbg !375

.preheader35:                                     ; preds = %.preheader37, %46
  %28 = phi i64 [ 0, %.preheader37 ], [ %47, %46 ]
  %.idx31 = shl nuw nsw i64 %28, 6
  %29 = getelementptr i8, ptr %gep, i64 %.idx31
  %.idx34 = mul nuw nsw i64 %28, 12
  %30 = getelementptr inbounds nuw i8, ptr %21, i64 %.idx34
  br label %.preheader, !dbg !369

.preheader:                                       ; preds = %.preheader35, %44
  %31 = phi i64 [ 0, %.preheader35 ], [ %45, %44 ]
  %.idx32 = shl i64 %31, 3
  %32 = getelementptr i8, ptr %29, i64 %.idx32
  %33 = getelementptr inbounds nuw float, ptr %4, i64 %31
  %.promoted = load float, ptr %33, align 4
  br label %34, !dbg !369

34:                                               ; preds = %.preheader, %34
  %35 = phi i64 [ 0, %.preheader ], [ %43, %34 ]
  %36 = phi float [ %.promoted, %.preheader ], [ %42, %34 ]
  %37 = getelementptr float, ptr %32, i64 %35, !dbg !369
  %38 = load float, ptr %37, align 4, !dbg !369
  %39 = getelementptr inbounds nuw float, ptr %30, i64 %35, !dbg !369
  %40 = load float, ptr %39, align 4, !dbg !369
  %41 = fmul contract float %38, %40, !dbg !376
  %42 = fadd contract float %36, %41, !dbg !377
  %43 = add nuw nsw i64 %35, 1, !dbg !369
  %exitcond41.not = icmp eq i64 %43, 3, !dbg !369
  br i1 %exitcond41.not, label %44, label %34, !dbg !369

44:                                               ; preds = %34
  store float %42, ptr %33, align 4, !dbg !369
  %45 = add nuw nsw i64 %31, 1, !dbg !369
  %exitcond42.not = icmp eq i64 %45, 7, !dbg !369
  br i1 %exitcond42.not, label %46, label %.preheader, !dbg !369

46:                                               ; preds = %44
  %47 = add nuw nsw i64 %28, 1, !dbg !369
  %exitcond43.not = icmp eq i64 %47, 3, !dbg !369
  br i1 %exitcond43.not, label %.preheader36, label %.preheader35, !dbg !369

48:                                               ; preds = %.preheader36, %48
  %49 = phi i64 [ 0, %.preheader36 ], [ %57, %48 ]
  %50 = getelementptr float, ptr %4, i64 %49, !dbg !375
  %51 = load <1 x float>, ptr %50, align 4, !dbg !375
  %52 = fadd contract <1 x float> %51, zeroinitializer, !dbg !378
  %.inv = fcmp oge <1 x float> %51, zeroinitializer, !dbg !379
  %53 = select <1 x i1> %.inv, <1 x float> %52, <1 x float> zeroinitializer, !dbg !379
  %.inv27 = fcmp ole <1 x float> %53, splat (float 6.000000e+00), !dbg !380
  %54 = select <1 x i1> %.inv27, <1 x float> %53, <1 x float> splat (float 6.000000e+00), !dbg !380
  %55 = extractelement <1 x float> %54, i64 0, !dbg !375
  %56 = getelementptr inbounds nuw float, ptr %gep40, i64 %49, !dbg !375
  store float %55, ptr %56, align 4, !dbg !375
  %57 = add nuw nsw i64 %49, 1, !dbg !375
  %exitcond44.not = icmp eq i64 %57, 7, !dbg !375
  br i1 %exitcond44.not, label %58, label %48, !dbg !375

58:                                               ; preds = %48
  %59 = add nuw nsw i64 %19, 1, !dbg !369
  %exitcond45.not = icmp eq i64 %59, 32, !dbg !369
  br i1 %exitcond45.not, label %60, label %18, !dbg !369

60:                                               ; preds = %58
  %61 = add nuw nsw i64 %17, 1, !dbg !369
  %exitcond46.not = icmp eq i64 %61, 7, !dbg !369
  br i1 %exitcond46.not, label %62, label %.preheader38, !dbg !369

62:                                               ; preds = %60
  ret i32 0, !dbg !381
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !382 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !383
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !383
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !383
  %5 = getelementptr i8, ptr %4, i64 3211264, !dbg !383
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !383
  %6 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !384
  %7 = load ptr, ptr %6, align 8, !dbg !384
  %8 = getelementptr i8, ptr %7, i64 6987776, !dbg !384
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !384
  %9 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !385
  %10 = load ptr, ptr %9, align 8, !dbg !385
  %11 = getelementptr i8, ptr %10, i64 3311616, !dbg !385
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !385
  %12 = load i32, ptr %2, align 16, !dbg !386
  %13 = zext i32 %12 to i64, !dbg !386
  %14 = shl nuw nsw i64 %13, 6, !dbg !386
  br label %15, !dbg !386

15:                                               ; preds = %3, %85
  %16 = phi i64 [ 0, %3 ], [ %86, %85 ]
  %17 = add nuw nsw i64 %16, %14, !dbg !386
  %.idx34 = shl nuw nsw i64 %17, 11
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx34
  %.idx = mul nuw nsw i64 %17, 324
  %19 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx
  br label %.preheader35, !dbg !386

.preheader35:                                     ; preds = %15, %83
  %20 = phi i64 [ 0, %15 ], [ %84, %83 ]
  %invariant.gep.idx = mul i64 %20, 28
  %invariant.gep = getelementptr i8, ptr %5, i64 %invariant.gep.idx
  %.idx25 = mul nuw nsw i64 %20, 36
  %21 = getelementptr i8, ptr %19, i64 %.idx25
  %22 = getelementptr i8, ptr %21, i64 36
  br label %.preheader, !dbg !386

.preheader:                                       ; preds = %.preheader35, %76
  %23 = phi i64 [ 0, %.preheader35 ], [ %81, %76 ]
  %invariant.gep36 = getelementptr float, ptr %invariant.gep, i64 %23, !dbg !386
  br label %24, !dbg !386

24:                                               ; preds = %.preheader, %24
  %25 = phi <1 x float> [ zeroinitializer, %.preheader ], [ %73, %24 ]
  %26 = phi i64 [ 0, %.preheader ], [ %74, %24 ]
  %.idx26 = mul nuw nsw i64 %26, 196, !dbg !386
  %gep37 = getelementptr i8, ptr %invariant.gep36, i64 %.idx26, !dbg !386
  %27 = load <1 x float>, ptr %gep37, align 4, !dbg !386
  %28 = or disjoint i64 %26, 1, !dbg !386
  %.idx27 = mul nuw nsw i64 %28, 196, !dbg !386
  %gep40 = getelementptr i8, ptr %invariant.gep36, i64 %.idx27, !dbg !386
  %29 = load <1 x float>, ptr %gep40, align 4, !dbg !386
  %30 = or disjoint i64 %26, 2, !dbg !386
  %.idx28 = mul nuw nsw i64 %30, 196, !dbg !386
  %gep43 = getelementptr i8, ptr %invariant.gep36, i64 %.idx28, !dbg !386
  %31 = load <1 x float>, ptr %gep43, align 4, !dbg !386
  %32 = or disjoint i64 %26, 3, !dbg !386
  %.idx29 = mul nuw nsw i64 %32, 196, !dbg !386
  %gep46 = getelementptr i8, ptr %invariant.gep36, i64 %.idx29, !dbg !386
  %33 = load <1 x float>, ptr %gep46, align 4, !dbg !386
  %34 = or disjoint i64 %26, 4, !dbg !386
  %.idx30 = mul nuw nsw i64 %34, 196, !dbg !386
  %gep49 = getelementptr i8, ptr %invariant.gep36, i64 %.idx30, !dbg !386
  %35 = load <1 x float>, ptr %gep49, align 4, !dbg !386
  %36 = or disjoint i64 %26, 5, !dbg !386
  %.idx31 = mul nuw nsw i64 %36, 196, !dbg !386
  %gep52 = getelementptr i8, ptr %invariant.gep36, i64 %.idx31, !dbg !386
  %37 = load <1 x float>, ptr %gep52, align 4, !dbg !386
  %38 = or disjoint i64 %26, 6, !dbg !386
  %.idx32 = mul nuw nsw i64 %38, 196, !dbg !386
  %gep55 = getelementptr i8, ptr %invariant.gep36, i64 %.idx32, !dbg !386
  %39 = load <1 x float>, ptr %gep55, align 4, !dbg !386
  %40 = or disjoint i64 %26, 7, !dbg !386
  %.idx33 = mul nuw nsw i64 %40, 196, !dbg !386
  %gep58 = getelementptr i8, ptr %invariant.gep36, i64 %.idx33, !dbg !386
  %41 = load <1 x float>, ptr %gep58, align 4, !dbg !386
  %42 = getelementptr inbounds nuw float, ptr %18, i64 %26, !dbg !387
  %43 = load float, ptr %42, align 32, !dbg !387
  %44 = insertelement <1 x float> poison, float %43, i64 0, !dbg !387
  %45 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %27, <1 x float> %44, <1 x float> %25), !dbg !387
  %46 = getelementptr inbounds nuw float, ptr %18, i64 %28, !dbg !387
  %47 = load float, ptr %46, align 4, !dbg !387
  %48 = insertelement <1 x float> poison, float %47, i64 0, !dbg !387
  %49 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %29, <1 x float> %48, <1 x float> %45), !dbg !387
  %50 = getelementptr inbounds nuw float, ptr %18, i64 %30, !dbg !387
  %51 = load float, ptr %50, align 8, !dbg !387
  %52 = insertelement <1 x float> poison, float %51, i64 0, !dbg !387
  %53 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %31, <1 x float> %52, <1 x float> %49), !dbg !387
  %54 = getelementptr inbounds nuw float, ptr %18, i64 %32, !dbg !387
  %55 = load float, ptr %54, align 4, !dbg !387
  %56 = insertelement <1 x float> poison, float %55, i64 0, !dbg !387
  %57 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %33, <1 x float> %56, <1 x float> %53), !dbg !387
  %58 = getelementptr inbounds nuw float, ptr %18, i64 %34, !dbg !387
  %59 = load float, ptr %58, align 16, !dbg !387
  %60 = insertelement <1 x float> poison, float %59, i64 0, !dbg !387
  %61 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %35, <1 x float> %60, <1 x float> %57), !dbg !387
  %62 = getelementptr inbounds nuw float, ptr %18, i64 %36, !dbg !387
  %63 = load float, ptr %62, align 4, !dbg !387
  %64 = insertelement <1 x float> poison, float %63, i64 0, !dbg !387
  %65 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %37, <1 x float> %64, <1 x float> %61), !dbg !387
  %66 = getelementptr inbounds nuw float, ptr %18, i64 %38, !dbg !387
  %67 = load float, ptr %66, align 8, !dbg !387
  %68 = insertelement <1 x float> poison, float %67, i64 0, !dbg !387
  %69 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %39, <1 x float> %68, <1 x float> %65), !dbg !387
  %70 = getelementptr inbounds nuw float, ptr %18, i64 %40, !dbg !387
  %71 = load float, ptr %70, align 4, !dbg !387
  %72 = insertelement <1 x float> poison, float %71, i64 0, !dbg !387
  %73 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %41, <1 x float> %72, <1 x float> %69), !dbg !387
  %74 = add nuw nsw i64 %26, 8, !dbg !386
  %75 = icmp samesign ult i64 %26, 504, !dbg !386
  br i1 %75, label %24, label %76, !dbg !386

76:                                               ; preds = %24
  %77 = fadd contract <1 x float> %73, zeroinitializer, !dbg !388
  %.inv = fcmp oge <1 x float> %73, zeroinitializer, !dbg !389
  %78 = select <1 x i1> %.inv, <1 x float> %77, <1 x float> zeroinitializer, !dbg !389
  %.inv24 = fcmp ole <1 x float> %78, splat (float 6.000000e+00), !dbg !390
  %79 = select <1 x i1> %.inv24, <1 x float> %78, <1 x float> splat (float 6.000000e+00), !dbg !390
  %80 = extractelement <1 x float> %79, i64 0, !dbg !386
  %81 = add nuw nsw i64 %23, 1, !dbg !386
  %82 = getelementptr inbounds nuw float, ptr %22, i64 %81, !dbg !386
  store float %80, ptr %82, align 4, !dbg !386
  %exitcond.not = icmp eq i64 %81, 7, !dbg !386
  br i1 %exitcond.not, label %83, label %.preheader, !dbg !386

83:                                               ; preds = %76
  %84 = add nuw nsw i64 %20, 1, !dbg !386
  %exitcond59.not = icmp eq i64 %84, 7, !dbg !386
  br i1 %exitcond59.not, label %85, label %.preheader35, !dbg !386

85:                                               ; preds = %83
  %86 = add nuw nsw i64 %16, 1, !dbg !386
  %exitcond60.not = icmp eq i64 %86, 64, !dbg !386
  br i1 %exitcond60.not, label %87, label %15, !dbg !386

87:                                               ; preds = %85
  ret i32 0, !dbg !391
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !392 {
  %4 = alloca [7 x float], align 64, !dbg !393
  %5 = alloca [7 x float], align 64, !dbg !394
  %.elt23 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !395
  %.unpack24 = load ptr, ptr %.elt23, align 16, !dbg !395
  %6 = load ptr, ptr %.unpack24, align 8, !dbg !395
  %7 = getelementptr i8, ptr %6, i64 3311616, !dbg !395
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !395
  %8 = getelementptr i8, ptr %.unpack24, i64 8, !dbg !396
  %9 = load ptr, ptr %8, align 8, !dbg !396
  %10 = getelementptr i8, ptr %9, i64 15550208, !dbg !396
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !396
  %11 = getelementptr i8, ptr %.unpack24, i64 16, !dbg !397
  %12 = load ptr, ptr %11, align 8, !dbg !397
  %13 = getelementptr i8, ptr %12, i64 3643392, !dbg !397
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !397
  %14 = load i32, ptr %2, align 16, !dbg !393
  %15 = zext i32 %14 to i64, !dbg !393
  %16 = shl nuw nsw i64 %15, 5, !dbg !393
  store <7 x float> zeroinitializer, ptr %5, align 64, !dbg !398
  br label %.preheader35, !dbg !393

.preheader35:                                     ; preds = %3, %63
  %17 = phi i64 [ 0, %3 ], [ %64, %63 ]
  %.idx28 = mul nuw nsw i64 %17, 28
  %invariant.gep = getelementptr inbounds nuw i8, ptr %13, i64 %.idx28, !dbg !393
  br label %18, !dbg !393

18:                                               ; preds = %.preheader35, %61
  %19 = phi i64 [ 0, %.preheader35 ], [ %62, %61 ]
  br label %23, !dbg !393

.preheader34:                                     ; preds = %23
  %20 = add nuw nsw i64 %19, %16, !dbg !393
  %.idx29 = mul nuw nsw i64 %20, 324
  %21 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx29
  %.idx31 = mul nuw nsw i64 %20, 36
  %22 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx31
  br label %29, !dbg !393

23:                                               ; preds = %18, %23
  %24 = phi i64 [ 0, %18 ], [ %28, %23 ]
  %25 = getelementptr inbounds nuw float, ptr %5, i64 %24, !dbg !393
  %26 = load float, ptr %25, align 4, !dbg !393
  %27 = getelementptr inbounds nuw float, ptr %4, i64 %24, !dbg !393
  store float %26, ptr %27, align 4, !dbg !393
  %28 = add nuw nsw i64 %24, 1, !dbg !393
  %exitcond.not = icmp eq i64 %28, 7, !dbg !393
  br i1 %exitcond.not, label %.preheader34, label %23, !dbg !393

.preheader33:                                     ; preds = %49
  %.idx = mul nuw nsw i64 %20, 196
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx
  br label %51, !dbg !399

29:                                               ; preds = %.preheader34, %49
  %30 = phi i64 [ 0, %.preheader34 ], [ %50, %49 ]
  %31 = add nuw nsw i64 %30, %17, !dbg !393
  %.idx30 = mul nuw nsw i64 %31, 36
  %32 = getelementptr inbounds nuw i8, ptr %21, i64 %.idx30
  %.idx32 = mul nuw nsw i64 %30, 12
  %33 = getelementptr inbounds nuw i8, ptr %22, i64 %.idx32
  br label %.preheader, !dbg !393

.preheader:                                       ; preds = %29, %47
  %34 = phi i64 [ 0, %29 ], [ %48, %47 ]
  %35 = getelementptr float, ptr %32, i64 %34
  %36 = getelementptr inbounds nuw float, ptr %4, i64 %34
  %.promoted = load float, ptr %36, align 4
  br label %37, !dbg !393

37:                                               ; preds = %.preheader, %37
  %38 = phi i64 [ 0, %.preheader ], [ %46, %37 ]
  %39 = phi float [ %.promoted, %.preheader ], [ %45, %37 ]
  %40 = getelementptr float, ptr %35, i64 %38, !dbg !393
  %41 = load float, ptr %40, align 4, !dbg !393
  %42 = getelementptr inbounds nuw float, ptr %33, i64 %38, !dbg !393
  %43 = load float, ptr %42, align 4, !dbg !393
  %44 = fmul contract float %41, %43, !dbg !400
  %45 = fadd contract float %39, %44, !dbg !401
  %46 = add nuw nsw i64 %38, 1, !dbg !393
  %exitcond36.not = icmp eq i64 %46, 3, !dbg !393
  br i1 %exitcond36.not, label %47, label %37, !dbg !393

47:                                               ; preds = %37
  store float %45, ptr %36, align 4, !dbg !393
  %48 = add nuw nsw i64 %34, 1, !dbg !393
  %exitcond37.not = icmp eq i64 %48, 7, !dbg !393
  br i1 %exitcond37.not, label %49, label %.preheader, !dbg !393

49:                                               ; preds = %47
  %50 = add nuw nsw i64 %30, 1, !dbg !393
  %exitcond38.not = icmp eq i64 %50, 3, !dbg !393
  br i1 %exitcond38.not, label %.preheader33, label %29, !dbg !393

51:                                               ; preds = %.preheader33, %51
  %52 = phi i64 [ 0, %.preheader33 ], [ %60, %51 ]
  %53 = getelementptr float, ptr %4, i64 %52, !dbg !399
  %54 = load <1 x float>, ptr %53, align 4, !dbg !399
  %55 = fadd contract <1 x float> %54, zeroinitializer, !dbg !402
  %.inv = fcmp oge <1 x float> %54, zeroinitializer, !dbg !403
  %56 = select <1 x i1> %.inv, <1 x float> %55, <1 x float> zeroinitializer, !dbg !403
  %.inv27 = fcmp ole <1 x float> %56, splat (float 6.000000e+00), !dbg !404
  %57 = select <1 x i1> %.inv27, <1 x float> %56, <1 x float> splat (float 6.000000e+00), !dbg !404
  %58 = extractelement <1 x float> %57, i64 0, !dbg !399
  %59 = getelementptr inbounds nuw float, ptr %gep, i64 %52, !dbg !399
  store float %58, ptr %59, align 4, !dbg !399
  %60 = add nuw nsw i64 %52, 1, !dbg !399
  %exitcond39.not = icmp eq i64 %60, 7, !dbg !399
  br i1 %exitcond39.not, label %61, label %51, !dbg !399

61:                                               ; preds = %51
  %62 = add nuw nsw i64 %19, 1, !dbg !393
  %exitcond40.not = icmp eq i64 %62, 32, !dbg !393
  br i1 %exitcond40.not, label %63, label %18, !dbg !393

63:                                               ; preds = %61
  %64 = add nuw nsw i64 %17, 1, !dbg !393
  %exitcond41.not = icmp eq i64 %64, 7, !dbg !393
  br i1 %exitcond41.not, label %65, label %.preheader35, !dbg !393

65:                                               ; preds = %63
  ret i32 0, !dbg !405
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !406 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !407
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !407
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !407
  %5 = getelementptr i8, ptr %4, i64 3643392, !dbg !407
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !407
  %6 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !408
  %7 = load ptr, ptr %6, align 8, !dbg !408
  %8 = getelementptr i8, ptr %7, i64 2793472, !dbg !408
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !408
  %9 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !409
  %10 = load ptr, ptr %9, align 8, !dbg !409
  %11 = getelementptr i8, ptr %10, i64 1605632, !dbg !409
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !409
  %12 = load i32, ptr %2, align 16, !dbg !410
  %13 = zext i32 %12 to i64, !dbg !410
  %14 = shl nuw nsw i64 %13, 6, !dbg !410
  br label %15, !dbg !410

15:                                               ; preds = %3, %85
  %16 = phi i64 [ 0, %3 ], [ %86, %85 ]
  %17 = add nuw nsw i64 %16, %14, !dbg !410
  %.idx34 = shl nuw nsw i64 %17, 12
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx34
  %.idx = mul nuw nsw i64 %17, 484
  %19 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx
  br label %.preheader35, !dbg !410

.preheader35:                                     ; preds = %15, %83
  %20 = phi i64 [ 0, %15 ], [ %84, %83 ]
  %invariant.gep.idx = mul i64 %20, 28
  %invariant.gep = getelementptr i8, ptr %5, i64 %invariant.gep.idx
  %.idx25 = mul nuw nsw i64 %20, 44
  %21 = getelementptr i8, ptr %19, i64 %.idx25
  %22 = getelementptr i8, ptr %21, i64 96
  br label %.preheader, !dbg !410

.preheader:                                       ; preds = %.preheader35, %76
  %23 = phi i64 [ 0, %.preheader35 ], [ %82, %76 ]
  %invariant.gep36 = getelementptr float, ptr %invariant.gep, i64 %23, !dbg !410
  br label %24, !dbg !410

24:                                               ; preds = %.preheader, %24
  %25 = phi <1 x float> [ zeroinitializer, %.preheader ], [ %73, %24 ]
  %26 = phi i64 [ 0, %.preheader ], [ %74, %24 ]
  %.idx26 = mul nuw nsw i64 %26, 196, !dbg !410
  %gep37 = getelementptr i8, ptr %invariant.gep36, i64 %.idx26, !dbg !410
  %27 = load <1 x float>, ptr %gep37, align 4, !dbg !410
  %28 = or disjoint i64 %26, 1, !dbg !410
  %.idx27 = mul nuw nsw i64 %28, 196, !dbg !410
  %gep40 = getelementptr i8, ptr %invariant.gep36, i64 %.idx27, !dbg !410
  %29 = load <1 x float>, ptr %gep40, align 4, !dbg !410
  %30 = or disjoint i64 %26, 2, !dbg !410
  %.idx28 = mul nuw nsw i64 %30, 196, !dbg !410
  %gep43 = getelementptr i8, ptr %invariant.gep36, i64 %.idx28, !dbg !410
  %31 = load <1 x float>, ptr %gep43, align 4, !dbg !410
  %32 = or disjoint i64 %26, 3, !dbg !410
  %.idx29 = mul nuw nsw i64 %32, 196, !dbg !410
  %gep46 = getelementptr i8, ptr %invariant.gep36, i64 %.idx29, !dbg !410
  %33 = load <1 x float>, ptr %gep46, align 4, !dbg !410
  %34 = or disjoint i64 %26, 4, !dbg !410
  %.idx30 = mul nuw nsw i64 %34, 196, !dbg !410
  %gep49 = getelementptr i8, ptr %invariant.gep36, i64 %.idx30, !dbg !410
  %35 = load <1 x float>, ptr %gep49, align 4, !dbg !410
  %36 = or disjoint i64 %26, 5, !dbg !410
  %.idx31 = mul nuw nsw i64 %36, 196, !dbg !410
  %gep52 = getelementptr i8, ptr %invariant.gep36, i64 %.idx31, !dbg !410
  %37 = load <1 x float>, ptr %gep52, align 4, !dbg !410
  %38 = or disjoint i64 %26, 6, !dbg !410
  %.idx32 = mul nuw nsw i64 %38, 196, !dbg !410
  %gep55 = getelementptr i8, ptr %invariant.gep36, i64 %.idx32, !dbg !410
  %39 = load <1 x float>, ptr %gep55, align 4, !dbg !410
  %40 = or disjoint i64 %26, 7, !dbg !410
  %.idx33 = mul nuw nsw i64 %40, 196, !dbg !410
  %gep58 = getelementptr i8, ptr %invariant.gep36, i64 %.idx33, !dbg !410
  %41 = load <1 x float>, ptr %gep58, align 4, !dbg !410
  %42 = getelementptr inbounds nuw float, ptr %18, i64 %26, !dbg !411
  %43 = load float, ptr %42, align 32, !dbg !411
  %44 = insertelement <1 x float> poison, float %43, i64 0, !dbg !411
  %45 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %27, <1 x float> %44, <1 x float> %25), !dbg !411
  %46 = getelementptr inbounds nuw float, ptr %18, i64 %28, !dbg !411
  %47 = load float, ptr %46, align 4, !dbg !411
  %48 = insertelement <1 x float> poison, float %47, i64 0, !dbg !411
  %49 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %29, <1 x float> %48, <1 x float> %45), !dbg !411
  %50 = getelementptr inbounds nuw float, ptr %18, i64 %30, !dbg !411
  %51 = load float, ptr %50, align 8, !dbg !411
  %52 = insertelement <1 x float> poison, float %51, i64 0, !dbg !411
  %53 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %31, <1 x float> %52, <1 x float> %49), !dbg !411
  %54 = getelementptr inbounds nuw float, ptr %18, i64 %32, !dbg !411
  %55 = load float, ptr %54, align 4, !dbg !411
  %56 = insertelement <1 x float> poison, float %55, i64 0, !dbg !411
  %57 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %33, <1 x float> %56, <1 x float> %53), !dbg !411
  %58 = getelementptr inbounds nuw float, ptr %18, i64 %34, !dbg !411
  %59 = load float, ptr %58, align 16, !dbg !411
  %60 = insertelement <1 x float> poison, float %59, i64 0, !dbg !411
  %61 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %35, <1 x float> %60, <1 x float> %57), !dbg !411
  %62 = getelementptr inbounds nuw float, ptr %18, i64 %36, !dbg !411
  %63 = load float, ptr %62, align 4, !dbg !411
  %64 = insertelement <1 x float> poison, float %63, i64 0, !dbg !411
  %65 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %37, <1 x float> %64, <1 x float> %61), !dbg !411
  %66 = getelementptr inbounds nuw float, ptr %18, i64 %38, !dbg !411
  %67 = load float, ptr %66, align 8, !dbg !411
  %68 = insertelement <1 x float> poison, float %67, i64 0, !dbg !411
  %69 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %39, <1 x float> %68, <1 x float> %65), !dbg !411
  %70 = getelementptr inbounds nuw float, ptr %18, i64 %40, !dbg !411
  %71 = load float, ptr %70, align 4, !dbg !411
  %72 = insertelement <1 x float> poison, float %71, i64 0, !dbg !411
  %73 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %41, <1 x float> %72, <1 x float> %69), !dbg !411
  %74 = add nuw nsw i64 %26, 8, !dbg !410
  %75 = icmp samesign ult i64 %26, 1016, !dbg !410
  br i1 %75, label %24, label %76, !dbg !410

76:                                               ; preds = %24
  %77 = fadd contract <1 x float> %73, zeroinitializer, !dbg !412
  %.inv = fcmp oge <1 x float> %73, zeroinitializer, !dbg !413
  %78 = select <1 x i1> %.inv, <1 x float> %77, <1 x float> zeroinitializer, !dbg !413
  %.inv24 = fcmp ole <1 x float> %78, splat (float 6.000000e+00), !dbg !414
  %79 = select <1 x i1> %.inv24, <1 x float> %78, <1 x float> splat (float 6.000000e+00), !dbg !414
  %80 = extractelement <1 x float> %79, i64 0, !dbg !410
  %81 = getelementptr float, ptr %22, i64 %23, !dbg !410
  store float %80, ptr %81, align 4, !dbg !410
  %82 = add nuw nsw i64 %23, 1, !dbg !410
  %exitcond.not = icmp eq i64 %82, 7, !dbg !410
  br i1 %exitcond.not, label %83, label %.preheader, !dbg !410

83:                                               ; preds = %76
  %84 = add nuw nsw i64 %20, 1, !dbg !410
  %exitcond59.not = icmp eq i64 %84, 7, !dbg !410
  br i1 %exitcond59.not, label %85, label %.preheader35, !dbg !410

85:                                               ; preds = %83
  %86 = add nuw nsw i64 %16, 1, !dbg !410
  %exitcond60.not = icmp eq i64 %86, 64, !dbg !410
  br i1 %exitcond60.not, label %87, label %15, !dbg !410

87:                                               ; preds = %85
  ret i32 0, !dbg !415
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !416 {
  %4 = alloca [7 x float], align 64, !dbg !417
  %5 = alloca [7 x float], align 64, !dbg !418
  %.elt23 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !419
  %.unpack24 = load ptr, ptr %.elt23, align 16, !dbg !419
  %6 = load ptr, ptr %.unpack24, align 8, !dbg !419
  %7 = getelementptr i8, ptr %6, i64 1605632, !dbg !419
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !419
  %8 = getelementptr i8, ptr %.unpack24, i64 8, !dbg !420
  %9 = load ptr, ptr %8, align 8, !dbg !420
  %10 = getelementptr i8, ptr %9, i64 15447808, !dbg !420
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !420
  %11 = getelementptr i8, ptr %.unpack24, i64 16, !dbg !421
  %12 = load ptr, ptr %11, align 8, !dbg !421
  %13 = getelementptr i8, ptr %12, i64 2101248, !dbg !421
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !421
  %14 = load i32, ptr %2, align 16, !dbg !417
  %15 = zext i32 %14 to i64, !dbg !417
  %16 = shl nuw nsw i64 %15, 5, !dbg !417
  store <7 x float> zeroinitializer, ptr %5, align 64, !dbg !422
  br label %.preheader34, !dbg !417

.preheader34:                                     ; preds = %3, %62
  %17 = phi i64 [ 0, %3 ], [ %63, %62 ]
  %.idx27 = mul nuw nsw i64 %17, 28
  %invariant.gep = getelementptr inbounds nuw i8, ptr %13, i64 %.idx27, !dbg !417
  br label %18, !dbg !417

18:                                               ; preds = %.preheader34, %60
  %19 = phi i64 [ 0, %.preheader34 ], [ %61, %60 ]
  br label %23, !dbg !417

.preheader33:                                     ; preds = %23
  %20 = add nuw nsw i64 %19, %16, !dbg !417
  %.idx28 = mul nuw nsw i64 %20, 484
  %21 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx28
  %.idx30 = mul nuw nsw i64 %20, 100
  %22 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx30
  br label %29, !dbg !417

23:                                               ; preds = %18, %23
  %24 = phi i64 [ 0, %18 ], [ %28, %23 ]
  %25 = getelementptr inbounds nuw float, ptr %5, i64 %24, !dbg !417
  %26 = load float, ptr %25, align 4, !dbg !417
  %27 = getelementptr inbounds nuw float, ptr %4, i64 %24, !dbg !417
  store float %26, ptr %27, align 4, !dbg !417
  %28 = add nuw nsw i64 %24, 1, !dbg !417
  %exitcond.not = icmp eq i64 %28, 7, !dbg !417
  br i1 %exitcond.not, label %.preheader33, label %23, !dbg !417

.preheader32:                                     ; preds = %49
  %.idx = mul nuw nsw i64 %20, 196
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx
  br label %51, !dbg !423

29:                                               ; preds = %.preheader33, %49
  %30 = phi i64 [ 0, %.preheader33 ], [ %50, %49 ]
  %31 = add nuw nsw i64 %30, %17, !dbg !417
  %.idx29 = mul nuw nsw i64 %31, 44
  %32 = getelementptr inbounds nuw i8, ptr %21, i64 %.idx29
  %.idx31 = mul nuw nsw i64 %30, 20
  %33 = getelementptr inbounds nuw i8, ptr %22, i64 %.idx31
  br label %.preheader, !dbg !417

.preheader:                                       ; preds = %29, %47
  %34 = phi i64 [ 0, %29 ], [ %48, %47 ]
  %35 = getelementptr float, ptr %32, i64 %34
  %36 = getelementptr inbounds nuw float, ptr %4, i64 %34
  %.promoted = load float, ptr %36, align 4
  br label %37, !dbg !417

37:                                               ; preds = %.preheader, %37
  %38 = phi i64 [ 0, %.preheader ], [ %46, %37 ]
  %39 = phi float [ %.promoted, %.preheader ], [ %45, %37 ]
  %40 = getelementptr float, ptr %35, i64 %38, !dbg !417
  %41 = load float, ptr %40, align 4, !dbg !417
  %42 = getelementptr inbounds nuw float, ptr %33, i64 %38, !dbg !417
  %43 = load float, ptr %42, align 4, !dbg !417
  %44 = fmul contract float %41, %43, !dbg !424
  %45 = fadd contract float %39, %44, !dbg !425
  %46 = add nuw nsw i64 %38, 1, !dbg !417
  %exitcond35.not = icmp eq i64 %46, 5, !dbg !417
  br i1 %exitcond35.not, label %47, label %37, !dbg !417

47:                                               ; preds = %37
  store float %45, ptr %36, align 4, !dbg !417
  %48 = add nuw nsw i64 %34, 1, !dbg !417
  %exitcond36.not = icmp eq i64 %48, 7, !dbg !417
  br i1 %exitcond36.not, label %49, label %.preheader, !dbg !417

49:                                               ; preds = %47
  %50 = add nuw nsw i64 %30, 1, !dbg !417
  %exitcond37.not = icmp eq i64 %50, 5, !dbg !417
  br i1 %exitcond37.not, label %.preheader32, label %29, !dbg !417

51:                                               ; preds = %.preheader32, %51
  %52 = phi i64 [ 0, %.preheader32 ], [ %59, %51 ]
  %53 = getelementptr float, ptr %4, i64 %52, !dbg !423
  %54 = load <1 x float>, ptr %53, align 4, !dbg !423
  %55 = fadd contract <1 x float> %54, zeroinitializer, !dbg !426
  %.inv = fcmp ole <1 x float> %54, zeroinitializer, !dbg !427
  %56 = select <1 x i1> %.inv, <1 x float> zeroinitializer, <1 x float> %55, !dbg !427
  %57 = extractelement <1 x float> %56, i64 0, !dbg !423
  %58 = getelementptr inbounds nuw float, ptr %gep, i64 %52, !dbg !423
  store float %57, ptr %58, align 4, !dbg !423
  %59 = add nuw nsw i64 %52, 1, !dbg !423
  %exitcond38.not = icmp eq i64 %59, 7, !dbg !423
  br i1 %exitcond38.not, label %60, label %51, !dbg !423

60:                                               ; preds = %51
  %61 = add nuw nsw i64 %19, 1, !dbg !417
  %exitcond39.not = icmp eq i64 %61, 32, !dbg !417
  br i1 %exitcond39.not, label %62, label %18, !dbg !417

62:                                               ; preds = %60
  %63 = add nuw nsw i64 %17, 1, !dbg !417
  %exitcond40.not = icmp eq i64 %63, 7, !dbg !417
  br i1 %exitcond40.not, label %64, label %.preheader34, !dbg !417

64:                                               ; preds = %62
  ret i32 0, !dbg !428
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_32_matmul_like_512x49x1024_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !429 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !430
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !430
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !430
  %5 = getelementptr i8, ptr %4, i64 2101248, !dbg !430
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !430
  %6 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !431
  %7 = load ptr, ptr %6, align 8, !dbg !431
  %8 = getelementptr i8, ptr %7, i64 696320, !dbg !431
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !431
  %9 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !432
  %10 = load ptr, ptr %9, align 8, !dbg !432
  %11 = getelementptr i8, ptr %10, i64 2301952, !dbg !432
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !432
  %12 = load i32, ptr %2, align 16, !dbg !433
  %13 = zext i32 %12 to i64, !dbg !433
  %14 = shl nuw nsw i64 %13, 6, !dbg !433
  br label %15, !dbg !433

15:                                               ; preds = %3, %79
  %16 = phi i64 [ 0, %3 ], [ %80, %79 ]
  %17 = add nuw nsw i64 %16, %14, !dbg !433
  %.idx32 = shl nuw nsw i64 %17, 12
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx32
  %.idx = mul nuw nsw i64 %17, 196
  %19 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx
  br label %.preheader, !dbg !433

.preheader:                                       ; preds = %15, %73
  %20 = phi i64 [ 0, %15 ], [ %78, %73 ]
  %invariant.gep = getelementptr float, ptr %5, i64 %20, !dbg !433
  br label %21, !dbg !433

21:                                               ; preds = %.preheader, %21
  %22 = phi <1 x float> [ zeroinitializer, %.preheader ], [ %70, %21 ]
  %23 = phi i64 [ 0, %.preheader ], [ %71, %21 ]
  %.idx24 = mul nuw nsw i64 %23, 196, !dbg !433
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx24, !dbg !433
  %24 = load <1 x float>, ptr %gep, align 4, !dbg !433
  %25 = or disjoint i64 %23, 1, !dbg !433
  %.idx25 = mul nuw nsw i64 %25, 196, !dbg !433
  %gep34 = getelementptr i8, ptr %invariant.gep, i64 %.idx25, !dbg !433
  %26 = load <1 x float>, ptr %gep34, align 4, !dbg !433
  %27 = or disjoint i64 %23, 2, !dbg !433
  %.idx26 = mul nuw nsw i64 %27, 196, !dbg !433
  %gep36 = getelementptr i8, ptr %invariant.gep, i64 %.idx26, !dbg !433
  %28 = load <1 x float>, ptr %gep36, align 4, !dbg !433
  %29 = or disjoint i64 %23, 3, !dbg !433
  %.idx27 = mul nuw nsw i64 %29, 196, !dbg !433
  %gep38 = getelementptr i8, ptr %invariant.gep, i64 %.idx27, !dbg !433
  %30 = load <1 x float>, ptr %gep38, align 4, !dbg !433
  %31 = or disjoint i64 %23, 4, !dbg !433
  %.idx28 = mul nuw nsw i64 %31, 196, !dbg !433
  %gep40 = getelementptr i8, ptr %invariant.gep, i64 %.idx28, !dbg !433
  %32 = load <1 x float>, ptr %gep40, align 4, !dbg !433
  %33 = or disjoint i64 %23, 5, !dbg !433
  %.idx29 = mul nuw nsw i64 %33, 196, !dbg !433
  %gep42 = getelementptr i8, ptr %invariant.gep, i64 %.idx29, !dbg !433
  %34 = load <1 x float>, ptr %gep42, align 4, !dbg !433
  %35 = or disjoint i64 %23, 6, !dbg !433
  %.idx30 = mul nuw nsw i64 %35, 196, !dbg !433
  %gep44 = getelementptr i8, ptr %invariant.gep, i64 %.idx30, !dbg !433
  %36 = load <1 x float>, ptr %gep44, align 4, !dbg !433
  %37 = or disjoint i64 %23, 7, !dbg !433
  %.idx31 = mul nuw nsw i64 %37, 196, !dbg !433
  %gep46 = getelementptr i8, ptr %invariant.gep, i64 %.idx31, !dbg !433
  %38 = load <1 x float>, ptr %gep46, align 4, !dbg !433
  %39 = getelementptr inbounds nuw float, ptr %18, i64 %23, !dbg !434
  %40 = load float, ptr %39, align 32, !dbg !434
  %41 = insertelement <1 x float> poison, float %40, i64 0, !dbg !434
  %42 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %24, <1 x float> %41, <1 x float> %22), !dbg !434
  %43 = getelementptr inbounds nuw float, ptr %18, i64 %25, !dbg !434
  %44 = load float, ptr %43, align 4, !dbg !434
  %45 = insertelement <1 x float> poison, float %44, i64 0, !dbg !434
  %46 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %26, <1 x float> %45, <1 x float> %42), !dbg !434
  %47 = getelementptr inbounds nuw float, ptr %18, i64 %27, !dbg !434
  %48 = load float, ptr %47, align 8, !dbg !434
  %49 = insertelement <1 x float> poison, float %48, i64 0, !dbg !434
  %50 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %28, <1 x float> %49, <1 x float> %46), !dbg !434
  %51 = getelementptr inbounds nuw float, ptr %18, i64 %29, !dbg !434
  %52 = load float, ptr %51, align 4, !dbg !434
  %53 = insertelement <1 x float> poison, float %52, i64 0, !dbg !434
  %54 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %30, <1 x float> %53, <1 x float> %50), !dbg !434
  %55 = getelementptr inbounds nuw float, ptr %18, i64 %31, !dbg !434
  %56 = load float, ptr %55, align 16, !dbg !434
  %57 = insertelement <1 x float> poison, float %56, i64 0, !dbg !434
  %58 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %32, <1 x float> %57, <1 x float> %54), !dbg !434
  %59 = getelementptr inbounds nuw float, ptr %18, i64 %33, !dbg !434
  %60 = load float, ptr %59, align 4, !dbg !434
  %61 = insertelement <1 x float> poison, float %60, i64 0, !dbg !434
  %62 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %34, <1 x float> %61, <1 x float> %58), !dbg !434
  %63 = getelementptr inbounds nuw float, ptr %18, i64 %35, !dbg !434
  %64 = load float, ptr %63, align 8, !dbg !434
  %65 = insertelement <1 x float> poison, float %64, i64 0, !dbg !434
  %66 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %65, <1 x float> %62), !dbg !434
  %67 = getelementptr inbounds nuw float, ptr %18, i64 %37, !dbg !434
  %68 = load float, ptr %67, align 4, !dbg !434
  %69 = insertelement <1 x float> poison, float %68, i64 0, !dbg !434
  %70 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %38, <1 x float> %69, <1 x float> %66), !dbg !434
  %71 = add nuw nsw i64 %23, 8, !dbg !433
  %72 = icmp samesign ult i64 %23, 1016, !dbg !433
  br i1 %72, label %21, label %73, !dbg !433

73:                                               ; preds = %21
  %74 = fadd contract <1 x float> %70, zeroinitializer, !dbg !435
  %.inv = fcmp ole <1 x float> %70, zeroinitializer, !dbg !436
  %75 = select <1 x i1> %.inv, <1 x float> zeroinitializer, <1 x float> %74, !dbg !436
  %76 = extractelement <1 x float> %75, i64 0, !dbg !433
  %77 = getelementptr inbounds nuw float, ptr %19, i64 %20, !dbg !433
  store float %76, ptr %77, align 4, !dbg !433
  %78 = add nuw nsw i64 %20, 1, !dbg !433
  %exitcond.not = icmp eq i64 %78, 49, !dbg !433
  br i1 %exitcond.not, label %79, label %.preheader, !dbg !433

79:                                               ; preds = %73
  %80 = add nuw nsw i64 %16, 1, !dbg !433
  %exitcond47.not = icmp eq i64 %80, 64, !dbg !433
  br i1 %exitcond47.not, label %81, label %15, !dbg !433

81:                                               ; preds = %79
  ret i32 0, !dbg !437
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !438 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !439
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !439
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !439
  %5 = getelementptr i8, ptr %4, i64 2301952, !dbg !439
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !439
  %6 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !440
  %7 = load ptr, ptr %6, align 8, !dbg !440
  %8 = getelementptr i8, ptr %7, i64 3211264, !dbg !440
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !440
  %9 = load i32, ptr %2, align 16, !dbg !441
  %10 = zext i32 %9 to i64, !dbg !441
  %11 = shl nuw nsw i64 %10, 5, !dbg !441
  %12 = and i64 %11, 137438953408, !dbg !441
  %13 = trunc i32 %9 to i1, !dbg !441
  %14 = select i1 %13, i64 7, i64 0, !dbg !441
  br label %15, !dbg !441

15:                                               ; preds = %3, %97
  %16 = phi i64 [ 0, %3 ], [ %98, %97 ]
  %17 = or disjoint i64 %16, %12, !dbg !442
  %18 = mul nuw nsw i64 %17, 7, !dbg !443
  %.idx = mul nuw nsw i64 %17, 1296
  %19 = getelementptr i8, ptr %8, i64 %.idx
  br label %20, !dbg !441

20:                                               ; preds = %15, %20
  %21 = phi i64 [ 0, %15 ], [ %96, %20 ]
  %22 = add nuw nsw i64 %21, %14, !dbg !444
  %23 = uitofp nneg i64 %22 to float, !dbg !445
  %24 = fmul float %23, 5.000000e-01, !dbg !446
  %25 = tail call float @llvm.floor.f32(float %24), !dbg !447
  %26 = fptosi float %25 to i64, !dbg !448
  %27 = add i64 %18, %26, !dbg !443
  %28 = mul i64 %27, 7, !dbg !443
  %29 = insertelement <8 x i64> poison, i64 %28, i64 0, !dbg !443
  %30 = shufflevector <8 x i64> %29, <8 x i64> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, !dbg !443
  %31 = add <8 x i64> %30, <i64 poison, i64 poison, i64 1, i64 1, i64 2, i64 2, i64 3, i64 3>, !dbg !443
  %32 = getelementptr float, ptr %5, i64 %28, !dbg !443
  %33 = load <1 x float>, ptr %32, align 4, !dbg !443
  %34 = extractelement <8 x i64> %31, i64 2, !dbg !443
  %35 = getelementptr float, ptr %5, i64 %34, !dbg !443
  %36 = load <1 x float>, ptr %35, align 4, !dbg !443
  %37 = extractelement <8 x i64> %31, i64 3, !dbg !443
  %38 = getelementptr float, ptr %5, i64 %37, !dbg !443
  %39 = load <1 x float>, ptr %38, align 4, !dbg !443
  %40 = shufflevector <1 x float> %39, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %41 = extractelement <8 x i64> %31, i64 4, !dbg !443
  %42 = getelementptr float, ptr %5, i64 %41, !dbg !443
  %43 = load <1 x float>, ptr %42, align 4, !dbg !443
  %44 = shufflevector <1 x float> %43, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %45 = extractelement <8 x i64> %31, i64 5, !dbg !443
  %46 = getelementptr float, ptr %5, i64 %45, !dbg !443
  %47 = load <1 x float>, ptr %46, align 4, !dbg !443
  %48 = shufflevector <1 x float> %47, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %49 = extractelement <8 x i64> %31, i64 6, !dbg !443
  %50 = getelementptr float, ptr %5, i64 %49, !dbg !443
  %51 = load <1 x float>, ptr %50, align 4, !dbg !443
  %52 = shufflevector <1 x float> %51, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %53 = extractelement <8 x i64> %31, i64 7, !dbg !443
  %54 = getelementptr float, ptr %5, i64 %53, !dbg !443
  %55 = load <1 x float>, ptr %54, align 4, !dbg !443
  %56 = shufflevector <1 x float> %55, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %57 = shufflevector <1 x float> %33, <1 x float> %36, <8 x i32> <i32 0, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !443
  %58 = shufflevector <8 x float> %57, <8 x float> %40, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !443
  %59 = shufflevector <8 x float> %58, <8 x float> %44, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>, !dbg !443
  %60 = shufflevector <8 x float> %59, <8 x float> %48, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>, !dbg !443
  %61 = shufflevector <8 x float> %60, <8 x float> %52, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>, !dbg !443
  %62 = shufflevector <8 x float> %61, <8 x float> %56, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>, !dbg !443
  %.idx24 = mul nuw nsw i64 %22, 72, !dbg !441
  %63 = getelementptr i8, ptr %19, i64 %.idx24, !dbg !441
  %64 = getelementptr i8, ptr %63, i64 152, !dbg !441
  store <8 x float> %62, ptr %64, align 8, !dbg !441
  %65 = insertelement <6 x i64> poison, i64 %28, i64 0, !dbg !443
  %66 = shufflevector <6 x i64> %65, <6 x i64> poison, <6 x i32> zeroinitializer, !dbg !443
  %67 = add <6 x i64> %66, <i64 4, i64 4, i64 5, i64 5, i64 6, i64 6>, !dbg !443
  %68 = extractelement <6 x i64> %67, i64 0, !dbg !443
  %69 = getelementptr float, ptr %5, i64 %68, !dbg !443
  %70 = load <1 x float>, ptr %69, align 4, !dbg !443
  %71 = extractelement <6 x i64> %67, i64 1, !dbg !443
  %72 = getelementptr float, ptr %5, i64 %71, !dbg !443
  %73 = load <1 x float>, ptr %72, align 4, !dbg !443
  %74 = extractelement <6 x i64> %67, i64 2, !dbg !443
  %75 = getelementptr float, ptr %5, i64 %74, !dbg !443
  %76 = load <1 x float>, ptr %75, align 4, !dbg !443
  %77 = shufflevector <1 x float> %76, <1 x float> poison, <6 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %78 = extractelement <6 x i64> %67, i64 3, !dbg !443
  %79 = getelementptr float, ptr %5, i64 %78, !dbg !443
  %80 = load <1 x float>, ptr %79, align 4, !dbg !443
  %81 = shufflevector <1 x float> %80, <1 x float> poison, <6 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %82 = extractelement <6 x i64> %67, i64 4, !dbg !443
  %83 = getelementptr float, ptr %5, i64 %82, !dbg !443
  %84 = load <1 x float>, ptr %83, align 4, !dbg !443
  %85 = shufflevector <1 x float> %84, <1 x float> poison, <6 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %86 = extractelement <6 x i64> %67, i64 5, !dbg !443
  %87 = getelementptr float, ptr %5, i64 %86, !dbg !443
  %88 = load <1 x float>, ptr %87, align 4, !dbg !443
  %89 = shufflevector <1 x float> %88, <1 x float> poison, <6 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %90 = shufflevector <1 x float> %70, <1 x float> %73, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !443
  %91 = shufflevector <6 x float> %90, <6 x float> %77, <6 x i32> <i32 0, i32 1, i32 6, i32 poison, i32 poison, i32 poison>, !dbg !443
  %92 = shufflevector <6 x float> %91, <6 x float> %81, <6 x i32> <i32 0, i32 1, i32 2, i32 6, i32 poison, i32 poison>, !dbg !443
  %93 = shufflevector <6 x float> %92, <6 x float> %85, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 poison>, !dbg !443
  %94 = shufflevector <6 x float> %93, <6 x float> %89, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 6>, !dbg !443
  %95 = getelementptr i8, ptr %63, i64 184, !dbg !441
  store <6 x float> %94, ptr %95, align 8, !dbg !441
  %96 = add nuw nsw i64 %21, 1, !dbg !441
  %exitcond.not = icmp eq i64 %96, 7, !dbg !441
  br i1 %exitcond.not, label %97, label %20, !dbg !441

97:                                               ; preds = %20
  %98 = add nuw nsw i64 %16, 1, !dbg !441
  %exitcond25.not = icmp eq i64 %98, 64, !dbg !441
  br i1 %exitcond25.not, label %99, label %15, !dbg !441

99:                                               ; preds = %97
  ret i32 0, !dbg !449
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_34_conv_14x14x512x5x5_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !450 {
  %4 = alloca [8 x float], align 64, !dbg !451
  %5 = alloca [8 x float], align 64, !dbg !451
  %6 = alloca [8 x float], align 64, !dbg !452
  %.elt26 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !453
  %.unpack27 = load ptr, ptr %.elt26, align 16, !dbg !453
  %7 = load ptr, ptr %.unpack27, align 8, !dbg !453
  %8 = getelementptr i8, ptr %7, i64 3211264, !dbg !453
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !453
  %9 = getelementptr i8, ptr %.unpack27, i64 8, !dbg !454
  %10 = load ptr, ptr %9, align 8, !dbg !454
  %11 = getelementptr i8, ptr %10, i64 15396608, !dbg !454
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !454
  %12 = getelementptr i8, ptr %.unpack27, i64 16, !dbg !455
  %13 = load ptr, ptr %12, align 8, !dbg !455
  %14 = getelementptr i8, ptr %13, i64 1605632, !dbg !455
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !455
  %15 = load i32, ptr %2, align 16, !dbg !451
  %16 = zext i32 %15 to i64, !dbg !451
  %17 = shl nuw nsw i64 %16, 5, !dbg !451
  br label %.preheader39, !dbg !451

.preheader39:                                     ; preds = %3, %81
  %18 = phi i64 [ 0, %3 ], [ %82, %81 ]
  %.idx30 = mul nuw nsw i64 %18, 56
  %invariant.gep = getelementptr inbounds nuw i8, ptr %14, i64 %.idx30
  br label %19, !dbg !451

19:                                               ; preds = %.preheader39, %80
  %indvars.iv = phi i64 [ 14, %.preheader39 ], [ %indvars.iv.next, %80 ]
  %20 = phi i1 [ true, %.preheader39 ], [ false, %80 ]
  %21 = phi i64 [ 0, %.preheader39 ], [ 8, %80 ]
  %umin53 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !451
  %22 = sub nuw nsw i64 14, %21, !dbg !451
  %23 = tail call i64 @llvm.umin.i64(i64 %22, i64 8), !dbg !451
  %24 = trunc nuw nsw i64 %23 to i32, !dbg !456
  %25 = insertelement <8 x i32> poison, i32 %24, i64 0, !dbg !456
  %26 = shufflevector <8 x i32> %25, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !456
  %27 = icmp samesign ugt <8 x i32> %26, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !456
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %6, i32 64, <8 x i1> %27), !dbg !456
  %invariant.gep40 = getelementptr float, ptr %8, i64 %21, !dbg !451
  %invariant.gep43 = getelementptr inbounds nuw float, ptr %invariant.gep, i64 %21, !dbg !451
  br label %28, !dbg !451

28:                                               ; preds = %19, %78
  %29 = phi i64 [ 0, %19 ], [ %79, %78 ]
  br label %32, !dbg !451

.preheader38:                                     ; preds = %32
  %30 = add nuw nsw i64 %29, %17, !dbg !451
  %.idx31 = mul nuw nsw i64 %30, 1296
  %gep41 = getelementptr i8, ptr %invariant.gep40, i64 %.idx31, !dbg !451
  %.idx33 = mul nuw nsw i64 %30, 100
  %31 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx33
  br label %38, !dbg !451

32:                                               ; preds = %28, %32
  %33 = phi i64 [ 0, %28 ], [ %37, %32 ]
  %34 = getelementptr inbounds nuw float, ptr %6, i64 %33, !dbg !451
  %35 = load float, ptr %34, align 4, !dbg !451
  %36 = getelementptr inbounds nuw float, ptr %5, i64 %33, !dbg !451
  store float %35, ptr %36, align 4, !dbg !451
  %37 = add nuw nsw i64 %33, 1, !dbg !451
  %exitcond.not = icmp eq i64 %37, %umin53, !dbg !451
  br i1 %exitcond.not, label %.preheader38, label %32, !dbg !451

38:                                               ; preds = %.preheader38, %57
  %39 = phi i64 [ 0, %.preheader38 ], [ %58, %57 ]
  %40 = add nuw nsw i64 %39, %18, !dbg !451
  %.idx32 = mul nuw nsw i64 %40, 72
  %gep = getelementptr i8, ptr %gep41, i64 %.idx32
  %.idx34 = mul nuw nsw i64 %39, 20
  %41 = getelementptr inbounds nuw i8, ptr %31, i64 %.idx34
  br label %.preheader, !dbg !451

.preheader:                                       ; preds = %38, %55
  %42 = phi i64 [ 0, %38 ], [ %56, %55 ]
  %43 = getelementptr float, ptr %gep, i64 %42
  %44 = getelementptr inbounds nuw float, ptr %5, i64 %42
  %.promoted = load float, ptr %44, align 4
  br label %45, !dbg !451

45:                                               ; preds = %.preheader, %45
  %46 = phi i64 [ 0, %.preheader ], [ %54, %45 ]
  %47 = phi float [ %.promoted, %.preheader ], [ %53, %45 ]
  %48 = getelementptr float, ptr %43, i64 %46, !dbg !451
  %49 = load float, ptr %48, align 4, !dbg !451
  %50 = getelementptr inbounds nuw float, ptr %41, i64 %46, !dbg !451
  %51 = load float, ptr %50, align 4, !dbg !451
  %52 = fmul contract float %49, %51, !dbg !457
  %53 = fadd contract float %47, %52, !dbg !458
  %54 = add nuw nsw i64 %46, 1, !dbg !451
  %exitcond45.not = icmp eq i64 %54, 5, !dbg !451
  br i1 %exitcond45.not, label %55, label %45, !dbg !451

55:                                               ; preds = %45
  store float %53, ptr %44, align 4, !dbg !451
  %56 = add nuw nsw i64 %42, 1, !dbg !451
  %exitcond47.not = icmp eq i64 %56, %umin53, !dbg !451
  br i1 %exitcond47.not, label %57, label %.preheader, !dbg !451

57:                                               ; preds = %55
  %58 = add nuw nsw i64 %39, 1, !dbg !451
  %exitcond48.not = icmp eq i64 %58, 5, !dbg !451
  br i1 %exitcond48.not, label %.preheader37, label %38, !dbg !451

.preheader37:                                     ; preds = %57, %.preheader37
  %59 = phi i64 [ %63, %.preheader37 ], [ 0, %57 ]
  %60 = getelementptr inbounds nuw float, ptr %6, i64 %59, !dbg !451
  %61 = load float, ptr %60, align 4, !dbg !451
  %62 = getelementptr inbounds nuw float, ptr %4, i64 %59, !dbg !451
  store float %61, ptr %62, align 4, !dbg !451
  %63 = add nuw nsw i64 %59, 1, !dbg !451
  %exitcond50.not = icmp eq i64 %63, %umin53, !dbg !451
  br i1 %exitcond50.not, label %.preheader36, label %.preheader37, !dbg !451

.preheader35:                                     ; preds = %.preheader36
  %.idx = mul nuw nsw i64 %30, 784
  %gep44 = getelementptr inbounds nuw i8, ptr %invariant.gep43, i64 %.idx
  br label %69, !dbg !459

.preheader36:                                     ; preds = %.preheader37, %.preheader36
  %64 = phi i64 [ %68, %.preheader36 ], [ 0, %.preheader37 ]
  %65 = getelementptr inbounds nuw float, ptr %5, i64 %64, !dbg !451
  %66 = load float, ptr %65, align 4, !dbg !451
  %67 = getelementptr inbounds nuw float, ptr %4, i64 %64, !dbg !451
  store float %66, ptr %67, align 4, !dbg !451
  %68 = add nuw nsw i64 %64, 1, !dbg !451
  %exitcond52.not = icmp eq i64 %68, %umin53, !dbg !451
  br i1 %exitcond52.not, label %.preheader35, label %.preheader36, !dbg !451

69:                                               ; preds = %.preheader35, %69
  %70 = phi i64 [ 0, %.preheader35 ], [ %77, %69 ]
  %71 = getelementptr float, ptr %4, i64 %70, !dbg !459
  %72 = load <1 x float>, ptr %71, align 4, !dbg !459
  %73 = fadd contract <1 x float> %72, zeroinitializer, !dbg !460
  %.inv = fcmp ole <1 x float> %72, zeroinitializer, !dbg !461
  %74 = select <1 x i1> %.inv, <1 x float> zeroinitializer, <1 x float> %73, !dbg !461
  %75 = extractelement <1 x float> %74, i64 0, !dbg !459
  %76 = getelementptr inbounds nuw float, ptr %gep44, i64 %70, !dbg !459
  store float %75, ptr %76, align 4, !dbg !459
  %77 = add nuw nsw i64 %70, 1, !dbg !459
  %exitcond54.not = icmp eq i64 %77, %umin53, !dbg !459
  br i1 %exitcond54.not, label %78, label %69, !dbg !459

78:                                               ; preds = %69
  %79 = add nuw nsw i64 %29, 1, !dbg !451
  %exitcond55.not = icmp eq i64 %79, 32, !dbg !451
  br i1 %exitcond55.not, label %80, label %28, !dbg !451

80:                                               ; preds = %78
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !451
  br i1 %20, label %19, label %81, !dbg !451

81:                                               ; preds = %80
  %82 = add nuw nsw i64 %18, 1, !dbg !451
  %exitcond56.not = icmp eq i64 %82, 14, !dbg !451
  br i1 %exitcond56.not, label %83, label %.preheader39, !dbg !451

83:                                               ; preds = %81
  ret i32 0, !dbg !462
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_35_matmul_like_256x196x512_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !463 {
  %.elt21 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !464
  %.unpack22 = load ptr, ptr %.elt21, align 16, !dbg !464
  %4 = load ptr, ptr %.unpack22, align 8, !dbg !464
  %5 = getelementptr i8, ptr %4, i64 1605632, !dbg !464
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !464
  %6 = getelementptr i8, ptr %.unpack22, i64 8, !dbg !465
  %7 = load ptr, ptr %6, align 8, !dbg !465
  %8 = getelementptr i8, ptr %7, i64 172032, !dbg !465
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !465
  %9 = getelementptr i8, ptr %.unpack22, i64 16, !dbg !466
  %10 = load ptr, ptr %9, align 8, !dbg !466
  %11 = getelementptr i8, ptr %10, i64 2007040, !dbg !466
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !466
  %12 = load i32, ptr %2, align 16, !dbg !467
  %13 = zext i32 %12 to i64, !dbg !467
  %14 = and i64 %13, 3, !dbg !467
  %15 = shl nuw nsw i64 %13, 4, !dbg !467
  %16 = and i64 %15, 68719476672, !dbg !467
  %17 = mul nuw nsw i64 %14, 49, !dbg !467
  br label %18, !dbg !467

18:                                               ; preds = %3, %84
  %19 = phi i64 [ 0, %3 ], [ %85, %84 ]
  %20 = or disjoint i64 %19, %16, !dbg !467
  %.idx33 = shl nuw nsw i64 %20, 11
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx33
  %.idx = mul nuw nsw i64 %20, 784
  %22 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx
  br label %23, !dbg !467

23:                                               ; preds = %18, %78
  %24 = phi i64 [ 0, %18 ], [ %83, %78 ]
  %25 = add nuw nsw i64 %24, %17, !dbg !467
  %invariant.gep = getelementptr float, ptr %5, i64 %25, !dbg !467
  br label %26, !dbg !467

26:                                               ; preds = %23, %26
  %27 = phi <1 x float> [ zeroinitializer, %23 ], [ %75, %26 ]
  %28 = phi i64 [ 0, %23 ], [ %76, %26 ]
  %.idx25 = mul nuw nsw i64 %28, 784, !dbg !467
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx25, !dbg !467
  %29 = load <1 x float>, ptr %gep, align 4, !dbg !467
  %30 = or disjoint i64 %28, 1, !dbg !467
  %.idx26 = mul nuw nsw i64 %30, 784, !dbg !467
  %gep35 = getelementptr i8, ptr %invariant.gep, i64 %.idx26, !dbg !467
  %31 = load <1 x float>, ptr %gep35, align 4, !dbg !467
  %32 = or disjoint i64 %28, 2, !dbg !467
  %.idx27 = mul nuw nsw i64 %32, 784, !dbg !467
  %gep37 = getelementptr i8, ptr %invariant.gep, i64 %.idx27, !dbg !467
  %33 = load <1 x float>, ptr %gep37, align 4, !dbg !467
  %34 = or disjoint i64 %28, 3, !dbg !467
  %.idx28 = mul nuw nsw i64 %34, 784, !dbg !467
  %gep39 = getelementptr i8, ptr %invariant.gep, i64 %.idx28, !dbg !467
  %35 = load <1 x float>, ptr %gep39, align 4, !dbg !467
  %36 = or disjoint i64 %28, 4, !dbg !467
  %.idx29 = mul nuw nsw i64 %36, 784, !dbg !467
  %gep41 = getelementptr i8, ptr %invariant.gep, i64 %.idx29, !dbg !467
  %37 = load <1 x float>, ptr %gep41, align 4, !dbg !467
  %38 = or disjoint i64 %28, 5, !dbg !467
  %.idx30 = mul nuw nsw i64 %38, 784, !dbg !467
  %gep43 = getelementptr i8, ptr %invariant.gep, i64 %.idx30, !dbg !467
  %39 = load <1 x float>, ptr %gep43, align 4, !dbg !467
  %40 = or disjoint i64 %28, 6, !dbg !467
  %.idx31 = mul nuw nsw i64 %40, 784, !dbg !467
  %gep45 = getelementptr i8, ptr %invariant.gep, i64 %.idx31, !dbg !467
  %41 = load <1 x float>, ptr %gep45, align 4, !dbg !467
  %42 = or disjoint i64 %28, 7, !dbg !467
  %.idx32 = mul nuw nsw i64 %42, 784, !dbg !467
  %gep47 = getelementptr i8, ptr %invariant.gep, i64 %.idx32, !dbg !467
  %43 = load <1 x float>, ptr %gep47, align 4, !dbg !467
  %44 = getelementptr inbounds nuw float, ptr %21, i64 %28, !dbg !468
  %45 = load float, ptr %44, align 32, !dbg !468
  %46 = insertelement <1 x float> poison, float %45, i64 0, !dbg !468
  %47 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %29, <1 x float> %46, <1 x float> %27), !dbg !468
  %48 = getelementptr inbounds nuw float, ptr %21, i64 %30, !dbg !468
  %49 = load float, ptr %48, align 4, !dbg !468
  %50 = insertelement <1 x float> poison, float %49, i64 0, !dbg !468
  %51 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %31, <1 x float> %50, <1 x float> %47), !dbg !468
  %52 = getelementptr inbounds nuw float, ptr %21, i64 %32, !dbg !468
  %53 = load float, ptr %52, align 8, !dbg !468
  %54 = insertelement <1 x float> poison, float %53, i64 0, !dbg !468
  %55 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %33, <1 x float> %54, <1 x float> %51), !dbg !468
  %56 = getelementptr inbounds nuw float, ptr %21, i64 %34, !dbg !468
  %57 = load float, ptr %56, align 4, !dbg !468
  %58 = insertelement <1 x float> poison, float %57, i64 0, !dbg !468
  %59 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %35, <1 x float> %58, <1 x float> %55), !dbg !468
  %60 = getelementptr inbounds nuw float, ptr %21, i64 %36, !dbg !468
  %61 = load float, ptr %60, align 16, !dbg !468
  %62 = insertelement <1 x float> poison, float %61, i64 0, !dbg !468
  %63 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %37, <1 x float> %62, <1 x float> %59), !dbg !468
  %64 = getelementptr inbounds nuw float, ptr %21, i64 %38, !dbg !468
  %65 = load float, ptr %64, align 4, !dbg !468
  %66 = insertelement <1 x float> poison, float %65, i64 0, !dbg !468
  %67 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %39, <1 x float> %66, <1 x float> %63), !dbg !468
  %68 = getelementptr inbounds nuw float, ptr %21, i64 %40, !dbg !468
  %69 = load float, ptr %68, align 8, !dbg !468
  %70 = insertelement <1 x float> poison, float %69, i64 0, !dbg !468
  %71 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %41, <1 x float> %70, <1 x float> %67), !dbg !468
  %72 = getelementptr inbounds nuw float, ptr %21, i64 %42, !dbg !468
  %73 = load float, ptr %72, align 4, !dbg !468
  %74 = insertelement <1 x float> poison, float %73, i64 0, !dbg !468
  %75 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %43, <1 x float> %74, <1 x float> %71), !dbg !468
  %76 = add nuw nsw i64 %28, 8, !dbg !467
  %77 = icmp samesign ult i64 %28, 504, !dbg !467
  br i1 %77, label %26, label %78, !dbg !467

78:                                               ; preds = %26
  %79 = fadd contract <1 x float> %75, zeroinitializer, !dbg !469
  %.inv = fcmp ole <1 x float> %75, zeroinitializer, !dbg !470
  %80 = select <1 x i1> %.inv, <1 x float> zeroinitializer, <1 x float> %79, !dbg !470
  %81 = extractelement <1 x float> %80, i64 0, !dbg !467
  %82 = getelementptr inbounds nuw float, ptr %22, i64 %25, !dbg !467
  store float %81, ptr %82, align 4, !dbg !467
  %83 = add nuw nsw i64 %24, 1, !dbg !467
  %exitcond.not = icmp eq i64 %83, 49, !dbg !467
  br i1 %exitcond.not, label %84, label %23, !dbg !467

84:                                               ; preds = %78
  %85 = add nuw nsw i64 %19, 1, !dbg !467
  %exitcond48.not = icmp eq i64 %85, 64, !dbg !467
  br i1 %exitcond48.not, label %86, label %18, !dbg !467

86:                                               ; preds = %84
  ret i32 0, !dbg !471
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_36_elementwise_256x28x28_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !472 {
  %.elt21 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !473
  %.unpack22 = load ptr, ptr %.elt21, align 16, !dbg !473
  %4 = load ptr, ptr %.unpack22, align 8, !dbg !473
  %5 = getelementptr i8, ptr %4, i64 2007040, !dbg !473
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !473
  %6 = getelementptr i8, ptr %4, i64 2408448, !dbg !474
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !474
  %7 = getelementptr i8, ptr %.unpack22, i64 8, !dbg !475
  %8 = load ptr, ptr %7, align 8, !dbg !475
  %9 = getelementptr i8, ptr %8, i64 7093312, !dbg !475
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !475
  %10 = load i32, ptr %2, align 16, !dbg !476
  %11 = zext i32 %10 to i64, !dbg !476
  %12 = shl nuw nsw i64 %11, 4, !dbg !476
  %13 = and i64 %12, 68719476704, !dbg !476
  %14 = trunc i32 %10 to i1, !dbg !476
  %15 = select i1 %14, i64 14, i64 0, !dbg !476
  br label %16, !dbg !476

16:                                               ; preds = %3, %115
  %17 = phi i64 [ 0, %3 ], [ %116, %115 ]
  %18 = or disjoint i64 %17, %13, !dbg !476
  %19 = mul nuw nsw i64 %18, 14, !dbg !477
  %.idx28 = mul nuw nsw i64 %18, 3136
  %20 = getelementptr i8, ptr %6, i64 %.idx28
  %.idx30 = shl nuw nsw i64 %18, 12
  %21 = getelementptr i8, ptr %9, i64 %.idx30
  br label %22, !dbg !476

22:                                               ; preds = %16, %89
  %23 = phi i64 [ 0, %16 ], [ %114, %89 ]
  %24 = add nuw nsw i64 %23, %15, !dbg !476
  %25 = uitofp nneg i64 %24 to float, !dbg !478
  %26 = fmul float %25, 5.000000e-01, !dbg !479
  %27 = tail call float @llvm.floor.f32(float %26), !dbg !480
  %28 = fptosi float %27 to i64, !dbg !481
  %29 = add i64 %19, %28, !dbg !477
  %30 = mul i64 %29, 14, !dbg !477
  %.idx29 = mul nuw nsw i64 %24, 112
  %31 = getelementptr i8, ptr %20, i64 %.idx29
  %32 = insertelement <8 x i64> poison, i64 %30, i64 0
  %33 = shufflevector <8 x i64> %32, <8 x i64> poison, <8 x i32> zeroinitializer
  %.idx31 = shl nuw nsw i64 %24, 7
  %34 = getelementptr i8, ptr %21, i64 %.idx31
  %35 = getelementptr i8, ptr %34, i64 264
  br label %36, !dbg !476

36:                                               ; preds = %22, %36
  %37 = phi i64 [ 0, %22 ], [ %87, %36 ]
  %38 = getelementptr float, ptr %31, i64 %37, !dbg !476
  %39 = load <8 x float>, ptr %38, align 16, !dbg !476
  %40 = insertelement <8 x i64> poison, i64 %37, i64 0, !dbg !476
  %41 = shufflevector <8 x i64> %40, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !476
  %42 = or disjoint <8 x i64> %41, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, !dbg !482
  %43 = uitofp nneg <8 x i64> %42 to <8 x float>, !dbg !483
  %44 = fmul <8 x float> %43, splat (float 5.000000e-01), !dbg !484
  %45 = tail call <8 x float> @llvm.floor.v8f32(<8 x float> %44), !dbg !485
  %46 = fptosi <8 x float> %45 to <8 x i64>, !dbg !486
  %47 = add <8 x i64> %33, %46, !dbg !477
  %48 = extractelement <8 x i64> %47, i64 0, !dbg !477
  %49 = getelementptr float, ptr %5, i64 %48, !dbg !477
  %50 = load <1 x float>, ptr %49, align 4, !dbg !477
  %51 = extractelement <8 x i64> %47, i64 1, !dbg !477
  %52 = getelementptr float, ptr %5, i64 %51, !dbg !477
  %53 = load <1 x float>, ptr %52, align 4, !dbg !477
  %54 = extractelement <8 x i64> %47, i64 2, !dbg !477
  %55 = getelementptr float, ptr %5, i64 %54, !dbg !477
  %56 = load <1 x float>, ptr %55, align 4, !dbg !477
  %57 = shufflevector <1 x float> %56, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %58 = extractelement <8 x i64> %47, i64 3, !dbg !477
  %59 = getelementptr float, ptr %5, i64 %58, !dbg !477
  %60 = load <1 x float>, ptr %59, align 4, !dbg !477
  %61 = shufflevector <1 x float> %60, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %62 = extractelement <8 x i64> %47, i64 4, !dbg !477
  %63 = getelementptr float, ptr %5, i64 %62, !dbg !477
  %64 = load <1 x float>, ptr %63, align 4, !dbg !477
  %65 = shufflevector <1 x float> %64, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %66 = extractelement <8 x i64> %47, i64 5, !dbg !477
  %67 = getelementptr float, ptr %5, i64 %66, !dbg !477
  %68 = load <1 x float>, ptr %67, align 4, !dbg !477
  %69 = shufflevector <1 x float> %68, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %70 = extractelement <8 x i64> %47, i64 6, !dbg !477
  %71 = getelementptr float, ptr %5, i64 %70, !dbg !477
  %72 = load <1 x float>, ptr %71, align 4, !dbg !477
  %73 = shufflevector <1 x float> %72, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %74 = extractelement <8 x i64> %47, i64 7, !dbg !477
  %75 = getelementptr float, ptr %5, i64 %74, !dbg !477
  %76 = load <1 x float>, ptr %75, align 4, !dbg !477
  %77 = shufflevector <1 x float> %76, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %78 = shufflevector <1 x float> %50, <1 x float> %53, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !477
  %79 = shufflevector <8 x float> %78, <8 x float> %57, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !477
  %80 = shufflevector <8 x float> %79, <8 x float> %61, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !477
  %81 = shufflevector <8 x float> %80, <8 x float> %65, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>, !dbg !477
  %82 = shufflevector <8 x float> %81, <8 x float> %69, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>, !dbg !477
  %83 = shufflevector <8 x float> %82, <8 x float> %73, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>, !dbg !477
  %84 = shufflevector <8 x float> %83, <8 x float> %77, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>, !dbg !477
  %85 = fadd contract <8 x float> %39, %84, !dbg !487
  %86 = getelementptr float, ptr %35, i64 %37, !dbg !476
  store <8 x float> %85, ptr %86, align 8, !dbg !476
  %87 = add nuw nsw i64 %37, 8, !dbg !476
  %88 = icmp samesign ult i64 %37, 16, !dbg !476
  br i1 %88, label %36, label %89, !dbg !476

89:                                               ; preds = %36
  %90 = getelementptr i8, ptr %31, i64 96, !dbg !476
  %91 = load <4 x float>, ptr %90, align 16, !dbg !476
  %92 = insertelement <4 x i64> poison, i64 %30, i64 0, !dbg !477
  %93 = shufflevector <4 x i64> %92, <4 x i64> poison, <4 x i32> zeroinitializer, !dbg !477
  %94 = add <4 x i64> %93, <i64 12, i64 12, i64 13, i64 13>, !dbg !477
  %95 = extractelement <4 x i64> %94, i64 0, !dbg !477
  %96 = getelementptr float, ptr %5, i64 %95, !dbg !477
  %97 = load <1 x float>, ptr %96, align 8, !dbg !477
  %98 = extractelement <4 x i64> %94, i64 1, !dbg !477
  %99 = getelementptr float, ptr %5, i64 %98, !dbg !477
  %100 = load <1 x float>, ptr %99, align 8, !dbg !477
  %101 = extractelement <4 x i64> %94, i64 2, !dbg !477
  %102 = getelementptr float, ptr %5, i64 %101, !dbg !477
  %103 = load <1 x float>, ptr %102, align 4, !dbg !477
  %104 = shufflevector <1 x float> %103, <1 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %105 = extractelement <4 x i64> %94, i64 3, !dbg !477
  %106 = getelementptr float, ptr %5, i64 %105, !dbg !477
  %107 = load <1 x float>, ptr %106, align 4, !dbg !477
  %108 = shufflevector <1 x float> %107, <1 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %109 = shufflevector <1 x float> %97, <1 x float> %100, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>, !dbg !477
  %110 = shufflevector <4 x float> %109, <4 x float> %104, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>, !dbg !477
  %111 = shufflevector <4 x float> %110, <4 x float> %108, <4 x i32> <i32 0, i32 1, i32 2, i32 4>, !dbg !477
  %112 = fadd contract <4 x float> %91, %111, !dbg !487
  %113 = getelementptr i8, ptr %34, i64 360, !dbg !476
  store <4 x float> %112, ptr %113, align 8, !dbg !476
  %114 = add nuw nsw i64 %23, 1, !dbg !476
  %exitcond.not = icmp eq i64 %114, 14, !dbg !476
  br i1 %exitcond.not, label %115, label %22, !dbg !476

115:                                              ; preds = %89
  %116 = add nuw nsw i64 %17, 1, !dbg !476
  %exitcond32.not = icmp eq i64 %116, 32, !dbg !476
  br i1 %exitcond32.not, label %117, label %16, !dbg !476

117:                                              ; preds = %115
  ret i32 0, !dbg !488
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_37_conv_28x28x256x5x5_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !489 {
  %4 = alloca [8 x float], align 64, !dbg !490
  %5 = alloca [8 x float], align 64, !dbg !490
  %6 = alloca [8 x float], align 64, !dbg !491
  %.elt26 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !492
  %.unpack27 = load ptr, ptr %.elt26, align 16, !dbg !492
  %7 = load ptr, ptr %.unpack27, align 8, !dbg !492
  %8 = getelementptr i8, ptr %7, i64 7093312, !dbg !492
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !492
  %9 = getelementptr i8, ptr %.unpack27, i64 8, !dbg !493
  %10 = load ptr, ptr %9, align 8, !dbg !493
  %11 = getelementptr i8, ptr %10, i64 15371008, !dbg !493
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !493
  %12 = getelementptr i8, ptr %.unpack27, i64 16, !dbg !494
  %13 = load ptr, ptr %12, align 8, !dbg !494
  %14 = getelementptr i8, ptr %13, i64 1605632, !dbg !494
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !494
  %15 = load i32, ptr %2, align 16, !dbg !490
  %16 = zext i32 %15 to i64, !dbg !490
  %17 = lshr i64 %16, 3, !dbg !490
  %18 = mul nuw nsw i64 %17, 14, !dbg !490
  %19 = shl nuw nsw i64 %16, 5, !dbg !490
  %20 = and i64 %19, 224, !dbg !490
  br label %.preheader39, !dbg !490

.preheader39:                                     ; preds = %3, %86
  %21 = phi i64 [ 0, %3 ], [ %87, %86 ]
  %22 = add nuw nsw i64 %21, %18
  %.idx30 = mul nuw nsw i64 %22, 112
  %invariant.gep = getelementptr inbounds nuw i8, ptr %14, i64 %.idx30
  br label %23, !dbg !490

23:                                               ; preds = %.preheader39, %83
  %indvars.iv = phi i64 [ 28, %.preheader39 ], [ %indvars.iv.next, %83 ]
  %24 = phi i64 [ 0, %.preheader39 ], [ %84, %83 ]
  %umin53 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !490
  %25 = sub nuw nsw i64 28, %24, !dbg !490
  %26 = tail call i64 @llvm.umin.i64(i64 %25, i64 8), !dbg !490
  %27 = trunc nuw nsw i64 %26 to i32, !dbg !495
  %28 = insertelement <8 x i32> poison, i32 %27, i64 0, !dbg !495
  %29 = shufflevector <8 x i32> %28, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !495
  %30 = icmp samesign ugt <8 x i32> %29, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !495
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %6, i32 64, <8 x i1> %30), !dbg !495
  %invariant.gep40 = getelementptr float, ptr %8, i64 %24, !dbg !490
  %invariant.gep43 = getelementptr inbounds nuw float, ptr %invariant.gep, i64 %24, !dbg !490
  br label %31, !dbg !490

31:                                               ; preds = %23, %81
  %32 = phi i64 [ 0, %23 ], [ %82, %81 ]
  br label %35, !dbg !490

.preheader38:                                     ; preds = %35
  %33 = or disjoint i64 %32, %20, !dbg !490
  %.idx31 = shl nuw nsw i64 %33, 12
  %gep41 = getelementptr i8, ptr %invariant.gep40, i64 %.idx31, !dbg !490
  %.idx33 = mul nuw nsw i64 %33, 100
  %34 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx33
  br label %41, !dbg !490

35:                                               ; preds = %31, %35
  %36 = phi i64 [ 0, %31 ], [ %40, %35 ]
  %37 = getelementptr inbounds nuw float, ptr %6, i64 %36, !dbg !490
  %38 = load float, ptr %37, align 4, !dbg !490
  %39 = getelementptr inbounds nuw float, ptr %5, i64 %36, !dbg !490
  store float %38, ptr %39, align 4, !dbg !490
  %40 = add nuw nsw i64 %36, 1, !dbg !490
  %exitcond.not = icmp eq i64 %40, %umin53, !dbg !490
  br i1 %exitcond.not, label %.preheader38, label %35, !dbg !490

41:                                               ; preds = %.preheader38, %60
  %42 = phi i64 [ 0, %.preheader38 ], [ %61, %60 ]
  %43 = add nuw nsw i64 %22, %42, !dbg !490
  %.idx32 = shl nuw nsw i64 %43, 7
  %gep = getelementptr i8, ptr %gep41, i64 %.idx32
  %.idx34 = mul nuw nsw i64 %42, 20
  %44 = getelementptr inbounds nuw i8, ptr %34, i64 %.idx34
  br label %.preheader, !dbg !490

.preheader:                                       ; preds = %41, %58
  %45 = phi i64 [ 0, %41 ], [ %59, %58 ]
  %46 = getelementptr float, ptr %gep, i64 %45
  %47 = getelementptr inbounds nuw float, ptr %5, i64 %45
  %.promoted = load float, ptr %47, align 4
  br label %48, !dbg !490

48:                                               ; preds = %.preheader, %48
  %49 = phi i64 [ 0, %.preheader ], [ %57, %48 ]
  %50 = phi float [ %.promoted, %.preheader ], [ %56, %48 ]
  %51 = getelementptr float, ptr %46, i64 %49, !dbg !490
  %52 = load float, ptr %51, align 4, !dbg !490
  %53 = getelementptr inbounds nuw float, ptr %44, i64 %49, !dbg !490
  %54 = load float, ptr %53, align 4, !dbg !490
  %55 = fmul contract float %52, %54, !dbg !496
  %56 = fadd contract float %50, %55, !dbg !497
  %57 = add nuw nsw i64 %49, 1, !dbg !490
  %exitcond45.not = icmp eq i64 %57, 5, !dbg !490
  br i1 %exitcond45.not, label %58, label %48, !dbg !490

58:                                               ; preds = %48
  store float %56, ptr %47, align 4, !dbg !490
  %59 = add nuw nsw i64 %45, 1, !dbg !490
  %exitcond47.not = icmp eq i64 %59, %umin53, !dbg !490
  br i1 %exitcond47.not, label %60, label %.preheader, !dbg !490

60:                                               ; preds = %58
  %61 = add nuw nsw i64 %42, 1, !dbg !490
  %exitcond48.not = icmp eq i64 %61, 5, !dbg !490
  br i1 %exitcond48.not, label %.preheader37, label %41, !dbg !490

.preheader37:                                     ; preds = %60, %.preheader37
  %62 = phi i64 [ %66, %.preheader37 ], [ 0, %60 ]
  %63 = getelementptr inbounds nuw float, ptr %6, i64 %62, !dbg !490
  %64 = load float, ptr %63, align 4, !dbg !490
  %65 = getelementptr inbounds nuw float, ptr %4, i64 %62, !dbg !490
  store float %64, ptr %65, align 4, !dbg !490
  %66 = add nuw nsw i64 %62, 1, !dbg !490
  %exitcond50.not = icmp eq i64 %66, %umin53, !dbg !490
  br i1 %exitcond50.not, label %.preheader36, label %.preheader37, !dbg !490

.preheader35:                                     ; preds = %.preheader36
  %.idx = mul nuw nsw i64 %33, 3136
  %gep44 = getelementptr inbounds nuw i8, ptr %invariant.gep43, i64 %.idx
  br label %72, !dbg !498

.preheader36:                                     ; preds = %.preheader37, %.preheader36
  %67 = phi i64 [ %71, %.preheader36 ], [ 0, %.preheader37 ]
  %68 = getelementptr inbounds nuw float, ptr %5, i64 %67, !dbg !490
  %69 = load float, ptr %68, align 4, !dbg !490
  %70 = getelementptr inbounds nuw float, ptr %4, i64 %67, !dbg !490
  store float %69, ptr %70, align 4, !dbg !490
  %71 = add nuw nsw i64 %67, 1, !dbg !490
  %exitcond52.not = icmp eq i64 %71, %umin53, !dbg !490
  br i1 %exitcond52.not, label %.preheader35, label %.preheader36, !dbg !490

72:                                               ; preds = %.preheader35, %72
  %73 = phi i64 [ 0, %.preheader35 ], [ %80, %72 ]
  %74 = getelementptr float, ptr %4, i64 %73, !dbg !498
  %75 = load <1 x float>, ptr %74, align 4, !dbg !498
  %76 = fadd contract <1 x float> %75, zeroinitializer, !dbg !499
  %.inv = fcmp ole <1 x float> %75, zeroinitializer, !dbg !500
  %77 = select <1 x i1> %.inv, <1 x float> zeroinitializer, <1 x float> %76, !dbg !500
  %78 = extractelement <1 x float> %77, i64 0, !dbg !498
  %79 = getelementptr inbounds nuw float, ptr %gep44, i64 %73, !dbg !498
  store float %78, ptr %79, align 4, !dbg !498
  %80 = add nuw nsw i64 %73, 1, !dbg !498
  %exitcond54.not = icmp eq i64 %80, %umin53, !dbg !498
  br i1 %exitcond54.not, label %81, label %72, !dbg !498

81:                                               ; preds = %72
  %82 = add nuw nsw i64 %32, 1, !dbg !490
  %exitcond55.not = icmp eq i64 %82, 32, !dbg !490
  br i1 %exitcond55.not, label %83, label %31, !dbg !490

83:                                               ; preds = %81
  %84 = add nuw nsw i64 %24, 8, !dbg !490
  %85 = icmp samesign ult i64 %24, 20, !dbg !490
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !490
  br i1 %85, label %23, label %86, !dbg !490

86:                                               ; preds = %83
  %87 = add nuw nsw i64 %21, 1, !dbg !490
  %exitcond56.not = icmp eq i64 %87, 14, !dbg !490
  br i1 %exitcond56.not, label %88, label %.preheader39, !dbg !490

88:                                               ; preds = %86
  ret i32 0, !dbg !501
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_38_matmul_like_128x784x256_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !502 {
  %.elt21 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !503
  %.unpack22 = load ptr, ptr %.elt21, align 16, !dbg !503
  %4 = load ptr, ptr %.unpack22, align 8, !dbg !503
  %5 = getelementptr i8, ptr %4, i64 1605632, !dbg !503
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !503
  %6 = getelementptr i8, ptr %.unpack22, i64 8, !dbg !504
  %7 = load ptr, ptr %6, align 8, !dbg !504
  %8 = getelementptr i8, ptr %7, i64 40960, !dbg !504
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !504
  %9 = getelementptr i8, ptr %.unpack22, i64 16, !dbg !505
  %10 = load ptr, ptr %9, align 8, !dbg !505
  %11 = getelementptr i8, ptr %10, i64 2408448, !dbg !505
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !505
  %12 = load i32, ptr %2, align 16, !dbg !506
  %13 = udiv i32 %12, 14, !dbg !506
  %.zext = zext nneg i32 %13 to i64, !dbg !506
  %14 = urem i32 %12, 14, !dbg !506
  %15 = shl nuw nsw i64 %.zext, 6, !dbg !506
  %narrow = mul nuw nsw i32 %14, 56, !dbg !506
  %16 = zext nneg i32 %narrow to i64, !dbg !506
  br label %17, !dbg !506

17:                                               ; preds = %3, %83
  %18 = phi i64 [ 0, %3 ], [ %84, %83 ]
  %19 = add nuw nsw i64 %18, %15, !dbg !506
  %.idx35 = shl nuw nsw i64 %19, 10
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx35
  %.idx = mul nuw nsw i64 %19, 3136
  %21 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx
  br label %22, !dbg !506

22:                                               ; preds = %17, %77
  %23 = phi i64 [ 0, %17 ], [ %82, %77 ]
  %24 = add nuw nsw i64 %23, %16, !dbg !506
  %invariant.gep = getelementptr float, ptr %5, i64 %24, !dbg !506
  br label %25, !dbg !506

25:                                               ; preds = %22, %25
  %26 = phi <1 x float> [ zeroinitializer, %22 ], [ %74, %25 ]
  %27 = phi i64 [ 0, %22 ], [ %75, %25 ]
  %.idx25 = mul nuw nsw i64 %27, 3136, !dbg !506
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx25, !dbg !506
  %28 = load <1 x float>, ptr %gep, align 4, !dbg !506
  %29 = or disjoint i64 %27, 1, !dbg !506
  %.idx26 = mul nuw nsw i64 %29, 3136, !dbg !506
  %gep37 = getelementptr i8, ptr %invariant.gep, i64 %.idx26, !dbg !506
  %30 = load <1 x float>, ptr %gep37, align 4, !dbg !506
  %31 = or disjoint i64 %27, 2, !dbg !506
  %.idx27 = mul nuw nsw i64 %31, 3136, !dbg !506
  %gep39 = getelementptr i8, ptr %invariant.gep, i64 %.idx27, !dbg !506
  %32 = load <1 x float>, ptr %gep39, align 4, !dbg !506
  %33 = or disjoint i64 %27, 3, !dbg !506
  %.idx28 = mul nuw nsw i64 %33, 3136, !dbg !506
  %gep41 = getelementptr i8, ptr %invariant.gep, i64 %.idx28, !dbg !506
  %34 = load <1 x float>, ptr %gep41, align 4, !dbg !506
  %35 = or disjoint i64 %27, 4, !dbg !506
  %.idx29 = mul nuw nsw i64 %35, 3136, !dbg !506
  %gep43 = getelementptr i8, ptr %invariant.gep, i64 %.idx29, !dbg !506
  %36 = load <1 x float>, ptr %gep43, align 4, !dbg !506
  %37 = or disjoint i64 %27, 5, !dbg !506
  %.idx30 = mul nuw nsw i64 %37, 3136, !dbg !506
  %gep45 = getelementptr i8, ptr %invariant.gep, i64 %.idx30, !dbg !506
  %38 = load <1 x float>, ptr %gep45, align 4, !dbg !506
  %39 = or disjoint i64 %27, 6, !dbg !506
  %.idx31 = mul nuw nsw i64 %39, 3136, !dbg !506
  %gep47 = getelementptr i8, ptr %invariant.gep, i64 %.idx31, !dbg !506
  %40 = load <1 x float>, ptr %gep47, align 4, !dbg !506
  %41 = or disjoint i64 %27, 7, !dbg !506
  %.idx32 = mul nuw nsw i64 %41, 3136, !dbg !506
  %gep49 = getelementptr i8, ptr %invariant.gep, i64 %.idx32, !dbg !506
  %42 = load <1 x float>, ptr %gep49, align 4, !dbg !506
  %43 = getelementptr inbounds nuw float, ptr %20, i64 %27, !dbg !507
  %44 = load float, ptr %43, align 32, !dbg !507
  %45 = insertelement <1 x float> poison, float %44, i64 0, !dbg !507
  %46 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %28, <1 x float> %45, <1 x float> %26), !dbg !507
  %47 = getelementptr inbounds nuw float, ptr %20, i64 %29, !dbg !507
  %48 = load float, ptr %47, align 4, !dbg !507
  %49 = insertelement <1 x float> poison, float %48, i64 0, !dbg !507
  %50 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %30, <1 x float> %49, <1 x float> %46), !dbg !507
  %51 = getelementptr inbounds nuw float, ptr %20, i64 %31, !dbg !507
  %52 = load float, ptr %51, align 8, !dbg !507
  %53 = insertelement <1 x float> poison, float %52, i64 0, !dbg !507
  %54 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %32, <1 x float> %53, <1 x float> %50), !dbg !507
  %55 = getelementptr inbounds nuw float, ptr %20, i64 %33, !dbg !507
  %56 = load float, ptr %55, align 4, !dbg !507
  %57 = insertelement <1 x float> poison, float %56, i64 0, !dbg !507
  %58 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %34, <1 x float> %57, <1 x float> %54), !dbg !507
  %59 = getelementptr inbounds nuw float, ptr %20, i64 %35, !dbg !507
  %60 = load float, ptr %59, align 16, !dbg !507
  %61 = insertelement <1 x float> poison, float %60, i64 0, !dbg !507
  %62 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %61, <1 x float> %58), !dbg !507
  %63 = getelementptr inbounds nuw float, ptr %20, i64 %37, !dbg !507
  %64 = load float, ptr %63, align 4, !dbg !507
  %65 = insertelement <1 x float> poison, float %64, i64 0, !dbg !507
  %66 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %38, <1 x float> %65, <1 x float> %62), !dbg !507
  %67 = getelementptr inbounds nuw float, ptr %20, i64 %39, !dbg !507
  %68 = load float, ptr %67, align 8, !dbg !507
  %69 = insertelement <1 x float> poison, float %68, i64 0, !dbg !507
  %70 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %40, <1 x float> %69, <1 x float> %66), !dbg !507
  %71 = getelementptr inbounds nuw float, ptr %20, i64 %41, !dbg !507
  %72 = load float, ptr %71, align 4, !dbg !507
  %73 = insertelement <1 x float> poison, float %72, i64 0, !dbg !507
  %74 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %42, <1 x float> %73, <1 x float> %70), !dbg !507
  %75 = add nuw nsw i64 %27, 8, !dbg !506
  %76 = icmp samesign ult i64 %27, 248, !dbg !506
  br i1 %76, label %25, label %77, !dbg !506

77:                                               ; preds = %25
  %78 = fadd contract <1 x float> %74, zeroinitializer, !dbg !508
  %.inv = fcmp ole <1 x float> %74, zeroinitializer, !dbg !509
  %79 = select <1 x i1> %.inv, <1 x float> zeroinitializer, <1 x float> %78, !dbg !509
  %80 = extractelement <1 x float> %79, i64 0, !dbg !506
  %81 = getelementptr inbounds nuw float, ptr %21, i64 %24, !dbg !506
  store float %80, ptr %81, align 4, !dbg !506
  %82 = add nuw nsw i64 %23, 1, !dbg !506
  %exitcond.not = icmp eq i64 %82, 56, !dbg !506
  br i1 %exitcond.not, label %83, label %22, !dbg !506

83:                                               ; preds = %77
  %84 = add nuw nsw i64 %18, 1, !dbg !506
  %exitcond50.not = icmp eq i64 %84, 64, !dbg !506
  br i1 %exitcond50.not, label %85, label %17, !dbg !506

85:                                               ; preds = %83
  ret i32 0, !dbg !510
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_39_elementwise_128x56x56_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !511 {
  %.elt21 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !512
  %.unpack22 = load ptr, ptr %.elt21, align 16, !dbg !512
  %4 = load ptr, ptr %.unpack22, align 8, !dbg !512
  %5 = getelementptr i8, ptr %4, i64 2408448, !dbg !512
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !512
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !513
  %6 = getelementptr i8, ptr %.unpack22, i64 8, !dbg !514
  %7 = load ptr, ptr %6, align 8, !dbg !514
  %8 = getelementptr i8, ptr %7, i64 7093312, !dbg !514
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !514
  %9 = load i32, ptr %2, align 16, !dbg !515
  %10 = zext i32 %9 to i64, !dbg !515
  %11 = shl nuw nsw i64 %10, 3, !dbg !515
  %12 = and i64 %11, 34359738352, !dbg !515
  %13 = trunc i32 %9 to i1, !dbg !515
  %14 = select i1 %13, i64 28, i64 0, !dbg !515
  br label %15, !dbg !515

15:                                               ; preds = %3, %90
  %16 = phi i64 [ 0, %3 ], [ %91, %90 ]
  %17 = or disjoint i64 %16, %12, !dbg !515
  %18 = mul nuw nsw i64 %17, 28, !dbg !516
  %.idx = mul nuw nsw i64 %17, 12544
  %19 = getelementptr i8, ptr %4, i64 %.idx
  %.idx26 = mul nuw nsw i64 %17, 14400
  %20 = getelementptr i8, ptr %8, i64 %.idx26
  br label %21, !dbg !515

21:                                               ; preds = %15, %88
  %22 = phi i64 [ 0, %15 ], [ %89, %88 ]
  %23 = add nuw nsw i64 %22, %14, !dbg !515
  %24 = uitofp nneg i64 %23 to float, !dbg !517
  %25 = fmul float %24, 5.000000e-01, !dbg !518
  %26 = tail call float @llvm.floor.f32(float %25), !dbg !519
  %27 = fptosi float %26 to i64, !dbg !520
  %28 = add i64 %18, %27, !dbg !516
  %29 = mul i64 %28, 28, !dbg !516
  %.idx25 = mul nuw nsw i64 %23, 224
  %30 = getelementptr i8, ptr %19, i64 %.idx25
  %31 = insertelement <8 x i64> poison, i64 %29, i64 0
  %32 = shufflevector <8 x i64> %31, <8 x i64> poison, <8 x i32> zeroinitializer
  %.idx27 = mul nuw nsw i64 %23, 240
  %33 = getelementptr i8, ptr %20, i64 %.idx27
  %34 = getelementptr i8, ptr %33, i64 488
  br label %35, !dbg !515

35:                                               ; preds = %21, %35
  %36 = phi i64 [ 0, %21 ], [ %86, %35 ]
  %37 = getelementptr float, ptr %30, i64 %36, !dbg !515
  %38 = load <8 x float>, ptr %37, align 32, !dbg !515
  %39 = insertelement <8 x i64> poison, i64 %36, i64 0, !dbg !515
  %40 = shufflevector <8 x i64> %39, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !515
  %41 = or disjoint <8 x i64> %40, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, !dbg !521
  %42 = uitofp nneg <8 x i64> %41 to <8 x float>, !dbg !522
  %43 = fmul <8 x float> %42, splat (float 5.000000e-01), !dbg !523
  %44 = tail call <8 x float> @llvm.floor.v8f32(<8 x float> %43), !dbg !524
  %45 = fptosi <8 x float> %44 to <8 x i64>, !dbg !525
  %46 = add <8 x i64> %32, %45, !dbg !516
  %47 = extractelement <8 x i64> %46, i64 0, !dbg !516
  %48 = getelementptr float, ptr %5, i64 %47, !dbg !516
  %49 = load <1 x float>, ptr %48, align 4, !dbg !516
  %50 = extractelement <8 x i64> %46, i64 1, !dbg !516
  %51 = getelementptr float, ptr %5, i64 %50, !dbg !516
  %52 = load <1 x float>, ptr %51, align 4, !dbg !516
  %53 = extractelement <8 x i64> %46, i64 2, !dbg !516
  %54 = getelementptr float, ptr %5, i64 %53, !dbg !516
  %55 = load <1 x float>, ptr %54, align 4, !dbg !516
  %56 = shufflevector <1 x float> %55, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %57 = extractelement <8 x i64> %46, i64 3, !dbg !516
  %58 = getelementptr float, ptr %5, i64 %57, !dbg !516
  %59 = load <1 x float>, ptr %58, align 4, !dbg !516
  %60 = shufflevector <1 x float> %59, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %61 = extractelement <8 x i64> %46, i64 4, !dbg !516
  %62 = getelementptr float, ptr %5, i64 %61, !dbg !516
  %63 = load <1 x float>, ptr %62, align 4, !dbg !516
  %64 = shufflevector <1 x float> %63, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %65 = extractelement <8 x i64> %46, i64 5, !dbg !516
  %66 = getelementptr float, ptr %5, i64 %65, !dbg !516
  %67 = load <1 x float>, ptr %66, align 4, !dbg !516
  %68 = shufflevector <1 x float> %67, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %69 = extractelement <8 x i64> %46, i64 6, !dbg !516
  %70 = getelementptr float, ptr %5, i64 %69, !dbg !516
  %71 = load <1 x float>, ptr %70, align 4, !dbg !516
  %72 = shufflevector <1 x float> %71, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %73 = extractelement <8 x i64> %46, i64 7, !dbg !516
  %74 = getelementptr float, ptr %5, i64 %73, !dbg !516
  %75 = load <1 x float>, ptr %74, align 4, !dbg !516
  %76 = shufflevector <1 x float> %75, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %77 = shufflevector <1 x float> %49, <1 x float> %52, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !516
  %78 = shufflevector <8 x float> %77, <8 x float> %56, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !516
  %79 = shufflevector <8 x float> %78, <8 x float> %60, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !516
  %80 = shufflevector <8 x float> %79, <8 x float> %64, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>, !dbg !516
  %81 = shufflevector <8 x float> %80, <8 x float> %68, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>, !dbg !516
  %82 = shufflevector <8 x float> %81, <8 x float> %72, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>, !dbg !516
  %83 = shufflevector <8 x float> %82, <8 x float> %76, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>, !dbg !516
  %84 = fadd contract <8 x float> %38, %83, !dbg !526
  %85 = getelementptr float, ptr %34, i64 %36, !dbg !515
  store <8 x float> %84, ptr %85, align 8, !dbg !515
  %86 = add nuw nsw i64 %36, 8, !dbg !515
  %87 = icmp samesign ult i64 %36, 48, !dbg !515
  br i1 %87, label %35, label %88, !dbg !515

88:                                               ; preds = %35
  %89 = add nuw nsw i64 %22, 1, !dbg !515
  %exitcond.not = icmp eq i64 %89, 28, !dbg !515
  br i1 %exitcond.not, label %90, label %21, !dbg !515

90:                                               ; preds = %88
  %91 = add nuw nsw i64 %16, 1, !dbg !515
  %exitcond28.not = icmp eq i64 %91, 16, !dbg !515
  br i1 %exitcond28.not, label %92, label %15, !dbg !515

92:                                               ; preds = %90
  ret i32 0, !dbg !527
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_40_conv_56x56x128x5x5_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !528 {
  %4 = alloca [8 x float], align 64, !dbg !529
  %5 = alloca [8 x float], align 64, !dbg !529
  %6 = alloca [8 x float], align 64, !dbg !530
  %.elt26 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !531
  %.unpack27 = load ptr, ptr %.elt26, align 16, !dbg !531
  %7 = load ptr, ptr %.unpack27, align 8, !dbg !531
  %8 = getelementptr i8, ptr %7, i64 7093312, !dbg !531
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !531
  %9 = getelementptr i8, ptr %.unpack27, i64 8, !dbg !532
  %10 = load ptr, ptr %9, align 8, !dbg !532
  %11 = getelementptr i8, ptr %10, i64 15358208, !dbg !532
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !532
  %12 = getelementptr i8, ptr %.unpack27, i64 16, !dbg !533
  %13 = load ptr, ptr %12, align 8, !dbg !533
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !533
  %14 = load i32, ptr %2, align 16, !dbg !529
  %15 = zext i32 %14 to i64, !dbg !529
  %16 = lshr i64 %15, 3, !dbg !529
  %17 = mul nuw nsw i64 %16, 28, !dbg !529
  %18 = and i64 %15, 4, !dbg !529
  %.not = icmp eq i64 %18, 0, !dbg !529
  %19 = select i1 %.not, i64 0, i64 28, !dbg !529
  %20 = shl nuw nsw i64 %15, 5, !dbg !529
  %21 = and i64 %20, 96, !dbg !529
  br label %.preheader39, !dbg !529

.preheader39:                                     ; preds = %3, %88
  %22 = phi i64 [ 0, %3 ], [ %89, %88 ]
  %23 = add nuw nsw i64 %22, %17
  %.idx30 = mul nuw nsw i64 %23, 224
  %invariant.gep = getelementptr inbounds nuw i8, ptr %13, i64 %.idx30
  br label %24, !dbg !529

24:                                               ; preds = %.preheader39, %85
  %indvars.iv = phi i64 [ 28, %.preheader39 ], [ %indvars.iv.next, %85 ]
  %25 = phi i64 [ 0, %.preheader39 ], [ %86, %85 ]
  %umin53 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !529
  %26 = sub nuw nsw i64 28, %25, !dbg !529
  %27 = tail call i64 @llvm.umin.i64(i64 %26, i64 8), !dbg !529
  %28 = trunc nuw nsw i64 %27 to i32, !dbg !534
  %29 = insertelement <8 x i32> poison, i32 %28, i64 0, !dbg !534
  %30 = shufflevector <8 x i32> %29, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !534
  %31 = icmp samesign ugt <8 x i32> %30, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !534
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %6, i32 64, <8 x i1> %31), !dbg !534
  %32 = add nuw nsw i64 %25, %19, !dbg !529
  %invariant.gep40 = getelementptr float, ptr %8, i64 %32, !dbg !529
  %invariant.gep43 = getelementptr inbounds nuw float, ptr %invariant.gep, i64 %32, !dbg !529
  br label %33, !dbg !529

33:                                               ; preds = %24, %83
  %34 = phi i64 [ 0, %24 ], [ %84, %83 ]
  br label %37, !dbg !529

.preheader38:                                     ; preds = %37
  %35 = or disjoint i64 %34, %21, !dbg !529
  %.idx31 = mul nuw nsw i64 %35, 14400
  %gep41 = getelementptr i8, ptr %invariant.gep40, i64 %.idx31, !dbg !529
  %.idx33 = mul nuw nsw i64 %35, 100
  %36 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx33
  br label %43, !dbg !529

37:                                               ; preds = %33, %37
  %38 = phi i64 [ 0, %33 ], [ %42, %37 ]
  %39 = getelementptr inbounds nuw float, ptr %6, i64 %38, !dbg !529
  %40 = load float, ptr %39, align 4, !dbg !529
  %41 = getelementptr inbounds nuw float, ptr %5, i64 %38, !dbg !529
  store float %40, ptr %41, align 4, !dbg !529
  %42 = add nuw nsw i64 %38, 1, !dbg !529
  %exitcond.not = icmp eq i64 %42, %umin53, !dbg !529
  br i1 %exitcond.not, label %.preheader38, label %37, !dbg !529

43:                                               ; preds = %.preheader38, %62
  %44 = phi i64 [ 0, %.preheader38 ], [ %63, %62 ]
  %45 = add nuw nsw i64 %23, %44, !dbg !529
  %.idx32 = mul nuw nsw i64 %45, 240
  %gep = getelementptr i8, ptr %gep41, i64 %.idx32
  %.idx34 = mul nuw nsw i64 %44, 20
  %46 = getelementptr inbounds nuw i8, ptr %36, i64 %.idx34
  br label %.preheader, !dbg !529

.preheader:                                       ; preds = %43, %60
  %47 = phi i64 [ 0, %43 ], [ %61, %60 ]
  %48 = getelementptr float, ptr %gep, i64 %47
  %49 = getelementptr inbounds nuw float, ptr %5, i64 %47
  %.promoted = load float, ptr %49, align 4
  br label %50, !dbg !529

50:                                               ; preds = %.preheader, %50
  %51 = phi i64 [ 0, %.preheader ], [ %59, %50 ]
  %52 = phi float [ %.promoted, %.preheader ], [ %58, %50 ]
  %53 = getelementptr float, ptr %48, i64 %51, !dbg !529
  %54 = load float, ptr %53, align 4, !dbg !529
  %55 = getelementptr inbounds nuw float, ptr %46, i64 %51, !dbg !529
  %56 = load float, ptr %55, align 4, !dbg !529
  %57 = fmul contract float %54, %56, !dbg !535
  %58 = fadd contract float %52, %57, !dbg !536
  %59 = add nuw nsw i64 %51, 1, !dbg !529
  %exitcond45.not = icmp eq i64 %59, 5, !dbg !529
  br i1 %exitcond45.not, label %60, label %50, !dbg !529

60:                                               ; preds = %50
  store float %58, ptr %49, align 4, !dbg !529
  %61 = add nuw nsw i64 %47, 1, !dbg !529
  %exitcond47.not = icmp eq i64 %61, %umin53, !dbg !529
  br i1 %exitcond47.not, label %62, label %.preheader, !dbg !529

62:                                               ; preds = %60
  %63 = add nuw nsw i64 %44, 1, !dbg !529
  %exitcond48.not = icmp eq i64 %63, 5, !dbg !529
  br i1 %exitcond48.not, label %.preheader37, label %43, !dbg !529

.preheader37:                                     ; preds = %62, %.preheader37
  %64 = phi i64 [ %68, %.preheader37 ], [ 0, %62 ]
  %65 = getelementptr inbounds nuw float, ptr %6, i64 %64, !dbg !529
  %66 = load float, ptr %65, align 4, !dbg !529
  %67 = getelementptr inbounds nuw float, ptr %4, i64 %64, !dbg !529
  store float %66, ptr %67, align 4, !dbg !529
  %68 = add nuw nsw i64 %64, 1, !dbg !529
  %exitcond50.not = icmp eq i64 %68, %umin53, !dbg !529
  br i1 %exitcond50.not, label %.preheader36, label %.preheader37, !dbg !529

.preheader35:                                     ; preds = %.preheader36
  %.idx = mul nuw nsw i64 %35, 12544
  %gep44 = getelementptr inbounds nuw i8, ptr %invariant.gep43, i64 %.idx
  br label %74, !dbg !537

.preheader36:                                     ; preds = %.preheader37, %.preheader36
  %69 = phi i64 [ %73, %.preheader36 ], [ 0, %.preheader37 ]
  %70 = getelementptr inbounds nuw float, ptr %5, i64 %69, !dbg !529
  %71 = load float, ptr %70, align 4, !dbg !529
  %72 = getelementptr inbounds nuw float, ptr %4, i64 %69, !dbg !529
  store float %71, ptr %72, align 4, !dbg !529
  %73 = add nuw nsw i64 %69, 1, !dbg !529
  %exitcond52.not = icmp eq i64 %73, %umin53, !dbg !529
  br i1 %exitcond52.not, label %.preheader35, label %.preheader36, !dbg !529

74:                                               ; preds = %.preheader35, %74
  %75 = phi i64 [ 0, %.preheader35 ], [ %82, %74 ]
  %76 = getelementptr float, ptr %4, i64 %75, !dbg !537
  %77 = load <1 x float>, ptr %76, align 4, !dbg !537
  %78 = fadd contract <1 x float> %77, zeroinitializer, !dbg !538
  %.inv = fcmp ole <1 x float> %77, zeroinitializer, !dbg !539
  %79 = select <1 x i1> %.inv, <1 x float> zeroinitializer, <1 x float> %78, !dbg !539
  %80 = extractelement <1 x float> %79, i64 0, !dbg !537
  %81 = getelementptr inbounds nuw float, ptr %gep44, i64 %75, !dbg !537
  store float %80, ptr %81, align 4, !dbg !537
  %82 = add nuw nsw i64 %75, 1, !dbg !537
  %exitcond54.not = icmp eq i64 %82, %umin53, !dbg !537
  br i1 %exitcond54.not, label %83, label %74, !dbg !537

83:                                               ; preds = %74
  %84 = add nuw nsw i64 %34, 1, !dbg !529
  %exitcond55.not = icmp eq i64 %84, 32, !dbg !529
  br i1 %exitcond55.not, label %85, label %33, !dbg !529

85:                                               ; preds = %83
  %86 = add nuw nsw i64 %25, 8, !dbg !529
  %87 = icmp samesign ult i64 %25, 20, !dbg !529
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !529
  br i1 %87, label %24, label %88, !dbg !529

88:                                               ; preds = %85
  %89 = add nuw nsw i64 %22, 1, !dbg !529
  %exitcond56.not = icmp eq i64 %89, 28, !dbg !529
  br i1 %exitcond56.not, label %90, label %.preheader39, !dbg !529

90:                                               ; preds = %88
  ret i32 0, !dbg !540
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_41_matmul_like_64x3136x128_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !541 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !542
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !542
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !542
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !542
  %5 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !543
  %6 = load ptr, ptr %5, align 8, !dbg !543
  %7 = getelementptr i8, ptr %6, i64 8192, !dbg !543
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !543
  %8 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !544
  %9 = load ptr, ptr %8, align 8, !dbg !544
  %10 = getelementptr i8, ptr %9, i64 1605632, !dbg !544
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !544
  %11 = load i32, ptr %2, align 16, !dbg !545
  %12 = zext i32 %11 to i64, !dbg !545
  %13 = shl nuw nsw i64 %12, 6, !dbg !545
  br label %.preheader, !dbg !545

.preheader:                                       ; preds = %3, %78
  %14 = phi i64 [ 0, %3 ], [ %79, %78 ]
  %.idx32 = shl nuw nsw i64 %14, 9
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx32
  %.idx = mul nuw nsw i64 %14, 12544
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  br label %17, !dbg !545

17:                                               ; preds = %.preheader, %72
  %18 = phi i64 [ 0, %.preheader ], [ %77, %72 ]
  %19 = add nuw nsw i64 %18, %13, !dbg !545
  %invariant.gep = getelementptr float, ptr %4, i64 %19, !dbg !545
  br label %20, !dbg !545

20:                                               ; preds = %17, %20
  %21 = phi <1 x float> [ zeroinitializer, %17 ], [ %69, %20 ]
  %22 = phi i64 [ 0, %17 ], [ %70, %20 ]
  %.idx24 = mul nuw nsw i64 %22, 12544, !dbg !545
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx24, !dbg !545
  %23 = load <1 x float>, ptr %gep, align 4, !dbg !545
  %24 = or disjoint i64 %22, 1, !dbg !545
  %.idx25 = mul nuw nsw i64 %24, 12544, !dbg !545
  %gep34 = getelementptr i8, ptr %invariant.gep, i64 %.idx25, !dbg !545
  %25 = load <1 x float>, ptr %gep34, align 4, !dbg !545
  %26 = or disjoint i64 %22, 2, !dbg !545
  %.idx26 = mul nuw nsw i64 %26, 12544, !dbg !545
  %gep36 = getelementptr i8, ptr %invariant.gep, i64 %.idx26, !dbg !545
  %27 = load <1 x float>, ptr %gep36, align 4, !dbg !545
  %28 = or disjoint i64 %22, 3, !dbg !545
  %.idx27 = mul nuw nsw i64 %28, 12544, !dbg !545
  %gep38 = getelementptr i8, ptr %invariant.gep, i64 %.idx27, !dbg !545
  %29 = load <1 x float>, ptr %gep38, align 4, !dbg !545
  %30 = or disjoint i64 %22, 4, !dbg !545
  %.idx28 = mul nuw nsw i64 %30, 12544, !dbg !545
  %gep40 = getelementptr i8, ptr %invariant.gep, i64 %.idx28, !dbg !545
  %31 = load <1 x float>, ptr %gep40, align 4, !dbg !545
  %32 = or disjoint i64 %22, 5, !dbg !545
  %.idx29 = mul nuw nsw i64 %32, 12544, !dbg !545
  %gep42 = getelementptr i8, ptr %invariant.gep, i64 %.idx29, !dbg !545
  %33 = load <1 x float>, ptr %gep42, align 4, !dbg !545
  %34 = or disjoint i64 %22, 6, !dbg !545
  %.idx30 = mul nuw nsw i64 %34, 12544, !dbg !545
  %gep44 = getelementptr i8, ptr %invariant.gep, i64 %.idx30, !dbg !545
  %35 = load <1 x float>, ptr %gep44, align 4, !dbg !545
  %36 = or disjoint i64 %22, 7, !dbg !545
  %.idx31 = mul nuw nsw i64 %36, 12544, !dbg !545
  %gep46 = getelementptr i8, ptr %invariant.gep, i64 %.idx31, !dbg !545
  %37 = load <1 x float>, ptr %gep46, align 4, !dbg !545
  %38 = getelementptr inbounds nuw float, ptr %15, i64 %22, !dbg !546
  %39 = load float, ptr %38, align 32, !dbg !546
  %40 = insertelement <1 x float> poison, float %39, i64 0, !dbg !546
  %41 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %23, <1 x float> %40, <1 x float> %21), !dbg !546
  %42 = getelementptr inbounds nuw float, ptr %15, i64 %24, !dbg !546
  %43 = load float, ptr %42, align 4, !dbg !546
  %44 = insertelement <1 x float> poison, float %43, i64 0, !dbg !546
  %45 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %25, <1 x float> %44, <1 x float> %41), !dbg !546
  %46 = getelementptr inbounds nuw float, ptr %15, i64 %26, !dbg !546
  %47 = load float, ptr %46, align 8, !dbg !546
  %48 = insertelement <1 x float> poison, float %47, i64 0, !dbg !546
  %49 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %27, <1 x float> %48, <1 x float> %45), !dbg !546
  %50 = getelementptr inbounds nuw float, ptr %15, i64 %28, !dbg !546
  %51 = load float, ptr %50, align 4, !dbg !546
  %52 = insertelement <1 x float> poison, float %51, i64 0, !dbg !546
  %53 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %29, <1 x float> %52, <1 x float> %49), !dbg !546
  %54 = getelementptr inbounds nuw float, ptr %15, i64 %30, !dbg !546
  %55 = load float, ptr %54, align 16, !dbg !546
  %56 = insertelement <1 x float> poison, float %55, i64 0, !dbg !546
  %57 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %31, <1 x float> %56, <1 x float> %53), !dbg !546
  %58 = getelementptr inbounds nuw float, ptr %15, i64 %32, !dbg !546
  %59 = load float, ptr %58, align 4, !dbg !546
  %60 = insertelement <1 x float> poison, float %59, i64 0, !dbg !546
  %61 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %33, <1 x float> %60, <1 x float> %57), !dbg !546
  %62 = getelementptr inbounds nuw float, ptr %15, i64 %34, !dbg !546
  %63 = load float, ptr %62, align 8, !dbg !546
  %64 = insertelement <1 x float> poison, float %63, i64 0, !dbg !546
  %65 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %35, <1 x float> %64, <1 x float> %61), !dbg !546
  %66 = getelementptr inbounds nuw float, ptr %15, i64 %36, !dbg !546
  %67 = load float, ptr %66, align 4, !dbg !546
  %68 = insertelement <1 x float> poison, float %67, i64 0, !dbg !546
  %69 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %37, <1 x float> %68, <1 x float> %65), !dbg !546
  %70 = add nuw nsw i64 %22, 8, !dbg !545
  %71 = icmp samesign ult i64 %22, 120, !dbg !545
  br i1 %71, label %20, label %72, !dbg !545

72:                                               ; preds = %20
  %73 = fadd contract <1 x float> %69, zeroinitializer, !dbg !547
  %.inv = fcmp ole <1 x float> %69, zeroinitializer, !dbg !548
  %74 = select <1 x i1> %.inv, <1 x float> zeroinitializer, <1 x float> %73, !dbg !548
  %75 = extractelement <1 x float> %74, i64 0, !dbg !545
  %76 = getelementptr inbounds nuw float, ptr %16, i64 %19, !dbg !545
  store float %75, ptr %76, align 4, !dbg !545
  %77 = add nuw nsw i64 %18, 1, !dbg !545
  %exitcond.not = icmp eq i64 %77, 64, !dbg !545
  br i1 %exitcond.not, label %78, label %17, !dbg !545

78:                                               ; preds = %72
  %79 = add nuw nsw i64 %14, 1, !dbg !545
  %exitcond47.not = icmp eq i64 %79, 64, !dbg !545
  br i1 %exitcond47.not, label %80, label %.preheader, !dbg !545

80:                                               ; preds = %78
  ret i32 0, !dbg !549
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_42_elementwise_64x112x112_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !550 {
  %.elt21 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !551
  %.unpack22 = load ptr, ptr %.elt21, align 16, !dbg !551
  %4 = load ptr, ptr %.unpack22, align 8, !dbg !551
  %5 = getelementptr i8, ptr %4, i64 1605632, !dbg !551
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !551
  %6 = getelementptr i8, ptr %4, i64 3882048, !dbg !552
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !552
  %7 = getelementptr i8, ptr %.unpack22, i64 8, !dbg !553
  %8 = load ptr, ptr %7, align 8, !dbg !553
  %9 = getelementptr i8, ptr %8, i64 7093312, !dbg !553
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !553
  %10 = load i32, ptr %2, align 16, !dbg !554
  %11 = zext i32 %10 to i64, !dbg !554
  %12 = shl nuw nsw i64 %11, 2, !dbg !554
  %13 = and i64 %12, 17179869168, !dbg !554
  %14 = and i64 %11, 2, !dbg !554
  %.not = icmp eq i64 %14, 0, !dbg !554
  %15 = select i1 %.not, i64 0, i64 56, !dbg !554
  %16 = trunc i32 %10 to i1, !dbg !554
  %17 = select i1 %16, i64 56, i64 0, !dbg !554
  br label %18, !dbg !554

18:                                               ; preds = %3, %94
  %19 = phi i64 [ 0, %3 ], [ %95, %94 ]
  %20 = or disjoint i64 %19, %13, !dbg !554
  %21 = mul nuw nsw i64 %20, 56, !dbg !555
  %.idx = mul nuw nsw i64 %20, 50176
  %22 = getelementptr i8, ptr %6, i64 %.idx
  %.idx26 = mul nuw nsw i64 %20, 53824
  %23 = getelementptr i8, ptr %9, i64 %.idx26
  br label %24, !dbg !554

24:                                               ; preds = %18, %92
  %25 = phi i64 [ 0, %18 ], [ %93, %92 ]
  %26 = add nuw nsw i64 %25, %15, !dbg !554
  %27 = uitofp nneg i64 %26 to float, !dbg !556
  %28 = fmul float %27, 5.000000e-01, !dbg !557
  %29 = tail call float @llvm.floor.f32(float %28), !dbg !558
  %30 = fptosi float %29 to i64, !dbg !559
  %31 = add i64 %21, %30, !dbg !555
  %32 = mul i64 %31, 56, !dbg !555
  %.idx25 = mul nuw nsw i64 %26, 448
  %33 = getelementptr i8, ptr %22, i64 %.idx25
  %34 = insertelement <8 x i64> poison, i64 %32, i64 0
  %35 = shufflevector <8 x i64> %34, <8 x i64> poison, <8 x i32> zeroinitializer
  %.idx27 = mul nuw nsw i64 %26, 464
  %36 = getelementptr i8, ptr %23, i64 %.idx27
  %37 = getelementptr i8, ptr %36, i64 936
  br label %38, !dbg !554

38:                                               ; preds = %24, %38
  %39 = phi i64 [ 0, %24 ], [ %90, %38 ]
  %40 = add nuw nsw i64 %39, %17, !dbg !554
  %41 = getelementptr float, ptr %33, i64 %40, !dbg !554
  %42 = load <8 x float>, ptr %41, align 32, !dbg !554
  %43 = insertelement <8 x i64> poison, i64 %40, i64 0, !dbg !554
  %44 = shufflevector <8 x i64> %43, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !554
  %45 = or disjoint <8 x i64> %44, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, !dbg !560
  %46 = uitofp nneg <8 x i64> %45 to <8 x float>, !dbg !561
  %47 = fmul <8 x float> %46, splat (float 5.000000e-01), !dbg !562
  %48 = tail call <8 x float> @llvm.floor.v8f32(<8 x float> %47), !dbg !563
  %49 = fptosi <8 x float> %48 to <8 x i64>, !dbg !564
  %50 = add <8 x i64> %35, %49, !dbg !555
  %51 = extractelement <8 x i64> %50, i64 0, !dbg !555
  %52 = getelementptr float, ptr %5, i64 %51, !dbg !555
  %53 = load <1 x float>, ptr %52, align 4, !dbg !555
  %54 = extractelement <8 x i64> %50, i64 1, !dbg !555
  %55 = getelementptr float, ptr %5, i64 %54, !dbg !555
  %56 = load <1 x float>, ptr %55, align 4, !dbg !555
  %57 = extractelement <8 x i64> %50, i64 2, !dbg !555
  %58 = getelementptr float, ptr %5, i64 %57, !dbg !555
  %59 = load <1 x float>, ptr %58, align 4, !dbg !555
  %60 = shufflevector <1 x float> %59, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %61 = extractelement <8 x i64> %50, i64 3, !dbg !555
  %62 = getelementptr float, ptr %5, i64 %61, !dbg !555
  %63 = load <1 x float>, ptr %62, align 4, !dbg !555
  %64 = shufflevector <1 x float> %63, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %65 = extractelement <8 x i64> %50, i64 4, !dbg !555
  %66 = getelementptr float, ptr %5, i64 %65, !dbg !555
  %67 = load <1 x float>, ptr %66, align 4, !dbg !555
  %68 = shufflevector <1 x float> %67, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %69 = extractelement <8 x i64> %50, i64 5, !dbg !555
  %70 = getelementptr float, ptr %5, i64 %69, !dbg !555
  %71 = load <1 x float>, ptr %70, align 4, !dbg !555
  %72 = shufflevector <1 x float> %71, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %73 = extractelement <8 x i64> %50, i64 6, !dbg !555
  %74 = getelementptr float, ptr %5, i64 %73, !dbg !555
  %75 = load <1 x float>, ptr %74, align 4, !dbg !555
  %76 = shufflevector <1 x float> %75, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %77 = extractelement <8 x i64> %50, i64 7, !dbg !555
  %78 = getelementptr float, ptr %5, i64 %77, !dbg !555
  %79 = load <1 x float>, ptr %78, align 4, !dbg !555
  %80 = shufflevector <1 x float> %79, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %81 = shufflevector <1 x float> %53, <1 x float> %56, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !555
  %82 = shufflevector <8 x float> %81, <8 x float> %60, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !555
  %83 = shufflevector <8 x float> %82, <8 x float> %64, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !555
  %84 = shufflevector <8 x float> %83, <8 x float> %68, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>, !dbg !555
  %85 = shufflevector <8 x float> %84, <8 x float> %72, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>, !dbg !555
  %86 = shufflevector <8 x float> %85, <8 x float> %76, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>, !dbg !555
  %87 = shufflevector <8 x float> %86, <8 x float> %80, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>, !dbg !555
  %88 = fadd contract <8 x float> %42, %87, !dbg !565
  %89 = getelementptr float, ptr %37, i64 %40, !dbg !554
  store <8 x float> %88, ptr %89, align 8, !dbg !554
  %90 = add nuw nsw i64 %39, 8, !dbg !554
  %91 = icmp samesign ult i64 %39, 48, !dbg !554
  br i1 %91, label %38, label %92, !dbg !554

92:                                               ; preds = %38
  %93 = add nuw nsw i64 %25, 1, !dbg !554
  %exitcond.not = icmp eq i64 %93, 56, !dbg !554
  br i1 %exitcond.not, label %94, label %24, !dbg !554

94:                                               ; preds = %92
  %95 = add nuw nsw i64 %19, 1, !dbg !554
  %exitcond28.not = icmp eq i64 %95, 16, !dbg !554
  br i1 %exitcond28.not, label %96, label %18, !dbg !554

96:                                               ; preds = %94
  ret i32 0, !dbg !566
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_43_conv_112x112x64x5x5_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !567 {
  %4 = alloca [8 x float], align 64, !dbg !568
  %5 = alloca [8 x float], align 64, !dbg !568
  %6 = alloca [8 x float], align 64, !dbg !569
  %.elt26 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !570
  %.unpack27 = load ptr, ptr %.elt26, align 16, !dbg !570
  %7 = load ptr, ptr %.unpack27, align 8, !dbg !570
  %8 = getelementptr i8, ptr %7, i64 7093312, !dbg !570
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !570
  %9 = getelementptr i8, ptr %.unpack27, i64 8, !dbg !571
  %10 = load ptr, ptr %9, align 8, !dbg !571
  %11 = getelementptr i8, ptr %10, i64 15351808, !dbg !571
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !571
  %12 = getelementptr i8, ptr %.unpack27, i64 16, !dbg !572
  %13 = load ptr, ptr %12, align 8, !dbg !572
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !572
  %14 = load i32, ptr %2, align 16, !dbg !568
  %15 = zext i32 %14 to i64, !dbg !568
  %16 = lshr i64 %15, 3, !dbg !568
  %17 = lshr i64 %15, 1, !dbg !568
  %18 = and i64 %17, 3, !dbg !568
  %19 = mul nuw nsw i64 %16, 28, !dbg !568
  %20 = mul nuw nsw i64 %18, 28, !dbg !568
  %21 = shl nuw nsw i64 %15, 5, !dbg !568
  %22 = and i64 %21, 32, !dbg !568
  br label %.preheader39, !dbg !568

.preheader39:                                     ; preds = %3, %89
  %23 = phi i64 [ 0, %3 ], [ %90, %89 ]
  %24 = add nuw nsw i64 %23, %19
  %.idx30 = mul nuw nsw i64 %24, 448
  %invariant.gep = getelementptr inbounds nuw i8, ptr %13, i64 %.idx30
  br label %25, !dbg !568

25:                                               ; preds = %.preheader39, %86
  %indvars.iv = phi i64 [ 28, %.preheader39 ], [ %indvars.iv.next, %86 ]
  %26 = phi i64 [ 0, %.preheader39 ], [ %87, %86 ]
  %umin53 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 8), !dbg !568
  %27 = sub nuw nsw i64 28, %26, !dbg !568
  %28 = tail call i64 @llvm.umin.i64(i64 %27, i64 8), !dbg !568
  %29 = trunc nuw nsw i64 %28 to i32, !dbg !573
  %30 = insertelement <8 x i32> poison, i32 %29, i64 0, !dbg !573
  %31 = shufflevector <8 x i32> %30, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !573
  %32 = icmp samesign ugt <8 x i32> %31, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !573
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr nonnull %6, i32 64, <8 x i1> %32), !dbg !573
  %33 = add nuw nsw i64 %26, %20, !dbg !568
  %invariant.gep40 = getelementptr float, ptr %8, i64 %33, !dbg !568
  %invariant.gep43 = getelementptr inbounds nuw float, ptr %invariant.gep, i64 %33, !dbg !568
  br label %34, !dbg !568

34:                                               ; preds = %25, %84
  %35 = phi i64 [ 0, %25 ], [ %85, %84 ]
  br label %38, !dbg !568

.preheader38:                                     ; preds = %38
  %36 = or disjoint i64 %35, %22, !dbg !568
  %.idx31 = mul nuw nsw i64 %36, 53824
  %gep41 = getelementptr i8, ptr %invariant.gep40, i64 %.idx31, !dbg !568
  %.idx33 = mul nuw nsw i64 %36, 100
  %37 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx33
  br label %44, !dbg !568

38:                                               ; preds = %34, %38
  %39 = phi i64 [ 0, %34 ], [ %43, %38 ]
  %40 = getelementptr inbounds nuw float, ptr %6, i64 %39, !dbg !568
  %41 = load float, ptr %40, align 4, !dbg !568
  %42 = getelementptr inbounds nuw float, ptr %5, i64 %39, !dbg !568
  store float %41, ptr %42, align 4, !dbg !568
  %43 = add nuw nsw i64 %39, 1, !dbg !568
  %exitcond.not = icmp eq i64 %43, %umin53, !dbg !568
  br i1 %exitcond.not, label %.preheader38, label %38, !dbg !568

44:                                               ; preds = %.preheader38, %63
  %45 = phi i64 [ 0, %.preheader38 ], [ %64, %63 ]
  %46 = add nuw nsw i64 %24, %45, !dbg !568
  %.idx32 = mul nuw nsw i64 %46, 464
  %gep = getelementptr i8, ptr %gep41, i64 %.idx32
  %.idx34 = mul nuw nsw i64 %45, 20
  %47 = getelementptr inbounds nuw i8, ptr %37, i64 %.idx34
  br label %.preheader, !dbg !568

.preheader:                                       ; preds = %44, %61
  %48 = phi i64 [ 0, %44 ], [ %62, %61 ]
  %49 = getelementptr float, ptr %gep, i64 %48
  %50 = getelementptr inbounds nuw float, ptr %5, i64 %48
  %.promoted = load float, ptr %50, align 4
  br label %51, !dbg !568

51:                                               ; preds = %.preheader, %51
  %52 = phi i64 [ 0, %.preheader ], [ %60, %51 ]
  %53 = phi float [ %.promoted, %.preheader ], [ %59, %51 ]
  %54 = getelementptr float, ptr %49, i64 %52, !dbg !568
  %55 = load float, ptr %54, align 4, !dbg !568
  %56 = getelementptr inbounds nuw float, ptr %47, i64 %52, !dbg !568
  %57 = load float, ptr %56, align 4, !dbg !568
  %58 = fmul contract float %55, %57, !dbg !574
  %59 = fadd contract float %53, %58, !dbg !575
  %60 = add nuw nsw i64 %52, 1, !dbg !568
  %exitcond45.not = icmp eq i64 %60, 5, !dbg !568
  br i1 %exitcond45.not, label %61, label %51, !dbg !568

61:                                               ; preds = %51
  store float %59, ptr %50, align 4, !dbg !568
  %62 = add nuw nsw i64 %48, 1, !dbg !568
  %exitcond47.not = icmp eq i64 %62, %umin53, !dbg !568
  br i1 %exitcond47.not, label %63, label %.preheader, !dbg !568

63:                                               ; preds = %61
  %64 = add nuw nsw i64 %45, 1, !dbg !568
  %exitcond48.not = icmp eq i64 %64, 5, !dbg !568
  br i1 %exitcond48.not, label %.preheader37, label %44, !dbg !568

.preheader37:                                     ; preds = %63, %.preheader37
  %65 = phi i64 [ %69, %.preheader37 ], [ 0, %63 ]
  %66 = getelementptr inbounds nuw float, ptr %6, i64 %65, !dbg !568
  %67 = load float, ptr %66, align 4, !dbg !568
  %68 = getelementptr inbounds nuw float, ptr %4, i64 %65, !dbg !568
  store float %67, ptr %68, align 4, !dbg !568
  %69 = add nuw nsw i64 %65, 1, !dbg !568
  %exitcond50.not = icmp eq i64 %69, %umin53, !dbg !568
  br i1 %exitcond50.not, label %.preheader36, label %.preheader37, !dbg !568

.preheader35:                                     ; preds = %.preheader36
  %.idx = mul nuw nsw i64 %36, 50176
  %gep44 = getelementptr inbounds nuw i8, ptr %invariant.gep43, i64 %.idx
  br label %75, !dbg !576

.preheader36:                                     ; preds = %.preheader37, %.preheader36
  %70 = phi i64 [ %74, %.preheader36 ], [ 0, %.preheader37 ]
  %71 = getelementptr inbounds nuw float, ptr %5, i64 %70, !dbg !568
  %72 = load float, ptr %71, align 4, !dbg !568
  %73 = getelementptr inbounds nuw float, ptr %4, i64 %70, !dbg !568
  store float %72, ptr %73, align 4, !dbg !568
  %74 = add nuw nsw i64 %70, 1, !dbg !568
  %exitcond52.not = icmp eq i64 %74, %umin53, !dbg !568
  br i1 %exitcond52.not, label %.preheader35, label %.preheader36, !dbg !568

75:                                               ; preds = %.preheader35, %75
  %76 = phi i64 [ 0, %.preheader35 ], [ %83, %75 ]
  %77 = getelementptr float, ptr %4, i64 %76, !dbg !576
  %78 = load <1 x float>, ptr %77, align 4, !dbg !576
  %79 = fadd contract <1 x float> %78, zeroinitializer, !dbg !577
  %.inv = fcmp ole <1 x float> %78, zeroinitializer, !dbg !578
  %80 = select <1 x i1> %.inv, <1 x float> zeroinitializer, <1 x float> %79, !dbg !578
  %81 = extractelement <1 x float> %80, i64 0, !dbg !576
  %82 = getelementptr inbounds nuw float, ptr %gep44, i64 %76, !dbg !576
  store float %81, ptr %82, align 4, !dbg !576
  %83 = add nuw nsw i64 %76, 1, !dbg !576
  %exitcond54.not = icmp eq i64 %83, %umin53, !dbg !576
  br i1 %exitcond54.not, label %84, label %75, !dbg !576

84:                                               ; preds = %75
  %85 = add nuw nsw i64 %35, 1, !dbg !568
  %exitcond55.not = icmp eq i64 %85, 32, !dbg !568
  br i1 %exitcond55.not, label %86, label %34, !dbg !568

86:                                               ; preds = %84
  %87 = add nuw nsw i64 %26, 8, !dbg !568
  %88 = icmp samesign ult i64 %26, 20, !dbg !568
  %indvars.iv.next = add nsw i64 %indvars.iv, -8, !dbg !568
  br i1 %88, label %25, label %89, !dbg !568

89:                                               ; preds = %86
  %90 = add nuw nsw i64 %23, 1, !dbg !568
  %exitcond56.not = icmp eq i64 %90, 28, !dbg !568
  br i1 %exitcond56.not, label %91, label %.preheader39, !dbg !568

91:                                               ; preds = %89
  ret i32 0, !dbg !579
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_44_matmul_like_32x12544x64_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !580 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !581
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !581
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !581
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !581
  %5 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !582
  %6 = load ptr, ptr %5, align 8, !dbg !582
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !582
  %7 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !583
  %8 = load ptr, ptr %7, align 8, !dbg !583
  %9 = getelementptr i8, ptr %8, i64 3211264, !dbg !583
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !583
  %10 = load i32, ptr %2, align 16, !dbg !584
  %11 = zext i32 %10 to i64, !dbg !584
  %12 = shl nuw nsw i64 %11, 6, !dbg !584
  br label %.preheader, !dbg !584

.preheader:                                       ; preds = %3, %77
  %13 = phi i64 [ 0, %3 ], [ %78, %77 ]
  %.idx32 = shl nuw nsw i64 %13, 8
  %14 = getelementptr inbounds nuw i8, ptr %6, i64 %.idx32
  %.idx = mul nuw nsw i64 %13, 50176
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 %.idx
  br label %16, !dbg !584

16:                                               ; preds = %.preheader, %71
  %17 = phi i64 [ 0, %.preheader ], [ %76, %71 ]
  %18 = add nuw nsw i64 %17, %12, !dbg !584
  %invariant.gep = getelementptr float, ptr %4, i64 %18, !dbg !584
  br label %19, !dbg !584

19:                                               ; preds = %16, %19
  %20 = phi <1 x float> [ zeroinitializer, %16 ], [ %68, %19 ]
  %21 = phi i64 [ 0, %16 ], [ %69, %19 ]
  %.idx24 = mul nuw nsw i64 %21, 50176, !dbg !584
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx24, !dbg !584
  %22 = load <1 x float>, ptr %gep, align 4, !dbg !584
  %23 = or disjoint i64 %21, 1, !dbg !584
  %.idx25 = mul nuw nsw i64 %23, 50176, !dbg !584
  %gep34 = getelementptr i8, ptr %invariant.gep, i64 %.idx25, !dbg !584
  %24 = load <1 x float>, ptr %gep34, align 4, !dbg !584
  %25 = or disjoint i64 %21, 2, !dbg !584
  %.idx26 = mul nuw nsw i64 %25, 50176, !dbg !584
  %gep36 = getelementptr i8, ptr %invariant.gep, i64 %.idx26, !dbg !584
  %26 = load <1 x float>, ptr %gep36, align 4, !dbg !584
  %27 = or disjoint i64 %21, 3, !dbg !584
  %.idx27 = mul nuw nsw i64 %27, 50176, !dbg !584
  %gep38 = getelementptr i8, ptr %invariant.gep, i64 %.idx27, !dbg !584
  %28 = load <1 x float>, ptr %gep38, align 4, !dbg !584
  %29 = or disjoint i64 %21, 4, !dbg !584
  %.idx28 = mul nuw nsw i64 %29, 50176, !dbg !584
  %gep40 = getelementptr i8, ptr %invariant.gep, i64 %.idx28, !dbg !584
  %30 = load <1 x float>, ptr %gep40, align 4, !dbg !584
  %31 = or disjoint i64 %21, 5, !dbg !584
  %.idx29 = mul nuw nsw i64 %31, 50176, !dbg !584
  %gep42 = getelementptr i8, ptr %invariant.gep, i64 %.idx29, !dbg !584
  %32 = load <1 x float>, ptr %gep42, align 4, !dbg !584
  %33 = or disjoint i64 %21, 6, !dbg !584
  %.idx30 = mul nuw nsw i64 %33, 50176, !dbg !584
  %gep44 = getelementptr i8, ptr %invariant.gep, i64 %.idx30, !dbg !584
  %34 = load <1 x float>, ptr %gep44, align 4, !dbg !584
  %35 = or disjoint i64 %21, 7, !dbg !584
  %.idx31 = mul nuw nsw i64 %35, 50176, !dbg !584
  %gep46 = getelementptr i8, ptr %invariant.gep, i64 %.idx31, !dbg !584
  %36 = load <1 x float>, ptr %gep46, align 4, !dbg !584
  %37 = getelementptr inbounds nuw float, ptr %14, i64 %21, !dbg !585
  %38 = load float, ptr %37, align 32, !dbg !585
  %39 = insertelement <1 x float> poison, float %38, i64 0, !dbg !585
  %40 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %22, <1 x float> %39, <1 x float> %20), !dbg !585
  %41 = getelementptr inbounds nuw float, ptr %14, i64 %23, !dbg !585
  %42 = load float, ptr %41, align 4, !dbg !585
  %43 = insertelement <1 x float> poison, float %42, i64 0, !dbg !585
  %44 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %24, <1 x float> %43, <1 x float> %40), !dbg !585
  %45 = getelementptr inbounds nuw float, ptr %14, i64 %25, !dbg !585
  %46 = load float, ptr %45, align 8, !dbg !585
  %47 = insertelement <1 x float> poison, float %46, i64 0, !dbg !585
  %48 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %26, <1 x float> %47, <1 x float> %44), !dbg !585
  %49 = getelementptr inbounds nuw float, ptr %14, i64 %27, !dbg !585
  %50 = load float, ptr %49, align 4, !dbg !585
  %51 = insertelement <1 x float> poison, float %50, i64 0, !dbg !585
  %52 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %28, <1 x float> %51, <1 x float> %48), !dbg !585
  %53 = getelementptr inbounds nuw float, ptr %14, i64 %29, !dbg !585
  %54 = load float, ptr %53, align 16, !dbg !585
  %55 = insertelement <1 x float> poison, float %54, i64 0, !dbg !585
  %56 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %30, <1 x float> %55, <1 x float> %52), !dbg !585
  %57 = getelementptr inbounds nuw float, ptr %14, i64 %31, !dbg !585
  %58 = load float, ptr %57, align 4, !dbg !585
  %59 = insertelement <1 x float> poison, float %58, i64 0, !dbg !585
  %60 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %32, <1 x float> %59, <1 x float> %56), !dbg !585
  %61 = getelementptr inbounds nuw float, ptr %14, i64 %33, !dbg !585
  %62 = load float, ptr %61, align 8, !dbg !585
  %63 = insertelement <1 x float> poison, float %62, i64 0, !dbg !585
  %64 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %34, <1 x float> %63, <1 x float> %60), !dbg !585
  %65 = getelementptr inbounds nuw float, ptr %14, i64 %35, !dbg !585
  %66 = load float, ptr %65, align 4, !dbg !585
  %67 = insertelement <1 x float> poison, float %66, i64 0, !dbg !585
  %68 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %67, <1 x float> %64), !dbg !585
  %69 = add nuw nsw i64 %21, 8, !dbg !584
  %70 = icmp samesign ult i64 %21, 56, !dbg !584
  br i1 %70, label %19, label %71, !dbg !584

71:                                               ; preds = %19
  %72 = fadd contract <1 x float> %68, zeroinitializer, !dbg !586
  %.inv = fcmp ole <1 x float> %68, zeroinitializer, !dbg !587
  %73 = select <1 x i1> %.inv, <1 x float> zeroinitializer, <1 x float> %72, !dbg !587
  %74 = extractelement <1 x float> %73, i64 0, !dbg !584
  %75 = getelementptr inbounds nuw float, ptr %15, i64 %18, !dbg !584
  store float %74, ptr %75, align 4, !dbg !584
  %76 = add nuw nsw i64 %17, 1, !dbg !584
  %exitcond.not = icmp eq i64 %76, 64, !dbg !584
  br i1 %exitcond.not, label %77, label %16, !dbg !584

77:                                               ; preds = %71
  %78 = add nuw nsw i64 %13, 1, !dbg !584
  %exitcond47.not = icmp eq i64 %78, 32, !dbg !584
  br i1 %exitcond47.not, label %79, label %.preheader, !dbg !584

79:                                               ; preds = %77
  ret i32 0, !dbg !588
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_45_matvec_like_50176x32_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !589 {
  %4 = alloca [512 x float], align 64, !dbg !590
  %5 = alloca [64 x float], align 64, !dbg !591
  %.elt21 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !592
  %.unpack22 = load ptr, ptr %.elt21, align 16, !dbg !592
  %6 = load ptr, ptr %.unpack22, align 8, !dbg !592
  %7 = getelementptr i8, ptr %6, i64 3211264, !dbg !592
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !592
  %8 = getelementptr i8, ptr %.unpack22, i64 8, !dbg !593
  %9 = load ptr, ptr %8, align 8, !dbg !593
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !593
  %10 = load i32, ptr %2, align 16, !dbg !594
  %11 = zext i32 %10 to i64, !dbg !594
  %12 = shl nuw nsw i64 %11, 6, !dbg !594
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 256
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 512
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 768
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 1280
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 1536
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 1792
  br label %.preheader, !dbg !594

.preheader:                                       ; preds = %3, %90
  %20 = phi <64 x float> [ zeroinitializer, %3 ], [ %138, %90 ]
  %21 = phi i64 [ 0, %3 ], [ %139, %90 ]
  br label %22, !dbg !590

22:                                               ; preds = %.preheader, %88
  %23 = phi i64 [ 0, %.preheader ], [ %89, %88 ]
  %24 = add nuw nsw i64 %23, %21, !dbg !595
  %25 = mul nuw nsw i64 %24, 112, !dbg !596
  %26 = insertelement <8 x i64> poison, i64 %25, i64 0
  %27 = shufflevector <8 x i64> %26, <8 x i64> poison, <8 x i32> zeroinitializer
  %.idx = shl nuw nsw i64 %23, 8
  %28 = getelementptr i8, ptr %4, i64 %.idx
  br label %29, !dbg !590

29:                                               ; preds = %22, %29
  %30 = phi i64 [ 0, %22 ], [ %86, %29 ]
  %31 = or disjoint i64 %30, %12, !dbg !597
  %32 = insertelement <8 x i64> poison, i64 %31, i64 0, !dbg !590
  %33 = shufflevector <8 x i64> %32, <8 x i64> poison, <8 x i32> zeroinitializer, !dbg !590
  %34 = or disjoint <8 x i64> %33, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, !dbg !597
  %35 = urem <8 x i64> %34, splat (i64 224), !dbg !598
  %36 = udiv <8 x i64> %33, splat (i64 224), !dbg !599
  %37 = uitofp nneg <8 x i64> %36 to <8 x float>, !dbg !600
  %38 = fmul <8 x float> %37, splat (float 5.000000e-01), !dbg !601
  %39 = tail call <8 x float> @llvm.floor.v8f32(<8 x float> %38), !dbg !602
  %40 = fptosi <8 x float> %39 to <8 x i64>, !dbg !603
  %41 = uitofp nneg <8 x i64> %35 to <8 x float>, !dbg !604
  %42 = fmul <8 x float> %41, splat (float 5.000000e-01), !dbg !605
  %43 = tail call <8 x float> @llvm.floor.v8f32(<8 x float> %42), !dbg !606
  %44 = fptosi <8 x float> %43 to <8 x i64>, !dbg !607
  %45 = add <8 x i64> %27, %40, !dbg !596
  %46 = mul <8 x i64> %45, splat (i64 112), !dbg !596
  %47 = add <8 x i64> %46, %44, !dbg !596
  %48 = extractelement <8 x i64> %47, i64 0, !dbg !596
  %49 = getelementptr float, ptr %7, i64 %48, !dbg !596
  %50 = load <1 x float>, ptr %49, align 4, !dbg !596
  %51 = extractelement <8 x i64> %47, i64 1, !dbg !596
  %52 = getelementptr float, ptr %7, i64 %51, !dbg !596
  %53 = load <1 x float>, ptr %52, align 4, !dbg !596
  %54 = extractelement <8 x i64> %47, i64 2, !dbg !596
  %55 = getelementptr float, ptr %7, i64 %54, !dbg !596
  %56 = load <1 x float>, ptr %55, align 4, !dbg !596
  %57 = shufflevector <1 x float> %56, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %58 = extractelement <8 x i64> %47, i64 3, !dbg !596
  %59 = getelementptr float, ptr %7, i64 %58, !dbg !596
  %60 = load <1 x float>, ptr %59, align 4, !dbg !596
  %61 = shufflevector <1 x float> %60, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %62 = extractelement <8 x i64> %47, i64 4, !dbg !596
  %63 = getelementptr float, ptr %7, i64 %62, !dbg !596
  %64 = load <1 x float>, ptr %63, align 4, !dbg !596
  %65 = shufflevector <1 x float> %64, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %66 = extractelement <8 x i64> %47, i64 5, !dbg !596
  %67 = getelementptr float, ptr %7, i64 %66, !dbg !596
  %68 = load <1 x float>, ptr %67, align 4, !dbg !596
  %69 = shufflevector <1 x float> %68, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %70 = extractelement <8 x i64> %47, i64 6, !dbg !596
  %71 = getelementptr float, ptr %7, i64 %70, !dbg !596
  %72 = load <1 x float>, ptr %71, align 4, !dbg !596
  %73 = shufflevector <1 x float> %72, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %74 = extractelement <8 x i64> %47, i64 7, !dbg !596
  %75 = getelementptr float, ptr %7, i64 %74, !dbg !596
  %76 = load <1 x float>, ptr %75, align 4, !dbg !596
  %77 = shufflevector <1 x float> %76, <1 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %78 = shufflevector <1 x float> %50, <1 x float> %53, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !596
  %79 = shufflevector <8 x float> %78, <8 x float> %57, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !596
  %80 = shufflevector <8 x float> %79, <8 x float> %61, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !596
  %81 = shufflevector <8 x float> %80, <8 x float> %65, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>, !dbg !596
  %82 = shufflevector <8 x float> %81, <8 x float> %69, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>, !dbg !596
  %83 = shufflevector <8 x float> %82, <8 x float> %73, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>, !dbg !596
  %84 = shufflevector <8 x float> %83, <8 x float> %77, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>, !dbg !596
  %85 = getelementptr float, ptr %28, i64 %30, !dbg !590
  store <8 x float> %84, ptr %85, align 32, !dbg !590
  %86 = add nuw nsw i64 %30, 8, !dbg !590
  %87 = icmp samesign ult i64 %30, 56, !dbg !590
  br i1 %87, label %29, label %88, !dbg !590

88:                                               ; preds = %29
  %89 = add nuw nsw i64 %23, 1, !dbg !590
  %exitcond.not = icmp eq i64 %89, 8, !dbg !590
  br i1 %exitcond.not, label %90, label %22, !dbg !590

90:                                               ; preds = %88
  %91 = load <64 x float>, ptr %4, align 64, !dbg !594
  %92 = load <64 x float>, ptr %13, align 64, !dbg !594
  %93 = load <64 x float>, ptr %14, align 64, !dbg !594
  %94 = load <64 x float>, ptr %15, align 64, !dbg !594
  %95 = load <64 x float>, ptr %16, align 64, !dbg !594
  %96 = load <64 x float>, ptr %17, align 64, !dbg !594
  %97 = load <64 x float>, ptr %18, align 64, !dbg !594
  %98 = load <64 x float>, ptr %19, align 64, !dbg !594
  %99 = getelementptr inbounds nuw float, ptr @__constant_32xf32, i64 %21, !dbg !608
  %100 = load float, ptr %99, align 32, !dbg !608
  %101 = insertelement <64 x float> poison, float %100, i64 0, !dbg !608
  %102 = shufflevector <64 x float> %101, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !608
  %103 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %91, <64 x float> %102, <64 x float> %20), !dbg !608
  %104 = getelementptr inbounds nuw i8, ptr %99, i64 4, !dbg !608
  %105 = load float, ptr %104, align 4, !dbg !608
  %106 = insertelement <64 x float> poison, float %105, i64 0, !dbg !608
  %107 = shufflevector <64 x float> %106, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !608
  %108 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %92, <64 x float> %107, <64 x float> %103), !dbg !608
  %109 = getelementptr inbounds nuw i8, ptr %99, i64 8, !dbg !608
  %110 = load float, ptr %109, align 8, !dbg !608
  %111 = insertelement <64 x float> poison, float %110, i64 0, !dbg !608
  %112 = shufflevector <64 x float> %111, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !608
  %113 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %93, <64 x float> %112, <64 x float> %108), !dbg !608
  %114 = getelementptr inbounds nuw i8, ptr %99, i64 12, !dbg !608
  %115 = load float, ptr %114, align 4, !dbg !608
  %116 = insertelement <64 x float> poison, float %115, i64 0, !dbg !608
  %117 = shufflevector <64 x float> %116, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !608
  %118 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %94, <64 x float> %117, <64 x float> %113), !dbg !608
  %119 = getelementptr inbounds nuw i8, ptr %99, i64 16, !dbg !608
  %120 = load float, ptr %119, align 16, !dbg !608
  %121 = insertelement <64 x float> poison, float %120, i64 0, !dbg !608
  %122 = shufflevector <64 x float> %121, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !608
  %123 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %95, <64 x float> %122, <64 x float> %118), !dbg !608
  %124 = getelementptr inbounds nuw i8, ptr %99, i64 20, !dbg !608
  %125 = load float, ptr %124, align 4, !dbg !608
  %126 = insertelement <64 x float> poison, float %125, i64 0, !dbg !608
  %127 = shufflevector <64 x float> %126, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !608
  %128 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %96, <64 x float> %127, <64 x float> %123), !dbg !608
  %129 = getelementptr inbounds nuw i8, ptr %99, i64 24, !dbg !608
  %130 = load float, ptr %129, align 8, !dbg !608
  %131 = insertelement <64 x float> poison, float %130, i64 0, !dbg !608
  %132 = shufflevector <64 x float> %131, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !608
  %133 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %97, <64 x float> %132, <64 x float> %128), !dbg !608
  %134 = getelementptr inbounds nuw i8, ptr %99, i64 28, !dbg !608
  %135 = load float, ptr %134, align 4, !dbg !608
  %136 = insertelement <64 x float> poison, float %135, i64 0, !dbg !608
  %137 = shufflevector <64 x float> %136, <64 x float> poison, <64 x i32> zeroinitializer, !dbg !608
  %138 = tail call <64 x float> @llvm.fmuladd.v64f32(<64 x float> %98, <64 x float> %137, <64 x float> %133), !dbg !608
  %139 = add nuw nsw i64 %21, 8, !dbg !594
  %140 = icmp samesign ult i64 %21, 24, !dbg !594
  br i1 %140, label %.preheader, label %141, !dbg !594

141:                                              ; preds = %90
  store <64 x float> %138, ptr %5, align 64, !dbg !608
  %142 = getelementptr inbounds nuw float, ptr %9, i64 %12
  br label %143, !dbg !609

143:                                              ; preds = %141, %143
  %144 = phi i64 [ 0, %141 ], [ %151, %143 ]
  %145 = getelementptr float, ptr %5, i64 %144, !dbg !609
  %146 = load <1 x float>, ptr %145, align 4, !dbg !609
  %147 = fadd contract <1 x float> %146, zeroinitializer, !dbg !610
  %.inv = fcmp ole <1 x float> %146, zeroinitializer, !dbg !611
  %148 = select <1 x i1> %.inv, <1 x float> zeroinitializer, <1 x float> %147, !dbg !611
  %149 = extractelement <1 x float> %148, i64 0, !dbg !609
  %150 = getelementptr inbounds nuw float, ptr %142, i64 %144, !dbg !609
  store float %149, ptr %150, align 4, !dbg !609
  %151 = add nuw nsw i64 %144, 1, !dbg !609
  %exitcond25.not = icmp eq i64 %151, 64, !dbg !609
  br i1 %exitcond25.not, label %152, label %143, !dbg !609

152:                                              ; preds = %143
  ret i32 0, !dbg !612
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), i32 immarg, <8 x i1>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <1 x float> @llvm.fmuladd.v1f32(<1 x float>, <1 x float>, <1 x float>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x float> @llvm.fmuladd.v64f32(<64 x float>, <64 x float>, <64 x float>) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr readnone captures(none) %1) local_unnamed_addr #4 {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @iree_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #5 {
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
define internal signext i16 @iree_f2h_ieee(float noundef %0) local_unnamed_addr #5 {
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
define internal float @__gnu_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #5 {
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
define internal float @__extendhfsf2(float noundef %0) local_unnamed_addr #5 {
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
define internal signext i16 @__gnu_f2h_ieee(float noundef %0) local_unnamed_addr #5 {
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
define internal float @__truncsfhf2(float noundef %0) local_unnamed_addr #5 {
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
  store i16 %37, ptr %2, align 4, !tbaa !613
  %.0..0..0..0. = load float, ptr %2, align 4, !tbaa !617
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %.0..0..0..0.
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "target-cpu"="znver3" "target-features"="+64bit,+64bit-mode,+adx,+aes,+allow-light-256-bit,+avx,+avx2,+bmi,+bmi2,+branchfusion,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fast-15bytenop,+fast-bextr,+fast-imm16,+fast-lzcnt,+fast-movbe,+fast-scalar-fsqrt,+fast-scalar-shift-masks,+fast-variable-perlane-shuffle,+fast-vector-fsqrt,+fma,+fsgsbase,+fsrm,+fxsr,+idivq-to-divl,+invpcid,+lzcnt,+macrofusion,+mmx,+movbe,+mwaitx,+nopl,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sbb-dep-breaking,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+vzeroupper,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_main_graph$async_dispatch_0.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_main_graph$async_dispatch_1.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_main_graph$async_dispatch_2.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_main_graph$async_dispatch_3.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!8 = distinct !DICompileUnit(language: DW_LANG_C17, file: !9, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!9 = !DIFile(filename: "configured_module_main_graph$async_dispatch_4.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!10 = distinct !DICompileUnit(language: DW_LANG_C17, file: !11, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!11 = !DIFile(filename: "configured_module_main_graph$async_dispatch_5.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!12 = distinct !DICompileUnit(language: DW_LANG_C17, file: !13, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!13 = !DIFile(filename: "configured_module_main_graph$async_dispatch_6.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!14 = distinct !DICompileUnit(language: DW_LANG_C17, file: !15, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!15 = !DIFile(filename: "configured_module_main_graph$async_dispatch_7.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!16 = distinct !DICompileUnit(language: DW_LANG_C17, file: !17, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!17 = !DIFile(filename: "configured_module_main_graph$async_dispatch_8.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!18 = distinct !DICompileUnit(language: DW_LANG_C17, file: !19, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!19 = !DIFile(filename: "configured_module_main_graph$async_dispatch_9.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!20 = distinct !DICompileUnit(language: DW_LANG_C17, file: !21, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!21 = !DIFile(filename: "configured_module_main_graph$async_dispatch_10.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!22 = distinct !DICompileUnit(language: DW_LANG_C17, file: !23, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!23 = !DIFile(filename: "configured_module_main_graph$async_dispatch_11.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!24 = distinct !DICompileUnit(language: DW_LANG_C17, file: !25, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!25 = !DIFile(filename: "configured_module_main_graph$async_dispatch_12.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!26 = distinct !DICompileUnit(language: DW_LANG_C17, file: !27, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!27 = !DIFile(filename: "configured_module_main_graph$async_dispatch_13.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!28 = distinct !DICompileUnit(language: DW_LANG_C17, file: !29, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!29 = !DIFile(filename: "configured_module_main_graph$async_dispatch_14.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!30 = distinct !DICompileUnit(language: DW_LANG_C17, file: !31, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!31 = !DIFile(filename: "configured_module_main_graph$async_dispatch_15.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!32 = distinct !DICompileUnit(language: DW_LANG_C17, file: !33, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!33 = !DIFile(filename: "configured_module_main_graph$async_dispatch_16.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!34 = distinct !DICompileUnit(language: DW_LANG_C17, file: !35, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!35 = !DIFile(filename: "configured_module_main_graph$async_dispatch_17.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!36 = distinct !DICompileUnit(language: DW_LANG_C17, file: !37, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!37 = !DIFile(filename: "configured_module_main_graph$async_dispatch_18.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!38 = distinct !DICompileUnit(language: DW_LANG_C17, file: !39, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!39 = !DIFile(filename: "configured_module_main_graph$async_dispatch_27.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!40 = distinct !DICompileUnit(language: DW_LANG_C17, file: !41, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!41 = !DIFile(filename: "configured_module_main_graph$async_dispatch_28.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!42 = distinct !DICompileUnit(language: DW_LANG_C17, file: !43, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!43 = !DIFile(filename: "configured_module_main_graph$async_dispatch_29.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!44 = distinct !DICompileUnit(language: DW_LANG_C17, file: !45, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!45 = !DIFile(filename: "configured_module_main_graph$async_dispatch_30.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!46 = distinct !DICompileUnit(language: DW_LANG_C17, file: !47, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!47 = !DIFile(filename: "configured_module_main_graph$async_dispatch_31.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!48 = distinct !DICompileUnit(language: DW_LANG_C17, file: !49, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!49 = !DIFile(filename: "configured_module_main_graph$async_dispatch_32.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!50 = distinct !DICompileUnit(language: DW_LANG_C17, file: !51, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!51 = !DIFile(filename: "configured_module_main_graph$async_dispatch_33.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!52 = distinct !DICompileUnit(language: DW_LANG_C17, file: !53, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!53 = !DIFile(filename: "configured_module_main_graph$async_dispatch_34.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!54 = distinct !DICompileUnit(language: DW_LANG_C17, file: !55, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!55 = !DIFile(filename: "configured_module_main_graph$async_dispatch_35.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!56 = distinct !DICompileUnit(language: DW_LANG_C17, file: !57, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!57 = !DIFile(filename: "configured_module_main_graph$async_dispatch_36.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!58 = distinct !DICompileUnit(language: DW_LANG_C17, file: !59, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!59 = !DIFile(filename: "configured_module_main_graph$async_dispatch_37.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!60 = distinct !DICompileUnit(language: DW_LANG_C17, file: !61, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!61 = !DIFile(filename: "configured_module_main_graph$async_dispatch_38.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!62 = distinct !DICompileUnit(language: DW_LANG_C17, file: !63, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!63 = !DIFile(filename: "configured_module_main_graph$async_dispatch_39.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!64 = distinct !DICompileUnit(language: DW_LANG_C17, file: !65, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!65 = !DIFile(filename: "configured_module_main_graph$async_dispatch_40.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!66 = distinct !DICompileUnit(language: DW_LANG_C17, file: !67, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!67 = !DIFile(filename: "configured_module_main_graph$async_dispatch_41.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!68 = distinct !DICompileUnit(language: DW_LANG_C17, file: !69, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!69 = !DIFile(filename: "configured_module_main_graph$async_dispatch_42.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!70 = distinct !DICompileUnit(language: DW_LANG_C17, file: !71, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!71 = !DIFile(filename: "configured_module_main_graph$async_dispatch_43.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!72 = distinct !DICompileUnit(language: DW_LANG_C17, file: !73, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!73 = !DIFile(filename: "configured_module_main_graph$async_dispatch_44.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!74 = distinct !DICompileUnit(language: DW_LANG_C17, file: !75, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!75 = !DIFile(filename: "configured_module_main_graph$async_dispatch_45.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
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
!172 = !DILocation(line: 31, column: 10, scope: !161)
!173 = !DILocation(line: 33, column: 10, scope: !161)
!174 = !DILocation(line: 37, column: 8, scope: !161)
!175 = distinct !DISubprogram(name: "main_graph$async_dispatch_2_conv_112x112x32x3x3_f32", linkageName: "main_graph$async_dispatch_2_conv_112x112x32x3x3_f32", scope: !5, file: !5, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
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
!186 = !DILocation(line: 31, column: 10, scope: !175)
!187 = !DILocation(line: 33, column: 10, scope: !175)
!188 = !DILocation(line: 37, column: 8, scope: !175)
!189 = distinct !DISubprogram(name: "main_graph$async_dispatch_3_matmul_like_64x12544x32_f32", linkageName: "main_graph$async_dispatch_3_matmul_like_64x12544x32_f32", scope: !7, file: !7, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!190 = !DILocation(line: 14, column: 8, scope: !189)
!191 = !DILocation(line: 15, column: 8, scope: !189)
!192 = !DILocation(line: 16, column: 8, scope: !189)
!193 = !DILocation(line: 21, column: 8, scope: !189)
!194 = !DILocation(line: 24, column: 10, scope: !189)
!195 = !DILocation(line: 29, column: 10, scope: !189)
!196 = !DILocation(line: 31, column: 10, scope: !189)
!197 = !DILocation(line: 33, column: 10, scope: !189)
!198 = !DILocation(line: 37, column: 8, scope: !189)
!199 = distinct !DISubprogram(name: "main_graph$async_dispatch_4_slow_memcpy", linkageName: "main_graph$async_dispatch_4_slow_memcpy", scope: !9, file: !9, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8)
!200 = !DILocation(line: 11, column: 8, scope: !199)
!201 = !DILocation(line: 12, column: 8, scope: !199)
!202 = !DILocation(line: 13, column: 8, scope: !199)
!203 = !DILocation(line: 14, column: 8, scope: !199)
!204 = !DILocation(line: 16, column: 8, scope: !199)
!205 = !DILocation(line: 20, column: 8, scope: !199)
!206 = distinct !DISubprogram(name: "main_graph$async_dispatch_5_conv_56x56x64x3x3_f32", linkageName: "main_graph$async_dispatch_5_conv_56x56x64x3x3_f32", scope: !11, file: !11, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!207 = !DILocation(line: 21, column: 8, scope: !206)
!208 = !DILocation(line: 20, column: 8, scope: !206)
!209 = !DILocation(line: 14, column: 8, scope: !206)
!210 = !DILocation(line: 15, column: 8, scope: !206)
!211 = !DILocation(line: 16, column: 8, scope: !206)
!212 = !DILocation(line: 9, column: 8, scope: !206)
!213 = !DILocation(line: 23, column: 10, scope: !206)
!214 = !DILocation(line: 24, column: 10, scope: !206)
!215 = !DILocation(line: 27, column: 8, scope: !206)
!216 = !DILocation(line: 29, column: 10, scope: !206)
!217 = !DILocation(line: 31, column: 10, scope: !206)
!218 = !DILocation(line: 33, column: 10, scope: !206)
!219 = !DILocation(line: 37, column: 8, scope: !206)
!220 = distinct !DISubprogram(name: "main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32", linkageName: "main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32", scope: !13, file: !13, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!221 = !DILocation(line: 14, column: 8, scope: !220)
!222 = !DILocation(line: 15, column: 8, scope: !220)
!223 = !DILocation(line: 16, column: 8, scope: !220)
!224 = !DILocation(line: 21, column: 8, scope: !220)
!225 = !DILocation(line: 24, column: 10, scope: !220)
!226 = !DILocation(line: 29, column: 10, scope: !220)
!227 = !DILocation(line: 31, column: 10, scope: !220)
!228 = !DILocation(line: 33, column: 10, scope: !220)
!229 = !DILocation(line: 37, column: 8, scope: !220)
!230 = distinct !DISubprogram(name: "main_graph$async_dispatch_7_conv_56x56x128x3x3_f32", linkageName: "main_graph$async_dispatch_7_conv_56x56x128x3x3_f32", scope: !15, file: !15, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!231 = !DILocation(line: 21, column: 8, scope: !230)
!232 = !DILocation(line: 20, column: 8, scope: !230)
!233 = !DILocation(line: 14, column: 8, scope: !230)
!234 = !DILocation(line: 15, column: 8, scope: !230)
!235 = !DILocation(line: 16, column: 8, scope: !230)
!236 = !DILocation(line: 9, column: 8, scope: !230)
!237 = !DILocation(line: 23, column: 10, scope: !230)
!238 = !DILocation(line: 24, column: 10, scope: !230)
!239 = !DILocation(line: 27, column: 8, scope: !230)
!240 = !DILocation(line: 29, column: 10, scope: !230)
!241 = !DILocation(line: 31, column: 10, scope: !230)
!242 = !DILocation(line: 33, column: 10, scope: !230)
!243 = !DILocation(line: 37, column: 8, scope: !230)
!244 = distinct !DISubprogram(name: "main_graph$async_dispatch_8_matmul_like_128x3136x128_f32", linkageName: "main_graph$async_dispatch_8_matmul_like_128x3136x128_f32", scope: !17, file: !17, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16)
!245 = !DILocation(line: 14, column: 8, scope: !244)
!246 = !DILocation(line: 15, column: 8, scope: !244)
!247 = !DILocation(line: 16, column: 8, scope: !244)
!248 = !DILocation(line: 21, column: 8, scope: !244)
!249 = !DILocation(line: 24, column: 10, scope: !244)
!250 = !DILocation(line: 29, column: 10, scope: !244)
!251 = !DILocation(line: 31, column: 10, scope: !244)
!252 = !DILocation(line: 33, column: 10, scope: !244)
!253 = !DILocation(line: 37, column: 8, scope: !244)
!254 = distinct !DISubprogram(name: "main_graph$async_dispatch_9_slow_memcpy", linkageName: "main_graph$async_dispatch_9_slow_memcpy", scope: !19, file: !19, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!255 = !DILocation(line: 11, column: 8, scope: !254)
!256 = !DILocation(line: 12, column: 8, scope: !254)
!257 = !DILocation(line: 13, column: 8, scope: !254)
!258 = !DILocation(line: 14, column: 8, scope: !254)
!259 = !DILocation(line: 16, column: 8, scope: !254)
!260 = !DILocation(line: 20, column: 8, scope: !254)
!261 = distinct !DISubprogram(name: "main_graph$async_dispatch_10_conv_28x28x128x3x3_f32", linkageName: "main_graph$async_dispatch_10_conv_28x28x128x3x3_f32", scope: !21, file: !21, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20)
!262 = !DILocation(line: 21, column: 8, scope: !261)
!263 = !DILocation(line: 20, column: 8, scope: !261)
!264 = !DILocation(line: 14, column: 8, scope: !261)
!265 = !DILocation(line: 15, column: 8, scope: !261)
!266 = !DILocation(line: 16, column: 8, scope: !261)
!267 = !DILocation(line: 9, column: 8, scope: !261)
!268 = !DILocation(line: 23, column: 10, scope: !261)
!269 = !DILocation(line: 24, column: 10, scope: !261)
!270 = !DILocation(line: 27, column: 8, scope: !261)
!271 = !DILocation(line: 29, column: 10, scope: !261)
!272 = !DILocation(line: 31, column: 10, scope: !261)
!273 = !DILocation(line: 33, column: 10, scope: !261)
!274 = !DILocation(line: 37, column: 8, scope: !261)
!275 = distinct !DISubprogram(name: "main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32", linkageName: "main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32", scope: !23, file: !23, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22)
!276 = !DILocation(line: 14, column: 8, scope: !275)
!277 = !DILocation(line: 15, column: 8, scope: !275)
!278 = !DILocation(line: 16, column: 8, scope: !275)
!279 = !DILocation(line: 21, column: 8, scope: !275)
!280 = !DILocation(line: 24, column: 10, scope: !275)
!281 = !DILocation(line: 29, column: 10, scope: !275)
!282 = !DILocation(line: 31, column: 10, scope: !275)
!283 = !DILocation(line: 33, column: 10, scope: !275)
!284 = !DILocation(line: 37, column: 8, scope: !275)
!285 = distinct !DISubprogram(name: "main_graph$async_dispatch_12_conv_28x28x256x3x3_f32", linkageName: "main_graph$async_dispatch_12_conv_28x28x256x3x3_f32", scope: !25, file: !25, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!286 = !DILocation(line: 21, column: 8, scope: !285)
!287 = !DILocation(line: 20, column: 8, scope: !285)
!288 = !DILocation(line: 14, column: 8, scope: !285)
!289 = !DILocation(line: 15, column: 8, scope: !285)
!290 = !DILocation(line: 16, column: 8, scope: !285)
!291 = !DILocation(line: 9, column: 8, scope: !285)
!292 = !DILocation(line: 23, column: 10, scope: !285)
!293 = !DILocation(line: 24, column: 10, scope: !285)
!294 = !DILocation(line: 27, column: 8, scope: !285)
!295 = !DILocation(line: 29, column: 10, scope: !285)
!296 = !DILocation(line: 31, column: 10, scope: !285)
!297 = !DILocation(line: 33, column: 10, scope: !285)
!298 = !DILocation(line: 37, column: 8, scope: !285)
!299 = distinct !DISubprogram(name: "main_graph$async_dispatch_13_matmul_like_256x784x256_f32", linkageName: "main_graph$async_dispatch_13_matmul_like_256x784x256_f32", scope: !27, file: !27, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!300 = !DILocation(line: 14, column: 8, scope: !299)
!301 = !DILocation(line: 15, column: 8, scope: !299)
!302 = !DILocation(line: 16, column: 8, scope: !299)
!303 = !DILocation(line: 21, column: 8, scope: !299)
!304 = !DILocation(line: 24, column: 10, scope: !299)
!305 = !DILocation(line: 29, column: 10, scope: !299)
!306 = !DILocation(line: 31, column: 10, scope: !299)
!307 = !DILocation(line: 33, column: 10, scope: !299)
!308 = !DILocation(line: 37, column: 8, scope: !299)
!309 = distinct !DISubprogram(name: "main_graph$async_dispatch_14_slow_memcpy", linkageName: "main_graph$async_dispatch_14_slow_memcpy", scope: !29, file: !29, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28)
!310 = !DILocation(line: 11, column: 8, scope: !309)
!311 = !DILocation(line: 12, column: 8, scope: !309)
!312 = !DILocation(line: 13, column: 8, scope: !309)
!313 = !DILocation(line: 14, column: 8, scope: !309)
!314 = !DILocation(line: 16, column: 8, scope: !309)
!315 = !DILocation(line: 20, column: 8, scope: !309)
!316 = distinct !DISubprogram(name: "main_graph$async_dispatch_15_conv_14x14x256x3x3_f32", linkageName: "main_graph$async_dispatch_15_conv_14x14x256x3x3_f32", scope: !31, file: !31, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30)
!317 = !DILocation(line: 21, column: 8, scope: !316)
!318 = !DILocation(line: 20, column: 8, scope: !316)
!319 = !DILocation(line: 14, column: 8, scope: !316)
!320 = !DILocation(line: 15, column: 8, scope: !316)
!321 = !DILocation(line: 16, column: 8, scope: !316)
!322 = !DILocation(line: 9, column: 8, scope: !316)
!323 = !DILocation(line: 23, column: 10, scope: !316)
!324 = !DILocation(line: 24, column: 10, scope: !316)
!325 = !DILocation(line: 27, column: 8, scope: !316)
!326 = !DILocation(line: 29, column: 10, scope: !316)
!327 = !DILocation(line: 31, column: 10, scope: !316)
!328 = !DILocation(line: 33, column: 10, scope: !316)
!329 = !DILocation(line: 37, column: 8, scope: !316)
!330 = distinct !DISubprogram(name: "main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32", linkageName: "main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32", scope: !33, file: !33, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32)
!331 = !DILocation(line: 14, column: 8, scope: !330)
!332 = !DILocation(line: 15, column: 8, scope: !330)
!333 = !DILocation(line: 16, column: 8, scope: !330)
!334 = !DILocation(line: 21, column: 8, scope: !330)
!335 = !DILocation(line: 24, column: 10, scope: !330)
!336 = !DILocation(line: 29, column: 10, scope: !330)
!337 = !DILocation(line: 31, column: 10, scope: !330)
!338 = !DILocation(line: 33, column: 10, scope: !330)
!339 = !DILocation(line: 37, column: 8, scope: !330)
!340 = distinct !DISubprogram(name: "main_graph$async_dispatch_17_conv_14x14x512x3x3_f32", linkageName: "main_graph$async_dispatch_17_conv_14x14x512x3x3_f32", scope: !35, file: !35, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!341 = !DILocation(line: 27, column: 8, scope: !340)
!342 = !DILocation(line: 26, column: 8, scope: !340)
!343 = !DILocation(line: 12, column: 8, scope: !340)
!344 = !DILocation(line: 13, column: 8, scope: !340)
!345 = !DILocation(line: 20, column: 8, scope: !340)
!346 = !DILocation(line: 21, column: 8, scope: !340)
!347 = !DILocation(line: 22, column: 8, scope: !340)
!348 = !DILocation(line: 10, column: 8, scope: !340)
!349 = !DILocation(line: 29, column: 10, scope: !340)
!350 = !DILocation(line: 30, column: 10, scope: !340)
!351 = !DILocation(line: 33, column: 8, scope: !340)
!352 = !DILocation(line: 35, column: 10, scope: !340)
!353 = !DILocation(line: 37, column: 10, scope: !340)
!354 = !DILocation(line: 39, column: 10, scope: !340)
!355 = !DILocation(line: 43, column: 8, scope: !340)
!356 = distinct !DISubprogram(name: "main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32", linkageName: "main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32", scope: !37, file: !37, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36)
!357 = !DILocation(line: 12, column: 8, scope: !356)
!358 = !DILocation(line: 13, column: 8, scope: !356)
!359 = !DILocation(line: 20, column: 8, scope: !356)
!360 = !DILocation(line: 21, column: 8, scope: !356)
!361 = !DILocation(line: 22, column: 8, scope: !356)
!362 = !DILocation(line: 27, column: 8, scope: !356)
!363 = !DILocation(line: 30, column: 10, scope: !356)
!364 = !DILocation(line: 35, column: 10, scope: !356)
!365 = !DILocation(line: 37, column: 10, scope: !356)
!366 = !DILocation(line: 39, column: 10, scope: !356)
!367 = !DILocation(line: 43, column: 8, scope: !356)
!368 = distinct !DISubprogram(name: "main_graph$async_dispatch_27_conv_7x7x512x3x3_f32", linkageName: "main_graph$async_dispatch_27_conv_7x7x512x3x3_f32", scope: !39, file: !39, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38)
!369 = !DILocation(line: 21, column: 8, scope: !368)
!370 = !DILocation(line: 20, column: 8, scope: !368)
!371 = !DILocation(line: 14, column: 8, scope: !368)
!372 = !DILocation(line: 15, column: 8, scope: !368)
!373 = !DILocation(line: 16, column: 8, scope: !368)
!374 = !DILocation(line: 9, column: 8, scope: !368)
!375 = !DILocation(line: 27, column: 8, scope: !368)
!376 = !DILocation(line: 23, column: 10, scope: !368)
!377 = !DILocation(line: 24, column: 10, scope: !368)
!378 = !DILocation(line: 29, column: 10, scope: !368)
!379 = !DILocation(line: 31, column: 10, scope: !368)
!380 = !DILocation(line: 33, column: 10, scope: !368)
!381 = !DILocation(line: 37, column: 8, scope: !368)
!382 = distinct !DISubprogram(name: "main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32", linkageName: "main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32", scope: !41, file: !41, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40)
!383 = !DILocation(line: 14, column: 8, scope: !382)
!384 = !DILocation(line: 15, column: 8, scope: !382)
!385 = !DILocation(line: 16, column: 8, scope: !382)
!386 = !DILocation(line: 21, column: 8, scope: !382)
!387 = !DILocation(line: 24, column: 10, scope: !382)
!388 = !DILocation(line: 29, column: 10, scope: !382)
!389 = !DILocation(line: 31, column: 10, scope: !382)
!390 = !DILocation(line: 33, column: 10, scope: !382)
!391 = !DILocation(line: 37, column: 8, scope: !382)
!392 = distinct !DISubprogram(name: "main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32", linkageName: "main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32", scope: !43, file: !43, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42)
!393 = !DILocation(line: 21, column: 8, scope: !392)
!394 = !DILocation(line: 20, column: 8, scope: !392)
!395 = !DILocation(line: 14, column: 8, scope: !392)
!396 = !DILocation(line: 15, column: 8, scope: !392)
!397 = !DILocation(line: 16, column: 8, scope: !392)
!398 = !DILocation(line: 9, column: 8, scope: !392)
!399 = !DILocation(line: 27, column: 8, scope: !392)
!400 = !DILocation(line: 23, column: 10, scope: !392)
!401 = !DILocation(line: 24, column: 10, scope: !392)
!402 = !DILocation(line: 29, column: 10, scope: !392)
!403 = !DILocation(line: 31, column: 10, scope: !392)
!404 = !DILocation(line: 33, column: 10, scope: !392)
!405 = !DILocation(line: 37, column: 8, scope: !392)
!406 = distinct !DISubprogram(name: "main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32", linkageName: "main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32", scope: !45, file: !45, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44)
!407 = !DILocation(line: 14, column: 8, scope: !406)
!408 = !DILocation(line: 15, column: 8, scope: !406)
!409 = !DILocation(line: 16, column: 8, scope: !406)
!410 = !DILocation(line: 21, column: 8, scope: !406)
!411 = !DILocation(line: 24, column: 10, scope: !406)
!412 = !DILocation(line: 29, column: 10, scope: !406)
!413 = !DILocation(line: 31, column: 10, scope: !406)
!414 = !DILocation(line: 33, column: 10, scope: !406)
!415 = !DILocation(line: 37, column: 8, scope: !406)
!416 = distinct !DISubprogram(name: "main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32", linkageName: "main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32", scope: !47, file: !47, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46)
!417 = !DILocation(line: 20, column: 8, scope: !416)
!418 = !DILocation(line: 19, column: 8, scope: !416)
!419 = !DILocation(line: 13, column: 8, scope: !416)
!420 = !DILocation(line: 14, column: 8, scope: !416)
!421 = !DILocation(line: 15, column: 8, scope: !416)
!422 = !DILocation(line: 9, column: 8, scope: !416)
!423 = !DILocation(line: 26, column: 8, scope: !416)
!424 = !DILocation(line: 22, column: 10, scope: !416)
!425 = !DILocation(line: 23, column: 10, scope: !416)
!426 = !DILocation(line: 28, column: 10, scope: !416)
!427 = !DILocation(line: 30, column: 10, scope: !416)
!428 = !DILocation(line: 34, column: 8, scope: !416)
!429 = distinct !DISubprogram(name: "main_graph$async_dispatch_32_matmul_like_512x49x1024_f32", linkageName: "main_graph$async_dispatch_32_matmul_like_512x49x1024_f32", scope: !49, file: !49, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48)
!430 = !DILocation(line: 13, column: 8, scope: !429)
!431 = !DILocation(line: 14, column: 8, scope: !429)
!432 = !DILocation(line: 15, column: 8, scope: !429)
!433 = !DILocation(line: 20, column: 8, scope: !429)
!434 = !DILocation(line: 23, column: 10, scope: !429)
!435 = !DILocation(line: 28, column: 10, scope: !429)
!436 = !DILocation(line: 30, column: 10, scope: !429)
!437 = !DILocation(line: 34, column: 8, scope: !429)
!438 = distinct !DISubprogram(name: "main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32", linkageName: "main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32", scope: !51, file: !51, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50)
!439 = !DILocation(line: 13, column: 8, scope: !438)
!440 = !DILocation(line: 14, column: 8, scope: !438)
!441 = !DILocation(line: 17, column: 8, scope: !438)
!442 = !DILocation(line: 19, column: 10, scope: !438)
!443 = !DILocation(line: 34, column: 10, scope: !438)
!444 = !DILocation(line: 20, column: 10, scope: !438)
!445 = !DILocation(line: 23, column: 10, scope: !438)
!446 = !DILocation(line: 24, column: 10, scope: !438)
!447 = !DILocation(line: 25, column: 10, scope: !438)
!448 = !DILocation(line: 26, column: 10, scope: !438)
!449 = !DILocation(line: 38, column: 8, scope: !438)
!450 = distinct !DISubprogram(name: "main_graph$async_dispatch_34_conv_14x14x512x5x5_f32", linkageName: "main_graph$async_dispatch_34_conv_14x14x512x5x5_f32", scope: !53, file: !53, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !52)
!451 = !DILocation(line: 20, column: 8, scope: !450)
!452 = !DILocation(line: 19, column: 8, scope: !450)
!453 = !DILocation(line: 13, column: 8, scope: !450)
!454 = !DILocation(line: 14, column: 8, scope: !450)
!455 = !DILocation(line: 15, column: 8, scope: !450)
!456 = !DILocation(line: 9, column: 8, scope: !450)
!457 = !DILocation(line: 22, column: 10, scope: !450)
!458 = !DILocation(line: 23, column: 10, scope: !450)
!459 = !DILocation(line: 26, column: 8, scope: !450)
!460 = !DILocation(line: 28, column: 10, scope: !450)
!461 = !DILocation(line: 30, column: 10, scope: !450)
!462 = !DILocation(line: 34, column: 8, scope: !450)
!463 = distinct !DISubprogram(name: "main_graph$async_dispatch_35_matmul_like_256x196x512_f32", linkageName: "main_graph$async_dispatch_35_matmul_like_256x196x512_f32", scope: !55, file: !55, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54)
!464 = !DILocation(line: 13, column: 8, scope: !463)
!465 = !DILocation(line: 14, column: 8, scope: !463)
!466 = !DILocation(line: 15, column: 8, scope: !463)
!467 = !DILocation(line: 20, column: 8, scope: !463)
!468 = !DILocation(line: 23, column: 10, scope: !463)
!469 = !DILocation(line: 28, column: 10, scope: !463)
!470 = !DILocation(line: 30, column: 10, scope: !463)
!471 = !DILocation(line: 34, column: 8, scope: !463)
!472 = distinct !DISubprogram(name: "main_graph$async_dispatch_36_elementwise_256x28x28_f32", linkageName: "main_graph$async_dispatch_36_elementwise_256x28x28_f32", scope: !57, file: !57, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56)
!473 = !DILocation(line: 14, column: 8, scope: !472)
!474 = !DILocation(line: 15, column: 8, scope: !472)
!475 = !DILocation(line: 16, column: 8, scope: !472)
!476 = !DILocation(line: 20, column: 8, scope: !472)
!477 = !DILocation(line: 37, column: 10, scope: !472)
!478 = !DILocation(line: 26, column: 10, scope: !472)
!479 = !DILocation(line: 27, column: 10, scope: !472)
!480 = !DILocation(line: 28, column: 10, scope: !472)
!481 = !DILocation(line: 29, column: 10, scope: !472)
!482 = !DILocation(line: 24, column: 10, scope: !472)
!483 = !DILocation(line: 32, column: 10, scope: !472)
!484 = !DILocation(line: 33, column: 10, scope: !472)
!485 = !DILocation(line: 34, column: 10, scope: !472)
!486 = !DILocation(line: 35, column: 10, scope: !472)
!487 = !DILocation(line: 38, column: 10, scope: !472)
!488 = !DILocation(line: 42, column: 8, scope: !472)
!489 = distinct !DISubprogram(name: "main_graph$async_dispatch_37_conv_28x28x256x5x5_f32", linkageName: "main_graph$async_dispatch_37_conv_28x28x256x5x5_f32", scope: !59, file: !59, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58)
!490 = !DILocation(line: 20, column: 8, scope: !489)
!491 = !DILocation(line: 19, column: 8, scope: !489)
!492 = !DILocation(line: 13, column: 8, scope: !489)
!493 = !DILocation(line: 14, column: 8, scope: !489)
!494 = !DILocation(line: 15, column: 8, scope: !489)
!495 = !DILocation(line: 9, column: 8, scope: !489)
!496 = !DILocation(line: 22, column: 10, scope: !489)
!497 = !DILocation(line: 23, column: 10, scope: !489)
!498 = !DILocation(line: 26, column: 8, scope: !489)
!499 = !DILocation(line: 28, column: 10, scope: !489)
!500 = !DILocation(line: 30, column: 10, scope: !489)
!501 = !DILocation(line: 34, column: 8, scope: !489)
!502 = distinct !DISubprogram(name: "main_graph$async_dispatch_38_matmul_like_128x784x256_f32", linkageName: "main_graph$async_dispatch_38_matmul_like_128x784x256_f32", scope: !61, file: !61, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60)
!503 = !DILocation(line: 13, column: 8, scope: !502)
!504 = !DILocation(line: 14, column: 8, scope: !502)
!505 = !DILocation(line: 15, column: 8, scope: !502)
!506 = !DILocation(line: 20, column: 8, scope: !502)
!507 = !DILocation(line: 23, column: 10, scope: !502)
!508 = !DILocation(line: 28, column: 10, scope: !502)
!509 = !DILocation(line: 30, column: 10, scope: !502)
!510 = !DILocation(line: 34, column: 8, scope: !502)
!511 = distinct !DISubprogram(name: "main_graph$async_dispatch_39_elementwise_128x56x56_f32", linkageName: "main_graph$async_dispatch_39_elementwise_128x56x56_f32", scope: !63, file: !63, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62)
!512 = !DILocation(line: 13, column: 8, scope: !511)
!513 = !DILocation(line: 14, column: 8, scope: !511)
!514 = !DILocation(line: 15, column: 8, scope: !511)
!515 = !DILocation(line: 19, column: 8, scope: !511)
!516 = !DILocation(line: 36, column: 10, scope: !511)
!517 = !DILocation(line: 25, column: 10, scope: !511)
!518 = !DILocation(line: 26, column: 10, scope: !511)
!519 = !DILocation(line: 27, column: 10, scope: !511)
!520 = !DILocation(line: 28, column: 10, scope: !511)
!521 = !DILocation(line: 23, column: 10, scope: !511)
!522 = !DILocation(line: 31, column: 10, scope: !511)
!523 = !DILocation(line: 32, column: 10, scope: !511)
!524 = !DILocation(line: 33, column: 10, scope: !511)
!525 = !DILocation(line: 34, column: 10, scope: !511)
!526 = !DILocation(line: 37, column: 10, scope: !511)
!527 = !DILocation(line: 41, column: 8, scope: !511)
!528 = distinct !DISubprogram(name: "main_graph$async_dispatch_40_conv_56x56x128x5x5_f32", linkageName: "main_graph$async_dispatch_40_conv_56x56x128x5x5_f32", scope: !65, file: !65, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64)
!529 = !DILocation(line: 20, column: 8, scope: !528)
!530 = !DILocation(line: 19, column: 8, scope: !528)
!531 = !DILocation(line: 13, column: 8, scope: !528)
!532 = !DILocation(line: 14, column: 8, scope: !528)
!533 = !DILocation(line: 15, column: 8, scope: !528)
!534 = !DILocation(line: 9, column: 8, scope: !528)
!535 = !DILocation(line: 22, column: 10, scope: !528)
!536 = !DILocation(line: 23, column: 10, scope: !528)
!537 = !DILocation(line: 26, column: 8, scope: !528)
!538 = !DILocation(line: 28, column: 10, scope: !528)
!539 = !DILocation(line: 30, column: 10, scope: !528)
!540 = !DILocation(line: 34, column: 8, scope: !528)
!541 = distinct !DISubprogram(name: "main_graph$async_dispatch_41_matmul_like_64x3136x128_f32", linkageName: "main_graph$async_dispatch_41_matmul_like_64x3136x128_f32", scope: !67, file: !67, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66)
!542 = !DILocation(line: 13, column: 8, scope: !541)
!543 = !DILocation(line: 14, column: 8, scope: !541)
!544 = !DILocation(line: 15, column: 8, scope: !541)
!545 = !DILocation(line: 20, column: 8, scope: !541)
!546 = !DILocation(line: 23, column: 10, scope: !541)
!547 = !DILocation(line: 28, column: 10, scope: !541)
!548 = !DILocation(line: 30, column: 10, scope: !541)
!549 = !DILocation(line: 34, column: 8, scope: !541)
!550 = distinct !DISubprogram(name: "main_graph$async_dispatch_42_elementwise_64x112x112_f32", linkageName: "main_graph$async_dispatch_42_elementwise_64x112x112_f32", scope: !69, file: !69, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68)
!551 = !DILocation(line: 14, column: 8, scope: !550)
!552 = !DILocation(line: 15, column: 8, scope: !550)
!553 = !DILocation(line: 16, column: 8, scope: !550)
!554 = !DILocation(line: 20, column: 8, scope: !550)
!555 = !DILocation(line: 37, column: 10, scope: !550)
!556 = !DILocation(line: 26, column: 10, scope: !550)
!557 = !DILocation(line: 27, column: 10, scope: !550)
!558 = !DILocation(line: 28, column: 10, scope: !550)
!559 = !DILocation(line: 29, column: 10, scope: !550)
!560 = !DILocation(line: 24, column: 10, scope: !550)
!561 = !DILocation(line: 32, column: 10, scope: !550)
!562 = !DILocation(line: 33, column: 10, scope: !550)
!563 = !DILocation(line: 34, column: 10, scope: !550)
!564 = !DILocation(line: 35, column: 10, scope: !550)
!565 = !DILocation(line: 38, column: 10, scope: !550)
!566 = !DILocation(line: 42, column: 8, scope: !550)
!567 = distinct !DISubprogram(name: "main_graph$async_dispatch_43_conv_112x112x64x5x5_f32", linkageName: "main_graph$async_dispatch_43_conv_112x112x64x5x5_f32", scope: !71, file: !71, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70)
!568 = !DILocation(line: 20, column: 8, scope: !567)
!569 = !DILocation(line: 19, column: 8, scope: !567)
!570 = !DILocation(line: 13, column: 8, scope: !567)
!571 = !DILocation(line: 14, column: 8, scope: !567)
!572 = !DILocation(line: 15, column: 8, scope: !567)
!573 = !DILocation(line: 9, column: 8, scope: !567)
!574 = !DILocation(line: 22, column: 10, scope: !567)
!575 = !DILocation(line: 23, column: 10, scope: !567)
!576 = !DILocation(line: 26, column: 8, scope: !567)
!577 = !DILocation(line: 28, column: 10, scope: !567)
!578 = !DILocation(line: 30, column: 10, scope: !567)
!579 = !DILocation(line: 34, column: 8, scope: !567)
!580 = distinct !DISubprogram(name: "main_graph$async_dispatch_44_matmul_like_32x12544x64_f32", linkageName: "main_graph$async_dispatch_44_matmul_like_32x12544x64_f32", scope: !73, file: !73, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72)
!581 = !DILocation(line: 12, column: 8, scope: !580)
!582 = !DILocation(line: 13, column: 8, scope: !580)
!583 = !DILocation(line: 14, column: 8, scope: !580)
!584 = !DILocation(line: 19, column: 8, scope: !580)
!585 = !DILocation(line: 22, column: 10, scope: !580)
!586 = !DILocation(line: 27, column: 10, scope: !580)
!587 = !DILocation(line: 29, column: 10, scope: !580)
!588 = !DILocation(line: 33, column: 8, scope: !580)
!589 = distinct !DISubprogram(name: "main_graph$async_dispatch_45_matvec_like_50176x32_f32", linkageName: "main_graph$async_dispatch_45_matvec_like_50176x32_f32", scope: !75, file: !75, line: 1, type: !80, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!590 = !DILocation(line: 21, column: 8, scope: !589)
!591 = !DILocation(line: 19, column: 8, scope: !589)
!592 = !DILocation(line: 15, column: 8, scope: !589)
!593 = !DILocation(line: 16, column: 8, scope: !589)
!594 = !DILocation(line: 42, column: 8, scope: !589)
!595 = !DILocation(line: 23, column: 10, scope: !589)
!596 = !DILocation(line: 39, column: 10, scope: !589)
!597 = !DILocation(line: 24, column: 10, scope: !589)
!598 = !DILocation(line: 25, column: 10, scope: !589)
!599 = !DILocation(line: 26, column: 10, scope: !589)
!600 = !DILocation(line: 28, column: 10, scope: !589)
!601 = !DILocation(line: 29, column: 10, scope: !589)
!602 = !DILocation(line: 30, column: 10, scope: !589)
!603 = !DILocation(line: 31, column: 10, scope: !589)
!604 = !DILocation(line: 34, column: 10, scope: !589)
!605 = !DILocation(line: 35, column: 10, scope: !589)
!606 = !DILocation(line: 36, column: 10, scope: !589)
!607 = !DILocation(line: 37, column: 10, scope: !589)
!608 = !DILocation(line: 45, column: 10, scope: !589)
!609 = !DILocation(line: 48, column: 8, scope: !589)
!610 = !DILocation(line: 50, column: 10, scope: !589)
!611 = !DILocation(line: 52, column: 10, scope: !589)
!612 = !DILocation(line: 56, column: 8, scope: !589)
!613 = !{!614, !614, i64 0}
!614 = !{!"short", !615, i64 0}
!615 = !{!"omnipotent char", !616, i64 0}
!616 = !{!"Simple C/C++ TBAA"}
!617 = !{!618, !618, i64 0}
!618 = !{!"float", !615, i64 0}
