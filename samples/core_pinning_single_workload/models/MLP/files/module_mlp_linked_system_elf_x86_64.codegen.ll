; ModuleID = 'mlp_linked'
source_filename = "mlp_linked"
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

@__constant_32xf32 = private constant [32 x float] [float 0x3FB8A68340000000, float 0xBFC3F51360000000, float 0xBFD1055320000000, float 0xBFD036CD40000000, float 0xBFCE7A8EA0000000, float 0xBFCA29FBC0000000, float 0x3F419D1780000000, float 0xBFCFA1F640000000, float 0xBFBC8CA760000000, float 0xBFC99D0040000000, float 0xBFD3BDA740000000, float 0x3FC3E648E0000000, float 0x3FABEBF7C0000000, float 0x3FA44B2340000000, float 0x3FC2AC7000000000, float 0x3FD1190D40000000, float 0x3FD4126EC0000000, float 0xBFAE1F6460000000, float 0xBFCEA5CFE0000000, float 0x3FB3F98FA0000000, float 0x3FD4078800000000, float 0x3FD0AF21E0000000, float 0x3F99D9DDC0000000, float 0x3FCF4D57A0000000, float 0x3FAB2D5F20000000, float 0xBFB9242080000000, float 0x3FCDC95BC0000000, float 0xBF6F0831E0000000, float 0xBFD2F4A0A0000000, float 0xBFD0D2AEE0000000, float 0xBFB2CF0AC0000000, float 0x3FC56F1680000000], align 64
@__constant_32xf32_0 = private constant [32 x float] [float 0x3FC4CCC6E0000000, float 0xBFB4876EE0000000, float 0x3FC3B45E60000000, float 0x3F966FED80000000, float 0xBFC1EFB660000000, float 0xBFBFDC9BA0000000, float 0xBFC32FBE60000000, float 0x3FC4C0C140000000, float 0x3FBAE41400000000, float 0xBFB5FFFA80000000, float 0x3FB1D49A20000000, float 0xBFC2132F60000000, float 0xBFA110CDC0000000, float 0xBFA3C63480000000, float 0xBF966A3740000000, float 0x3FC4A9ECA0000000, float 0xBFA80AC3E0000000, float 0xBF7A8340C0000000, float 0x3FC1C673C0000000, float 0x3FB83DF620000000, float 0xBFBE61F420000000, float 0x3FC013DDC0000000, float 0x3FC23F6220000000, float 0x3FB9F7C7C0000000, float 0x3FC0FBE500000000, float 0xBFB82C63E0000000, float 0x3FC4969E80000000, float 0xBFB7C09680000000, float 0xBFC0BF5C40000000, float 0xBFB36AF640000000, float 0x3FC68EEF80000000, float 0xBFB659BAE0000000], align 64
@__constant_2xf32 = private constant [2 x float] [float 0x3FC333AE00000000, float 0xBFBCBF2460000000], align 64
@__constant_2x32xf32 = private constant [2 x [32 x float]] [[32 x float] [float 0xBFC307CD80000000, float 0xBF80663F60000000, float 0xBFC3CB5100000000, float 0x3FB24B8420000000, float 0xBFC45229E0000000, float 0xBFB98EDEC0000000, float 0xBFAA61ADC0000000, float 0x3FA32451A0000000, float 0x3F8CE113E0000000, float 0xBFBB5187C0000000, float 0x3FC624B680000000, float 0xBFC46A1320000000, float 0xBFC12CA8A0000000, float 0xBFB0040380000000, float 0x3F937F67E0000000, float 0xBFC56CE3A0000000, float 0xBFBE5CA7E0000000, float 0xBFC31D5EE0000000, float 0xBFC0290A20000000, float 0x3FA0CC6920000000, float 0x3FC4A785E0000000, float 0x3FC54A0F20000000, float 0x3FBAF8B0C0000000, float 0xBF947009A0000000, float 0xBFB6091F00000000, float 0x3FC42B40C0000000, float 0x3FBF3FD1C0000000, float 0xBF9AA62920000000, float 0x3FADF44C00000000, float 0x3FA9EA8800000000, float 0xBFC4DFC960000000, float 0xBFA0221D20000000], [32 x float] [float 0x3FBA588FA0000000, float 0x3FC232B3E0000000, float 0xBFB3BF26E0000000, float 0x3F8C69A760000000, float 0x3F79F50EE0000000, float 0xBFB2666B60000000, float 0x3FC14A1300000000, float 0x3FA63281A0000000, float 0x3FB75C3520000000, float 0xBFA4D6A8C0000000, float 0x3FC0F804A0000000, float 0xBFC0783AA0000000, float 0x3FAB88C920000000, float 0x3FA99A6620000000, float 0x3FB09B9D60000000, float 0xBFC62913A0000000, float 0x3FC64E2B00000000, float 0xBFB3A5EEA0000000, float 0xBFC33E2DA0000000, float 0xBF943E0C60000000, float 0xBFBD707DE0000000, float 0x3FA7AB2800000000, float 0xBF940A25E0000000, float 0xBFAF20A9A0000000, float 0xBF7DCCA4C0000000, float 0x3F7B3AC4E0000000, float 0x3F868EDFE0000000, float 0x3EE1803A80000000, float 0xBFB521B260000000, float 0xBFA643B080000000, float 0x3FC0470AA0000000, float 0xBFA78A2120000000]], align 64
@0 = private constant [11 x i8] c"mlp_linked\00", align 1
@iree_hal_executable_library_query_v0_header = private constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = private constant [3 x ptr] [ptr @"main_graph$async_dispatch_0_matmul_like_Dx32x10_f32", ptr @"main_graph$async_dispatch_1_matmul_like_Dx32x32_f32", ptr @"main_graph$async_dispatch_2_matmul_like_Dx2x32_f32"]
@iree_hal_executable_library_query_v0_attrs = private constant [3 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 4, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 4, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [52 x i8] c"main_graph$async_dispatch_0_matmul_like_Dx32x10_f32\00", align 1
@2 = private constant [52 x i8] c"main_graph$async_dispatch_1_matmul_like_Dx32x32_f32\00", align 1
@3 = private constant [51 x i8] c"main_graph$async_dispatch_2_matmul_like_Dx2x32_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [3 x ptr] [ptr @1, ptr @2, ptr @3]
@4 = private constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_0.mlir\00", align 1
@5 = private constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_1.mlir\00", align 1
@6 = private constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_2.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [3 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @4 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @5 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @6 }]
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [3 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_source_locations" }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 3, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

define internal i32 @"main_graph$async_dispatch_0_matmul_like_Dx32x10_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !7 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !83
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !83
  %6 = load i32, ptr %5, align 4, !dbg !83
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !84
  %8 = load i32, ptr %7, align 4, !dbg !84
  %9 = zext i32 %8 to i64, !dbg !85
  %10 = shl i64 %9, 32, !dbg !86
  %11 = zext i32 %6 to i64, !dbg !87
  %12 = or i64 %11, %10, !dbg !88
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !89
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !89
  %15 = load ptr, ptr %14, align 8, !dbg !89
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !89
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !90
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !90
  %18 = load ptr, ptr %17, align 8, !dbg !90
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !90
  %19 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !91
  %20 = extractvalue %iree_hal_executable_dispatch_state_v0_t %19, 10, !dbg !91
  %21 = getelementptr ptr, ptr %20, i32 2, !dbg !91
  %22 = load ptr, ptr %21, align 8, !dbg !91
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 64) ], !dbg !91
  %23 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !92
  %24 = extractvalue %iree_hal_executable_workgroup_state_v0_t %23, 0, !dbg !92
  %25 = zext i32 %24 to i64, !dbg !92
  %26 = mul nsw i64 %25, 64, !dbg !92
  %27 = mul nsw i64 %25, -64, !dbg !92
  %28 = add i64 %27, %12, !dbg !92
  %29 = icmp slt i64 %28, 64, !dbg !92
  %30 = select i1 %29, i64 %28, i64 64, !dbg !92
  %31 = icmp sgt i64 %30, 0, !dbg !92
  br i1 %31, label %32, label %131, !dbg !92

