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

@__constant_32xf32 = internal unnamed_addr constant [32 x float] [float 0x3FB8A68340000000, float 0xBFC3F51360000000, float 0xBFD1055320000000, float 0xBFD036CD40000000, float 0xBFCE7A8EA0000000, float 0xBFCA29FBC0000000, float 0x3F419D1780000000, float 0xBFCFA1F640000000, float 0xBFBC8CA760000000, float 0xBFC99D0040000000, float 0xBFD3BDA740000000, float 0x3FC3E648E0000000, float 0x3FABEBF7C0000000, float 0x3FA44B2340000000, float 0x3FC2AC7000000000, float 0x3FD1190D40000000, float 0x3FD4126EC0000000, float 0xBFAE1F6460000000, float 0xBFCEA5CFE0000000, float 0x3FB3F98FA0000000, float 0x3FD4078800000000, float 0x3FD0AF21E0000000, float 0x3F99D9DDC0000000, float 0x3FCF4D57A0000000, float 0x3FAB2D5F20000000, float 0xBFB9242080000000, float 0x3FCDC95BC0000000, float 0xBF6F0831E0000000, float 0xBFD2F4A0A0000000, float 0xBFD0D2AEE0000000, float 0xBFB2CF0AC0000000, float 0x3FC56F1680000000], align 64
@__constant_32xf32_0 = internal unnamed_addr constant [32 x float] [float 0x3FC4CCC6E0000000, float 0xBFB4876EE0000000, float 0x3FC3B45E60000000, float 0x3F966FED80000000, float 0xBFC1EFB660000000, float 0xBFBFDC9BA0000000, float 0xBFC32FBE60000000, float 0x3FC4C0C140000000, float 0x3FBAE41400000000, float 0xBFB5FFFA80000000, float 0x3FB1D49A20000000, float 0xBFC2132F60000000, float 0xBFA110CDC0000000, float 0xBFA3C63480000000, float 0xBF966A3740000000, float 0x3FC4A9ECA0000000, float 0xBFA80AC3E0000000, float 0xBF7A8340C0000000, float 0x3FC1C673C0000000, float 0x3FB83DF620000000, float 0xBFBE61F420000000, float 0x3FC013DDC0000000, float 0x3FC23F6220000000, float 0x3FB9F7C7C0000000, float 0x3FC0FBE500000000, float 0xBFB82C63E0000000, float 0x3FC4969E80000000, float 0xBFB7C09680000000, float 0xBFC0BF5C40000000, float 0xBFB36AF640000000, float 0x3FC68EEF80000000, float 0xBFB659BAE0000000], align 64
@__constant_2xf32 = internal unnamed_addr constant [2 x float] [float 0x3FC333AE00000000, float 0xBFBCBF2460000000], align 64
@__constant_2x32xf32 = internal unnamed_addr constant [2 x [32 x float]] [[32 x float] [float 0xBFC307CD80000000, float 0xBF80663F60000000, float 0xBFC3CB5100000000, float 0x3FB24B8420000000, float 0xBFC45229E0000000, float 0xBFB98EDEC0000000, float 0xBFAA61ADC0000000, float 0x3FA32451A0000000, float 0x3F8CE113E0000000, float 0xBFBB5187C0000000, float 0x3FC624B680000000, float 0xBFC46A1320000000, float 0xBFC12CA8A0000000, float 0xBFB0040380000000, float 0x3F937F67E0000000, float 0xBFC56CE3A0000000, float 0xBFBE5CA7E0000000, float 0xBFC31D5EE0000000, float 0xBFC0290A20000000, float 0x3FA0CC6920000000, float 0x3FC4A785E0000000, float 0x3FC54A0F20000000, float 0x3FBAF8B0C0000000, float 0xBF947009A0000000, float 0xBFB6091F00000000, float 0x3FC42B40C0000000, float 0x3FBF3FD1C0000000, float 0xBF9AA62920000000, float 0x3FADF44C00000000, float 0x3FA9EA8800000000, float 0xBFC4DFC960000000, float 0xBFA0221D20000000], [32 x float] [float 0x3FBA588FA0000000, float 0x3FC232B3E0000000, float 0xBFB3BF26E0000000, float 0x3F8C69A760000000, float 0x3F79F50EE0000000, float 0xBFB2666B60000000, float 0x3FC14A1300000000, float 0x3FA63281A0000000, float 0x3FB75C3520000000, float 0xBFA4D6A8C0000000, float 0x3FC0F804A0000000, float 0xBFC0783AA0000000, float 0x3FAB88C920000000, float 0x3FA99A6620000000, float 0x3FB09B9D60000000, float 0xBFC62913A0000000, float 0x3FC64E2B00000000, float 0xBFB3A5EEA0000000, float 0xBFC33E2DA0000000, float 0xBF943E0C60000000, float 0xBFBD707DE0000000, float 0x3FA7AB2800000000, float 0xBF940A25E0000000, float 0xBFAF20A9A0000000, float 0xBF7DCCA4C0000000, float 0x3F7B3AC4E0000000, float 0x3F868EDFE0000000, float 0x3EE1803A80000000, float 0xBFB521B260000000, float 0xBFA643B080000000, float 0x3FC0470AA0000000, float 0xBFA78A2120000000]], align 64
@0 = internal constant [11 x i8] c"mlp_linked\00", align 1
@iree_hal_executable_library_query_v0_header = internal constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = internal constant [3 x ptr] [ptr @"main_graph$async_dispatch_0_matmul_like_Dx32x10_f32", ptr @"main_graph$async_dispatch_1_matmul_like_Dx32x32_f32", ptr @"main_graph$async_dispatch_2_matmul_like_Dx2x32_f32"]
@iree_hal_executable_library_query_v0_attrs = internal constant [3 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 4, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 4, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = internal constant [52 x i8] c"main_graph$async_dispatch_0_matmul_like_Dx32x10_f32\00", align 1
@2 = internal constant [52 x i8] c"main_graph$async_dispatch_1_matmul_like_Dx32x32_f32\00", align 1
@3 = internal constant [51 x i8] c"main_graph$async_dispatch_2_matmul_like_Dx2x32_f32\00", align 1
@iree_hal_executable_library_query_v0_names = internal constant [3 x ptr] [ptr @1, ptr @2, ptr @3]
@4 = internal constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_0.mlir\00", align 1
@5 = internal constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_1.mlir\00", align 1
@6 = internal constant [121 x i8] c"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_2.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = internal constant [3 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @4 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @5 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 120, ptr @6 }]
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = internal constant [3 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_source_locations" }]
@iree_hal_executable_library_query_v0 = internal constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 3, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_0_matmul_like_Dx32x10_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !9 {
  %.elt18 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !85
  %.unpack19 = load ptr, ptr %.elt18, align 8, !dbg !85
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !85
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !85
  %4 = load i64, ptr %.unpack19, align 4, !dbg !85
  %5 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !86
  %6 = load ptr, ptr %5, align 8, !dbg !86
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !86
  %7 = load ptr, ptr %.unpack21, align 8, !dbg !87
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !87
  %8 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !88
  %9 = load ptr, ptr %8, align 8, !dbg !88
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !88
  %10 = load i32, ptr %2, align 16, !dbg !89
  %11 = zext i32 %10 to i64, !dbg !89
  %12 = shl nuw nsw i64 %11, 6, !dbg !89
  %13 = sub i64 %4, %12, !dbg !89
  %14 = icmp sgt i64 %13, 0, !dbg !89
  br i1 %14, label %.lr.ph.preheader, label %.loopexit, !dbg !89

.lr.ph.preheader:                                 ; preds = %3
  %15 = tail call i64 @llvm.umin.i64(i64 %13, i64 64), !dbg !89
  br label %.lr.ph, !dbg !89

.lr.ph:                                           ; preds = %.lr.ph.preheader, %82
  %16 = phi i64 [ %83, %82 ], [ 0, %.lr.ph.preheader ]
  %17 = add nuw nsw i64 %16, %12, !dbg !89
  %.idx25 = mul nuw nsw i64 %17, 40
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx25
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 36
  %.idx = shl nuw nsw i64 %17, 7
  %28 = getelementptr inbounds nuw i8, ptr %9, i64 %.idx
  br label %29, !dbg !89

29:                                               ; preds = %.lr.ph, %29
  %30 = phi i64 [ 0, %.lr.ph ], [ %81, %29 ]
  %.idx24 = mul nuw nsw i64 %30, 40, !dbg !89
  %31 = getelementptr i8, ptr %6, i64 %.idx24, !dbg !89
  %32 = load <8 x float>, ptr %31, align 8, !dbg !89
  %33 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> zeroinitializer, !dbg !90
  %34 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 1>, !dbg !90
  %35 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 2>, !dbg !90
  %36 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 3>, !dbg !90
  %37 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 4>, !dbg !90
  %38 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 5>, !dbg !90
  %39 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 6>, !dbg !90
  %40 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 7>, !dbg !90
  %41 = load float, ptr %18, align 8, !dbg !90
  %42 = insertelement <1 x float> poison, float %41, i64 0, !dbg !90
  %43 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %33, <1 x float> %42, <1 x float> zeroinitializer), !dbg !90
  %44 = load float, ptr %19, align 4, !dbg !90
  %45 = insertelement <1 x float> poison, float %44, i64 0, !dbg !90
  %46 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %34, <1 x float> %45, <1 x float> %43), !dbg !90
  %47 = load float, ptr %20, align 8, !dbg !90
  %48 = insertelement <1 x float> poison, float %47, i64 0, !dbg !90
  %49 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %35, <1 x float> %48, <1 x float> %46), !dbg !90
  %50 = load float, ptr %21, align 4, !dbg !90
  %51 = insertelement <1 x float> poison, float %50, i64 0, !dbg !90
  %52 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %51, <1 x float> %49), !dbg !90
  %53 = load float, ptr %22, align 8, !dbg !90
  %54 = insertelement <1 x float> poison, float %53, i64 0, !dbg !90
  %55 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %37, <1 x float> %54, <1 x float> %52), !dbg !90
  %56 = load float, ptr %23, align 4, !dbg !90
  %57 = insertelement <1 x float> poison, float %56, i64 0, !dbg !90
  %58 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %38, <1 x float> %57, <1 x float> %55), !dbg !90
  %59 = load float, ptr %24, align 8, !dbg !90
  %60 = insertelement <1 x float> poison, float %59, i64 0, !dbg !90
  %61 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %39, <1 x float> %60, <1 x float> %58), !dbg !90
  %62 = load float, ptr %25, align 4, !dbg !90
  %63 = insertelement <1 x float> poison, float %62, i64 0, !dbg !90
  %64 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %40, <1 x float> %63, <1 x float> %61), !dbg !90
  %65 = getelementptr i8, ptr %31, i64 32, !dbg !89
  %66 = load <2 x float>, ptr %65, align 8, !dbg !89
  %67 = shufflevector <2 x float> %66, <2 x float> poison, <1 x i32> zeroinitializer, !dbg !90
  %68 = shufflevector <2 x float> %66, <2 x float> poison, <1 x i32> <i32 1>, !dbg !90
  %69 = load float, ptr %26, align 8, !dbg !90
  %70 = insertelement <1 x float> poison, float %69, i64 0, !dbg !90
  %71 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %67, <1 x float> %70, <1 x float> %64), !dbg !90
  %72 = load float, ptr %27, align 4, !dbg !90
  %73 = insertelement <1 x float> poison, float %72, i64 0, !dbg !90
  %74 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %68, <1 x float> %73, <1 x float> %71), !dbg !90
  %75 = getelementptr float, ptr @__constant_32xf32, i64 %30, !dbg !91
  %76 = load <1 x float>, ptr %75, align 4, !dbg !91
  %77 = fadd contract <1 x float> %76, %74, !dbg !92
  %.inv = fcmp ole <1 x float> %77, zeroinitializer, !dbg !93
  %78 = select <1 x i1> %.inv, <1 x float> zeroinitializer, <1 x float> %77, !dbg !93
  %79 = extractelement <1 x float> %78, i64 0, !dbg !89
  %80 = getelementptr inbounds nuw float, ptr %28, i64 %30, !dbg !89
  store float %79, ptr %80, align 4, !dbg !89
  %81 = add nuw nsw i64 %30, 1, !dbg !89
  %exitcond.not = icmp eq i64 %81, 32, !dbg !89
  br i1 %exitcond.not, label %82, label %29, !dbg !89

