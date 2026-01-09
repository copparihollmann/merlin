#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_209 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_209_elementwise_200704_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c49 = arith.constant 49 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c49, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_209_elementwise_200704_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xi64>
          %2 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xindex>) : vector<8xi64>
          %3 = llvm.mlir.constant(50176 : index) : i64
          %4 = llvm.mlir.constant(784 : index) : i64
          %5 = llvm.mlir.constant(28 : index) : i64
          %6 = llvm.mlir.constant(64 : index) : i64
          %7 = llvm.mlir.constant(true) : i1
          %8 = llvm.mlir.constant(6272 : index) : i64
          %9 = llvm.mlir.constant(3136 : index) : i64
          %10 = llvm.mlir.constant(56 : index) : i64
          %11 = llvm.mlir.constant(8 : i64) : i64
          %12 = llvm.mlir.constant(32 : i64) : i64
          %13 = llvm.mlir.constant(dense<28> : vector<8xindex>) : vector<8xi64>
          %14 = llvm.mlir.constant(dense<1.000000e+00> : vector<8xf32>) : vector<8xf32>
          %15 = llvm.mlir.constant(dense<2.700000e+01> : vector<8xf32>) : vector<8xf32>
          %16 = llvm.mlir.constant(dense<2.000000e+00> : vector<8xf32>) : vector<8xf32>
          %17 = llvm.mlir.constant(dense<5.000000e-01> : vector<8xf32>) : vector<8xf32>
          %18 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %19 = llvm.mlir.constant(dense<true> : vector<8xi1>) : vector<8xi1>
          %20 = llvm.mlir.constant(dense<64> : vector<8xindex>) : vector<8xi64>
          %21 = llvm.mlir.constant(dense<56> : vector<8xindex>) : vector<8xi64>
          %22 = llvm.mlir.constant(8 : index) : i64
          %23 = llvm.mlir.constant(4096 : index) : i64
          %24 = llvm.mlir.constant(0 : index) : i64
          %25 = llvm.mlir.constant(1032704 : index) : i64
          %26 = llvm.mlir.constant(401408 : index) : i64
          %27 = llvm.mlir.constant(1204224 : index) : i64
          %28 = llvm.mlir.constant(2007040 : index) : i64
          %29 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %30 = llvm.extractvalue %29[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
          %32 = llvm.mul %25, %11 : i64
          %33 = llvm.udiv %32, %12 : i64
          %34 = llvm.getelementptr %31[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%34, %6 : !llvm.ptr, i64)] : i1
          %35 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %36 = llvm.extractvalue %35[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %37 = llvm.load %36 : !llvm.ptr -> !llvm.ptr
          %38 = llvm.mul %26, %11 : i64
          %39 = llvm.udiv %38, %12 : i64
          %40 = llvm.getelementptr %37[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%40, %6 : !llvm.ptr, i64)] : i1
          %41 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %42 = llvm.extractvalue %41[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %43 = llvm.load %42 : !llvm.ptr -> !llvm.ptr
          %44 = llvm.mul %27, %11 : i64
          %45 = llvm.udiv %44, %12 : i64
          %46 = llvm.getelementptr %43[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%46, %6 : !llvm.ptr, i64)] : i1
          %47 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %48 = llvm.extractvalue %47[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %49 = llvm.getelementptr %48[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %50 = llvm.load %49 : !llvm.ptr -> !llvm.ptr
          %51 = llvm.mul %28, %11 : i64
          %52 = llvm.udiv %51, %12 : i64
          %53 = llvm.getelementptr %50[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%53, %6 : !llvm.ptr, i64)] : i1
          %54 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %55 = llvm.extractvalue %54[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %56 = llvm.zext %55 : i32 to i64
          %57 = llvm.mul %56, %23 overflow<nsw> : i64
          llvm.br ^bb1(%24 : i64)
        ^bb1(%58: i64):  // 2 preds: ^bb0, ^bb2
          %59 = llvm.icmp "slt" %58, %23 : i64
          llvm.cond_br %59, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %60 = llvm.add %58, %57 : i64
          %61 = llvm.getelementptr %46[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %63 = llvm.insertelement %60, %1[%0 : i32] : vector<8xi64>
          %64 = llvm.shufflevector %63, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi64> 
          %65 = llvm.add %64, %2 : vector<8xi64>
          %66 = llvm.srem %65, %21 : vector<8xi64>
          %67 = llvm.sdiv %65, %21 : vector<8xi64>
          %68 = llvm.srem %67, %21 : vector<8xi64>
          %69 = llvm.sdiv %67, %21 : vector<8xi64>
          %70 = llvm.srem %69, %20 : vector<8xi64>
          %71 = llvm.mul %68, %21 : vector<8xi64>
          %72 = llvm.add %66, %71 : vector<8xi64>
          %73 = llvm.mul %24, %8 : i64
          %74 = llvm.mul %24, %9 : i64
          %75 = llvm.add %73, %74 : i64
          %76 = llvm.mul %24, %10 : i64
          %77 = llvm.add %75, %76 : i64
          %78 = llvm.add %77, %24 : i64
          %79 = llvm.getelementptr %34[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %80 = llvm.getelementptr %79[%72] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %81 = llvm.intr.masked.gather %80, %19, %18 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %82 = llvm.add %68, %21 : vector<8xi64>
          %83 = llvm.mul %82, %21 : vector<8xi64>
          %84 = llvm.add %66, %83 : vector<8xi64>
          %85 = llvm.getelementptr %79[%84] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %86 = llvm.intr.masked.gather %85, %19, %18 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %87 = llvm.sitofp %68 : vector<8xi64> to vector<8xf32>
          %88 = llvm.fadd %87, %17 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %89 = llvm.fdiv %88, %16 : vector<8xf32>
          %90 = llvm.fsub %89, %17 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %91 = llvm.fcmp "ugt" %90, %18 : vector<8xf32>
          %92 = llvm.select %91, %90, %18 : vector<8xi1>, vector<8xf32>
          %93 = llvm.fcmp "uno" %18, %18 : vector<8xf32>
          %94 = llvm.select %93, %18, %92 : vector<8xi1>, vector<8xf32>
          %95 = llvm.fcmp "ult" %94, %15 : vector<8xf32>
          %96 = llvm.select %95, %94, %15 : vector<8xi1>, vector<8xf32>
          %97 = llvm.fcmp "uno" %15, %15 : vector<8xf32>
          %98 = llvm.select %97, %15, %96 : vector<8xi1>, vector<8xf32>
          %99 = llvm.sitofp %66 : vector<8xi64> to vector<8xf32>
          %100 = llvm.fadd %99, %17 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %101 = llvm.fdiv %100, %16 : vector<8xf32>
          %102 = llvm.fsub %101, %17 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %103 = llvm.fcmp "ugt" %102, %18 : vector<8xf32>
          %104 = llvm.select %103, %102, %18 : vector<8xi1>, vector<8xf32>
          %105 = llvm.select %93, %18, %104 : vector<8xi1>, vector<8xf32>
          %106 = llvm.fcmp "ult" %105, %15 : vector<8xf32>
          %107 = llvm.select %106, %105, %15 : vector<8xi1>, vector<8xf32>
          %108 = llvm.select %97, %15, %107 : vector<8xi1>, vector<8xf32>
          %109 = llvm.intr.floor(%98) : (vector<8xf32>) -> vector<8xf32>
          %110 = llvm.fadd %98, %14 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %111 = llvm.intr.floor(%110) : (vector<8xf32>) -> vector<8xf32>
          %112 = llvm.fptosi %109 : vector<8xf32> to vector<8xi64>
          %113 = llvm.fcmp "ult" %110, %15 : vector<8xf32>
          %114 = llvm.select %113, %110, %15 : vector<8xi1>, vector<8xf32>
          %115 = llvm.select %97, %15, %114 : vector<8xi1>, vector<8xf32>
          %116 = llvm.fptosi %115 : vector<8xf32> to vector<8xi64>
          %117 = llvm.intr.floor(%108) : (vector<8xf32>) -> vector<8xf32>
          %118 = llvm.fadd %108, %14 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %119 = llvm.intr.floor(%118) : (vector<8xf32>) -> vector<8xf32>
          %120 = llvm.fptosi %117 : vector<8xf32> to vector<8xi64>
          %121 = llvm.fcmp "ult" %118, %15 : vector<8xf32>
          %122 = llvm.select %121, %118, %15 : vector<8xi1>, vector<8xf32>
          %123 = llvm.select %97, %15, %122 : vector<8xi1>, vector<8xf32>
          %124 = llvm.fptosi %123 : vector<8xf32> to vector<8xi64>
          %125 = llvm.mul %70, %13 : vector<8xi64>
          %126 = llvm.add %112, %125 : vector<8xi64>
          %127 = llvm.mul %126, %13 : vector<8xi64>
          %128 = llvm.add %120, %127 : vector<8xi64>
          %129 = llvm.mul %24, %3 : i64
          %130 = llvm.mul %24, %4 : i64
          %131 = llvm.add %129, %130 : i64
          %132 = llvm.mul %24, %5 : i64
          %133 = llvm.add %131, %132 : i64
          %134 = llvm.add %133, %24 : i64
          %135 = llvm.getelementptr %40[%134] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %136 = llvm.getelementptr %135[%128] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %137 = llvm.intr.masked.gather %136, %19, %18 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %138 = llvm.add %124, %127 : vector<8xi64>
          %139 = llvm.getelementptr %135[%138] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %140 = llvm.intr.masked.gather %139, %19, %18 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %141 = llvm.add %116, %125 : vector<8xi64>
          %142 = llvm.mul %141, %13 : vector<8xi64>
          %143 = llvm.add %120, %142 : vector<8xi64>
          %144 = llvm.getelementptr %135[%143] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %145 = llvm.intr.masked.gather %144, %19, %18 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %146 = llvm.add %124, %142 : vector<8xi64>
          %147 = llvm.getelementptr %135[%146] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %148 = llvm.intr.masked.gather %147, %19, %18 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %149 = llvm.fsub %111, %98 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %150 = llvm.fsub %98, %109 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %151 = llvm.fsub %119, %108 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %152 = llvm.fsub %108, %117 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %153 = llvm.fmul %151, %137 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %154 = llvm.fmul %152, %140 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %155 = llvm.fadd %153, %154 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %156 = llvm.fmul %149, %155 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %157 = llvm.fmul %151, %145 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %158 = llvm.fmul %152, %148 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %159 = llvm.fadd %157, %158 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %160 = llvm.fmul %150, %159 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %161 = llvm.fadd %156, %160 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %162 = llvm.fmul %161, %86 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %163 = llvm.fmul %62, %81 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %164 = llvm.fadd %163, %162 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %165 = llvm.getelementptr %53[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %164, %165 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %166 = llvm.add %58, %22 : i64
          llvm.br ^bb1(%166 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_209_embedded_elf_riscv_64_main_graph$async_dispatch_209_elementwise_200704_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_209_embedded_elf_riscv_64_main_graph$async_dispatch_209_elementwise_200704_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_209_embedded_elf_riscv_64_main_graph$async_dispatch_209_elementwise_200704_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_209_embedded_elf_riscv_64_main_graph$async_dispatch_209_elementwise_200704_f32_buffer = util.global.load immutable @main_graph$async_dispatch_209_embedded_elf_riscv_64_main_graph$async_dispatch_209_elementwise_200704_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_209::@embedded_elf_riscv_64::@main_graph$async_dispatch_209_elementwise_200704_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_209) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_209::@embedded_elf_riscv_64::@main_graph$async_dispatch_209_elementwise_200704_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_209_embedded_elf_riscv_64_main_graph$async_dispatch_209_elementwise_200704_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_209_embedded_elf_riscv_64_main_graph$async_dispatch_209_elementwise_200704_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
    ]) flags("None")
    hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|CommandRetire") target("CommandIssue|Dispatch") flags("None")
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb1(%4 : index)
  ^bb3:  // pred: ^bb1
    hal.command_buffer.finalize<%cmd : !hal.command_buffer>
    %fence = hal.fence.create device(%device : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute<%device : !hal.device> affinity(%queue_affinity) wait(%0) signal(%fence) commands(%cmd) flags("None")
    %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    util.return
  }
}