32:                                               ; preds = %129, %3
  %33 = phi i64 [ %130, %129 ], [ 0, %3 ], !dbg !92
  %34 = icmp slt i64 %33, %30, !dbg !92
  br i1 %34, label %35, label %131, !dbg !92

35:                                               ; preds = %32
  %36 = add i64 %33, %26, !dbg !92
  br label %37, !dbg !92

37:                                               ; preds = %40, %35
  %38 = phi i64 [ %128, %40 ], [ 0, %35 ], !dbg !92
  %39 = icmp slt i64 %38, 32, !dbg !92
  br i1 %39, label %40, label %129, !dbg !92

40:                                               ; preds = %37
  %41 = mul i64 %38, 10, !dbg !92
  %42 = add i64 %41, 0, !dbg !92
  %43 = getelementptr float, ptr %15, i64 %42, !dbg !92
  %44 = load <8 x float>, ptr %43, align 4, !dbg !92
  %45 = extractelement <8 x float> %44, i64 0, !dbg !93
  %46 = insertelement <1 x float> poison, float %45, i64 0, !dbg !93
  %47 = extractelement <8 x float> %44, i64 1, !dbg !93
  %48 = insertelement <1 x float> poison, float %47, i64 0, !dbg !93
  %49 = extractelement <8 x float> %44, i64 2, !dbg !93
  %50 = insertelement <1 x float> poison, float %49, i64 0, !dbg !93
  %51 = extractelement <8 x float> %44, i64 3, !dbg !93
  %52 = insertelement <1 x float> poison, float %51, i64 0, !dbg !93
  %53 = extractelement <8 x float> %44, i64 4, !dbg !93
  %54 = insertelement <1 x float> poison, float %53, i64 0, !dbg !93
  %55 = extractelement <8 x float> %44, i64 5, !dbg !93
  %56 = insertelement <1 x float> poison, float %55, i64 0, !dbg !93
  %57 = extractelement <8 x float> %44, i64 6, !dbg !93
  %58 = insertelement <1 x float> poison, float %57, i64 0, !dbg !93
  %59 = extractelement <8 x float> %44, i64 7, !dbg !93
  %60 = insertelement <1 x float> poison, float %59, i64 0, !dbg !93
  %61 = mul nuw nsw i64 %36, 10, !dbg !93
  %62 = add nuw nsw i64 %61, 0, !dbg !93
  %63 = getelementptr inbounds nuw float, ptr %18, i64 %62, !dbg !93
  %64 = load float, ptr %63, align 4, !dbg !93
  %65 = insertelement <1 x float> poison, float %64, i32 0, !dbg !93
  %66 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %46, <1 x float> %65, <1 x float> zeroinitializer), !dbg !93
  %67 = add nuw nsw i64 %61, 1, !dbg !93
  %68 = getelementptr inbounds nuw float, ptr %18, i64 %67, !dbg !93
  %69 = load float, ptr %68, align 4, !dbg !93
  %70 = insertelement <1 x float> poison, float %69, i32 0, !dbg !93
  %71 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %48, <1 x float> %70, <1 x float> %66), !dbg !93
  %72 = add nuw nsw i64 %61, 2, !dbg !93
  %73 = getelementptr inbounds nuw float, ptr %18, i64 %72, !dbg !93
  %74 = load float, ptr %73, align 4, !dbg !93
  %75 = insertelement <1 x float> poison, float %74, i32 0, !dbg !93
  %76 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %50, <1 x float> %75, <1 x float> %71), !dbg !93
  %77 = add nuw nsw i64 %61, 3, !dbg !93
  %78 = getelementptr inbounds nuw float, ptr %18, i64 %77, !dbg !93
  %79 = load float, ptr %78, align 4, !dbg !93
  %80 = insertelement <1 x float> poison, float %79, i32 0, !dbg !93
  %81 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %80, <1 x float> %76), !dbg !93
  %82 = add nuw nsw i64 %61, 4, !dbg !93
  %83 = getelementptr inbounds nuw float, ptr %18, i64 %82, !dbg !93
  %84 = load float, ptr %83, align 4, !dbg !93
  %85 = insertelement <1 x float> poison, float %84, i32 0, !dbg !93
  %86 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %54, <1 x float> %85, <1 x float> %81), !dbg !93
  %87 = add nuw nsw i64 %61, 5, !dbg !93
  %88 = getelementptr inbounds nuw float, ptr %18, i64 %87, !dbg !93
  %89 = load float, ptr %88, align 4, !dbg !93
  %90 = insertelement <1 x float> poison, float %89, i32 0, !dbg !93
  %91 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %56, <1 x float> %90, <1 x float> %86), !dbg !93
  %92 = add nuw nsw i64 %61, 6, !dbg !93
  %93 = getelementptr inbounds nuw float, ptr %18, i64 %92, !dbg !93
  %94 = load float, ptr %93, align 4, !dbg !93
  %95 = insertelement <1 x float> poison, float %94, i32 0, !dbg !93
  %96 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %58, <1 x float> %95, <1 x float> %91), !dbg !93
  %97 = add nuw nsw i64 %61, 7, !dbg !93
  %98 = getelementptr inbounds nuw float, ptr %18, i64 %97, !dbg !93
  %99 = load float, ptr %98, align 4, !dbg !93
  %100 = insertelement <1 x float> poison, float %99, i32 0, !dbg !93
  %101 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %60, <1 x float> %100, <1 x float> %96), !dbg !93
  %102 = add i64 %41, 8, !dbg !92
  %103 = getelementptr float, ptr %15, i64 %102, !dbg !92
  %104 = load <2 x float>, ptr %103, align 4, !dbg !92
  %105 = extractelement <2 x float> %104, i64 0, !dbg !93
  %106 = insertelement <1 x float> poison, float %105, i64 0, !dbg !93
  %107 = extractelement <2 x float> %104, i64 1, !dbg !93
  %108 = insertelement <1 x float> poison, float %107, i64 0, !dbg !93
  %109 = add nuw nsw i64 %61, 8, !dbg !93
  %110 = getelementptr inbounds nuw float, ptr %18, i64 %109, !dbg !93
  %111 = load float, ptr %110, align 4, !dbg !93
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !93
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %106, <1 x float> %112, <1 x float> %101), !dbg !93
  %114 = add nuw nsw i64 %61, 9, !dbg !93
  %115 = getelementptr inbounds nuw float, ptr %18, i64 %114, !dbg !93
  %116 = load float, ptr %115, align 4, !dbg !93
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !93
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %108, <1 x float> %117, <1 x float> %113), !dbg !93
  %119 = getelementptr float, ptr @__constant_32xf32, i64 %38, !dbg !94
  %120 = load <1 x float>, ptr %119, align 4, !dbg !94
  %121 = fadd contract <1 x float> %118, %120, !dbg !95
  %122 = fcmp ugt <1 x float> %121, zeroinitializer, !dbg !96
  %123 = select <1 x i1> %122, <1 x float> %121, <1 x float> zeroinitializer, !dbg !97
  %124 = extractelement <1 x float> %123, i64 0, !dbg !92
  %125 = mul nuw nsw i64 %36, 32, !dbg !92
  %126 = add nuw nsw i64 %125, %38, !dbg !92
  %127 = getelementptr inbounds nuw float, ptr %22, i64 %126, !dbg !92
  store float %124, ptr %127, align 4, !dbg !92
  %128 = add i64 %38, 1, !dbg !92
  br label %37, !dbg !92

