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

define internal i32 @"main_graph$async_dispatch_0_matmul_like_Dx32x10_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !9 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !85
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !85
  %6 = load i32, ptr %5, align 4, !dbg !85
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !86
  %8 = load i32, ptr %7, align 4, !dbg !86
  %9 = zext i32 %8 to i64, !dbg !87
  %10 = shl i64 %9, 32, !dbg !88
  %11 = zext i32 %6 to i64, !dbg !89
  %12 = or i64 %11, %10, !dbg !90
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !91
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !91
  %15 = load ptr, ptr %14, align 8, !dbg !91
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !91
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !92
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !92
  %18 = load ptr, ptr %17, align 8, !dbg !92
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !92
  %19 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !93
  %20 = extractvalue %iree_hal_executable_dispatch_state_v0_t %19, 10, !dbg !93
  %21 = getelementptr ptr, ptr %20, i32 2, !dbg !93
  %22 = load ptr, ptr %21, align 8, !dbg !93
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 64) ], !dbg !93
  %23 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !94
  %24 = extractvalue %iree_hal_executable_workgroup_state_v0_t %23, 0, !dbg !94
  %25 = zext i32 %24 to i64, !dbg !94
  %26 = mul nsw i64 %25, 64, !dbg !94
  %27 = mul nsw i64 %25, -64, !dbg !94
  %28 = add i64 %27, %12, !dbg !94
  %29 = icmp slt i64 %28, 64, !dbg !94
  %30 = select i1 %29, i64 %28, i64 64, !dbg !94
  %31 = icmp sgt i64 %30, 0, !dbg !94
  br i1 %31, label %32, label %131, !dbg !94

32:                                               ; preds = %129, %3
  %33 = phi i64 [ %130, %129 ], [ 0, %3 ], !dbg !94
  %34 = icmp slt i64 %33, %30, !dbg !94
  br i1 %34, label %35, label %131, !dbg !94

35:                                               ; preds = %32
  %36 = add i64 %33, %26, !dbg !94
  br label %37, !dbg !94

37:                                               ; preds = %40, %35
  %38 = phi i64 [ %128, %40 ], [ 0, %35 ], !dbg !94
  %39 = icmp slt i64 %38, 32, !dbg !94
  br i1 %39, label %40, label %129, !dbg !94

