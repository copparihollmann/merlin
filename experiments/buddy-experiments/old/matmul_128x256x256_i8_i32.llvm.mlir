module {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @matmul_128x256x256_i8_i32(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64) {
    %0 = llvm.mlir.constant(256 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(128 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(68719738883 : i64) : i64
    %5 = llvm.mlir.constant(20672 : i64) : i64
    %6 = llvm.mlir.constant(82688 : i64) : i64
    %7 = llvm.mlir.constant(20576 : i64) : i64
    %8 = llvm.mlir.constant(82304 : i64) : i64
    %9 = llvm.mlir.constant(68719869955 : i64) : i64
    %10 = llvm.mlir.constant(20480 : i64) : i64
    %11 = llvm.mlir.constant(81920 : i64) : i64
    %12 = llvm.mlir.constant(68719738885 : i64) : i64
    %13 = llvm.mlir.constant(192 : i64) : i64
    %14 = llvm.mlir.constant(768 : i64) : i64
    %15 = llvm.mlir.constant(96 : i64) : i64
    %16 = llvm.mlir.constant(384 : i64) : i64
    %17 = llvm.mlir.constant(1 : i64) : i64
    %18 = llvm.mlir.constant(68719869957 : i64) : i64
    %19 = llvm.mlir.constant(0 : i64) : i64
    %20 = llvm.mlir.constant(4575657221409472785 : i64) : i64
    %21 = llvm.mlir.constant(1024 : i64) : i64
    %22 = llvm.mlir.constant(4575657221409472777 : i64) : i64
    %23 = llvm.mlir.constant(4575657221409472769 : i64) : i64
    %24 = llvm.mlir.constant(4575657221408424192 : i64) : i64
    %25 = llvm.mlir.constant(2 : i64) : i64
    %26 = llvm.mlir.constant(256 : i64) : i64
    %27 = llvm.mlir.constant(281474976710656 : i64) : i64
    %28 = llvm.mlir.constant(4575657221408489476 : i64) : i64
    %29 = llvm.mlir.constant(0 : i32) : i32
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.mlir.zero : !llvm.ptr
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.constant(256 : index) : i64
    %34 = llvm.mlir.constant(128 : index) : i64
    %35 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %36 = llvm.getelementptr %31[32768] : (!llvm.ptr) -> !llvm.ptr, i32
    %37 = llvm.ptrtoint %36 : !llvm.ptr to i64
    %38 = llvm.call @malloc(%37) : (i64) -> !llvm.ptr
    %39 = llvm.insertvalue %38, %35[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.insertvalue %38, %39[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.insertvalue %30, %40[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.insertvalue %34, %41[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.insertvalue %33, %42[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.insertvalue %33, %43[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.insertvalue %32, %44[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%3 : i64)
  ^bb1(%46: i64):  // 2 preds: ^bb0, ^bb5
    %47 = llvm.icmp "slt" %46, %2 : i64
    llvm.cond_br %47, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%3 : i64)
  ^bb3(%48: i64):  // 2 preds: ^bb2, ^bb4
    %49 = llvm.icmp "slt" %48, %0 : i64
    llvm.cond_br %49, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %50 = llvm.extractvalue %45[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.mlir.constant(256 : index) : i64
    %52 = llvm.mul %46, %51 : i64
    %53 = llvm.add %52, %48 : i64
    %54 = llvm.getelementptr %50[%53] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %29, %54 : i32, !llvm.ptr
    %55 = llvm.add %48, %1 : i64
    llvm.br ^bb3(%55 : i64)
  ^bb5:  // pred: ^bb3
    %56 = llvm.add %46, %1 : i64
    llvm.br ^bb1(%56 : i64)
  ^bb6:  // pred: ^bb1
    %57 = llvm.ptrtoint %arg1 : !llvm.ptr to i64
    %58 = llvm.ptrtoint %arg8 : !llvm.ptr to i64
    %59 = llvm.ptrtoint %arg15 : !llvm.ptr to i64
    %60 = llvm.ptrtoint %38 : !llvm.ptr to i64
    "gemmini.intr.config_ex"(%28, %27) : (i64, i64) -> ()
    "gemmini.intr.config_st"(%25, %24) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%23, %26) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%22, %26) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%20, %21) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_bounds"(%19, %18) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%57, %58) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%60, %59) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%26, %26) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%26, %26) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%17, %19) : (i64, i64) -> ()
    %61 = llvm.add %60, %16 : i64
    %62 = llvm.add %59, %15 : i64
    %63 = llvm.add %58, %15 : i64
    "gemmini.intr.loop_ws_config_bounds"(%19, %18) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%57, %63) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%61, %62) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%26, %26) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%26, %26) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%17, %19) : (i64, i64) -> ()
    %64 = llvm.add %60, %14 : i64
    %65 = llvm.add %59, %13 : i64
    %66 = llvm.add %58, %13 : i64
    "gemmini.intr.loop_ws_config_bounds"(%19, %12) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%57, %66) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%64, %65) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%26, %26) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%26, %26) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%17, %19) : (i64, i64) -> ()
    %67 = llvm.add %60, %11 : i64
    %68 = llvm.add %59, %10 : i64
    %69 = llvm.add %57, %10 : i64
    "gemmini.intr.loop_ws_config_bounds"(%19, %9) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%69, %58) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%67, %68) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%26, %26) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%26, %26) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%17, %19) : (i64, i64) -> ()
    %70 = llvm.add %60, %8 : i64
    %71 = llvm.add %59, %7 : i64
    %72 = llvm.add %57, %10 : i64
    %73 = llvm.add %58, %15 : i64
    "gemmini.intr.loop_ws_config_bounds"(%19, %9) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%72, %73) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%70, %71) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%26, %26) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%26, %26) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%17, %19) : (i64, i64) -> ()
    %74 = llvm.add %60, %6 : i64
    %75 = llvm.add %59, %5 : i64
    %76 = llvm.add %57, %10 : i64
    %77 = llvm.add %58, %13 : i64
    "gemmini.intr.loop_ws_config_bounds"(%19, %4) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%76, %77) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%74, %75) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%26, %26) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%26, %26) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%17, %19) : (i64, i64) -> ()
    "gemmini.intr.flush"(%19, %19) : (i64, i64) -> ()
    llvm.call @free(%38) : (!llvm.ptr) -> ()
    llvm.return
  }
}