129:                                              ; preds = %37
  %130 = add i64 %33, 1, !dbg !92
  br label %32, !dbg !92

131:                                              ; preds = %32, %3
  ret i32 0, !dbg !98
}

define internal i32 @"main_graph$async_dispatch_1_matmul_like_Dx32x32_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !99 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !100
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !100
  %6 = load i32, ptr %5, align 4, !dbg !100
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !101
  %8 = load i32, ptr %7, align 4, !dbg !101
  %9 = getelementptr i32, ptr %5, i32 2, !dbg !102
  %10 = load i32, ptr %9, align 4, !dbg !102
  %11 = getelementptr i32, ptr %5, i32 3, !dbg !103
  %12 = load i32, ptr %11, align 4, !dbg !103
  %13 = zext i32 %8 to i64, !dbg !104
  %14 = shl i64 %13, 32, !dbg !105
  %15 = zext i32 %6 to i64, !dbg !106
  %16 = or i64 %15, %14, !dbg !107
  %17 = zext i32 %12 to i64, !dbg !108
  %18 = shl i64 %17, 32, !dbg !109
  %19 = zext i32 %10 to i64, !dbg !110
  %20 = or i64 %19, %18, !dbg !111
  %21 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !112
  %22 = getelementptr ptr, ptr %21, i32 1, !dbg !112
  %23 = load ptr, ptr %22, align 8, !dbg !112
  %24 = getelementptr float, ptr %23, i64 320, !dbg !112
  call void @llvm.assume(i1 true) [ "align"(ptr %24, i64 64) ], !dbg !112
  %25 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !113
  %26 = extractvalue %iree_hal_executable_dispatch_state_v0_t %25, 10, !dbg !113
  %27 = load ptr, ptr %26, align 8, !dbg !113
  call void @llvm.assume(i1 true) [ "align"(ptr %27, i64 64) ], !dbg !113
  %28 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !114
  %29 = extractvalue %iree_hal_executable_dispatch_state_v0_t %28, 10, !dbg !114
  %30 = getelementptr ptr, ptr %29, i32 2, !dbg !114
  %31 = load ptr, ptr %30, align 8, !dbg !114
  %32 = mul i64 %16, 8, !dbg !114
  %33 = udiv i64 %32, 32, !dbg !114
  %34 = getelementptr float, ptr %31, i64 %33, !dbg !114
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 64) ], !dbg !114
  %35 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !115
  %36 = extractvalue %iree_hal_executable_workgroup_state_v0_t %35, 0, !dbg !115
  %37 = zext i32 %36 to i64, !dbg !115
  %38 = mul nsw i64 %37, 64, !dbg !115
  %39 = mul nsw i64 %37, -64, !dbg !115
  %40 = add i64 %39, %20, !dbg !115
  %41 = icmp slt i64 %40, 64, !dbg !115
  %42 = select i1 %41, i64 %40, i64 64, !dbg !115
  %43 = icmp sgt i64 %42, 0, !dbg !115
  br i1 %43, label %44, label %139, !dbg !115

