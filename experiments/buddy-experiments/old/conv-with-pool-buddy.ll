; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

define void @conv_with_pool(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, ptr %18, ptr %19, i64 %20, i64 %21, i64 %22, ptr %23, ptr %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29) {
  %31 = ptrtoint ptr %1 to i64
  %32 = ptrtoint ptr %24 to i64
  %33 = ptrtoint ptr %19 to i64
  %34 = ptrtoint ptr %12 to i64
  call void @llvm.riscv.config.st(i64 2, i64 4575657221408423955)
  call void @llvm.riscv.config.ex(i64 131076, i64 281474976710656)
  call void @llvm.riscv.loop.conv.ws.config1(i64 5348101868027906, i64 281483566972937)
  call void @llvm.riscv.loop.conv.ws.config2(i64 844437815164929, i64 562971428585488)
  call void @llvm.riscv.loop.conv.ws.config3(i64 844437816213505, i64 562954248519681)
  call void @llvm.riscv.loop.conv.ws.config4(i64 2533283380396034, i64 65545)
  call void @llvm.riscv.loop.conv.ws.config5(i64 %34, i64 %32)
  call void @llvm.riscv.loop.conv.ws.config6(i64 %33, i64 %31)
  call void @llvm.riscv.loop.conv.ws(i64 256, i64 0)
  %35 = add i64 %32, 16
  %36 = add i64 %33, 64
  %37 = add i64 %34, 16
  call void @llvm.riscv.loop.conv.ws.config1(i64 5348101868027906, i64 281483566972937)
  call void @llvm.riscv.loop.conv.ws.config2(i64 844437815164929, i64 562971428585475)
  call void @llvm.riscv.loop.conv.ws.config3(i64 844437816213505, i64 562954248519681)
  call void @llvm.riscv.loop.conv.ws.config4(i64 2533283380396034, i64 65545)
  call void @llvm.riscv.loop.conv.ws.config5(i64 %37, i64 %35)
  call void @llvm.riscv.loop.conv.ws.config6(i64 %36, i64 %31)
  call void @llvm.riscv.loop.conv.ws(i64 256, i64 0)
  call void @llvm.riscv.flush(i64 0, i64 0)
  ret void
}

define void @_mlir_ciface_conv_with_pool(ptr %0, ptr %1, ptr %2, ptr %3) {
  %5 = load { ptr, ptr, i64, [4 x i64], [4 x i64] }, ptr %0, align 8
  %6 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 0
  %7 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 1
  %8 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 2
  %9 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 3, 0
  %10 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 3, 1
  %11 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 3, 2
  %12 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 3, 3
  %13 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 4, 0
  %14 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 4, 1
  %15 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 4, 2
  %16 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %5, 4, 3
  %17 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %1, align 8
  %18 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, 0
  %19 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, 1
  %20 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, 2
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, 3, 0
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, 3, 1
  %23 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, 4, 0
  %24 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, 4, 1
  %25 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %2, align 8
  %26 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, 0
  %27 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, 1
  %28 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, 2
  %29 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, 3, 0
  %30 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, 4, 0
  %31 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %3, align 8
  %32 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, 0
  %33 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, 1
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, 2
  %35 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, 3, 0
  %36 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, 3, 1
  %37 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, 4, 0
  %38 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, 4, 1
  call void @conv_with_pool(ptr %6, ptr %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, ptr %18, ptr %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, ptr %26, ptr %27, i64 %28, i64 %29, i64 %30, ptr %32, ptr %33, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.riscv.config.st(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.config.ex(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws.config1(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws.config2(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws.config3(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws.config4(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws.config5(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws.config6(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.loop.conv.ws(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.flush(i64, i64) #0

attributes #0 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