40:                                               ; preds = %37
  %41 = mul i64 %38, 10, !dbg !94
  %42 = add i64 %41, 0, !dbg !94
  %43 = getelementptr float, ptr %15, i64 %42, !dbg !94
  %44 = load <8 x float>, ptr %43, align 4, !dbg !94
  %45 = extractelement <8 x float> %44, i64 0, !dbg !95
  %46 = insertelement <1 x float> poison, float %45, i64 0, !dbg !95
  %47 = extractelement <8 x float> %44, i64 1, !dbg !95
  %48 = insertelement <1 x float> poison, float %47, i64 0, !dbg !95
  %49 = extractelement <8 x float> %44, i64 2, !dbg !95
  %50 = insertelement <1 x float> poison, float %49, i64 0, !dbg !95
  %51 = extractelement <8 x float> %44, i64 3, !dbg !95
  %52 = insertelement <1 x float> poison, float %51, i64 0, !dbg !95
  %53 = extractelement <8 x float> %44, i64 4, !dbg !95
  %54 = insertelement <1 x float> poison, float %53, i64 0, !dbg !95
  %55 = extractelement <8 x float> %44, i64 5, !dbg !95
  %56 = insertelement <1 x float> poison, float %55, i64 0, !dbg !95
  %57 = extractelement <8 x float> %44, i64 6, !dbg !95
  %58 = insertelement <1 x float> poison, float %57, i64 0, !dbg !95
  %59 = extractelement <8 x float> %44, i64 7, !dbg !95
  %60 = insertelement <1 x float> poison, float %59, i64 0, !dbg !95
  %61 = mul nuw nsw i64 %36, 10, !dbg !95
  %62 = add nuw nsw i64 %61, 0, !dbg !95
  %63 = getelementptr inbounds nuw float, ptr %18, i64 %62, !dbg !95
  %64 = load float, ptr %63, align 4, !dbg !95
  %65 = insertelement <1 x float> poison, float %64, i32 0, !dbg !95
  %66 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %46, <1 x float> %65, <1 x float> zeroinitializer), !dbg !95
  %67 = add nuw nsw i64 %61, 1, !dbg !95
  %68 = getelementptr inbounds nuw float, ptr %18, i64 %67, !dbg !95
  %69 = load float, ptr %68, align 4, !dbg !95
  %70 = insertelement <1 x float> poison, float %69, i32 0, !dbg !95
  %71 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %48, <1 x float> %70, <1 x float> %66), !dbg !95
  %72 = add nuw nsw i64 %61, 2, !dbg !95
  %73 = getelementptr inbounds nuw float, ptr %18, i64 %72, !dbg !95
  %74 = load float, ptr %73, align 4, !dbg !95
  %75 = insertelement <1 x float> poison, float %74, i32 0, !dbg !95
  %76 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %50, <1 x float> %75, <1 x float> %71), !dbg !95
  %77 = add nuw nsw i64 %61, 3, !dbg !95
  %78 = getelementptr inbounds nuw float, ptr %18, i64 %77, !dbg !95
  %79 = load float, ptr %78, align 4, !dbg !95
  %80 = insertelement <1 x float> poison, float %79, i32 0, !dbg !95
  %81 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %52, <1 x float> %80, <1 x float> %76), !dbg !95
  %82 = add nuw nsw i64 %61, 4, !dbg !95
  %83 = getelementptr inbounds nuw float, ptr %18, i64 %82, !dbg !95
  %84 = load float, ptr %83, align 4, !dbg !95
  %85 = insertelement <1 x float> poison, float %84, i32 0, !dbg !95
  %86 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %54, <1 x float> %85, <1 x float> %81), !dbg !95
  %87 = add nuw nsw i64 %61, 5, !dbg !95
  %88 = getelementptr inbounds nuw float, ptr %18, i64 %87, !dbg !95
  %89 = load float, ptr %88, align 4, !dbg !95
  %90 = insertelement <1 x float> poison, float %89, i32 0, !dbg !95
  %91 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %56, <1 x float> %90, <1 x float> %86), !dbg !95
  %92 = add nuw nsw i64 %61, 6, !dbg !95
  %93 = getelementptr inbounds nuw float, ptr %18, i64 %92, !dbg !95
  %94 = load float, ptr %93, align 4, !dbg !95
  %95 = insertelement <1 x float> poison, float %94, i32 0, !dbg !95
  %96 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %58, <1 x float> %95, <1 x float> %91), !dbg !95
  %97 = add nuw nsw i64 %61, 7, !dbg !95
  %98 = getelementptr inbounds nuw float, ptr %18, i64 %97, !dbg !95
  %99 = load float, ptr %98, align 4, !dbg !95
  %100 = insertelement <1 x float> poison, float %99, i32 0, !dbg !95
  %101 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %60, <1 x float> %100, <1 x float> %96), !dbg !95
  %102 = add i64 %41, 8, !dbg !94
  %103 = getelementptr float, ptr %15, i64 %102, !dbg !94
  %104 = load <2 x float>, ptr %103, align 4, !dbg !94
  %105 = extractelement <2 x float> %104, i64 0, !dbg !95
  %106 = insertelement <1 x float> poison, float %105, i64 0, !dbg !95
  %107 = extractelement <2 x float> %104, i64 1, !dbg !95
  %108 = insertelement <1 x float> poison, float %107, i64 0, !dbg !95
  %109 = add nuw nsw i64 %61, 8, !dbg !95
  %110 = getelementptr inbounds nuw float, ptr %18, i64 %109, !dbg !95
  %111 = load float, ptr %110, align 4, !dbg !95
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !95
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %106, <1 x float> %112, <1 x float> %101), !dbg !95
  %114 = add nuw nsw i64 %61, 9, !dbg !95
  %115 = getelementptr inbounds nuw float, ptr %18, i64 %114, !dbg !95
  %116 = load float, ptr %115, align 4, !dbg !95
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !95
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %108, <1 x float> %117, <1 x float> %113), !dbg !95
  %119 = getelementptr float, ptr @__constant_32xf32, i64 %38, !dbg !96
  %120 = load <1 x float>, ptr %119, align 4, !dbg !96
  %121 = fadd contract <1 x float> %118, %120, !dbg !97
  %122 = fcmp ugt <1 x float> %121, zeroinitializer, !dbg !98
  %123 = select <1 x i1> %122, <1 x float> %121, <1 x float> zeroinitializer, !dbg !99
  %124 = extractelement <1 x float> %123, i64 0, !dbg !94
  %125 = mul nuw nsw i64 %36, 32, !dbg !94
  %126 = add nuw nsw i64 %125, %38, !dbg !94
  %127 = getelementptr inbounds nuw float, ptr %22, i64 %126, !dbg !94
  store float %124, ptr %127, align 4, !dbg !94
  %128 = add i64 %38, 1, !dbg !94
  br label %37, !dbg !94

129:                                              ; preds = %37
  %130 = add i64 %33, 1, !dbg !94
  br label %32, !dbg !94