44:                                               ; preds = %137, %3
  %45 = phi i64 [ %138, %137 ], [ 0, %3 ], !dbg !115
  %46 = icmp slt i64 %45, %42, !dbg !115
  br i1 %46, label %47, label %139, !dbg !115

47:                                               ; preds = %44
  %48 = add i64 %45, %38, !dbg !115
  br label %49, !dbg !115

49:                                               ; preds = %126, %47
  %50 = phi i64 [ %136, %126 ], [ 0, %47 ], !dbg !115
  %51 = icmp slt i64 %50, 32, !dbg !115
  br i1 %51, label %52, label %137, !dbg !115

52:                                               ; preds = %56, %49
  %53 = phi i64 [ %125, %56 ], [ 0, %49 ], !dbg !115
  %54 = phi <1 x float> [ %124, %56 ], [ zeroinitializer, %49 ], !dbg !115
  %55 = icmp slt i64 %53, 32, !dbg !115
  br i1 %55, label %56, label %126, !dbg !115

56:                                               ; preds = %52
  %57 = mul i64 %50, 32, !dbg !115
  %58 = add i64 %57, %53, !dbg !115
  %59 = getelementptr float, ptr %24, i64 %58, !dbg !115
  %60 = load <8 x float>, ptr %59, align 4, !dbg !115
  %61 = extractelement <8 x float> %60, i64 0, !dbg !116
  %62 = insertelement <1 x float> poison, float %61, i64 0, !dbg !116
  %63 = extractelement <8 x float> %60, i64 1, !dbg !116
  %64 = insertelement <1 x float> poison, float %63, i64 0, !dbg !116
  %65 = extractelement <8 x float> %60, i64 2, !dbg !116
  %66 = insertelement <1 x float> poison, float %65, i64 0, !dbg !116
  %67 = extractelement <8 x float> %60, i64 3, !dbg !116
  %68 = insertelement <1 x float> poison, float %67, i64 0, !dbg !116
  %69 = extractelement <8 x float> %60, i64 4, !dbg !116
  %70 = insertelement <1 x float> poison, float %69, i64 0, !dbg !116
  %71 = extractelement <8 x float> %60, i64 5, !dbg !116
  %72 = insertelement <1 x float> poison, float %71, i64 0, !dbg !116
  %73 = extractelement <8 x float> %60, i64 6, !dbg !116
  %74 = insertelement <1 x float> poison, float %73, i64 0, !dbg !116
  %75 = extractelement <8 x float> %60, i64 7, !dbg !116
  %76 = insertelement <1 x float> poison, float %75, i64 0, !dbg !116
  %77 = mul nuw nsw i64 %48, 32, !dbg !116
  %78 = add nuw nsw i64 %77, %53, !dbg !116
  %79 = getelementptr inbounds nuw float, ptr %27, i64 %78, !dbg !116
  %80 = load float, ptr %79, align 4, !dbg !116
  %81 = insertelement <1 x float> poison, float %80, i32 0, !dbg !116
  %82 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %81, <1 x float> %54), !dbg !116
  %83 = add i64 %53, 1, !dbg !116
  %84 = add nuw nsw i64 %77, %83, !dbg !116
  %85 = getelementptr inbounds nuw float, ptr %27, i64 %84, !dbg !116
  %86 = load float, ptr %85, align 4, !dbg !116
  %87 = insertelement <1 x float> poison, float %86, i32 0, !dbg !116
  %88 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %64, <1 x float> %87, <1 x float> %82), !dbg !116
  %89 = add i64 %53, 2, !dbg !116
  %90 = add nuw nsw i64 %77, %89, !dbg !116
  %91 = getelementptr inbounds nuw float, ptr %27, i64 %90, !dbg !116
  %92 = load float, ptr %91, align 4, !dbg !116
  %93 = insertelement <1 x float> poison, float %92, i32 0, !dbg !116
  %94 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %93, <1 x float> %88), !dbg !116
  %95 = add i64 %53, 3, !dbg !116
  %96 = add nuw nsw i64 %77, %95, !dbg !116
  %97 = getelementptr inbounds nuw float, ptr %27, i64 %96, !dbg !116
  %98 = load float, ptr %97, align 4, !dbg !116
  %99 = insertelement <1 x float> poison, float %98, i32 0, !dbg !116
  %100 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %68, <1 x float> %99, <1 x float> %94), !dbg !116
  %101 = add i64 %53, 4, !dbg !116
  %102 = add nuw nsw i64 %77, %101, !dbg !116
  %103 = getelementptr inbounds nuw float, ptr %27, i64 %102, !dbg !116
  %104 = load float, ptr %103, align 4, !dbg !116
  %105 = insertelement <1 x float> poison, float %104, i32 0, !dbg !116
  %106 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %70, <1 x float> %105, <1 x float> %100), !dbg !116
  %107 = add i64 %53, 5, !dbg !116
  %108 = add nuw nsw i64 %77, %107, !dbg !116
  %109 = getelementptr inbounds nuw float, ptr %27, i64 %108, !dbg !116
  %110 = load float, ptr %109, align 4, !dbg !116
  %111 = insertelement <1 x float> poison, float %110, i32 0, !dbg !116
  %112 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %111, <1 x float> %106), !dbg !116
  %113 = add i64 %53, 6, !dbg !116
  %114 = add nuw nsw i64 %77, %113, !dbg !116
  %115 = getelementptr inbounds nuw float, ptr %27, i64 %114, !dbg !116
  %116 = load float, ptr %115, align 4, !dbg !116
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !116
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %74, <1 x float> %117, <1 x float> %112), !dbg !116
  %119 = add i64 %53, 7, !dbg !116
  %120 = add nuw nsw i64 %77, %119, !dbg !116
  %121 = getelementptr inbounds nuw float, ptr %27, i64 %120, !dbg !116
  %122 = load float, ptr %121, align 4, !dbg !116
  %123 = insertelement <1 x float> poison, float %122, i32 0, !dbg !116
  %124 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %76, <1 x float> %123, <1 x float> %118), !dbg !116
  %125 = add i64 %53, 8, !dbg !115
  br label %52, !dbg !115

