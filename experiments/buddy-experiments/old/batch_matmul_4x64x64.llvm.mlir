module {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @batch_matmul_4x64x64(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: !llvm.ptr, %arg19: !llvm.ptr, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64) {
    %0 = llvm.mlir.constant(64 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(12288 : index) : i64
    %5 = llvm.mlir.constant(8192 : index) : i64
    %6 = llvm.mlir.constant(1 : i64) : i64
    %7 = llvm.mlir.constant(17180131332 : i64) : i64
    %8 = llvm.mlir.constant(0 : i64) : i64
    %9 = llvm.mlir.constant(4575657221409472785 : i64) : i64
    %10 = llvm.mlir.constant(256 : i64) : i64
    %11 = llvm.mlir.constant(4575657221409472777 : i64) : i64
    %12 = llvm.mlir.constant(4575657221409472769 : i64) : i64
    %13 = llvm.mlir.constant(4575657221408424000 : i64) : i64
    %14 = llvm.mlir.constant(2 : i64) : i64
    %15 = llvm.mlir.constant(64 : i64) : i64
    %16 = llvm.mlir.constant(281474976710656 : i64) : i64
    %17 = llvm.mlir.constant(4575657221408489476 : i64) : i64
    %18 = llvm.mlir.constant(0 : i32) : i32
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.mlir.zero : !llvm.ptr
    %22 = llvm.mlir.constant(4096 : index) : i64
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.mlir.constant(64 : index) : i64
    %25 = llvm.mlir.constant(0 : i8) : i8
    %26 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %27 = llvm.insertvalue %arg18, %26[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.insertvalue %arg19, %27[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.insertvalue %arg20, %28[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.insertvalue %arg21, %29[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %31 = llvm.insertvalue %arg24, %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.insertvalue %arg22, %31[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %33 = llvm.insertvalue %arg25, %32[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.insertvalue %arg23, %33[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %35 = llvm.insertvalue %arg26, %34[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.insertvalue %arg9, %26[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %37 = llvm.insertvalue %arg10, %36[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.insertvalue %arg11, %37[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %39 = llvm.insertvalue %arg12, %38[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %40 = llvm.insertvalue %arg15, %39[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %41 = llvm.insertvalue %arg13, %40[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %42 = llvm.insertvalue %arg16, %41[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.insertvalue %arg14, %42[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %44 = llvm.insertvalue %arg17, %43[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %45 = llvm.insertvalue %arg0, %26[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %46 = llvm.insertvalue %arg1, %45[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.insertvalue %arg2, %46[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %48 = llvm.insertvalue %arg3, %47[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %49 = llvm.insertvalue %arg6, %48[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.insertvalue %arg4, %49[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %51 = llvm.insertvalue %arg7, %50[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.insertvalue %arg5, %51[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.insertvalue %arg8, %52[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.br ^bb1(%3 : i64)
  ^bb1(%54: i64):  // 2 preds: ^bb0, ^bb8
    %55 = llvm.icmp "slt" %54, %2 : i64
    llvm.cond_br %55, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%3 : i64)
  ^bb3(%56: i64):  // 2 preds: ^bb2, ^bb7
    %57 = llvm.icmp "slt" %56, %0 : i64
    llvm.cond_br %57, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%3 : i64)
  ^bb5(%58: i64):  // 2 preds: ^bb4, ^bb6
    %59 = llvm.icmp "slt" %58, %0 : i64
    llvm.cond_br %59, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %60 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.mlir.constant(4096 : index) : i64
    %62 = llvm.mul %54, %61 : i64
    %63 = llvm.mlir.constant(64 : index) : i64
    %64 = llvm.mul %56, %63 : i64
    %65 = llvm.add %62, %64 : i64
    %66 = llvm.add %65, %58 : i64
    %67 = llvm.getelementptr %60[%66] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %25, %67 : i8, !llvm.ptr
    %68 = llvm.add %58, %1 : i64
    llvm.br ^bb5(%68 : i64)
  ^bb7:  // pred: ^bb5
    %69 = llvm.add %56, %1 : i64
    llvm.br ^bb3(%69 : i64)
  ^bb8:  // pred: ^bb3
    %70 = llvm.add %54, %1 : i64
    llvm.br ^bb1(%70 : i64)
  ^bb9:  // pred: ^bb1
    %71 = llvm.extractvalue %53[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %72 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %74 = llvm.insertvalue %71, %73[0] : !llvm.struct<(ptr, ptr, i64)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr, ptr, i64)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr, ptr, i64)> 
    %78 = llvm.extractvalue %53[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %79 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %81 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %83 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %85 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %86 = llvm.extractvalue %77[0] : !llvm.struct<(ptr, ptr, i64)> 
    %87 = llvm.extractvalue %77[1] : !llvm.struct<(ptr, ptr, i64)> 
    %88 = llvm.insertvalue %86, %85[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.insertvalue %87, %88[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.insertvalue %90, %89[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %92 = llvm.mlir.constant(64 : index) : i64
    %93 = llvm.insertvalue %92, %91[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %94 = llvm.mlir.constant(64 : index) : i64
    %95 = llvm.insertvalue %94, %93[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %96 = llvm.mlir.constant(64 : index) : i64
    %97 = llvm.insertvalue %96, %95[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.insertvalue %98, %97[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.extractvalue %44[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %101 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %103 = llvm.insertvalue %100, %102[0] : !llvm.struct<(ptr, ptr, i64)> 
    %104 = llvm.insertvalue %101, %103[1] : !llvm.struct<(ptr, ptr, i64)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.insertvalue %105, %104[2] : !llvm.struct<(ptr, ptr, i64)> 
    %107 = llvm.extractvalue %44[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %108 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %110 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %113 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %115 = llvm.extractvalue %106[0] : !llvm.struct<(ptr, ptr, i64)> 
    %116 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64)> 
    %117 = llvm.insertvalue %115, %114[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.insertvalue %116, %117[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.insertvalue %119, %118[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %121 = llvm.mlir.constant(64 : index) : i64
    %122 = llvm.insertvalue %121, %120[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.mlir.constant(64 : index) : i64
    %124 = llvm.insertvalue %123, %122[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %125 = llvm.mlir.constant(64 : index) : i64
    %126 = llvm.insertvalue %125, %124[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.insertvalue %127, %126[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %129 = llvm.extractvalue %35[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %132 = llvm.insertvalue %129, %131[0] : !llvm.struct<(ptr, ptr, i64)> 
    %133 = llvm.insertvalue %130, %132[1] : !llvm.struct<(ptr, ptr, i64)> 
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.insertvalue %134, %133[2] : !llvm.struct<(ptr, ptr, i64)> 
    %136 = llvm.extractvalue %35[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %137 = llvm.extractvalue %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.extractvalue %35[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.extractvalue %35[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.extractvalue %35[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %141 = llvm.extractvalue %35[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.extractvalue %35[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %144 = llvm.extractvalue %135[0] : !llvm.struct<(ptr, ptr, i64)> 
    %145 = llvm.extractvalue %135[1] : !llvm.struct<(ptr, ptr, i64)> 
    %146 = llvm.insertvalue %144, %143[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.insertvalue %145, %146[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.insertvalue %148, %147[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.mlir.constant(64 : index) : i64
    %151 = llvm.insertvalue %150, %149[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %152 = llvm.mlir.constant(64 : index) : i64
    %153 = llvm.insertvalue %152, %151[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %154 = llvm.mlir.constant(64 : index) : i64
    %155 = llvm.insertvalue %154, %153[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.insertvalue %156, %155[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.getelementptr %21[4096] : (!llvm.ptr) -> !llvm.ptr, i32
    %159 = llvm.ptrtoint %158 : !llvm.ptr to i64
    %160 = llvm.call @malloc(%159) : (i64) -> !llvm.ptr
    %161 = llvm.insertvalue %160, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %162 = llvm.insertvalue %160, %161[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %163 = llvm.insertvalue %19, %162[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.insertvalue %24, %163[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.insertvalue %24, %164[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.insertvalue %24, %165[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.insertvalue %23, %166[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb10(%3 : i64)
  ^bb10(%168: i64):  // 2 preds: ^bb9, ^bb14
    %169 = llvm.icmp "slt" %168, %0 : i64
    llvm.cond_br %169, ^bb11, ^bb15
  ^bb11:  // pred: ^bb10
    llvm.br ^bb12(%3 : i64)
  ^bb12(%170: i64):  // 2 preds: ^bb11, ^bb13
    %171 = llvm.icmp "slt" %170, %0 : i64
    llvm.cond_br %171, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %172 = llvm.extractvalue %167[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %173 = llvm.mlir.constant(64 : index) : i64
    %174 = llvm.mul %168, %173 : i64
    %175 = llvm.add %174, %170 : i64
    %176 = llvm.getelementptr %172[%175] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %18, %176 : i32, !llvm.ptr
    %177 = llvm.add %170, %1 : i64
    llvm.br ^bb12(%177 : i64)
  ^bb14:  // pred: ^bb12
    %178 = llvm.add %168, %1 : i64
    llvm.br ^bb10(%178 : i64)
  ^bb15:  // pred: ^bb10
    %179 = llvm.extractvalue %99[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %180 = llvm.ptrtoint %179 : !llvm.ptr to i64
    %181 = llvm.extractvalue %128[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %182 = llvm.ptrtoint %181 : !llvm.ptr to i64
    %183 = llvm.extractvalue %157[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %184 = llvm.ptrtoint %183 : !llvm.ptr to i64
    %185 = llvm.ptrtoint %160 : !llvm.ptr to i64
    "gemmini.intr.config_ex"(%17, %16) : (i64, i64) -> ()
    "gemmini.intr.config_st"(%14, %13) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%12, %15) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%11, %15) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%9, %10) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_bounds"(%8, %7) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%180, %182) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%185, %184) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%15, %15) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%15, %15) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%6, %8) : (i64, i64) -> ()
    "gemmini.intr.flush"(%8, %8) : (i64, i64) -> ()
    llvm.call @free(%160) : (!llvm.ptr) -> ()
    %186 = llvm.extractvalue %53[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %187 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %188 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %189 = llvm.insertvalue %186, %188[0] : !llvm.struct<(ptr, ptr, i64)> 
    %190 = llvm.insertvalue %187, %189[1] : !llvm.struct<(ptr, ptr, i64)> 
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.insertvalue %191, %190[2] : !llvm.struct<(ptr, ptr, i64)> 
    %193 = llvm.extractvalue %53[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %194 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %195 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %196 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %197 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %198 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %199 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %200 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %201 = llvm.extractvalue %192[0] : !llvm.struct<(ptr, ptr, i64)> 
    %202 = llvm.extractvalue %192[1] : !llvm.struct<(ptr, ptr, i64)> 
    %203 = llvm.insertvalue %201, %200[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %204 = llvm.insertvalue %202, %203[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %205 = llvm.mlir.constant(4096 : index) : i64
    %206 = llvm.insertvalue %205, %204[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %207 = llvm.mlir.constant(64 : index) : i64
    %208 = llvm.insertvalue %207, %206[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %209 = llvm.mlir.constant(64 : index) : i64
    %210 = llvm.insertvalue %209, %208[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %211 = llvm.mlir.constant(64 : index) : i64
    %212 = llvm.insertvalue %211, %210[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.insertvalue %213, %212[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %215 = llvm.extractvalue %44[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %216 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %217 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %218 = llvm.insertvalue %215, %217[0] : !llvm.struct<(ptr, ptr, i64)> 
    %219 = llvm.insertvalue %216, %218[1] : !llvm.struct<(ptr, ptr, i64)> 
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.insertvalue %220, %219[2] : !llvm.struct<(ptr, ptr, i64)> 
    %222 = llvm.extractvalue %44[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %223 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %224 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %225 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %226 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %227 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %228 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %229 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %230 = llvm.extractvalue %221[0] : !llvm.struct<(ptr, ptr, i64)> 
    %231 = llvm.extractvalue %221[1] : !llvm.struct<(ptr, ptr, i64)> 
    %232 = llvm.insertvalue %230, %229[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %233 = llvm.insertvalue %231, %232[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %234 = llvm.mlir.constant(4096 : index) : i64
    %235 = llvm.insertvalue %234, %233[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %236 = llvm.mlir.constant(64 : index) : i64
    %237 = llvm.insertvalue %236, %235[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %238 = llvm.mlir.constant(64 : index) : i64
    %239 = llvm.insertvalue %238, %237[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %240 = llvm.mlir.constant(64 : index) : i64
    %241 = llvm.insertvalue %240, %239[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.insertvalue %242, %241[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %244 = llvm.extractvalue %35[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %245 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %246 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %247 = llvm.insertvalue %244, %246[0] : !llvm.struct<(ptr, ptr, i64)> 
    %248 = llvm.insertvalue %245, %247[1] : !llvm.struct<(ptr, ptr, i64)> 
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.insertvalue %249, %248[2] : !llvm.struct<(ptr, ptr, i64)> 
    %251 = llvm.extractvalue %35[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %252 = llvm.extractvalue %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %253 = llvm.extractvalue %35[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %254 = llvm.extractvalue %35[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %255 = llvm.extractvalue %35[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %256 = llvm.extractvalue %35[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %257 = llvm.extractvalue %35[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %258 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %259 = llvm.extractvalue %250[0] : !llvm.struct<(ptr, ptr, i64)> 
    %260 = llvm.extractvalue %250[1] : !llvm.struct<(ptr, ptr, i64)> 
    %261 = llvm.insertvalue %259, %258[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %262 = llvm.insertvalue %260, %261[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %263 = llvm.mlir.constant(4096 : index) : i64
    %264 = llvm.insertvalue %263, %262[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %265 = llvm.mlir.constant(64 : index) : i64
    %266 = llvm.insertvalue %265, %264[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %267 = llvm.mlir.constant(64 : index) : i64
    %268 = llvm.insertvalue %267, %266[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %269 = llvm.mlir.constant(64 : index) : i64
    %270 = llvm.insertvalue %269, %268[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.insertvalue %271, %270[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %273 = llvm.getelementptr %21[4096] : (!llvm.ptr) -> !llvm.ptr, i32
    %274 = llvm.ptrtoint %273 : !llvm.ptr to i64
    %275 = llvm.call @malloc(%274) : (i64) -> !llvm.ptr
    %276 = llvm.insertvalue %275, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %277 = llvm.insertvalue %275, %276[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %278 = llvm.insertvalue %19, %277[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %279 = llvm.insertvalue %24, %278[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %280 = llvm.insertvalue %24, %279[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %281 = llvm.insertvalue %24, %280[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %282 = llvm.insertvalue %23, %281[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb16(%3 : i64)
  ^bb16(%283: i64):  // 2 preds: ^bb15, ^bb20
    %284 = llvm.icmp "slt" %283, %0 : i64
    llvm.cond_br %284, ^bb17, ^bb21
  ^bb17:  // pred: ^bb16
    llvm.br ^bb18(%3 : i64)
  ^bb18(%285: i64):  // 2 preds: ^bb17, ^bb19
    %286 = llvm.icmp "slt" %285, %0 : i64
    llvm.cond_br %286, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %287 = llvm.extractvalue %282[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %288 = llvm.mlir.constant(64 : index) : i64
    %289 = llvm.mul %283, %288 : i64
    %290 = llvm.add %289, %285 : i64
    %291 = llvm.getelementptr %287[%290] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %18, %291 : i32, !llvm.ptr
    %292 = llvm.add %285, %1 : i64
    llvm.br ^bb18(%292 : i64)
  ^bb20:  // pred: ^bb18
    %293 = llvm.add %283, %1 : i64
    llvm.br ^bb16(%293 : i64)
  ^bb21:  // pred: ^bb16
    %294 = llvm.extractvalue %214[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %295 = llvm.ptrtoint %294 : !llvm.ptr to i64
    %296 = llvm.add %295, %22 : i64
    %297 = llvm.extractvalue %243[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %298 = llvm.ptrtoint %297 : !llvm.ptr to i64
    %299 = llvm.add %298, %22 : i64
    %300 = llvm.extractvalue %272[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %301 = llvm.ptrtoint %300 : !llvm.ptr to i64
    %302 = llvm.add %301, %22 : i64
    %303 = llvm.ptrtoint %275 : !llvm.ptr to i64
    "gemmini.intr.config_ex"(%17, %16) : (i64, i64) -> ()
    "gemmini.intr.config_st"(%14, %13) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%12, %15) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%11, %15) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%9, %10) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_bounds"(%8, %7) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%296, %299) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%303, %302) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%15, %15) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%15, %15) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%6, %8) : (i64, i64) -> ()
    "gemmini.intr.flush"(%8, %8) : (i64, i64) -> ()
    llvm.call @free(%275) : (!llvm.ptr) -> ()
    %304 = llvm.extractvalue %53[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %305 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %306 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %307 = llvm.insertvalue %304, %306[0] : !llvm.struct<(ptr, ptr, i64)> 
    %308 = llvm.insertvalue %305, %307[1] : !llvm.struct<(ptr, ptr, i64)> 
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.insertvalue %309, %308[2] : !llvm.struct<(ptr, ptr, i64)> 
    %311 = llvm.extractvalue %53[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %312 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %313 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %314 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %315 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %316 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %317 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %318 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %319 = llvm.extractvalue %310[0] : !llvm.struct<(ptr, ptr, i64)> 
    %320 = llvm.extractvalue %310[1] : !llvm.struct<(ptr, ptr, i64)> 
    %321 = llvm.insertvalue %319, %318[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %322 = llvm.insertvalue %320, %321[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %323 = llvm.mlir.constant(8192 : index) : i64
    %324 = llvm.insertvalue %323, %322[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %325 = llvm.mlir.constant(64 : index) : i64
    %326 = llvm.insertvalue %325, %324[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %327 = llvm.mlir.constant(64 : index) : i64
    %328 = llvm.insertvalue %327, %326[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %329 = llvm.mlir.constant(64 : index) : i64
    %330 = llvm.insertvalue %329, %328[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.insertvalue %331, %330[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %333 = llvm.extractvalue %44[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %334 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %335 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %336 = llvm.insertvalue %333, %335[0] : !llvm.struct<(ptr, ptr, i64)> 
    %337 = llvm.insertvalue %334, %336[1] : !llvm.struct<(ptr, ptr, i64)> 
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.insertvalue %338, %337[2] : !llvm.struct<(ptr, ptr, i64)> 
    %340 = llvm.extractvalue %44[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %341 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %342 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %343 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %344 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %345 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %346 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %347 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %348 = llvm.extractvalue %339[0] : !llvm.struct<(ptr, ptr, i64)> 
    %349 = llvm.extractvalue %339[1] : !llvm.struct<(ptr, ptr, i64)> 
    %350 = llvm.insertvalue %348, %347[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %351 = llvm.insertvalue %349, %350[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %352 = llvm.mlir.constant(8192 : index) : i64
    %353 = llvm.insertvalue %352, %351[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %354 = llvm.mlir.constant(64 : index) : i64
    %355 = llvm.insertvalue %354, %353[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %356 = llvm.mlir.constant(64 : index) : i64
    %357 = llvm.insertvalue %356, %355[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %358 = llvm.mlir.constant(64 : index) : i64
    %359 = llvm.insertvalue %358, %357[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.insertvalue %360, %359[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %362 = llvm.extractvalue %35[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %363 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %364 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %365 = llvm.insertvalue %362, %364[0] : !llvm.struct<(ptr, ptr, i64)> 
    %366 = llvm.insertvalue %363, %365[1] : !llvm.struct<(ptr, ptr, i64)> 
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.insertvalue %367, %366[2] : !llvm.struct<(ptr, ptr, i64)> 
    %369 = llvm.extractvalue %35[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %370 = llvm.extractvalue %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %371 = llvm.extractvalue %35[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %372 = llvm.extractvalue %35[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %373 = llvm.extractvalue %35[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %374 = llvm.extractvalue %35[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %375 = llvm.extractvalue %35[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %376 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %377 = llvm.extractvalue %368[0] : !llvm.struct<(ptr, ptr, i64)> 
    %378 = llvm.extractvalue %368[1] : !llvm.struct<(ptr, ptr, i64)> 
    %379 = llvm.insertvalue %377, %376[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %380 = llvm.insertvalue %378, %379[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %381 = llvm.mlir.constant(8192 : index) : i64
    %382 = llvm.insertvalue %381, %380[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %383 = llvm.mlir.constant(64 : index) : i64
    %384 = llvm.insertvalue %383, %382[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %385 = llvm.mlir.constant(64 : index) : i64
    %386 = llvm.insertvalue %385, %384[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %387 = llvm.mlir.constant(64 : index) : i64
    %388 = llvm.insertvalue %387, %386[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.insertvalue %389, %388[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %391 = llvm.getelementptr %21[4096] : (!llvm.ptr) -> !llvm.ptr, i32
    %392 = llvm.ptrtoint %391 : !llvm.ptr to i64
    %393 = llvm.call @malloc(%392) : (i64) -> !llvm.ptr
    %394 = llvm.insertvalue %393, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %395 = llvm.insertvalue %393, %394[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %396 = llvm.insertvalue %19, %395[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %397 = llvm.insertvalue %24, %396[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %398 = llvm.insertvalue %24, %397[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %399 = llvm.insertvalue %24, %398[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %400 = llvm.insertvalue %23, %399[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb22(%3 : i64)
  ^bb22(%401: i64):  // 2 preds: ^bb21, ^bb26
    %402 = llvm.icmp "slt" %401, %0 : i64
    llvm.cond_br %402, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    llvm.br ^bb24(%3 : i64)
  ^bb24(%403: i64):  // 2 preds: ^bb23, ^bb25
    %404 = llvm.icmp "slt" %403, %0 : i64
    llvm.cond_br %404, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %405 = llvm.extractvalue %400[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %406 = llvm.mlir.constant(64 : index) : i64
    %407 = llvm.mul %401, %406 : i64
    %408 = llvm.add %407, %403 : i64
    %409 = llvm.getelementptr %405[%408] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %18, %409 : i32, !llvm.ptr
    %410 = llvm.add %403, %1 : i64
    llvm.br ^bb24(%410 : i64)
  ^bb26:  // pred: ^bb24
    %411 = llvm.add %401, %1 : i64
    llvm.br ^bb22(%411 : i64)
  ^bb27:  // pred: ^bb22
    %412 = llvm.extractvalue %332[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %413 = llvm.ptrtoint %412 : !llvm.ptr to i64
    %414 = llvm.add %413, %5 : i64
    %415 = llvm.extractvalue %361[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %416 = llvm.ptrtoint %415 : !llvm.ptr to i64
    %417 = llvm.add %416, %5 : i64
    %418 = llvm.extractvalue %390[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %419 = llvm.ptrtoint %418 : !llvm.ptr to i64
    %420 = llvm.add %419, %5 : i64
    %421 = llvm.ptrtoint %393 : !llvm.ptr to i64
    "gemmini.intr.config_ex"(%17, %16) : (i64, i64) -> ()
    "gemmini.intr.config_st"(%14, %13) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%12, %15) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%11, %15) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%9, %10) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_bounds"(%8, %7) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%414, %417) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%421, %420) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%15, %15) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%15, %15) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%6, %8) : (i64, i64) -> ()
    "gemmini.intr.flush"(%8, %8) : (i64, i64) -> ()
    llvm.call @free(%393) : (!llvm.ptr) -> ()
    %422 = llvm.extractvalue %53[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %423 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %424 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %425 = llvm.insertvalue %422, %424[0] : !llvm.struct<(ptr, ptr, i64)> 
    %426 = llvm.insertvalue %423, %425[1] : !llvm.struct<(ptr, ptr, i64)> 
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.insertvalue %427, %426[2] : !llvm.struct<(ptr, ptr, i64)> 
    %429 = llvm.extractvalue %53[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %430 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %431 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %432 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %433 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %434 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %435 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %436 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %437 = llvm.extractvalue %428[0] : !llvm.struct<(ptr, ptr, i64)> 
    %438 = llvm.extractvalue %428[1] : !llvm.struct<(ptr, ptr, i64)> 
    %439 = llvm.insertvalue %437, %436[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %440 = llvm.insertvalue %438, %439[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %441 = llvm.mlir.constant(12288 : index) : i64
    %442 = llvm.insertvalue %441, %440[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %443 = llvm.mlir.constant(64 : index) : i64
    %444 = llvm.insertvalue %443, %442[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %445 = llvm.mlir.constant(64 : index) : i64
    %446 = llvm.insertvalue %445, %444[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %447 = llvm.mlir.constant(64 : index) : i64
    %448 = llvm.insertvalue %447, %446[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.insertvalue %449, %448[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %451 = llvm.extractvalue %44[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %452 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %453 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %454 = llvm.insertvalue %451, %453[0] : !llvm.struct<(ptr, ptr, i64)> 
    %455 = llvm.insertvalue %452, %454[1] : !llvm.struct<(ptr, ptr, i64)> 
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.insertvalue %456, %455[2] : !llvm.struct<(ptr, ptr, i64)> 
    %458 = llvm.extractvalue %44[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %459 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %460 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %461 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %462 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %463 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %464 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %465 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %466 = llvm.extractvalue %457[0] : !llvm.struct<(ptr, ptr, i64)> 
    %467 = llvm.extractvalue %457[1] : !llvm.struct<(ptr, ptr, i64)> 
    %468 = llvm.insertvalue %466, %465[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %469 = llvm.insertvalue %467, %468[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %470 = llvm.mlir.constant(12288 : index) : i64
    %471 = llvm.insertvalue %470, %469[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %472 = llvm.mlir.constant(64 : index) : i64
    %473 = llvm.insertvalue %472, %471[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %474 = llvm.mlir.constant(64 : index) : i64
    %475 = llvm.insertvalue %474, %473[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %476 = llvm.mlir.constant(64 : index) : i64
    %477 = llvm.insertvalue %476, %475[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.insertvalue %478, %477[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %480 = llvm.extractvalue %35[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %481 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %482 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %483 = llvm.insertvalue %480, %482[0] : !llvm.struct<(ptr, ptr, i64)> 
    %484 = llvm.insertvalue %481, %483[1] : !llvm.struct<(ptr, ptr, i64)> 
    %485 = llvm.mlir.constant(0 : index) : i64
    %486 = llvm.insertvalue %485, %484[2] : !llvm.struct<(ptr, ptr, i64)> 
    %487 = llvm.extractvalue %35[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %488 = llvm.extractvalue %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %489 = llvm.extractvalue %35[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %490 = llvm.extractvalue %35[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %491 = llvm.extractvalue %35[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %492 = llvm.extractvalue %35[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %493 = llvm.extractvalue %35[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %494 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %495 = llvm.extractvalue %486[0] : !llvm.struct<(ptr, ptr, i64)> 
    %496 = llvm.extractvalue %486[1] : !llvm.struct<(ptr, ptr, i64)> 
    %497 = llvm.insertvalue %495, %494[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %498 = llvm.insertvalue %496, %497[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %499 = llvm.mlir.constant(12288 : index) : i64
    %500 = llvm.insertvalue %499, %498[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %501 = llvm.mlir.constant(64 : index) : i64
    %502 = llvm.insertvalue %501, %500[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %503 = llvm.mlir.constant(64 : index) : i64
    %504 = llvm.insertvalue %503, %502[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %505 = llvm.mlir.constant(64 : index) : i64
    %506 = llvm.insertvalue %505, %504[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %507 = llvm.mlir.constant(1 : index) : i64
    %508 = llvm.insertvalue %507, %506[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %509 = llvm.getelementptr %21[4096] : (!llvm.ptr) -> !llvm.ptr, i32
    %510 = llvm.ptrtoint %509 : !llvm.ptr to i64
    %511 = llvm.call @malloc(%510) : (i64) -> !llvm.ptr
    %512 = llvm.insertvalue %511, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %513 = llvm.insertvalue %511, %512[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %514 = llvm.insertvalue %19, %513[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %515 = llvm.insertvalue %24, %514[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %516 = llvm.insertvalue %24, %515[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %517 = llvm.insertvalue %24, %516[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %518 = llvm.insertvalue %23, %517[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb28(%3 : i64)
  ^bb28(%519: i64):  // 2 preds: ^bb27, ^bb32
    %520 = llvm.icmp "slt" %519, %0 : i64
    llvm.cond_br %520, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    llvm.br ^bb30(%3 : i64)
  ^bb30(%521: i64):  // 2 preds: ^bb29, ^bb31
    %522 = llvm.icmp "slt" %521, %0 : i64
    llvm.cond_br %522, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %523 = llvm.extractvalue %518[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %524 = llvm.mlir.constant(64 : index) : i64
    %525 = llvm.mul %519, %524 : i64
    %526 = llvm.add %525, %521 : i64
    %527 = llvm.getelementptr %523[%526] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %18, %527 : i32, !llvm.ptr
    %528 = llvm.add %521, %1 : i64
    llvm.br ^bb30(%528 : i64)
  ^bb32:  // pred: ^bb30
    %529 = llvm.add %519, %1 : i64
    llvm.br ^bb28(%529 : i64)
  ^bb33:  // pred: ^bb28
    %530 = llvm.extractvalue %450[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %531 = llvm.ptrtoint %530 : !llvm.ptr to i64
    %532 = llvm.add %531, %4 : i64
    %533 = llvm.extractvalue %479[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %534 = llvm.ptrtoint %533 : !llvm.ptr to i64
    %535 = llvm.add %534, %4 : i64
    %536 = llvm.extractvalue %508[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %537 = llvm.ptrtoint %536 : !llvm.ptr to i64
    %538 = llvm.add %537, %4 : i64
    %539 = llvm.ptrtoint %511 : !llvm.ptr to i64
    "gemmini.intr.config_ex"(%17, %16) : (i64, i64) -> ()
    "gemmini.intr.config_st"(%14, %13) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%12, %15) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%11, %15) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%9, %10) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_bounds"(%8, %7) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%532, %535) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%539, %538) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%15, %15) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%15, %15) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%6, %8) : (i64, i64) -> ()
    "gemmini.intr.flush"(%8, %8) : (i64, i64) -> ()
    llvm.call @free(%511) : (!llvm.ptr) -> ()
    llvm.return
  }
}