131:                                              ; preds = %32, %3
  ret i32 0, !dbg !100
}

define internal i32 @"main_graph$async_dispatch_1_matmul_like_Dx32x32_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !101 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !102
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !102
  %6 = load i32, ptr %5, align 4, !dbg !102
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !103
  %8 = load i32, ptr %7, align 4, !dbg !103
  %9 = getelementptr i32, ptr %5, i32 2, !dbg !104
  %10 = load i32, ptr %9, align 4, !dbg !104
  %11 = getelementptr i32, ptr %5, i32 3, !dbg !105
  %12 = load i32, ptr %11, align 4, !dbg !105
  %13 = zext i32 %8 to i64, !dbg !106
  %14 = shl i64 %13, 32, !dbg !107
  %15 = zext i32 %6 to i64, !dbg !108
  %16 = or i64 %15, %14, !dbg !109
  %17 = zext i32 %12 to i64, !dbg !110
  %18 = shl i64 %17, 32, !dbg !111
  %19 = zext i32 %10 to i64, !dbg !112
  %20 = or i64 %19, %18, !dbg !113
  %21 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !114
  %22 = getelementptr ptr, ptr %21, i32 1, !dbg !114
  %23 = load ptr, ptr %22, align 8, !dbg !114
  %24 = getelementptr float, ptr %23, i64 320, !dbg !114
  call void @llvm.assume(i1 true) [ "align"(ptr %24, i64 64) ], !dbg !114
  %25 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !115
  %26 = extractvalue %iree_hal_executable_dispatch_state_v0_t %25, 10, !dbg !115
  %27 = load ptr, ptr %26, align 8, !dbg !115
  call void @llvm.assume(i1 true) [ "align"(ptr %27, i64 64) ], !dbg !115
  %28 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !116
  %29 = extractvalue %iree_hal_executable_dispatch_state_v0_t %28, 10, !dbg !116
  %30 = getelementptr ptr, ptr %29, i32 2, !dbg !116
  %31 = load ptr, ptr %30, align 8, !dbg !116
  %32 = mul i64 %16, 8, !dbg !116
  %33 = udiv i64 %32, 32, !dbg !116
  %34 = getelementptr float, ptr %31, i64 %33, !dbg !116
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 64) ], !dbg !116
  %35 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !117
  %36 = extractvalue %iree_hal_executable_workgroup_state_v0_t %35, 0, !dbg !117
  %37 = zext i32 %36 to i64, !dbg !117
  %38 = mul nsw i64 %37, 64, !dbg !117
  %39 = mul nsw i64 %37, -64, !dbg !117
  %40 = add i64 %39, %20, !dbg !117
  %41 = icmp slt i64 %40, 64, !dbg !117
  %42 = select i1 %41, i64 %40, i64 64, !dbg !117
  %43 = icmp sgt i64 %42, 0, !dbg !117
  br i1 %43, label %44, label %139, !dbg !117

44:                                               ; preds = %137, %3
  %45 = phi i64 [ %138, %137 ], [ 0, %3 ], !dbg !117
  %46 = icmp slt i64 %45, %42, !dbg !117
  br i1 %46, label %47, label %139, !dbg !117

47:                                               ; preds = %44
  %48 = add i64 %45, %38, !dbg !117
  br label %49, !dbg !117

49:                                               ; preds = %126, %47
  %50 = phi i64 [ %136, %126 ], [ 0, %47 ], !dbg !117
  %51 = icmp slt i64 %50, 32, !dbg !117
  br i1 %51, label %52, label %137, !dbg !117

52:                                               ; preds = %56, %49
  %53 = phi i64 [ %125, %56 ], [ 0, %49 ], !dbg !117
  %54 = phi <1 x float> [ %124, %56 ], [ zeroinitializer, %49 ], !dbg !117
  %55 = icmp slt i64 %53, 32, !dbg !117
  br i1 %55, label %56, label %126, !dbg !117