126:                                              ; preds = %52
  %127 = getelementptr float, ptr @__constant_32xf32_0, i64 %50, !dbg !117
  %128 = load <1 x float>, ptr %127, align 4, !dbg !117
  %129 = fadd contract <1 x float> %54, %128, !dbg !118
  %130 = fcmp ugt <1 x float> %129, zeroinitializer, !dbg !119
  %131 = select <1 x i1> %130, <1 x float> %129, <1 x float> zeroinitializer, !dbg !120
  %132 = extractelement <1 x float> %131, i64 0, !dbg !115
  %133 = mul nuw nsw i64 %48, 32, !dbg !115
  %134 = add nuw nsw i64 %133, %50, !dbg !115
  %135 = getelementptr inbounds nuw float, ptr %34, i64 %134, !dbg !115
  store float %132, ptr %135, align 4, !dbg !115
  %136 = add i64 %50, 1, !dbg !115
  br label %49, !dbg !115

137:                                              ; preds = %49
  %138 = add i64 %45, 1, !dbg !115
  br label %44, !dbg !115

139:                                              ; preds = %44, %3
  ret i32 0, !dbg !121
}

define internal i32 @"main_graph$async_dispatch_2_matmul_like_Dx2x32_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !122 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !123
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !123
  %6 = load i32, ptr %5, align 4, !dbg !123
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !124
  %8 = load i32, ptr %7, align 4, !dbg !124
  %9 = getelementptr i32, ptr %5, i32 2, !dbg !125
  %10 = load i32, ptr %9, align 4, !dbg !125
  %11 = getelementptr i32, ptr %5, i32 3, !dbg !126
  %12 = load i32, ptr %11, align 4, !dbg !126
  %13 = zext i32 %8 to i64, !dbg !127
  %14 = shl i64 %13, 32, !dbg !128
  %15 = zext i32 %6 to i64, !dbg !129
  %16 = or i64 %15, %14, !dbg !130
  %17 = zext i32 %12 to i64, !dbg !131
  %18 = shl i64 %17, 32, !dbg !132
  %19 = zext i32 %10 to i64, !dbg !133
  %20 = or i64 %19, %18, !dbg !134
  %21 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !135
  %22 = load ptr, ptr %21, align 8, !dbg !135
  %23 = mul i64 %16, 8, !dbg !135
  %24 = udiv i64 %23, 32, !dbg !135
  %25 = getelementptr float, ptr %22, i64 %24, !dbg !135
  call void @llvm.assume(i1 true) [ "align"(ptr %25, i64 64) ], !dbg !135
  %26 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !136
  %27 = extractvalue %iree_hal_executable_dispatch_state_v0_t %26, 10, !dbg !136
  %28 = getelementptr ptr, ptr %27, i32 1, !dbg !136
  %29 = load ptr, ptr %28, align 8, !dbg !136
  call void @llvm.assume(i1 true) [ "align"(ptr %29, i64 64) ], !dbg !136
  %30 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !137
  %31 = extractvalue %iree_hal_executable_workgroup_state_v0_t %30, 0, !dbg !137
  %32 = zext i32 %31 to i64, !dbg !137
  %33 = mul nsw i64 %32, 64, !dbg !137
  %34 = mul nsw i64 %32, -64, !dbg !137
  %35 = add i64 %34, %20, !dbg !137
  %36 = icmp slt i64 %35, 64, !dbg !137
  %37 = select i1 %36, i64 %35, i64 64, !dbg !137
  %38 = icmp sgt i64 %37, 0, !dbg !137
  br i1 %38, label %39, label %133, !dbg !137