82:                                               ; preds = %29
  %83 = add nuw nsw i64 %16, 1, !dbg !89
  %exitcond26.not = icmp eq i64 %83, %15, !dbg !89
  br i1 %exitcond26.not, label %.loopexit, label %.lr.ph, !dbg !89

.loopexit:                                        ; preds = %82, %3
  ret i32 0, !dbg !94
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_1_matmul_like_Dx32x32_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !95 {
  %.elt18 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !96
  %.unpack19 = load ptr, ptr %.elt18, align 8, !dbg !96
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !96
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !96
  %4 = load i64, ptr %.unpack19, align 4, !dbg !96
  %5 = getelementptr i8, ptr %.unpack19, i64 8, !dbg !97
  %6 = load i64, ptr %5, align 4, !dbg !97
  %7 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !98
  %8 = load ptr, ptr %7, align 8, !dbg !98
  %9 = getelementptr i8, ptr %8, i64 1280, !dbg !98
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !98
  %10 = load ptr, ptr %.unpack21, align 8, !dbg !99
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !99
  %11 = getelementptr i8, ptr %.unpack21, i64 16, !dbg !100
  %12 = load ptr, ptr %11, align 8, !dbg !100
  %13 = lshr i64 %4, 2, !dbg !100
  %14 = and i64 %13, 576460752303423487, !dbg !100
  %15 = getelementptr float, ptr %12, i64 %14, !dbg !100
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !100
  %16 = load i32, ptr %2, align 16, !dbg !101
  %17 = zext i32 %16 to i64, !dbg !101
  %18 = shl nuw nsw i64 %17, 6, !dbg !101
  %19 = sub i64 %6, %18, !dbg !101
  %20 = icmp sgt i64 %19, 0, !dbg !101
  br i1 %20, label %.lr.ph.preheader, label %.loopexit, !dbg !101

.lr.ph.preheader:                                 ; preds = %3
  %21 = tail call i64 @llvm.umin.i64(i64 %19, i64 64), !dbg !101
  br label %.lr.ph, !dbg !101

.lr.ph:                                           ; preds = %.lr.ph.preheader, %83
  %22 = phi i64 [ %84, %83 ], [ 0, %.lr.ph.preheader ]
  %23 = add nuw nsw i64 %22, %18, !dbg !101
  %.idx25 = shl nuw nsw i64 %23, 7
  %24 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx25
  %25 = getelementptr inbounds nuw i8, ptr %15, i64 %.idx25
  br label %.preheader, !dbg !101

.preheader:                                       ; preds = %.lr.ph, %75
  %26 = phi i64 [ 0, %.lr.ph ], [ %82, %75 ]
  %.idx24 = shl i64 %26, 7
  %27 = getelementptr i8, ptr %9, i64 %.idx24
  br label %28, !dbg !101

28:                                               ; preds = %.preheader, %28
  %29 = phi <1 x float> [ zeroinitializer, %.preheader ], [ %72, %28 ]
  %30 = phi i64 [ 0, %.preheader ], [ %73, %28 ]
  %31 = getelementptr float, ptr %27, i64 %30, !dbg !101
  %32 = load <8 x float>, ptr %31, align 32, !dbg !101
  %33 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> zeroinitializer, !dbg !102
  %34 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 1>, !dbg !102
  %35 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 2>, !dbg !102
  %36 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 3>, !dbg !102
  %37 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 4>, !dbg !102
  %38 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 5>, !dbg !102
  %39 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 6>, !dbg !102
  %40 = shufflevector <8 x float> %32, <8 x float> poison, <1 x i32> <i32 7>, !dbg !102
  %41 = getelementptr inbounds nuw float, ptr %24, i64 %30, !dbg !102
  %42 = load float, ptr %41, align 32, !dbg !102
  %43 = insertelement <1 x float> poison, float %42, i64 0, !dbg !102
  %44 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %33, <1 x float> %43, <1 x float> %29), !dbg !102
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 4, !dbg !102
  %46 = load float, ptr %45, align 4, !dbg !102
  %47 = insertelement <1 x float> poison, float %46, i64 0, !dbg !102
  %48 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %34, <1 x float> %47, <1 x float> %44), !dbg !102
  %49 = getelementptr inbounds nuw i8, ptr %41, i64 8, !dbg !102
  %50 = load float, ptr %49, align 8, !dbg !102
  %51 = insertelement <1 x float> poison, float %50, i64 0, !dbg !102
  %52 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %35, <1 x float> %51, <1 x float> %48), !dbg !102
  %53 = getelementptr inbounds nuw i8, ptr %41, i64 12, !dbg !102
  %54 = load float, ptr %53, align 4, !dbg !102
  %55 = insertelement <1 x float> poison, float %54, i64 0, !dbg !102
  %56 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %55, <1 x float> %52), !dbg !102
  %57 = getelementptr inbounds nuw i8, ptr %41, i64 16, !dbg !102
  %58 = load float, ptr %57, align 16, !dbg !102
  %59 = insertelement <1 x float> poison, float %58, i64 0, !dbg !102
  %60 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %37, <1 x float> %59, <1 x float> %56), !dbg !102
  %61 = getelementptr inbounds nuw i8, ptr %41, i64 20, !dbg !102
  %62 = load float, ptr %61, align 4, !dbg !102
  %63 = insertelement <1 x float> poison, float %62, i64 0, !dbg !102
  %64 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %38, <1 x float> %63, <1 x float> %60), !dbg !102
  %65 = getelementptr inbounds nuw i8, ptr %41, i64 24, !dbg !102
  %66 = load float, ptr %65, align 8, !dbg !102
  %67 = insertelement <1 x float> poison, float %66, i64 0, !dbg !102
  %68 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %39, <1 x float> %67, <1 x float> %64), !dbg !102
  %69 = getelementptr inbounds nuw i8, ptr %41, i64 28, !dbg !102
  %70 = load float, ptr %69, align 4, !dbg !102
  %71 = insertelement <1 x float> poison, float %70, i64 0, !dbg !102
  %72 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %40, <1 x float> %71, <1 x float> %68), !dbg !102
  %73 = add nuw nsw i64 %30, 8, !dbg !101
  %74 = icmp samesign ult i64 %30, 24, !dbg !101
  br i1 %74, label %28, label %75, !dbg !101

