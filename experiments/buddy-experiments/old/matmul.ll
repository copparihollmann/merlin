; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare ptr @malloc(i64)

define void @matmul(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20) {
  %22 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 4096) to i64))
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %22, 0
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, ptr %22, 1
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, i64 0, 2
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 64, 3, 0
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, i64 64, 3, 1
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, i64 64, 4, 0
  %29 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %28, i64 1, 4, 1
  br label %30

30:                                               ; preds = %43, %21
  %31 = phi i64 [ %44, %43 ], [ 0, %21 ]
  %32 = icmp slt i64 %31, 64
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %37, %33
  %35 = phi i64 [ %42, %37 ], [ 0, %33 ]
  %36 = icmp slt i64 %35, 64
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, 1
  %39 = mul i64 %31, 64
  %40 = add i64 %39, %35
  %41 = getelementptr i32, ptr %38, i64 %40
  store i32 0, ptr %41, align 4
  %42 = add i64 %35, 1
  br label %34

43:                                               ; preds = %34
  %44 = add i64 %31, 1
  br label %30

45:                                               ; preds = %30
  %46 = ptrtoint ptr %1 to i64
  %47 = ptrtoint ptr %8 to i64
  %48 = ptrtoint ptr %15 to i64
  %49 = ptrtoint ptr %22 to i64
  call void @llvm.riscv.config.ex(i64 4575657221408489476, i64 281474976710656)
  call void @llvm.riscv.config.st(i64 2, i64 4575657221408424000)
  call void @llvm.riscv.config.ld(i64 4575657221409472769, i64 64)
  call void @llvm.riscv.config.ld(i64 4575657221409472777, i64 64)
  call void @llvm.riscv.config.ld(i64 4575657221409472785, i64 256)
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17180131332)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %46, i64 %47)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %49, i64 %48)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 64)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64)
  call void @llvm.riscv.loop.ws(i64 1, i64 0)
  call void @llvm.riscv.flush(i64 0, i64 0)
  call void @free(ptr %22)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.riscv.config.ex(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.config.st(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.config.ld(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.ws.config.bounds(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.ws.config.addrs.ab(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.ws.config.addrs.dc(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.ws.config.strides.ab(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.ws.config.strides.dc(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.ws(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.flush(i64, i64) #0

attributes #0 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