56:                                               ; preds = %52
  %57 = mul i64 %50, 32, !dbg !117
  %58 = add i64 %57, %53, !dbg !117
  %59 = getelementptr float, ptr %24, i64 %58, !dbg !117
  %60 = load <8 x float>, ptr %59, align 4, !dbg !117
  %61 = extractelement <8 x float> %60, i64 0, !dbg !118
  %62 = insertelement <1 x float> poison, float %61, i64 0, !dbg !118
  %63 = extractelement <8 x float> %60, i64 1, !dbg !118
  %64 = insertelement <1 x float> poison, float %63, i64 0, !dbg !118
  %65 = extractelement <8 x float> %60, i64 2, !dbg !118
  %66 = insertelement <1 x float> poison, float %65, i64 0, !dbg !118
  %67 = extractelement <8 x float> %60, i64 3, !dbg !118
  %68 = insertelement <1 x float> poison, float %67, i64 0, !dbg !118
  %69 = extractelement <8 x float> %60, i64 4, !dbg !118
  %70 = insertelement <1 x float> poison, float %69, i64 0, !dbg !118
  %71 = extractelement <8 x float> %60, i64 5, !dbg !118
  %72 = insertelement <1 x float> poison, float %71, i64 0, !dbg !118
  %73 = extractelement <8 x float> %60, i64 6, !dbg !118
  %74 = insertelement <1 x float> poison, float %73, i64 0, !dbg !118
  %75 = extractelement <8 x float> %60, i64 7, !dbg !118
  %76 = insertelement <1 x float> poison, float %75, i64 0, !dbg !118
  %77 = mul nuw nsw i64 %48, 32, !dbg !118
  %78 = add nuw nsw i64 %77, %53, !dbg !118
  %79 = getelementptr inbounds nuw float, ptr %27, i64 %78, !dbg !118
  %80 = load float, ptr %79, align 4, !dbg !118
  %81 = insertelement <1 x float> poison, float %80, i32 0, !dbg !118
  %82 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %62, <1 x float> %81, <1 x float> %54), !dbg !118
  %83 = add i64 %53, 1, !dbg !118
  %84 = add nuw nsw i64 %77, %83, !dbg !118
  %85 = getelementptr inbounds nuw float, ptr %27, i64 %84, !dbg !118
  %86 = load float, ptr %85, align 4, !dbg !118
  %87 = insertelement <1 x float> poison, float %86, i32 0, !dbg !118
  %88 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %64, <1 x float> %87, <1 x float> %82), !dbg !118
  %89 = add i64 %53, 2, !dbg !118
  %90 = add nuw nsw i64 %77, %89, !dbg !118
  %91 = getelementptr inbounds nuw float, ptr %27, i64 %90, !dbg !118
  %92 = load float, ptr %91, align 4, !dbg !118
  %93 = insertelement <1 x float> poison, float %92, i32 0, !dbg !118
  %94 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %93, <1 x float> %88), !dbg !118
  %95 = add i64 %53, 3, !dbg !118
  %96 = add nuw nsw i64 %77, %95, !dbg !118
  %97 = getelementptr inbounds nuw float, ptr %27, i64 %96, !dbg !118
  %98 = load float, ptr %97, align 4, !dbg !118
  %99 = insertelement <1 x float> poison, float %98, i32 0, !dbg !118
  %100 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %68, <1 x float> %99, <1 x float> %94), !dbg !118
  %101 = add i64 %53, 4, !dbg !118
  %102 = add nuw nsw i64 %77, %101, !dbg !118
  %103 = getelementptr inbounds nuw float, ptr %27, i64 %102, !dbg !118
  %104 = load float, ptr %103, align 4, !dbg !118
  %105 = insertelement <1 x float> poison, float %104, i32 0, !dbg !118
  %106 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %70, <1 x float> %105, <1 x float> %100), !dbg !118
  %107 = add i64 %53, 5, !dbg !118
  %108 = add nuw nsw i64 %77, %107, !dbg !118
  %109 = getelementptr inbounds nuw float, ptr %27, i64 %108, !dbg !118
  %110 = load float, ptr %109, align 4, !dbg !118
  %111 = insertelement <1 x float> poison, float %110, i32 0, !dbg !118
  %112 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %72, <1 x float> %111, <1 x float> %106), !dbg !118
  %113 = add i64 %53, 6, !dbg !118
  %114 = add nuw nsw i64 %77, %113, !dbg !118
  %115 = getelementptr inbounds nuw float, ptr %27, i64 %114, !dbg !118
  %116 = load float, ptr %115, align 4, !dbg !118
  %117 = insertelement <1 x float> poison, float %116, i32 0, !dbg !118
  %118 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %74, <1 x float> %117, <1 x float> %112), !dbg !118
  %119 = add i64 %53, 7, !dbg !118
  %120 = add nuw nsw i64 %77, %119, !dbg !118
  %121 = getelementptr inbounds nuw float, ptr %27, i64 %120, !dbg !118
  %122 = load float, ptr %121, align 4, !dbg !118
  %123 = insertelement <1 x float> poison, float %122, i32 0, !dbg !118
  %124 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %76, <1 x float> %123, <1 x float> %118), !dbg !118
  %125 = add i64 %53, 8, !dbg !117
  br label %52, !dbg !117