75:                                               ; preds = %28
  %76 = getelementptr float, ptr @__constant_32xf32_0, i64 %26, !dbg !103
  %77 = load <1 x float>, ptr %76, align 4, !dbg !103
  %78 = fadd contract <1 x float> %72, %77, !dbg !104
  %.inv = fcmp ole <1 x float> %78, zeroinitializer, !dbg !105
  %79 = select <1 x i1> %.inv, <1 x float> zeroinitializer, <1 x float> %78, !dbg !105
  %80 = extractelement <1 x float> %79, i64 0, !dbg !101
  %81 = getelementptr inbounds nuw float, ptr %25, i64 %26, !dbg !101
  store float %80, ptr %81, align 4, !dbg !101
  %82 = add nuw nsw i64 %26, 1, !dbg !101
  %exitcond.not = icmp eq i64 %82, 32, !dbg !101
  br i1 %exitcond.not, label %83, label %.preheader, !dbg !101

83:                                               ; preds = %75
  %84 = add nuw nsw i64 %22, 1, !dbg !101
  %exitcond27.not = icmp eq i64 %84, %21, !dbg !101
  br i1 %exitcond27.not, label %.loopexit, label %.lr.ph, !dbg !101

.loopexit:                                        ; preds = %83, %3
  ret i32 0, !dbg !106
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define internal noundef i32 @"main_graph$async_dispatch_2_matmul_like_Dx2x32_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !107 {
  %.elt18 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !108
  %.unpack19 = load ptr, ptr %.elt18, align 8, !dbg !108
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !108
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !108
  %4 = load i64, ptr %.unpack19, align 4, !dbg !108
  %5 = getelementptr i8, ptr %.unpack19, i64 8, !dbg !109
  %6 = load i64, ptr %5, align 4, !dbg !109
  %7 = load ptr, ptr %.unpack21, align 8, !dbg !110
  %8 = lshr i64 %4, 2, !dbg !110
  %9 = and i64 %8, 576460752303423487, !dbg !110
  %10 = getelementptr float, ptr %7, i64 %9, !dbg !110
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !110
  %11 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !111
  %12 = load ptr, ptr %11, align 8, !dbg !111
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !111
  %13 = load i32, ptr %2, align 16, !dbg !112
  %14 = zext i32 %13 to i64, !dbg !112
  %15 = shl nuw nsw i64 %14, 6, !dbg !112
  %16 = sub i64 %6, %15, !dbg !112
  %17 = icmp sgt i64 %16, 0, !dbg !112
  br i1 %17, label %.lr.ph.preheader, label %.loopexit, !dbg !112

