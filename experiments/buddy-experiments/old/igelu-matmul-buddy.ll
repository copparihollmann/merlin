; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

define void @igelu_matmul(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, ptr %21, ptr %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27) {
  %29 = ptrtoint ptr %1 to i64
  %30 = ptrtoint ptr %8 to i64
  %31 = ptrtoint ptr %15 to i64
  %32 = ptrtoint ptr %22 to i64
  call void @llvm.riscv.config.ex(i64 4575657221408489500, i64 281474976710656)
  call void @llvm.riscv.config.st(i64 14, i64 4575657221408423966)
  call void @llvm.riscv.config.ld(i64 4575657221409472769, i64 30)
  call void @llvm.riscv.config.ld(i64 4575657221409472777, i64 30)
  call void @llvm.riscv.config.ld(i64 4575657221409472785, i64 120)
  call void @llvm.riscv.config.norm(i64 3, i64 -38654705667)
  call void @llvm.riscv.loop.ws.config.bounds(i64 8590065666, i64 8590065666)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 30, i64 30)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 30, i64 30)
  call void @llvm.riscv.loop.ws(i64 769, i64 0)
  call void @llvm.riscv.flush(i64 0, i64 0)
  ret void
}

define void @_mlir_ciface_igelu_matmul(ptr %0, ptr %1, ptr %2, ptr %3) {
  %5 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %0, align 8
  %6 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 0
  %7 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 1
  %8 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 2
  %9 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 3, 0
  %10 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 3, 1
  %11 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 4, 0
  %12 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 4, 1
  %13 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %1, align 8
  %14 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 0
  %15 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 1
  %16 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 2
  %17 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 0
  %18 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 1
  %19 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 0
  %20 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 1
  %21 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %2, align 8
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 0
  %23 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 1
  %24 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 2
  %25 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 3, 0
  %26 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 3, 1
  %27 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 4, 0
  %28 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 4, 1
  %29 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %3, align 8
  %30 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, 0
  %31 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, 1
  %32 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, 2
  %33 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, 3, 0
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, 3, 1
  %35 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, 4, 0
  %36 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, 4, 1
  call void @igelu_matmul(ptr %6, ptr %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28, ptr %30, ptr %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.riscv.config.ex(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.config.st(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.config.ld(i64, i64) #0

; Function Attrs: nounwind
declare void @llvm.riscv.config.norm(i64, i64) #0

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
