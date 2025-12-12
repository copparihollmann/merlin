module {
  llvm.mlir.global internal constant @nl("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @frmt_spec("%d \00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main() -> i8 {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.constant(3 : index) : i64
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.addressof @nl : !llvm.ptr
    %4 = llvm.mlir.addressof @frmt_spec : !llvm.ptr
    %5 = llvm.mlir.constant(18 : index) : i64
    %6 = llvm.mlir.constant(1 : i64) : i64
    %7 = llvm.mlir.constant(4295032833 : i64) : i64
    %8 = llvm.mlir.constant(55835426829 : i64) : i64
    %9 = llvm.mlir.constant(0 : i64) : i64
    %10 = llvm.mlir.constant(4575657221409472785 : i64) : i64
    %11 = llvm.mlir.constant(12 : i64) : i64
    %12 = llvm.mlir.constant(4575657221409472777 : i64) : i64
    %13 = llvm.mlir.constant(4575657221409472769 : i64) : i64
    %14 = llvm.mlir.constant(4575657221408423939 : i64) : i64
    %15 = llvm.mlir.constant(2 : i64) : i64
    %16 = llvm.mlir.constant(3 : i64) : i64
    %17 = llvm.mlir.constant(281474976710656 : i64) : i64
    %18 = llvm.mlir.constant(4575657221408489476 : i64) : i64
    %19 = llvm.mlir.constant(0 : i32) : i32
    %20 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %23 = llvm.mlir.constant(0 : i8) : i8
    %24 = llvm.mlir.constant(1 : i8) : i8
    %25 = llvm.mlir.constant(2 : i8) : i8
    %26 = llvm.mlir.constant(3 : index) : i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.constant(9 : index) : i64
    %29 = llvm.mlir.zero : !llvm.ptr
    %30 = llvm.getelementptr %29[27] : (!llvm.ptr) -> !llvm.ptr, i8
    %31 = llvm.ptrtoint %30 : !llvm.ptr to i64
    %32 = llvm.call @malloc(%31) : (i64) -> !llvm.ptr
    %33 = llvm.insertvalue %32, %22[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.insertvalue %32, %33[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %35 = llvm.insertvalue %21, %34[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.insertvalue %26, %35[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %37 = llvm.insertvalue %26, %36[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.insertvalue %26, %37[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %39 = llvm.insertvalue %28, %38[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %40 = llvm.insertvalue %26, %39[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %41 = llvm.insertvalue %27, %40[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %42 = llvm.getelementptr %29[27] : (!llvm.ptr) -> !llvm.ptr, i8
    %43 = llvm.ptrtoint %42 : !llvm.ptr to i64
    %44 = llvm.call @malloc(%43) : (i64) -> !llvm.ptr
    %45 = llvm.insertvalue %44, %22[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %46 = llvm.insertvalue %44, %45[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.insertvalue %21, %46[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %48 = llvm.insertvalue %26, %47[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %49 = llvm.insertvalue %26, %48[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.insertvalue %26, %49[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %51 = llvm.insertvalue %28, %50[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.insertvalue %26, %51[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.insertvalue %27, %52[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.getelementptr %29[27] : (!llvm.ptr) -> !llvm.ptr, i8
    %55 = llvm.ptrtoint %54 : !llvm.ptr to i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr
    %57 = llvm.insertvalue %56, %22[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.insertvalue %56, %57[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %59 = llvm.insertvalue %21, %58[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.insertvalue %26, %59[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.insertvalue %26, %60[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %62 = llvm.insertvalue %26, %61[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.insertvalue %28, %62[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.insertvalue %26, %63[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.insertvalue %27, %64[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.br ^bb1(%2 : i64)
  ^bb1(%66: i64):  // 2 preds: ^bb0, ^bb8
    %67 = llvm.icmp "slt" %66, %1 : i64
    llvm.cond_br %67, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%2 : i64)
  ^bb3(%68: i64):  // 2 preds: ^bb2, ^bb7
    %69 = llvm.icmp "slt" %68, %1 : i64
    llvm.cond_br %69, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%2 : i64)
  ^bb5(%70: i64):  // 2 preds: ^bb4, ^bb6
    %71 = llvm.icmp "slt" %70, %1 : i64
    llvm.cond_br %71, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %72 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.mlir.constant(9 : index) : i64
    %74 = llvm.mul %66, %73 : i64
    %75 = llvm.mlir.constant(3 : index) : i64
    %76 = llvm.mul %68, %75 : i64
    %77 = llvm.add %74, %76 : i64
    %78 = llvm.add %77, %70 : i64
    %79 = llvm.getelementptr %72[%78] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %24, %79 : i8, !llvm.ptr
    %80 = llvm.add %70, %0 : i64
    llvm.br ^bb5(%80 : i64)
  ^bb7:  // pred: ^bb5
    %81 = llvm.add %68, %0 : i64
    llvm.br ^bb3(%81 : i64)
  ^bb8:  // pred: ^bb3
    %82 = llvm.add %66, %0 : i64
    llvm.br ^bb1(%82 : i64)
  ^bb9:  // pred: ^bb1
    llvm.br ^bb10(%2 : i64)
  ^bb10(%83: i64):  // 2 preds: ^bb9, ^bb17
    %84 = llvm.icmp "slt" %83, %1 : i64
    llvm.cond_br %84, ^bb11, ^bb18
  ^bb11:  // pred: ^bb10
    llvm.br ^bb12(%2 : i64)
  ^bb12(%85: i64):  // 2 preds: ^bb11, ^bb16
    %86 = llvm.icmp "slt" %85, %1 : i64
    llvm.cond_br %86, ^bb13, ^bb17
  ^bb13:  // pred: ^bb12
    llvm.br ^bb14(%2 : i64)
  ^bb14(%87: i64):  // 2 preds: ^bb13, ^bb15
    %88 = llvm.icmp "slt" %87, %1 : i64
    llvm.cond_br %88, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %89 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.mlir.constant(9 : index) : i64
    %91 = llvm.mul %83, %90 : i64
    %92 = llvm.mlir.constant(3 : index) : i64
    %93 = llvm.mul %85, %92 : i64
    %94 = llvm.add %91, %93 : i64
    %95 = llvm.add %94, %87 : i64
    %96 = llvm.getelementptr %89[%95] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    llvm.store %25, %96 : i8, !llvm.ptr
    %97 = llvm.add %87, %0 : i64
    llvm.br ^bb14(%97 : i64)
  ^bb16:  // pred: ^bb14
    %98 = llvm.add %85, %0 : i64
    llvm.br ^bb12(%98 : i64)
  ^bb17:  // pred: ^bb12
    %99 = llvm.add %83, %0 : i64
    llvm.br ^bb10(%99 : i64)
  ^bb18:  // pred: ^bb10
    %100 = llvm.extractvalue %41[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %101 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %103 = llvm.insertvalue %100, %102[0] : !llvm.struct<(ptr, ptr, i64)> 
    %104 = llvm.insertvalue %101, %103[1] : !llvm.struct<(ptr, ptr, i64)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.insertvalue %105, %104[2] : !llvm.struct<(ptr, ptr, i64)> 
    %107 = llvm.extractvalue %41[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %108 = llvm.extractvalue %41[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.extractvalue %41[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %110 = llvm.extractvalue %41[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.extractvalue %41[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.extractvalue %41[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %113 = llvm.extractvalue %41[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %115 = llvm.extractvalue %106[0] : !llvm.struct<(ptr, ptr, i64)> 
    %116 = llvm.extractvalue %106[1] : !llvm.struct<(ptr, ptr, i64)> 
    %117 = llvm.insertvalue %115, %114[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.insertvalue %116, %117[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.insertvalue %119, %118[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %121 = llvm.mlir.constant(3 : index) : i64
    %122 = llvm.insertvalue %121, %120[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.mlir.constant(3 : index) : i64
    %124 = llvm.insertvalue %123, %122[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %125 = llvm.mlir.constant(3 : index) : i64
    %126 = llvm.insertvalue %125, %124[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.insertvalue %127, %126[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %129 = llvm.extractvalue %53[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %132 = llvm.insertvalue %129, %131[0] : !llvm.struct<(ptr, ptr, i64)> 
    %133 = llvm.insertvalue %130, %132[1] : !llvm.struct<(ptr, ptr, i64)> 
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.insertvalue %134, %133[2] : !llvm.struct<(ptr, ptr, i64)> 
    %136 = llvm.extractvalue %53[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %137 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %141 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %144 = llvm.extractvalue %135[0] : !llvm.struct<(ptr, ptr, i64)> 
    %145 = llvm.extractvalue %135[1] : !llvm.struct<(ptr, ptr, i64)> 
    %146 = llvm.insertvalue %144, %143[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.insertvalue %145, %146[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.insertvalue %148, %147[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.mlir.constant(3 : index) : i64
    %151 = llvm.insertvalue %150, %149[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %152 = llvm.mlir.constant(3 : index) : i64
    %153 = llvm.insertvalue %152, %151[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %154 = llvm.mlir.constant(3 : index) : i64
    %155 = llvm.insertvalue %154, %153[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.insertvalue %156, %155[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.extractvalue %65[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %159 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %160 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %161 = llvm.insertvalue %158, %160[0] : !llvm.struct<(ptr, ptr, i64)> 
    %162 = llvm.insertvalue %159, %161[1] : !llvm.struct<(ptr, ptr, i64)> 
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.insertvalue %163, %162[2] : !llvm.struct<(ptr, ptr, i64)> 
    %165 = llvm.extractvalue %65[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.extractvalue %65[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %167 = llvm.extractvalue %65[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %168 = llvm.extractvalue %65[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %169 = llvm.extractvalue %65[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.extractvalue %65[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.extractvalue %65[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %173 = llvm.extractvalue %164[0] : !llvm.struct<(ptr, ptr, i64)> 
    %174 = llvm.extractvalue %164[1] : !llvm.struct<(ptr, ptr, i64)> 
    %175 = llvm.insertvalue %173, %172[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %176 = llvm.insertvalue %174, %175[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.insertvalue %177, %176[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %179 = llvm.mlir.constant(3 : index) : i64
    %180 = llvm.insertvalue %179, %178[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %181 = llvm.mlir.constant(3 : index) : i64
    %182 = llvm.insertvalue %181, %180[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %183 = llvm.mlir.constant(3 : index) : i64
    %184 = llvm.insertvalue %183, %182[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.insertvalue %185, %184[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %187 = llvm.getelementptr %29[9] : (!llvm.ptr) -> !llvm.ptr, i32
    %188 = llvm.ptrtoint %187 : !llvm.ptr to i64
    %189 = llvm.call @malloc(%188) : (i64) -> !llvm.ptr
    %190 = llvm.insertvalue %189, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %191 = llvm.insertvalue %189, %190[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %192 = llvm.insertvalue %21, %191[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %193 = llvm.insertvalue %26, %192[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %194 = llvm.insertvalue %26, %193[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %195 = llvm.insertvalue %26, %194[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %196 = llvm.insertvalue %27, %195[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb19(%2 : i64)
  ^bb19(%197: i64):  // 2 preds: ^bb18, ^bb23
    %198 = llvm.icmp "slt" %197, %1 : i64
    llvm.cond_br %198, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%2 : i64)
  ^bb21(%199: i64):  // 2 preds: ^bb20, ^bb22
    %200 = llvm.icmp "slt" %199, %1 : i64
    llvm.cond_br %200, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %201 = llvm.extractvalue %196[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %202 = llvm.mlir.constant(3 : index) : i64
    %203 = llvm.mul %197, %202 : i64
    %204 = llvm.add %203, %199 : i64
    %205 = llvm.getelementptr %201[%204] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %19, %205 : i32, !llvm.ptr
    %206 = llvm.add %199, %0 : i64
    llvm.br ^bb21(%206 : i64)
  ^bb23:  // pred: ^bb21
    %207 = llvm.add %197, %0 : i64
    llvm.br ^bb19(%207 : i64)
  ^bb24:  // pred: ^bb19
    %208 = llvm.extractvalue %128[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %209 = llvm.ptrtoint %208 : !llvm.ptr to i64
    %210 = llvm.extractvalue %157[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %211 = llvm.ptrtoint %210 : !llvm.ptr to i64
    %212 = llvm.extractvalue %186[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %213 = llvm.ptrtoint %212 : !llvm.ptr to i64
    %214 = llvm.ptrtoint %189 : !llvm.ptr to i64
    "gemmini.intr.config_ex"(%18, %17) : (i64, i64) -> ()
    "gemmini.intr.config_st"(%15, %14) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%13, %16) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%12, %16) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%10, %11) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_bounds"(%8, %7) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%209, %211) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%214, %213) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%16, %16) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%16, %16) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%6, %9) : (i64, i64) -> ()
    "gemmini.intr.flush"(%9, %9) : (i64, i64) -> ()
    llvm.call @free(%189) : (!llvm.ptr) -> ()
    %215 = llvm.extractvalue %41[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %216 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %217 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %218 = llvm.insertvalue %215, %217[0] : !llvm.struct<(ptr, ptr, i64)> 
    %219 = llvm.insertvalue %216, %218[1] : !llvm.struct<(ptr, ptr, i64)> 
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.insertvalue %220, %219[2] : !llvm.struct<(ptr, ptr, i64)> 
    %222 = llvm.extractvalue %41[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %223 = llvm.extractvalue %41[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %224 = llvm.extractvalue %41[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %225 = llvm.extractvalue %41[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %226 = llvm.extractvalue %41[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %227 = llvm.extractvalue %41[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %228 = llvm.extractvalue %41[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %229 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %230 = llvm.extractvalue %221[0] : !llvm.struct<(ptr, ptr, i64)> 
    %231 = llvm.extractvalue %221[1] : !llvm.struct<(ptr, ptr, i64)> 
    %232 = llvm.insertvalue %230, %229[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %233 = llvm.insertvalue %231, %232[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %234 = llvm.mlir.constant(9 : index) : i64
    %235 = llvm.insertvalue %234, %233[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %236 = llvm.mlir.constant(3 : index) : i64
    %237 = llvm.insertvalue %236, %235[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %238 = llvm.mlir.constant(3 : index) : i64
    %239 = llvm.insertvalue %238, %237[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %240 = llvm.mlir.constant(3 : index) : i64
    %241 = llvm.insertvalue %240, %239[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.insertvalue %242, %241[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %244 = llvm.extractvalue %53[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %245 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %246 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %247 = llvm.insertvalue %244, %246[0] : !llvm.struct<(ptr, ptr, i64)> 
    %248 = llvm.insertvalue %245, %247[1] : !llvm.struct<(ptr, ptr, i64)> 
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.insertvalue %249, %248[2] : !llvm.struct<(ptr, ptr, i64)> 
    %251 = llvm.extractvalue %53[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %252 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %253 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %254 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %255 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %256 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %257 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %258 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %259 = llvm.extractvalue %250[0] : !llvm.struct<(ptr, ptr, i64)> 
    %260 = llvm.extractvalue %250[1] : !llvm.struct<(ptr, ptr, i64)> 
    %261 = llvm.insertvalue %259, %258[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %262 = llvm.insertvalue %260, %261[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %263 = llvm.mlir.constant(9 : index) : i64
    %264 = llvm.insertvalue %263, %262[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %265 = llvm.mlir.constant(3 : index) : i64
    %266 = llvm.insertvalue %265, %264[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %267 = llvm.mlir.constant(3 : index) : i64
    %268 = llvm.insertvalue %267, %266[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %269 = llvm.mlir.constant(3 : index) : i64
    %270 = llvm.insertvalue %269, %268[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.insertvalue %271, %270[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %273 = llvm.extractvalue %65[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %274 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %275 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %276 = llvm.insertvalue %273, %275[0] : !llvm.struct<(ptr, ptr, i64)> 
    %277 = llvm.insertvalue %274, %276[1] : !llvm.struct<(ptr, ptr, i64)> 
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.insertvalue %278, %277[2] : !llvm.struct<(ptr, ptr, i64)> 
    %280 = llvm.extractvalue %65[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %281 = llvm.extractvalue %65[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %282 = llvm.extractvalue %65[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %283 = llvm.extractvalue %65[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %284 = llvm.extractvalue %65[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %285 = llvm.extractvalue %65[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %286 = llvm.extractvalue %65[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %287 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %288 = llvm.extractvalue %279[0] : !llvm.struct<(ptr, ptr, i64)> 
    %289 = llvm.extractvalue %279[1] : !llvm.struct<(ptr, ptr, i64)> 
    %290 = llvm.insertvalue %288, %287[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %291 = llvm.insertvalue %289, %290[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %292 = llvm.mlir.constant(9 : index) : i64
    %293 = llvm.insertvalue %292, %291[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %294 = llvm.mlir.constant(3 : index) : i64
    %295 = llvm.insertvalue %294, %293[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %296 = llvm.mlir.constant(3 : index) : i64
    %297 = llvm.insertvalue %296, %295[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %298 = llvm.mlir.constant(3 : index) : i64
    %299 = llvm.insertvalue %298, %297[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.insertvalue %300, %299[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %302 = llvm.getelementptr %29[9] : (!llvm.ptr) -> !llvm.ptr, i32
    %303 = llvm.ptrtoint %302 : !llvm.ptr to i64
    %304 = llvm.call @malloc(%303) : (i64) -> !llvm.ptr
    %305 = llvm.insertvalue %304, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %306 = llvm.insertvalue %304, %305[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %307 = llvm.insertvalue %21, %306[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %308 = llvm.insertvalue %26, %307[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %309 = llvm.insertvalue %26, %308[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %310 = llvm.insertvalue %26, %309[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %311 = llvm.insertvalue %27, %310[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb25(%2 : i64)
  ^bb25(%312: i64):  // 2 preds: ^bb24, ^bb29
    %313 = llvm.icmp "slt" %312, %1 : i64
    llvm.cond_br %313, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    llvm.br ^bb27(%2 : i64)
  ^bb27(%314: i64):  // 2 preds: ^bb26, ^bb28
    %315 = llvm.icmp "slt" %314, %1 : i64
    llvm.cond_br %315, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %316 = llvm.extractvalue %311[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %317 = llvm.mlir.constant(3 : index) : i64
    %318 = llvm.mul %312, %317 : i64
    %319 = llvm.add %318, %314 : i64
    %320 = llvm.getelementptr %316[%319] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %19, %320 : i32, !llvm.ptr
    %321 = llvm.add %314, %0 : i64
    llvm.br ^bb27(%321 : i64)
  ^bb29:  // pred: ^bb27
    %322 = llvm.add %312, %0 : i64
    llvm.br ^bb25(%322 : i64)
  ^bb30:  // pred: ^bb25
    %323 = llvm.extractvalue %243[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %324 = llvm.ptrtoint %323 : !llvm.ptr to i64
    %325 = llvm.add %324, %28 : i64
    %326 = llvm.extractvalue %272[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %327 = llvm.ptrtoint %326 : !llvm.ptr to i64
    %328 = llvm.add %327, %28 : i64
    %329 = llvm.extractvalue %301[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %330 = llvm.ptrtoint %329 : !llvm.ptr to i64
    %331 = llvm.add %330, %28 : i64
    %332 = llvm.ptrtoint %304 : !llvm.ptr to i64
    "gemmini.intr.config_ex"(%18, %17) : (i64, i64) -> ()
    "gemmini.intr.config_st"(%15, %14) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%13, %16) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%12, %16) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%10, %11) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_bounds"(%8, %7) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%325, %328) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%332, %331) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%16, %16) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%16, %16) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%6, %9) : (i64, i64) -> ()
    "gemmini.intr.flush"(%9, %9) : (i64, i64) -> ()
    llvm.call @free(%304) : (!llvm.ptr) -> ()
    %333 = llvm.extractvalue %41[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %334 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %335 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %336 = llvm.insertvalue %333, %335[0] : !llvm.struct<(ptr, ptr, i64)> 
    %337 = llvm.insertvalue %334, %336[1] : !llvm.struct<(ptr, ptr, i64)> 
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.insertvalue %338, %337[2] : !llvm.struct<(ptr, ptr, i64)> 
    %340 = llvm.extractvalue %41[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %341 = llvm.extractvalue %41[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %342 = llvm.extractvalue %41[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %343 = llvm.extractvalue %41[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %344 = llvm.extractvalue %41[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %345 = llvm.extractvalue %41[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %346 = llvm.extractvalue %41[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %347 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %348 = llvm.extractvalue %339[0] : !llvm.struct<(ptr, ptr, i64)> 
    %349 = llvm.extractvalue %339[1] : !llvm.struct<(ptr, ptr, i64)> 
    %350 = llvm.insertvalue %348, %347[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %351 = llvm.insertvalue %349, %350[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %352 = llvm.mlir.constant(18 : index) : i64
    %353 = llvm.insertvalue %352, %351[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %354 = llvm.mlir.constant(3 : index) : i64
    %355 = llvm.insertvalue %354, %353[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %356 = llvm.mlir.constant(3 : index) : i64
    %357 = llvm.insertvalue %356, %355[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %358 = llvm.mlir.constant(3 : index) : i64
    %359 = llvm.insertvalue %358, %357[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.insertvalue %360, %359[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %362 = llvm.extractvalue %53[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %363 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %364 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %365 = llvm.insertvalue %362, %364[0] : !llvm.struct<(ptr, ptr, i64)> 
    %366 = llvm.insertvalue %363, %365[1] : !llvm.struct<(ptr, ptr, i64)> 
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.insertvalue %367, %366[2] : !llvm.struct<(ptr, ptr, i64)> 
    %369 = llvm.extractvalue %53[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %370 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %371 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %372 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %373 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %374 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %375 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %376 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %377 = llvm.extractvalue %368[0] : !llvm.struct<(ptr, ptr, i64)> 
    %378 = llvm.extractvalue %368[1] : !llvm.struct<(ptr, ptr, i64)> 
    %379 = llvm.insertvalue %377, %376[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %380 = llvm.insertvalue %378, %379[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %381 = llvm.mlir.constant(18 : index) : i64
    %382 = llvm.insertvalue %381, %380[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %383 = llvm.mlir.constant(3 : index) : i64
    %384 = llvm.insertvalue %383, %382[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %385 = llvm.mlir.constant(3 : index) : i64
    %386 = llvm.insertvalue %385, %384[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %387 = llvm.mlir.constant(3 : index) : i64
    %388 = llvm.insertvalue %387, %386[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.insertvalue %389, %388[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %391 = llvm.extractvalue %65[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %392 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %393 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %394 = llvm.insertvalue %391, %393[0] : !llvm.struct<(ptr, ptr, i64)> 
    %395 = llvm.insertvalue %392, %394[1] : !llvm.struct<(ptr, ptr, i64)> 
    %396 = llvm.mlir.constant(0 : index) : i64
    %397 = llvm.insertvalue %396, %395[2] : !llvm.struct<(ptr, ptr, i64)> 
    %398 = llvm.extractvalue %65[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %399 = llvm.extractvalue %65[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %400 = llvm.extractvalue %65[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %401 = llvm.extractvalue %65[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %402 = llvm.extractvalue %65[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %403 = llvm.extractvalue %65[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %404 = llvm.extractvalue %65[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %405 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %406 = llvm.extractvalue %397[0] : !llvm.struct<(ptr, ptr, i64)> 
    %407 = llvm.extractvalue %397[1] : !llvm.struct<(ptr, ptr, i64)> 
    %408 = llvm.insertvalue %406, %405[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %409 = llvm.insertvalue %407, %408[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %410 = llvm.mlir.constant(18 : index) : i64
    %411 = llvm.insertvalue %410, %409[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %412 = llvm.mlir.constant(3 : index) : i64
    %413 = llvm.insertvalue %412, %411[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %414 = llvm.mlir.constant(3 : index) : i64
    %415 = llvm.insertvalue %414, %413[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %416 = llvm.mlir.constant(3 : index) : i64
    %417 = llvm.insertvalue %416, %415[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.insertvalue %418, %417[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %420 = llvm.getelementptr %29[9] : (!llvm.ptr) -> !llvm.ptr, i32
    %421 = llvm.ptrtoint %420 : !llvm.ptr to i64
    %422 = llvm.call @malloc(%421) : (i64) -> !llvm.ptr
    %423 = llvm.insertvalue %422, %20[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %424 = llvm.insertvalue %422, %423[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %425 = llvm.insertvalue %21, %424[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %426 = llvm.insertvalue %26, %425[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %427 = llvm.insertvalue %26, %426[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %428 = llvm.insertvalue %26, %427[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %429 = llvm.insertvalue %27, %428[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb31(%2 : i64)
  ^bb31(%430: i64):  // 2 preds: ^bb30, ^bb35
    %431 = llvm.icmp "slt" %430, %1 : i64
    llvm.cond_br %431, ^bb32, ^bb36
  ^bb32:  // pred: ^bb31
    llvm.br ^bb33(%2 : i64)
  ^bb33(%432: i64):  // 2 preds: ^bb32, ^bb34
    %433 = llvm.icmp "slt" %432, %1 : i64
    llvm.cond_br %433, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    %434 = llvm.extractvalue %429[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %435 = llvm.mlir.constant(3 : index) : i64
    %436 = llvm.mul %430, %435 : i64
    %437 = llvm.add %436, %432 : i64
    %438 = llvm.getelementptr %434[%437] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %19, %438 : i32, !llvm.ptr
    %439 = llvm.add %432, %0 : i64
    llvm.br ^bb33(%439 : i64)
  ^bb35:  // pred: ^bb33
    %440 = llvm.add %430, %0 : i64
    llvm.br ^bb31(%440 : i64)
  ^bb36:  // pred: ^bb31
    %441 = llvm.extractvalue %361[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %442 = llvm.ptrtoint %441 : !llvm.ptr to i64
    %443 = llvm.add %442, %5 : i64
    %444 = llvm.extractvalue %390[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %445 = llvm.ptrtoint %444 : !llvm.ptr to i64
    %446 = llvm.add %445, %5 : i64
    %447 = llvm.extractvalue %419[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %448 = llvm.ptrtoint %447 : !llvm.ptr to i64
    %449 = llvm.add %448, %5 : i64
    %450 = llvm.ptrtoint %422 : !llvm.ptr to i64
    "gemmini.intr.config_ex"(%18, %17) : (i64, i64) -> ()
    "gemmini.intr.config_st"(%15, %14) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%13, %16) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%12, %16) : (i64, i64) -> ()
    "gemmini.intr.config_ld"(%10, %11) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_bounds"(%8, %7) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_ab"(%443, %446) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_addrs_dc"(%450, %449) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_ab"(%16, %16) : (i64, i64) -> ()
    "gemmini.intr.loop_ws_config_strides_dc"(%16, %16) : (i64, i64) -> ()
    "gemmini.intr.loop_ws"(%6, %9) : (i64, i64) -> ()
    "gemmini.intr.flush"(%9, %9) : (i64, i64) -> ()
    llvm.call @free(%422) : (!llvm.ptr) -> ()
    %451 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4 x i8>
    %452 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i8>
    llvm.br ^bb37(%21 : i64)
  ^bb37(%453: i64):  // 2 preds: ^bb36, ^bb44
    %454 = llvm.icmp "slt" %453, %26 : i64
    llvm.cond_br %454, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%21 : i64)
  ^bb39(%455: i64):  // 2 preds: ^bb38, ^bb43
    %456 = llvm.icmp "slt" %455, %26 : i64
    llvm.cond_br %456, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    llvm.br ^bb41(%21 : i64)
  ^bb41(%457: i64):  // 2 preds: ^bb40, ^bb42
    %458 = llvm.icmp "slt" %457, %26 : i64
    llvm.cond_br %458, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %459 = llvm.mul %453, %28 : i64
    %460 = llvm.mul %455, %26 : i64
    %461 = llvm.add %459, %460 : i64
    %462 = llvm.add %461, %457 : i64
    %463 = llvm.getelementptr %56[%462] : (!llvm.ptr, i64) -> !llvm.ptr, i8
    %464 = llvm.load %463 : !llvm.ptr -> i8
    %465 = llvm.sext %464 : i8 to i32
    %466 = llvm.call @printf(%451, %465) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
    %467 = llvm.add %457, %27 : i64
    llvm.br ^bb41(%467 : i64)
  ^bb43:  // pred: ^bb41
    %468 = llvm.call @printf(%452) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %469 = llvm.add %455, %27 : i64
    llvm.br ^bb39(%469 : i64)
  ^bb44:  // pred: ^bb39
    %470 = llvm.call @printf(%452) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %471 = llvm.add %453, %27 : i64
    llvm.br ^bb37(%471 : i64)
  ^bb45:  // pred: ^bb37
    llvm.call @free(%56) : (!llvm.ptr) -> ()
    llvm.return %23 : i8
  }
}