.lr.ph.preheader:                                 ; preds = %3
  %18 = tail call i64 @llvm.umin.i64(i64 %16, i64 64), !dbg !112
  br label %.lr.ph, !dbg !112

.lr.ph:                                           ; preds = %.lr.ph.preheader, %79
  %19 = phi i64 [ %80, %79 ], [ 0, %.lr.ph.preheader ]
  %20 = add nuw nsw i64 %19, %15, !dbg !112
  %.idx25 = shl nuw nsw i64 %20, 7
  %21 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx25
  %.idx = shl nuw nsw i64 %20, 3
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 %.idx
  br label %.preheader, !dbg !112

.preheader:                                       ; preds = %.lr.ph, %72
  %exitcond.not = phi i1 [ false, %.lr.ph ], [ true, %72 ]
  %23 = phi i64 [ 0, %.lr.ph ], [ 1, %72 ]
  %.idx24 = shl nuw nsw i64 %23, 7
  %24 = getelementptr i8, ptr @__constant_2x32xf32, i64 %.idx24
  br label %25, !dbg !112

25:                                               ; preds = %.preheader, %25
  %26 = phi <1 x float> [ zeroinitializer, %.preheader ], [ %69, %25 ]
  %27 = phi i64 [ 0, %.preheader ], [ %70, %25 ]
  %28 = getelementptr float, ptr %24, i64 %27, !dbg !112
  %29 = load <8 x float>, ptr %28, align 32, !dbg !112
  %30 = shufflevector <8 x float> %29, <8 x float> poison, <1 x i32> zeroinitializer, !dbg !113
  %31 = shufflevector <8 x float> %29, <8 x float> poison, <1 x i32> <i32 1>, !dbg !113
  %32 = shufflevector <8 x float> %29, <8 x float> poison, <1 x i32> <i32 2>, !dbg !113
  %33 = shufflevector <8 x float> %29, <8 x float> poison, <1 x i32> <i32 3>, !dbg !113
  %34 = shufflevector <8 x float> %29, <8 x float> poison, <1 x i32> <i32 4>, !dbg !113
  %35 = shufflevector <8 x float> %29, <8 x float> poison, <1 x i32> <i32 5>, !dbg !113
  %36 = shufflevector <8 x float> %29, <8 x float> poison, <1 x i32> <i32 6>, !dbg !113
  %37 = shufflevector <8 x float> %29, <8 x float> poison, <1 x i32> <i32 7>, !dbg !113
  %38 = getelementptr inbounds nuw float, ptr %21, i64 %27, !dbg !113
  %39 = load float, ptr %38, align 32, !dbg !113
  %40 = insertelement <1 x float> poison, float %39, i64 0, !dbg !113
  %41 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %30, <1 x float> %40, <1 x float> %26), !dbg !113
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 4, !dbg !113
  %43 = load float, ptr %42, align 4, !dbg !113
  %44 = insertelement <1 x float> poison, float %43, i64 0, !dbg !113
  %45 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %31, <1 x float> %44, <1 x float> %41), !dbg !113
  %46 = getelementptr inbounds nuw i8, ptr %38, i64 8, !dbg !113
  %47 = load float, ptr %46, align 8, !dbg !113
  %48 = insertelement <1 x float> poison, float %47, i64 0, !dbg !113
  %49 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %32, <1 x float> %48, <1 x float> %45), !dbg !113
  %50 = getelementptr inbounds nuw i8, ptr %38, i64 12, !dbg !113
  %51 = load float, ptr %50, align 4, !dbg !113
  %52 = insertelement <1 x float> poison, float %51, i64 0, !dbg !113
  %53 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %33, <1 x float> %52, <1 x float> %49), !dbg !113
  %54 = getelementptr inbounds nuw i8, ptr %38, i64 16, !dbg !113
  %55 = load float, ptr %54, align 16, !dbg !113
  %56 = insertelement <1 x float> poison, float %55, i64 0, !dbg !113
  %57 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %34, <1 x float> %56, <1 x float> %53), !dbg !113
  %58 = getelementptr inbounds nuw i8, ptr %38, i64 20, !dbg !113
  %59 = load float, ptr %58, align 4, !dbg !113
  %60 = insertelement <1 x float> poison, float %59, i64 0, !dbg !113
  %61 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %35, <1 x float> %60, <1 x float> %57), !dbg !113
  %62 = getelementptr inbounds nuw i8, ptr %38, i64 24, !dbg !113
  %63 = load float, ptr %62, align 8, !dbg !113
  %64 = insertelement <1 x float> poison, float %63, i64 0, !dbg !113
  %65 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %64, <1 x float> %61), !dbg !113
  %66 = getelementptr inbounds nuw i8, ptr %38, i64 28, !dbg !113
  %67 = load float, ptr %66, align 4, !dbg !113
  %68 = insertelement <1 x float> poison, float %67, i64 0, !dbg !113
  %69 = tail call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %37, <1 x float> %68, <1 x float> %65), !dbg !113
  %70 = add nuw nsw i64 %27, 8, !dbg !112
  %71 = icmp samesign ult i64 %27, 24, !dbg !112
  br i1 %71, label %25, label %72, !dbg !112