126:                                              ; preds = %52
  %127 = getelementptr float, ptr @__constant_32xf32_0, i64 %50, !dbg !119
  %128 = load <1 x float>, ptr %127, align 4, !dbg !119
  %129 = fadd contract <1 x float> %54, %128, !dbg !120
  %130 = fcmp ugt <1 x float> %129, zeroinitializer, !dbg !121
  %131 = select <1 x i1> %130, <1 x float> %129, <1 x float> zeroinitializer, !dbg !122
  %132 = extractelement <1 x float> %131, i64 0, !dbg !117
  %133 = mul nuw nsw i64 %48, 32, !dbg !117
  %134 = add nuw nsw i64 %133, %50, !dbg !117
  %135 = getelementptr inbounds nuw float, ptr %34, i64 %134, !dbg !117
  store float %132, ptr %135, align 4, !dbg !117
  %136 = add i64 %50, 1, !dbg !117
  br label %49, !dbg !117

137:                                              ; preds = %49
  %138 = add i64 %45, 1, !dbg !117
  br label %44, !dbg !117

139:                                              ; preds = %44, %3
  ret i32 0, !dbg !123
}

define internal i32 @"main_graph$async_dispatch_2_matmul_like_Dx2x32_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !124 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !125
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !125
  %6 = load i32, ptr %5, align 4, !dbg !125
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !126
  %8 = load i32, ptr %7, align 4, !dbg !126
  %9 = getelementptr i32, ptr %5, i32 2, !dbg !127
  %10 = load i32, ptr %9, align 4, !dbg !127
  %11 = getelementptr i32, ptr %5, i32 3, !dbg !128
  %12 = load i32, ptr %11, align 4, !dbg !128
  %13 = zext i32 %8 to i64, !dbg !129
  %14 = shl i64 %13, 32, !dbg !130
  %15 = zext i32 %6 to i64, !dbg !131
  %16 = or i64 %15, %14, !dbg !132
  %17 = zext i32 %12 to i64, !dbg !133
  %18 = shl i64 %17, 32, !dbg !134
  %19 = zext i32 %10 to i64, !dbg !135
  %20 = or i64 %19, %18, !dbg !136
  %21 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !137
  %22 = load ptr, ptr %21, align 8, !dbg !137
  %23 = mul i64 %16, 8, !dbg !137
  %24 = udiv i64 %23, 32, !dbg !137
  %25 = getelementptr float, ptr %22, i64 %24, !dbg !137
  call void @llvm.assume(i1 true) [ "align"(ptr %25, i64 64) ], !dbg !137
  %26 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !138
  %27 = extractvalue %iree_hal_executable_dispatch_state_v0_t %26, 10, !dbg !138
  %28 = getelementptr ptr, ptr %27, i32 1, !dbg !138
  %29 = load ptr, ptr %28, align 8, !dbg !138
  call void @llvm.assume(i1 true) [ "align"(ptr %29, i64 64) ], !dbg !138
  %30 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !139
  %31 = extractvalue %iree_hal_executable_workgroup_state_v0_t %30, 0, !dbg !139
  %32 = zext i32 %31 to i64, !dbg !139
  %33 = mul nsw i64 %32, 64, !dbg !139
  %34 = mul nsw i64 %32, -64, !dbg !139
  %35 = add i64 %34, %20, !dbg !139
  %36 = icmp slt i64 %35, 64, !dbg !139
  %37 = select i1 %36, i64 %35, i64 64, !dbg !139
  %38 = icmp sgt i64 %37, 0, !dbg !139
  br i1 %38, label %39, label %133, !dbg !139

39:                                               ; preds = %131, %3
  %40 = phi i64 [ %132, %131 ], [ 0, %3 ], !dbg !139
  %41 = icmp slt i64 %40, %37, !dbg !139
  br i1 %41, label %42, label %133, !dbg !139

42:                                               ; preds = %39
  %43 = add i64 %40, %33, !dbg !139
  br label %44, !dbg !139

44:                                               ; preds = %121, %42
  %45 = phi i64 [ %130, %121 ], [ 0, %42 ], !dbg !139
  %46 = icmp slt i64 %45, 2, !dbg !139
  br i1 %46, label %47, label %131, !dbg !139

47:                                               ; preds = %51, %44
  %48 = phi i64 [ %120, %51 ], [ 0, %44 ], !dbg !139
  %49 = phi <1 x float> [ %119, %51 ], [ zeroinitializer, %44 ], !dbg !139
  %50 = icmp slt i64 %48, 32, !dbg !139
  br i1 %50, label %51, label %121, !dbg !139