39:                                               ; preds = %131, %3
  %40 = phi i64 [ %132, %131 ], [ 0, %3 ], !dbg !137
  %41 = icmp slt i64 %40, %37, !dbg !137
  br i1 %41, label %42, label %133, !dbg !137

42:                                               ; preds = %39
  %43 = add i64 %40, %33, !dbg !137
  br label %44, !dbg !137

44:                                               ; preds = %121, %42
  %45 = phi i64 [ %130, %121 ], [ 0, %42 ], !dbg !137
  %46 = icmp slt i64 %45, 2, !dbg !137
  br i1 %46, label %47, label %131, !dbg !137

47:                                               ; preds = %51, %44
  %48 = phi i64 [ %120, %51 ], [ 0, %44 ], !dbg !137
  %49 = phi <1 x float> [ %119, %51 ], [ zeroinitializer, %44 ], !dbg !137
  %50 = icmp slt i64 %48, 32, !dbg !137
  br i1 %50, label %51, label %121, !dbg !137

51:                                               ; preds = %47
  %52 = mul i64 %45, 32, !dbg !137
  %53 = add i64 %52, %48, !dbg !137
  %54 = getelementptr float, ptr @__constant_2x32xf32, i64 %53, !dbg !137
  %55 = load <8 x float>, ptr %54, align 4, !dbg !137
  %56 = extractelement <8 x float> %55, i64 0, !dbg !138
  %57 = insertelement <1 x float> poison, float %56, i64 0, !dbg !138
  %58 = extractelement <8 x float> %55, i64 1, !dbg !138
  %59 = insertelement <1 x float> poison, float %58, i64 0, !dbg !138
  %60 = extractelement <8 x float> %55, i64 2, !dbg !138
  %61 = insertelement <1 x float> poison, float %60, i64 0, !dbg !138
  %62 = extractelement <8 x float> %55, i64 3, !dbg !138
  %63 = insertelement <1 x float> poison, float %62, i64 0, !dbg !138
  %64 = extractelement <8 x float> %55, i64 4, !dbg !138
  %65 = insertelement <1 x float> poison, float %64, i64 0, !dbg !138
  %66 = extractelement <8 x float> %55, i64 5, !dbg !138
  %67 = insertelement <1 x float> poison, float %66, i64 0, !dbg !138
  %68 = extractelement <8 x float> %55, i64 6, !dbg !138
  %69 = insertelement <1 x float> poison, float %68, i64 0, !dbg !138
  %70 = extractelement <8 x float> %55, i64 7, !dbg !138
  %71 = insertelement <1 x float> poison, float %70, i64 0, !dbg !138
  %72 = mul nuw nsw i64 %43, 32, !dbg !138
  %73 = add nuw nsw i64 %72, %48, !dbg !138
  %74 = getelementptr inbounds nuw float, ptr %25, i64 %73, !dbg !138
  %75 = load float, ptr %74, align 4, !dbg !138
  %76 = insertelement <1 x float> poison, float %75, i32 0, !dbg !138
  %77 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %57, <1 x float> %76, <1 x float> %49), !dbg !138
  %78 = add i64 %48, 1, !dbg !138
  %79 = add nuw nsw i64 %72, %78, !dbg !138
  %80 = getelementptr inbounds nuw float, ptr %25, i64 %79, !dbg !138
  %81 = load float, ptr %80, align 4, !dbg !138
  %82 = insertelement <1 x float> poison, float %81, i32 0, !dbg !138
  %83 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %59, <1 x float> %82, <1 x float> %77), !dbg !138
  %84 = add i64 %48, 2, !dbg !138
  %85 = add nuw nsw i64 %72, %84, !dbg !138
  %86 = getelementptr inbounds nuw float, ptr %25, i64 %85, !dbg !138
  %87 = load float, ptr %86, align 4, !dbg !138
  %88 = insertelement <1 x float> poison, float %87, i32 0, !dbg !138
  %89 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %88, <1 x float> %83), !dbg !138
  %90 = add i64 %48, 3, !dbg !138
  %91 = add nuw nsw i64 %72, %90, !dbg !138
  %92 = getelementptr inbounds nuw float, ptr %25, i64 %91, !dbg !138
  %93 = load float, ptr %92, align 4, !dbg !138
  %94 = insertelement <1 x float> poison, float %93, i32 0, !dbg !138
  %95 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %63, <1 x float> %94, <1 x float> %89), !dbg !138
  %96 = add i64 %48, 4, !dbg !138
  %97 = add nuw nsw i64 %72, %96, !dbg !138
  %98 = getelementptr inbounds nuw float, ptr %25, i64 %97, !dbg !138
  %99 = load float, ptr %98, align 4, !dbg !138
  %100 = insertelement <1 x float> poison, float %99, i32 0, !dbg !138
  %101 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %65, <1 x float> %100, <1 x float> %95), !dbg !138
  %102 = add i64 %48, 5, !dbg !138
  %103 = add nuw nsw i64 %72, %102, !dbg !138
  %104 = getelementptr inbounds nuw float, ptr %25, i64 %103, !dbg !138
  %105 = load float, ptr %104, align 4, !dbg !138
  %106 = insertelement <1 x float> poison, float %105, i32 0, !dbg !138
  %107 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %106, <1 x float> %101), !dbg !138
  %108 = add i64 %48, 6, !dbg !138
  %109 = add nuw nsw i64 %72, %108, !dbg !138
  %110 = getelementptr inbounds nuw float, ptr %25, i64 %109, !dbg !138
  %111 = load float, ptr %110, align 4, !dbg !138
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !138
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %69, <1 x float> %112, <1 x float> %107), !dbg !138
  %114 = add i64 %48, 7, !dbg !138
  %115 = add nuw nsw i64 %72, %114, !dbg !138
  %116 = getelementptr inbounds nuw float, ptr %25, i64 %115, !dbg !138
  %117 = load float, ptr %116, align 4, !dbg !138
  %118 = insertelement <1 x float> poison, float %117, i32 0, !dbg !138
  %119 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %71, <1 x float> %118, <1 x float> %113), !dbg !138
  %120 = add i64 %48, 8, !dbg !137
  br label %47, !dbg !137

