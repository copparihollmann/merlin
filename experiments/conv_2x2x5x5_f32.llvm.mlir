module {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @conv_2x2x5x5_f32(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr, %arg23: !llvm.ptr, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.mlir.constant(768 : i64) : i64
    %2 = llvm.mlir.constant(65539 : i64) : i64
    %3 = llvm.mlir.constant(844424930131968 : i64) : i64
    %4 = llvm.mlir.constant(844437815164928 : i64) : i64
    %5 = llvm.mlir.constant(562962838519810 : i64) : i64
    %6 = llvm.mlir.constant(844429225164800 : i64) : i64
    %7 = llvm.mlir.constant(4295163907 : i64) : i64
    %8 = llvm.mlir.constant(562958543683586 : i64) : i64
    %9 = llvm.mlir.constant(0 : i64) : i64
    %10 = llvm.mlir.constant(281474976710656 : i64) : i64
    %11 = llvm.mlir.constant(65540 : i64) : i64
    %12 = llvm.mlir.constant(4575657221408423938 : i64) : i64
    %13 = llvm.mlir.constant(2 : i64) : i64
    %14 = llvm.mlir.constant(9 : index) : i64
    %15 = llvm.mlir.constant(25 : index) : i64
    %16 = llvm.mlir.constant(3 : index) : i64
    %17 = llvm.mlir.constant(18 : index) : i64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.zero : !llvm.ptr
    %20 = llvm.mlir.constant(50 : index) : i64
    %21 = llvm.mlir.constant(10 : index) : i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.mlir.constant(5 : index) : i64
    %24 = llvm.mlir.constant(2 : index) : i64
    %25 = llvm.getelementptr %19[100] : (!llvm.ptr) -> !llvm.ptr, f32
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.call @malloc(%26) : (i64) -> !llvm.ptr
    %28 = llvm.getelementptr %19[36] : (!llvm.ptr) -> !llvm.ptr, f32
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.call @malloc(%29) : (i64) -> !llvm.ptr
    %31 = llvm.getelementptr %19[2] : (!llvm.ptr) -> !llvm.ptr, f32
    %32 = llvm.ptrtoint %31 : !llvm.ptr to i64
    %33 = llvm.call @malloc(%32) : (i64) -> !llvm.ptr
    %34 = llvm.getelementptr %19[36] : (!llvm.ptr) -> !llvm.ptr, f32
    %35 = llvm.ptrtoint %34 : !llvm.ptr to i64
    %36 = llvm.call @malloc(%35) : (i64) -> !llvm.ptr
    llvm.br ^bb1(%18 : i64)
  ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb11
    %38 = llvm.icmp "slt" %37, %24 : i64
    llvm.cond_br %38, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%18 : i64)
  ^bb3(%39: i64):  // 2 preds: ^bb2, ^bb10
    %40 = llvm.icmp "slt" %39, %24 : i64
    llvm.cond_br %40, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%18 : i64)
  ^bb5(%41: i64):  // 2 preds: ^bb4, ^bb9
    %42 = llvm.icmp "slt" %41, %23 : i64
    llvm.cond_br %42, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    llvm.br ^bb7(%18 : i64)
  ^bb7(%43: i64):  // 2 preds: ^bb6, ^bb8
    %44 = llvm.icmp "slt" %43, %23 : i64
    llvm.cond_br %44, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %45 = llvm.mul %37, %20 : i64
    %46 = llvm.mul %39, %15 : i64
    %47 = llvm.add %45, %46 : i64
    %48 = llvm.mul %41, %23 : i64
    %49 = llvm.add %47, %48 : i64
    %50 = llvm.add %49, %43 : i64
    %51 = llvm.getelementptr %arg1[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %52 = llvm.load %51 : !llvm.ptr -> f32
    %53 = llvm.mul %37, %20 : i64
    %54 = llvm.mul %41, %21 : i64
    %55 = llvm.add %53, %54 : i64
    %56 = llvm.mul %43, %24 : i64
    %57 = llvm.add %55, %56 : i64
    %58 = llvm.add %57, %39 : i64
    %59 = llvm.getelementptr %27[%58] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %52, %59 : f32, !llvm.ptr
    %60 = llvm.add %43, %22 : i64
    llvm.br ^bb7(%60 : i64)
  ^bb9:  // pred: ^bb7
    %61 = llvm.add %41, %22 : i64
    llvm.br ^bb5(%61 : i64)
  ^bb10:  // pred: ^bb5
    %62 = llvm.add %39, %22 : i64
    llvm.br ^bb3(%62 : i64)
  ^bb11:  // pred: ^bb3
    %63 = llvm.add %37, %22 : i64
    llvm.br ^bb1(%63 : i64)
  ^bb12:  // pred: ^bb1
    llvm.br ^bb13(%18 : i64)
  ^bb13(%64: i64):  // 2 preds: ^bb12, ^bb23
    %65 = llvm.icmp "slt" %64, %24 : i64
    llvm.cond_br %65, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    llvm.br ^bb15(%18 : i64)
  ^bb15(%66: i64):  // 2 preds: ^bb14, ^bb22
    %67 = llvm.icmp "slt" %66, %24 : i64
    llvm.cond_br %67, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    llvm.br ^bb17(%18 : i64)
  ^bb17(%68: i64):  // 2 preds: ^bb16, ^bb21
    %69 = llvm.icmp "slt" %68, %16 : i64
    llvm.cond_br %69, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    llvm.br ^bb19(%18 : i64)
  ^bb19(%70: i64):  // 2 preds: ^bb18, ^bb20
    %71 = llvm.icmp "slt" %70, %16 : i64
    llvm.cond_br %71, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %72 = llvm.mul %68, %16 : i64
    %73 = llvm.mul %72, %24 : i64
    %74 = llvm.mul %70, %24 : i64
    %75 = llvm.add %73, %74 : i64
    %76 = llvm.add %75, %66 : i64
    %77 = llvm.mul %64, %17 : i64
    %78 = llvm.mul %66, %14 : i64
    %79 = llvm.add %77, %78 : i64
    %80 = llvm.mul %68, %16 : i64
    %81 = llvm.add %79, %80 : i64
    %82 = llvm.add %81, %70 : i64
    %83 = llvm.getelementptr %arg12[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %84 = llvm.load %83 : !llvm.ptr -> f32
    %85 = llvm.mul %76, %24 : i64
    %86 = llvm.add %85, %64 : i64
    %87 = llvm.getelementptr %30[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %84, %87 : f32, !llvm.ptr
    %88 = llvm.add %70, %22 : i64
    llvm.br ^bb19(%88 : i64)
  ^bb21:  // pred: ^bb19
    %89 = llvm.add %68, %22 : i64
    llvm.br ^bb17(%89 : i64)
  ^bb22:  // pred: ^bb17
    %90 = llvm.add %66, %22 : i64
    llvm.br ^bb15(%90 : i64)
  ^bb23:  // pred: ^bb15
    %91 = llvm.add %64, %22 : i64
    llvm.br ^bb13(%91 : i64)
  ^bb24:  // pred: ^bb13
    %92 = llvm.ptrtoint %27 : !llvm.ptr to i64
    %93 = llvm.ptrtoint %36 : !llvm.ptr to i64
    %94 = llvm.ptrtoint %33 : !llvm.ptr to i64
    %95 = llvm.ptrtoint %30 : !llvm.ptr to i64
    "gemmini.intr.config_st"(%13, %12) : (i64, i64) -> ()
    "gemmini.intr.config_ex"(%11, %10) : (i64, i64) -> ()
    "gemmini.intr.loop_conv_ws_config1"(%8, %7) : (i64, i64) -> ()
    "gemmini.intr.loop_conv_ws_config2"(%6, %5) : (i64, i64) -> ()
    "gemmini.intr.loop_conv_ws_config3"(%4, %9) : (i64, i64) -> ()
    "gemmini.intr.loop_conv_ws_config4"(%3, %2) : (i64, i64) -> ()
    "gemmini.intr.loop_conv_ws_config5"(%95, %93) : (i64, i64) -> ()
    "gemmini.intr.loop_conv_ws_config6"(%94, %92) : (i64, i64) -> ()
    "gemmini.intr.loop_conv_ws"(%1, %0) : (i64, i64) -> ()
    "gemmini.intr.flush"(%9, %9) : (i64, i64) -> ()
    llvm.br ^bb25(%18 : i64)
  ^bb25(%96: i64):  // 2 preds: ^bb24, ^bb35
    %97 = llvm.icmp "slt" %96, %24 : i64
    llvm.cond_br %97, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%18 : i64)
  ^bb27(%98: i64):  // 2 preds: ^bb26, ^bb34
    %99 = llvm.icmp "slt" %98, %24 : i64
    llvm.cond_br %99, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    llvm.br ^bb29(%18 : i64)
  ^bb29(%100: i64):  // 2 preds: ^bb28, ^bb33
    %101 = llvm.icmp "slt" %100, %16 : i64
    llvm.cond_br %101, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    llvm.br ^bb31(%18 : i64)
  ^bb31(%102: i64):  // 2 preds: ^bb30, ^bb32
    %103 = llvm.icmp "slt" %102, %16 : i64
    llvm.cond_br %103, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %104 = llvm.mul %96, %16 : i64
    %105 = llvm.mul %104, %16 : i64
    %106 = llvm.mul %100, %16 : i64
    %107 = llvm.add %105, %106 : i64
    %108 = llvm.add %107, %102 : i64
    %109 = llvm.mul %108, %24 : i64
    %110 = llvm.add %109, %98 : i64
    %111 = llvm.getelementptr %36[%110] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %112 = llvm.load %111 : !llvm.ptr -> f32
    %113 = llvm.mul %96, %17 : i64
    %114 = llvm.mul %98, %14 : i64
    %115 = llvm.add %113, %114 : i64
    %116 = llvm.mul %100, %16 : i64
    %117 = llvm.add %115, %116 : i64
    %118 = llvm.add %117, %102 : i64
    %119 = llvm.getelementptr %arg23[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %112, %119 : f32, !llvm.ptr
    %120 = llvm.add %102, %22 : i64
    llvm.br ^bb31(%120 : i64)
  ^bb33:  // pred: ^bb31
    %121 = llvm.add %100, %22 : i64
    llvm.br ^bb29(%121 : i64)
  ^bb34:  // pred: ^bb29
    %122 = llvm.add %98, %22 : i64
    llvm.br ^bb27(%122 : i64)
  ^bb35:  // pred: ^bb27
    %123 = llvm.add %96, %22 : i64
    llvm.br ^bb25(%123 : i64)
  ^bb36:  // pred: ^bb25
    llvm.call @free(%27) : (!llvm.ptr) -> ()
    llvm.call @free(%30) : (!llvm.ptr) -> ()
    llvm.call @free(%36) : (!llvm.ptr) -> ()
    llvm.call @free(%33) : (!llvm.ptr) -> ()
    llvm.return
  }
}