51:                                               ; preds = %47
  %52 = mul i64 %45, 32, !dbg !139
  %53 = add i64 %52, %48, !dbg !139
  %54 = getelementptr float, ptr @__constant_2x32xf32, i64 %53, !dbg !139
  %55 = load <8 x float>, ptr %54, align 4, !dbg !139
  %56 = extractelement <8 x float> %55, i64 0, !dbg !140
  %57 = insertelement <1 x float> poison, float %56, i64 0, !dbg !140
  %58 = extractelement <8 x float> %55, i64 1, !dbg !140
  %59 = insertelement <1 x float> poison, float %58, i64 0, !dbg !140
  %60 = extractelement <8 x float> %55, i64 2, !dbg !140
  %61 = insertelement <1 x float> poison, float %60, i64 0, !dbg !140
  %62 = extractelement <8 x float> %55, i64 3, !dbg !140
  %63 = insertelement <1 x float> poison, float %62, i64 0, !dbg !140
  %64 = extractelement <8 x float> %55, i64 4, !dbg !140
  %65 = insertelement <1 x float> poison, float %64, i64 0, !dbg !140
  %66 = extractelement <8 x float> %55, i64 5, !dbg !140
  %67 = insertelement <1 x float> poison, float %66, i64 0, !dbg !140
  %68 = extractelement <8 x float> %55, i64 6, !dbg !140
  %69 = insertelement <1 x float> poison, float %68, i64 0, !dbg !140
  %70 = extractelement <8 x float> %55, i64 7, !dbg !140
  %71 = insertelement <1 x float> poison, float %70, i64 0, !dbg !140
  %72 = mul nuw nsw i64 %43, 32, !dbg !140
  %73 = add nuw nsw i64 %72, %48, !dbg !140
  %74 = getelementptr inbounds nuw float, ptr %25, i64 %73, !dbg !140
  %75 = load float, ptr %74, align 4, !dbg !140
  %76 = insertelement <1 x float> poison, float %75, i32 0, !dbg !140
  %77 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %57, <1 x float> %76, <1 x float> %49), !dbg !140
  %78 = add i64 %48, 1, !dbg !140
  %79 = add nuw nsw i64 %72, %78, !dbg !140
  %80 = getelementptr inbounds nuw float, ptr %25, i64 %79, !dbg !140
  %81 = load float, ptr %80, align 4, !dbg !140
  %82 = insertelement <1 x float> poison, float %81, i32 0, !dbg !140
  %83 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %59, <1 x float> %82, <1 x float> %77), !dbg !140
  %84 = add i64 %48, 2, !dbg !140
  %85 = add nuw nsw i64 %72, %84, !dbg !140
  %86 = getelementptr inbounds nuw float, ptr %25, i64 %85, !dbg !140
  %87 = load float, ptr %86, align 4, !dbg !140
  %88 = insertelement <1 x float> poison, float %87, i32 0, !dbg !140
  %89 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %88, <1 x float> %83), !dbg !140
  %90 = add i64 %48, 3, !dbg !140
  %91 = add nuw nsw i64 %72, %90, !dbg !140
  %92 = getelementptr inbounds nuw float, ptr %25, i64 %91, !dbg !140
  %93 = load float, ptr %92, align 4, !dbg !140
  %94 = insertelement <1 x float> poison, float %93, i32 0, !dbg !140
  %95 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %63, <1 x float> %94, <1 x float> %89), !dbg !140
  %96 = add i64 %48, 4, !dbg !140
  %97 = add nuw nsw i64 %72, %96, !dbg !140
  %98 = getelementptr inbounds nuw float, ptr %25, i64 %97, !dbg !140
  %99 = load float, ptr %98, align 4, !dbg !140
  %100 = insertelement <1 x float> poison, float %99, i32 0, !dbg !140
  %101 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %65, <1 x float> %100, <1 x float> %95), !dbg !140
  %102 = add i64 %48, 5, !dbg !140
  %103 = add nuw nsw i64 %72, %102, !dbg !140
  %104 = getelementptr inbounds nuw float, ptr %25, i64 %103, !dbg !140
  %105 = load float, ptr %104, align 4, !dbg !140
  %106 = insertelement <1 x float> poison, float %105, i32 0, !dbg !140
  %107 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %106, <1 x float> %101), !dbg !140
  %108 = add i64 %48, 6, !dbg !140
  %109 = add nuw nsw i64 %72, %108, !dbg !140
  %110 = getelementptr inbounds nuw float, ptr %25, i64 %109, !dbg !140
  %111 = load float, ptr %110, align 4, !dbg !140
  %112 = insertelement <1 x float> poison, float %111, i32 0, !dbg !140
  %113 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %69, <1 x float> %112, <1 x float> %107), !dbg !140
  %114 = add i64 %48, 7, !dbg !140
  %115 = add nuw nsw i64 %72, %114, !dbg !140
  %116 = getelementptr inbounds nuw float, ptr %25, i64 %115, !dbg !140
  %117 = load float, ptr %116, align 4, !dbg !140
  %118 = insertelement <1 x float> poison, float %117, i32 0, !dbg !140
  %119 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %71, <1 x float> %118, <1 x float> %113), !dbg !140
  %120 = add i64 %48, 8, !dbg !139
  br label %47, !dbg !139

