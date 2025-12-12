module {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @matmul(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64) {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.mlir.constant(17180131332 : i64) : i64
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(4575657221409472785 : i64) : i64
    %4 = llvm.mlir.constant(256 : i64) : i64
    %5 = llvm.mlir.constant(4575657221409472777 : i64) : i64
    %6 = llvm.mlir.constant(4575657221409472769 : i64) : i64
    %7 = llvm.mlir.constant(4575657221408424000 : i64) : i64
    %8 = llvm.mlir.constant(2 : i64) : i64
    %9 = llvm.mlir.constant(64 : i64) : i64
    %10 = llvm.mlir.constant(281474976710656 : i64) : i64
    %11 = llvm.mlir.constant(4575657221408489476 : i64) : i64
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.zero : !llvm.ptr
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(64 : index) : i64
    %17 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %18 = llvm.getelementptr %14[4096] : (!llvm.ptr) -> !llvm.ptr, i32
    %19 = llvm.ptrtoint %18 : !llvm.ptr to i64
    %20 = llvm.call @malloc(%19) : (i64) -> !llvm.ptr
    %21 = llvm.insertvalue %20, %17[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %20, %21[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %13, %22[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %16, %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %16, %24[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %16, %25[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %15, %26[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = builtin.unrealized_conversion_cast %27 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<64x64xi32>
    linalg.fill ins(%12 : i32) outs(%28 : memref<64x64xi32>)
    %29 = llvm.ptrtoint %arg1 : !llvm.ptr to i64
    %30 = llvm.ptrtoint %arg8 : !llvm.ptr to i64
    %31 = llvm.ptrtoint %arg15 : !llvm.ptr to i64
    %32 = llvm.ptrtoint %20 : !llvm.ptr to i64
    "gemmini.intr.config_ex"(%11, %10) : (i64, i64) -> ()
    "gemmini.intr.config_st"(%8, %7) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%6, %9) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%5, %9) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%3, %4) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_bounds"(%2, %1) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%29, %30) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%32, %31) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%9, %9) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%9, %9) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%0, %2) : (i64, i64) -> ()
    "gemmini.intr.flush"(%2, %2) : (i64, i64) -> ()
    llvm.call @free(%20) : (!llvm.ptr) -> ()
    llvm.return
  }
}

