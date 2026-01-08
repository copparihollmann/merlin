module {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @matmul(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64) {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(64 : index) : i64
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.constant(1 : i64) : i64
    %4 = llvm.mlir.constant(17180131332 : i64) : i64
    %5 = llvm.mlir.constant(0 : i64) : i64
    %6 = llvm.mlir.constant(4575657221409472785 : i64) : i64
    %7 = llvm.mlir.constant(256 : i64) : i64
    %8 = llvm.mlir.constant(4575657221409472777 : i64) : i64
    %9 = llvm.mlir.constant(4575657221409472769 : i64) : i64
    %10 = llvm.mlir.constant(4575657221408424000 : i64) : i64
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.mlir.constant(64 : i64) : i64
    %13 = llvm.mlir.constant(281474976710656 : i64) : i64
    %14 = llvm.mlir.constant(4575657221408489476 : i64) : i64
    %15 = llvm.mlir.constant(0 : i32) : i32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.zero : !llvm.ptr
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(64 : index) : i64
    %20 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.getelementptr %17[4096] : (!llvm.ptr) -> !llvm.ptr, i32
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr
    %24 = llvm.insertvalue %23, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %23, %24[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %16, %25[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %19, %26[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.insertvalue %19, %27[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %19, %28[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %18, %29[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%2 : i64)
  ^bb1(%31: i64):  // 2 preds: ^bb0, ^bb5
    %32 = llvm.icmp "slt" %31, %1 : i64
    llvm.cond_br %32, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%2 : i64)
  ^bb3(%33: i64):  // 2 preds: ^bb2, ^bb4
    %34 = llvm.icmp "slt" %33, %1 : i64
    llvm.cond_br %34, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %35 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.mlir.constant(64 : index) : i64
    %37 = llvm.mul %31, %36 : i64
    %38 = llvm.add %37, %33 : i64
    %39 = llvm.getelementptr %35[%38] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %15, %39 : i32, !llvm.ptr
    %40 = llvm.add %33, %0 : i64
    llvm.br ^bb3(%40 : i64)
  ^bb5:  // pred: ^bb3
    %41 = llvm.add %31, %0 : i64
    llvm.br ^bb1(%41 : i64)
  ^bb6:  // pred: ^bb1
    %42 = llvm.ptrtoint %arg1 : !llvm.ptr to i64
    %43 = llvm.ptrtoint %arg8 : !llvm.ptr to i64
    %44 = llvm.ptrtoint %arg15 : !llvm.ptr to i64
    %45 = llvm.ptrtoint %23 : !llvm.ptr to i64
    "gemmini.intr.config_ex"(%14, %13) : (i64, i64) -> ()
    "gemmini.intr.config_st"(%11, %10) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%9, %12) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%8, %12) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%6, %7) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_bounds"(%5, %4) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%42, %43) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%45, %44) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%12, %12) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%12, %12) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%3, %5) : (i64, i64) -> ()
    "gemmini.intr.flush"(%5, %5) : (i64, i64) -> ()
    llvm.call @free(%23) : (!llvm.ptr) -> ()
    llvm.return
  }
}