121:                                              ; preds = %47
  %122 = getelementptr float, ptr @__constant_2xf32, i64 %45, !dbg !139
  %123 = load <1 x float>, ptr %122, align 4, !dbg !139
  %124 = extractelement <1 x float> %49, i64 0, !dbg !140
  %125 = extractelement <1 x float> %123, i64 0, !dbg !140
  %126 = fadd contract float %124, %125, !dbg !140
  %127 = mul nuw nsw i64 %43, 2, !dbg !137
  %128 = add nuw nsw i64 %127, %45, !dbg !137
  %129 = getelementptr inbounds nuw float, ptr %29, i64 %128, !dbg !137
  store float %126, ptr %129, align 4, !dbg !137
  %130 = add i64 %45, 1, !dbg !137
  br label %44, !dbg !137

131:                                              ; preds = %44
  %132 = add i64 %40, 1, !dbg !137
  br label %39, !dbg !137

133:                                              ; preds = %39, %3
  ret i32 0, !dbg !141
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <1 x float> @llvm.fmuladd.v1f32(<1 x float>, <1 x float>, <1 x float>) #2

define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr %1) {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "target-cpu"="znver3" "target-features"="+64bit,+64bit-mode,+adx,+aes,+allow-light-256-bit,+avx,+avx2,+bmi,+bmi2,+branchfusion,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fast-15bytenop,+fast-bextr,+fast-imm16,+fast-lzcnt,+fast-movbe,+fast-scalar-fsqrt,+fast-scalar-shift-masks,+fast-variable-perlane-shuffle,+fast-vector-fsqrt,+fma,+fsgsbase,+fsrm,+fxsr,+idivq-to-divl,+invpcid,+lzcnt,+macrofusion,+mmx,+movbe,+mwaitx,+nopl,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sbb-dep-breaking,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+vzeroupper,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" }

