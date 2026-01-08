; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

define void @mlp2(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, ptr %21, ptr %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27, ptr %28, ptr %29, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, ptr %35, ptr %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %41, ptr %42, ptr %43, i64 %44, i64 %45, i64 %46, i64 %47, i64 %48) {
  %50 = ptrtoint ptr %1 to i64
  %51 = ptrtoint ptr %8 to i64
  %52 = ptrtoint ptr %15 to i64
  %53 = ptrtoint ptr %22 to i64
  call void @llvm.riscv.config.ex(i64 4575657221408489484, i64 281474976710656)
  call void @llvm.riscv.config.st(i64 6, i64 4575657221408424768)
  call void @llvm.riscv.config.ld(i64 4575657221409472769, i64 832)
  call void @llvm.riscv.config.ld(i64 4575657221409472777, i64 832)
  call void @llvm.riscv.config.ld(i64 4575657221409472785, i64 3328)
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 219043725316)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %50, i64 %51)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %53, i64 0)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %54 = add i64 %50, 816
  %55 = add i64 %51, 678912
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 4295360516)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %54, i64 %55)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %52)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %56 = add i64 %53, 384
  %57 = add i64 %51, 96
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 219043725316)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %50, i64 %57)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %56, i64 0)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %58 = add i64 %52, 96
  %59 = add i64 %50, 816
  %60 = add i64 %51, 679008
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 4295360516)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %59, i64 %60)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %58)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %61 = add i64 %53, 768
  %62 = add i64 %51, 192
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 219043725316)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %50, i64 %62)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %61, i64 0)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %63 = add i64 %52, 192
  %64 = add i64 %50, 816
  %65 = add i64 %51, 679104
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 4295360516)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %64, i64 %65)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %63)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %66 = add i64 %53, 1152
  %67 = add i64 %51, 288
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 219043725316)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %50, i64 %67)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %66, i64 0)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %68 = add i64 %52, 288
  %69 = add i64 %50, 816
  %70 = add i64 %51, 679200
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 4295360516)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %69, i64 %70)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %68)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %71 = add i64 %53, 1536
  %72 = add i64 %51, 384
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 219043725316)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %50, i64 %72)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %71, i64 0)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %73 = add i64 %52, 384
  %74 = add i64 %50, 816
  %75 = add i64 %51, 679296
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 4295360516)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %74, i64 %75)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %73)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %76 = add i64 %53, 1920
  %77 = add i64 %51, 480
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 219043725316)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %50, i64 %77)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %76, i64 0)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %78 = add i64 %52, 480
  %79 = add i64 %50, 816
  %80 = add i64 %51, 679392
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 4295360516)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %79, i64 %80)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %78)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %81 = add i64 %53, 2304
  %82 = add i64 %51, 576
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 219043725316)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %50, i64 %82)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %81, i64 0)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %83 = add i64 %52, 576
  %84 = add i64 %50, 816
  %85 = add i64 %51, 679488
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 4295360516)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %84, i64 %85)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %83)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %86 = add i64 %53, 2688
  %87 = add i64 %51, 672
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 219043725316)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %50, i64 %87)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %86, i64 0)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %88 = add i64 %52, 672
  %89 = add i64 %50, 816
  %90 = add i64 %51, 679584
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 4295360516)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %89, i64 %90)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %88)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %91 = add i64 %53, 3072
  %92 = add i64 %51, 768
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 219043594244)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %50, i64 %92)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %91, i64 0)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  %93 = add i64 %52, 768
  %94 = add i64 %50, 816
  %95 = add i64 %51, 679680
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 4295229444)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %94, i64 %95)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %93)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 832)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 832, i64 832)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  call void @llvm.riscv.flush(i64 0, i64 0)
  %96 = ptrtoint ptr %15 to i64
  %97 = ptrtoint ptr %29 to i64
  %98 = ptrtoint ptr %36 to i64
  %99 = ptrtoint ptr %43 to i64
  call void @llvm.riscv.config.ex(i64 4575657221408489484, i64 281474976710656)
  call void @llvm.riscv.config.st(i64 6, i64 4575657221408424000)
  call void @llvm.riscv.config.ld(i64 4575657221409472769, i64 832)
  call void @llvm.riscv.config.ld(i64 4575657221409472777, i64 64)
  call void @llvm.riscv.config.ld(i64 4575657221409472785, i64 256)
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 223338561540)
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %96, i64 %97)
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %99, i64 %98)
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 832, i64 64)
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64)
  call void @llvm.riscv.loop.ws(i64 257, i64 0)
  call void @llvm.riscv.flush(i64 0, i64 0)
  ret void
}

define void @_mlir_ciface_mlp2(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr %6) {
  %8 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %0, align 8
  %9 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 0
  %10 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 1
  %11 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 2
  %12 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 3, 0
  %13 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 3, 1
  %14 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 4, 0
  %15 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, 4, 1
  %16 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %1, align 8
  %17 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 0
  %18 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 1
  %19 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 2
  %20 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 3, 0
  %21 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 3, 1
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 4, 0
  %23 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, 4, 1
  %24 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %2, align 8
  %25 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, 0
  %26 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, 1
  %27 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, 2
  %28 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, 3, 0
  %29 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, 3, 1
  %30 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, 4, 0
  %31 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, 4, 1
  %32 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %3, align 8
  %33 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 0
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 1
  %35 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 2
  %36 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 3, 0
  %37 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 3, 1
  %38 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 4, 0
  %39 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, 4, 1
  %40 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %4, align 8
  %41 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, 0
  %42 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, 1
  %43 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, 2
  %44 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, 3, 0
  %45 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, 3, 1
  %46 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, 4, 0
  %47 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, 4, 1
  %48 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %5, align 8
  %49 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %48, 0
  %50 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %48, 1
  %51 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %48, 2
  %52 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %48, 3, 0
  %53 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %48, 3, 1
  %54 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %48, 4, 0
  %55 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %48, 4, 1
  %56 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %6, align 8
  %57 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %56, 0
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %56, 1
  %59 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %56, 2
  %60 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %56, 3, 0
  %61 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %56, 3, 1
  %62 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %56, 4, 0
  %63 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %56, 4, 1
  call void @mlp2(ptr %9, ptr %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, ptr %17, ptr %18, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23, ptr %25, ptr %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31, ptr %33, ptr %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, ptr %41, ptr %42, i64 %43, i64 %44, i64 %45, i64 %46, i64 %47, ptr %49, ptr %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55, ptr %57, ptr %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63)
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