121:                                              ; preds = %47
  %122 = getelementptr float, ptr @__constant_2xf32, i64 %45, !dbg !141
  %123 = load <1 x float>, ptr %122, align 4, !dbg !141
  %124 = extractelement <1 x float> %49, i64 0, !dbg !142
  %125 = extractelement <1 x float> %123, i64 0, !dbg !142
  %126 = fadd contract float %124, %125, !dbg !142
  %127 = mul nuw nsw i64 %43, 2, !dbg !139
  %128 = add nuw nsw i64 %127, %45, !dbg !139
  %129 = getelementptr inbounds nuw float, ptr %29, i64 %128, !dbg !139
  store float %126, ptr %129, align 4, !dbg !139
  %130 = add i64 %45, 1, !dbg !139
  br label %44, !dbg !139

131:                                              ; preds = %44
  %132 = add i64 %40, 1, !dbg !139
  br label %39, !dbg !139

133:                                              ; preds = %39, %3
  ret i32 0, !dbg !143
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @iree_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #3 {
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
define hidden signext i16 @iree_f2h_ieee(float noundef %0) local_unnamed_addr #3 {
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
define hidden float @__gnu_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #3 {
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
define hidden float @__extendhfsf2(float noundef %0) local_unnamed_addr #3 {
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
define hidden signext i16 @__gnu_f2h_ieee(float noundef %0) local_unnamed_addr #3 {
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
define hidden float @__truncsfhf2(float noundef %0) local_unnamed_addr #3 {
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
  store i16 %37, ptr %2, align 4, !tbaa !144
  %38 = load float, ptr %2, align 4, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "target-cpu"="znver3" "target-features"="+64bit,+64bit-mode,+adx,+aes,+allow-light-256-bit,+avx,+avx2,+bmi,+bmi2,+branchfusion,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fast-15bytenop,+fast-bextr,+fast-imm16,+fast-lzcnt,+fast-movbe,+fast-scalar-fsqrt,+fast-scalar-shift-masks,+fast-variable-perlane-shuffle,+fast-vector-fsqrt,+fma,+fsgsbase,+fsrm,+fxsr,+idivq-to-divl,+invpcid,+lzcnt,+macrofusion,+mmx,+movbe,+mwaitx,+nopl,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sbb-dep-breaking,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+vzeroupper,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_main_graph$async_dispatch_0.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_main_graph$async_dispatch_1.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_main_graph$async_dispatch_2.mlir", directory: "/scratch2/merlin/samples/core_pinning_single_workload/models/configs")
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = distinct !DISubprogram(name: "main_graph$async_dispatch_0_matmul_like_Dx32x10_f32", linkageName: "main_graph$async_dispatch_0_matmul_like_Dx32x10_f32", scope: !1, file: !1, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!10 = !DISubroutineType(cc: DW_CC_normal, types: !11)
!11 = !{!12, !13, !44, !73}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !17, file: !17, line: 246, size: 768, elements: !18)
!17 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!18 = !{!19, !27, !30, !33, !35}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, scope: !17, file: !17, line: 227, baseType: !23, size: 2048, elements: !25)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !24)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !{!26}
!26 = !DISubrange(count: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !31, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !34, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !36, offset: 256)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !17, file: !17, line: 227, size: 512, elements: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_array_type, scope: !17, file: !17, line: 227, baseType: !40, size: 512, elements: !42)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !41)
!41 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !{!43}
!43 = !DISubrange(count: 8)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !17, file: !17, line: 275, size: 384, elements: !48)
!48 = !{!49, !50, !51, !54, !55, !56, !57, !58, !61, !62, !63, !68}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !23, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !23, size: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !52, size: 16, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !53)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !52, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !23, size: 32, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !23, size: 32, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !52, size: 16, offset: 160)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !59, size: 8, offset: 176)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !60)
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !59, size: 8, offset: 184)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !20, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !64, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, scope: !17, file: !17, line: 227, baseType: !67, size: 4096, elements: !25)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !69, size: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, scope: !17, file: !17, line: 227, baseType: !72, size: 4096, elements: !25)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !40)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !17, file: !17, line: 321, size: 256, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !23, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !23, size: 32, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !52, size: 16, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !52, size: 16, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !23, size: 32, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !28, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !23, size: 32, offset: 192)
!85 = !DILocation(line: 13, column: 8, scope: !9)
!86 = !DILocation(line: 14, column: 8, scope: !9)
!87 = !DILocation(line: 15, column: 8, scope: !9)
!88 = !DILocation(line: 16, column: 8, scope: !9)
!89 = !DILocation(line: 17, column: 8, scope: !9)
!90 = !DILocation(line: 18, column: 8, scope: !9)
!91 = !DILocation(line: 21, column: 8, scope: !9)
!92 = !DILocation(line: 23, column: 8, scope: !9)
!93 = !DILocation(line: 24, column: 8, scope: !9)
!94 = !DILocation(line: 29, column: 8, scope: !9)
!95 = !DILocation(line: 32, column: 10, scope: !9)
!96 = !DILocation(line: 35, column: 8, scope: !9)
!97 = !DILocation(line: 37, column: 10, scope: !9)
!98 = !DILocation(line: 38, column: 10, scope: !9)
!99 = !DILocation(line: 39, column: 10, scope: !9)
!100 = !DILocation(line: 43, column: 8, scope: !9)
!101 = distinct !DISubprogram(name: "main_graph$async_dispatch_1_matmul_like_Dx32x32_f32", linkageName: "main_graph$async_dispatch_1_matmul_like_Dx32x32_f32", scope: !3, file: !3, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!102 = !DILocation(line: 14, column: 8, scope: !101)
!103 = !DILocation(line: 15, column: 8, scope: !101)
!104 = !DILocation(line: 16, column: 8, scope: !101)
!105 = !DILocation(line: 17, column: 8, scope: !101)
!106 = !DILocation(line: 18, column: 8, scope: !101)
!107 = !DILocation(line: 19, column: 8, scope: !101)
!108 = !DILocation(line: 20, column: 8, scope: !101)
!109 = !DILocation(line: 21, column: 8, scope: !101)
!110 = !DILocation(line: 23, column: 8, scope: !101)
!111 = !DILocation(line: 24, column: 8, scope: !101)
!112 = !DILocation(line: 25, column: 8, scope: !101)
!113 = !DILocation(line: 26, column: 8, scope: !101)
!114 = !DILocation(line: 32, column: 8, scope: !101)
!115 = !DILocation(line: 34, column: 8, scope: !101)
!116 = !DILocation(line: 35, column: 8, scope: !101)
!117 = !DILocation(line: 40, column: 8, scope: !101)
!118 = !DILocation(line: 43, column: 10, scope: !101)
!119 = !DILocation(line: 46, column: 8, scope: !101)
!120 = !DILocation(line: 48, column: 10, scope: !101)
!121 = !DILocation(line: 49, column: 10, scope: !101)
!122 = !DILocation(line: 50, column: 10, scope: !101)
!123 = !DILocation(line: 54, column: 8, scope: !101)
!124 = distinct !DISubprogram(name: "main_graph$async_dispatch_2_matmul_like_Dx2x32_f32", linkageName: "main_graph$async_dispatch_2_matmul_like_Dx2x32_f32", scope: !5, file: !5, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!125 = !DILocation(line: 14, column: 8, scope: !124)
!126 = !DILocation(line: 15, column: 8, scope: !124)
!127 = !DILocation(line: 16, column: 8, scope: !124)
!128 = !DILocation(line: 17, column: 8, scope: !124)
!129 = !DILocation(line: 18, column: 8, scope: !124)
!130 = !DILocation(line: 19, column: 8, scope: !124)
!131 = !DILocation(line: 20, column: 8, scope: !124)
!132 = !DILocation(line: 21, column: 8, scope: !124)
!133 = !DILocation(line: 23, column: 8, scope: !124)
!134 = !DILocation(line: 24, column: 8, scope: !124)
!135 = !DILocation(line: 25, column: 8, scope: !124)
!136 = !DILocation(line: 26, column: 8, scope: !124)
!137 = !DILocation(line: 33, column: 8, scope: !124)
!138 = !DILocation(line: 34, column: 8, scope: !124)
!139 = !DILocation(line: 38, column: 8, scope: !124)
!140 = !DILocation(line: 41, column: 10, scope: !124)
!141 = !DILocation(line: 44, column: 8, scope: !124)
!142 = !DILocation(line: 46, column: 10, scope: !124)
!143 = !DILocation(line: 50, column: 8, scope: !124)
!144 = !{!145, !145, i64 0}
!145 = !{!"short", !146, i64 0}
!146 = !{!"omnipotent char", !147, i64 0}
!147 = !{!"Simple C/C++ TBAA"}
!148 = !{!149, !149, i64 0}
!149 = !{!"float", !146, i64 0}