!llvm.dbg.cu = !{!0, !2, !4}
!llvm.module.flags = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_main_graph$async_dispatch_0.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_main_graph$async_dispatch_1.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_main_graph$async_dispatch_2.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = distinct !DISubprogram(name: "main_graph$async_dispatch_0_matmul_like_Dx32x10_f32", linkageName: "main_graph$async_dispatch_0_matmul_like_Dx32x10_f32", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!8 = !DISubroutineType(cc: DW_CC_normal, types: !9)
!9 = !{!10, !11, !42, !71}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !15, file: !15, line: 246, size: 768, elements: !16)
!15 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!16 = !{!17, !25, !28, !31, !33}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, scope: !15, file: !15, line: 227, baseType: !21, size: 2048, elements: !23)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !22)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24}
!24 = !DISubrange(count: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !29, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !32, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !34, offset: 256)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !15, file: !15, line: 227, size: 512, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, scope: !15, file: !15, line: 227, baseType: !38, size: 512, elements: !40)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !39)
!39 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !{!41}
!41 = !DISubrange(count: 8)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !15, file: !15, line: 275, size: 384, elements: !46)
!46 = !{!47, !48, !49, !52, !53, !54, !55, !56, !59, !60, !61, !66}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !21, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !21, size: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !50, size: 16, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !51)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !50, size: 16, offset: 80)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !21, size: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !21, size: 32, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !50, size: 16, offset: 160)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !57, size: 8, offset: 176)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !58)
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !57, size: 8, offset: 184)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !18, size: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !62, size: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, scope: !15, file: !15, line: 227, baseType: !65, size: 4096, elements: !23)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !67, size: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, scope: !15, file: !15, line: 227, baseType: !70, size: 4096, elements: !23)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !38)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !15, file: !15, line: 321, size: 256, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !21, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !21, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !50, size: 16, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !50, size: 16, offset: 80)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !21, size: 32, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !26, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !21, size: 32, offset: 192)
!83 = !DILocation(line: 13, column: 8, scope: !7)
!84 = !DILocation(line: 14, column: 8, scope: !7)
!85 = !DILocation(line: 15, column: 8, scope: !7)
!86 = !DILocation(line: 16, column: 8, scope: !7)
!87 = !DILocation(line: 17, column: 8, scope: !7)
!88 = !DILocation(line: 18, column: 8, scope: !7)
!89 = !DILocation(line: 21, column: 8, scope: !7)
!90 = !DILocation(line: 23, column: 8, scope: !7)
!91 = !DILocation(line: 24, column: 8, scope: !7)
!92 = !DILocation(line: 29, column: 8, scope: !7)
!93 = !DILocation(line: 32, column: 10, scope: !7)
!94 = !DILocation(line: 35, column: 8, scope: !7)
!95 = !DILocation(line: 37, column: 10, scope: !7)
!96 = !DILocation(line: 38, column: 10, scope: !7)
!97 = !DILocation(line: 39, column: 10, scope: !7)
!98 = !DILocation(line: 43, column: 8, scope: !7)
!99 = distinct !DISubprogram(name: "main_graph$async_dispatch_1_matmul_like_Dx32x32_f32", linkageName: "main_graph$async_dispatch_1_matmul_like_Dx32x32_f32", scope: !3, file: !3, line: 1, type: !8, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!100 = !DILocation(line: 14, column: 8, scope: !99)
!101 = !DILocation(line: 15, column: 8, scope: !99)
!102 = !DILocation(line: 16, column: 8, scope: !99)
!103 = !DILocation(line: 17, column: 8, scope: !99)
!104 = !DILocation(line: 18, column: 8, scope: !99)
!105 = !DILocation(line: 19, column: 8, scope: !99)
!106 = !DILocation(line: 20, column: 8, scope: !99)
!107 = !DILocation(line: 21, column: 8, scope: !99)
!108 = !DILocation(line: 23, column: 8, scope: !99)
!109 = !DILocation(line: 24, column: 8, scope: !99)
!110 = !DILocation(line: 25, column: 8, scope: !99)
!111 = !DILocation(line: 26, column: 8, scope: !99)
!112 = !DILocation(line: 32, column: 8, scope: !99)
!113 = !DILocation(line: 34, column: 8, scope: !99)
!114 = !DILocation(line: 35, column: 8, scope: !99)
!115 = !DILocation(line: 40, column: 8, scope: !99)
!116 = !DILocation(line: 43, column: 10, scope: !99)
!117 = !DILocation(line: 46, column: 8, scope: !99)
!118 = !DILocation(line: 48, column: 10, scope: !99)
!119 = !DILocation(line: 49, column: 10, scope: !99)
!120 = !DILocation(line: 50, column: 10, scope: !99)
!121 = !DILocation(line: 54, column: 8, scope: !99)
!122 = distinct !DISubprogram(name: "main_graph$async_dispatch_2_matmul_like_Dx2x32_f32", linkageName: "main_graph$async_dispatch_2_matmul_like_Dx2x32_f32", scope: !5, file: !5, line: 1, type: !8, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!123 = !DILocation(line: 14, column: 8, scope: !122)
!124 = !DILocation(line: 15, column: 8, scope: !122)
!125 = !DILocation(line: 16, column: 8, scope: !122)
!126 = !DILocation(line: 17, column: 8, scope: !122)
!127 = !DILocation(line: 18, column: 8, scope: !122)
!128 = !DILocation(line: 19, column: 8, scope: !122)
!129 = !DILocation(line: 20, column: 8, scope: !122)
!130 = !DILocation(line: 21, column: 8, scope: !122)
!131 = !DILocation(line: 23, column: 8, scope: !122)
!132 = !DILocation(line: 24, column: 8, scope: !122)
!133 = !DILocation(line: 25, column: 8, scope: !122)
!134 = !DILocation(line: 26, column: 8, scope: !122)
!135 = !DILocation(line: 33, column: 8, scope: !122)
!136 = !DILocation(line: 34, column: 8, scope: !122)
!137 = !DILocation(line: 38, column: 8, scope: !122)
!138 = !DILocation(line: 41, column: 10, scope: !122)
!139 = !DILocation(line: 44, column: 8, scope: !122)
!140 = !DILocation(line: 46, column: 10, scope: !122)
!141 = !DILocation(line: 50, column: 8, scope: !122)