72:                                               ; preds = %25
  %73 = getelementptr float, ptr @__constant_2xf32, i64 %23, !dbg !114
  %74 = load <1 x float>, ptr %73, align 4, !dbg !114
  %75 = extractelement <1 x float> %69, i64 0, !dbg !115
  %76 = extractelement <1 x float> %74, i64 0, !dbg !115
  %77 = fadd contract float %75, %76, !dbg !115
  %78 = getelementptr inbounds nuw float, ptr %22, i64 %23, !dbg !112
  store float %77, ptr %78, align 4, !dbg !112
  br i1 %exitcond.not, label %79, label %.preheader, !dbg !112

79:                                               ; preds = %72
  %80 = add nuw nsw i64 %19, 1, !dbg !112
  %exitcond27.not = icmp eq i64 %80, %18, !dbg !112
  br i1 %exitcond27.not, label %.loopexit, label %.lr.ph, !dbg !112

.loopexit:                                        ; preds = %79, %3
  ret i32 0, !dbg !116
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <1 x float> @llvm.fmuladd.v1f32(<1 x float>, <1 x float>, <1 x float>) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr readnone captures(none) %1) local_unnamed_addr #3 {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @iree_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #4 {
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
define internal signext i16 @iree_f2h_ieee(float noundef %0) local_unnamed_addr #4 {
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
define internal float @__gnu_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #4 {
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
define internal float @__extendhfsf2(float noundef %0) local_unnamed_addr #4 {
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
define internal signext i16 @__gnu_f2h_ieee(float noundef %0) local_unnamed_addr #4 {
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
define internal float @__truncsfhf2(float noundef %0) local_unnamed_addr #4 {
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
  store i16 %37, ptr %2, align 4, !tbaa !117
  %.0..0..0..0. = load float, ptr %2, align 4, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %.0..0..0..0.
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "target-cpu"="znver3" "target-features"="+64bit,+64bit-mode,+adx,+aes,+allow-light-256-bit,+avx,+avx2,+bmi,+bmi2,+branchfusion,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fast-15bytenop,+fast-bextr,+fast-imm16,+fast-lzcnt,+fast-movbe,+fast-scalar-fsqrt,+fast-scalar-shift-masks,+fast-variable-perlane-shuffle,+fast-vector-fsqrt,+fma,+fsgsbase,+fsrm,+fxsr,+idivq-to-divl,+invpcid,+lzcnt,+macrofusion,+mmx,+movbe,+mwaitx,+nopl,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sbb-dep-breaking,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+vzeroupper,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!86 = !DILocation(line: 21, column: 8, scope: !9)
!87 = !DILocation(line: 23, column: 8, scope: !9)
!88 = !DILocation(line: 24, column: 8, scope: !9)
!89 = !DILocation(line: 29, column: 8, scope: !9)
!90 = !DILocation(line: 32, column: 10, scope: !9)
!91 = !DILocation(line: 35, column: 8, scope: !9)
!92 = !DILocation(line: 37, column: 10, scope: !9)
!93 = !DILocation(line: 39, column: 10, scope: !9)
!94 = !DILocation(line: 43, column: 8, scope: !9)
!95 = distinct !DISubprogram(name: "main_graph$async_dispatch_1_matmul_like_Dx32x32_f32", linkageName: "main_graph$async_dispatch_1_matmul_like_Dx32x32_f32", scope: !3, file: !3, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!96 = !DILocation(line: 14, column: 8, scope: !95)
!97 = !DILocation(line: 16, column: 8, scope: !95)
!98 = !DILocation(line: 32, column: 8, scope: !95)
!99 = !DILocation(line: 34, column: 8, scope: !95)
!100 = !DILocation(line: 35, column: 8, scope: !95)
!101 = !DILocation(line: 40, column: 8, scope: !95)
!102 = !DILocation(line: 43, column: 10, scope: !95)
!103 = !DILocation(line: 46, column: 8, scope: !95)
!104 = !DILocation(line: 48, column: 10, scope: !95)
!105 = !DILocation(line: 50, column: 10, scope: !95)
!106 = !DILocation(line: 54, column: 8, scope: !95)
!107 = distinct !DISubprogram(name: "main_graph$async_dispatch_2_matmul_like_Dx2x32_f32", linkageName: "main_graph$async_dispatch_2_matmul_like_Dx2x32_f32", scope: !5, file: !5, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!108 = !DILocation(line: 14, column: 8, scope: !107)
!109 = !DILocation(line: 16, column: 8, scope: !107)
!110 = !DILocation(line: 33, column: 8, scope: !107)
!111 = !DILocation(line: 34, column: 8, scope: !107)
!112 = !DILocation(line: 38, column: 8, scope: !107)
!113 = !DILocation(line: 41, column: 10, scope: !107)
!114 = !DILocation(line: 44, column: 8, scope: !107)
!115 = !DILocation(line: 46, column: 10, scope: !107)
!116 = !DILocation(line: 50, column: 8, scope: !107)
!117 = !{!118, !118, i64 0}
!118 = !{!"short", !119, i64 0}
!119 = !{!"omnipotent char", !120, i64 0}
!120 = !{!"Simple C/C++ TBAA"}
!121 = !{!122, !122, i64 0}
!122 = !{!"float", !119, i64 0}
