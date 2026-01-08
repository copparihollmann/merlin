#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_203 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_203_elementwise_broadcast_200704_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c49 = arith.constant 49 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c49, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_203_elementwise_broadcast_200704_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xi64>
          %2 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xindex>) : vector<8xi64>
          %3 = llvm.mlir.constant(true) : i1
          %4 = llvm.mlir.constant(50176 : index) : i64
          %5 = llvm.mlir.constant(784 : index) : i64
          %6 = llvm.mlir.constant(28 : index) : i64
          %7 = llvm.mlir.constant(64 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.constant(dense<28> : vector<8xindex>) : vector<8xi64>
          %11 = llvm.mlir.constant(dense<true> : vector<8xi1>) : vector<8xi1>
          %12 = llvm.mlir.constant(dense<1.000000e+00> : vector<8xf32>) : vector<8xf32>
          %13 = llvm.mlir.constant(dense<2.700000e+01> : vector<8xf32>) : vector<8xf32>
          %14 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %15 = llvm.mlir.constant(dense<2.000000e+00> : vector<8xf32>) : vector<8xf32>
          %16 = llvm.mlir.constant(dense<5.000000e-01> : vector<8xf32>) : vector<8xf32>
          %17 = llvm.mlir.constant(dense<56> : vector<8xindex>) : vector<8xi64>
          %18 = llvm.mlir.constant(8 : index) : i64
          %19 = llvm.mlir.constant(4096 : index) : i64
          %20 = llvm.mlir.constant(0 : index) : i64
          %21 = llvm.mlir.constant(401408 : index) : i64
          %22 = llvm.mlir.constant(2809856 : index) : i64
          %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %24 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
          %26 = llvm.mul %21, %8 : i64
          %27 = llvm.udiv %26, %9 : i64
          %28 = llvm.getelementptr %25[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %3 ["align"(%28, %7 : !llvm.ptr, i64)] : i1
          %29 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %30 = llvm.extractvalue %29[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %31 = llvm.getelementptr %30[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %32 = llvm.load %31 : !llvm.ptr -> !llvm.ptr
          %33 = llvm.mul %22, %8 : i64
          %34 = llvm.udiv %33, %9 : i64
          %35 = llvm.getelementptr %32[%34] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %3 ["align"(%35, %7 : !llvm.ptr, i64)] : i1
          %36 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %37 = llvm.extractvalue %36[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %38 = llvm.zext %37 : i32 to i64
          %39 = llvm.mul %38, %19 overflow<nsw> : i64
          llvm.br ^bb1(%20 : i64)
        ^bb1(%40: i64):  // 2 preds: ^bb0, ^bb2
          %41 = llvm.icmp "slt" %40, %19 : i64
          llvm.cond_br %41, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %42 = llvm.add %39, %40 : i64
          %43 = llvm.insertelement %42, %1[%0 : i32] : vector<8xi64>
          %44 = llvm.shufflevector %43, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi64> 
          %45 = llvm.add %44, %2 : vector<8xi64>
          %46 = llvm.srem %45, %17 : vector<8xi64>
          %47 = llvm.sdiv %45, %17 : vector<8xi64>
          %48 = llvm.srem %47, %17 : vector<8xi64>
          %49 = llvm.sdiv %47, %17 : vector<8xi64>
          %50 = llvm.sitofp %48 : vector<8xi64> to vector<8xf32>
          %51 = llvm.fadd %50, %16 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %52 = llvm.fdiv %51, %15 : vector<8xf32>
          %53 = llvm.fsub %52, %16 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %54 = llvm.fcmp "ugt" %53, %14 : vector<8xf32>
          %55 = llvm.select %54, %53, %14 : vector<8xi1>, vector<8xf32>
          %56 = llvm.fcmp "uno" %14, %14 : vector<8xf32>
          %57 = llvm.select %56, %14, %55 : vector<8xi1>, vector<8xf32>
          %58 = llvm.fcmp "ult" %57, %13 : vector<8xf32>
          %59 = llvm.select %58, %57, %13 : vector<8xi1>, vector<8xf32>
          %60 = llvm.fcmp "uno" %13, %13 : vector<8xf32>
          %61 = llvm.select %60, %13, %59 : vector<8xi1>, vector<8xf32>
          %62 = llvm.sitofp %46 : vector<8xi64> to vector<8xf32>
          %63 = llvm.fadd %62, %16 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %64 = llvm.fdiv %63, %15 : vector<8xf32>
          %65 = llvm.fsub %64, %16 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %66 = llvm.fcmp "ugt" %65, %14 : vector<8xf32>
          %67 = llvm.select %66, %65, %14 : vector<8xi1>, vector<8xf32>
          %68 = llvm.select %56, %14, %67 : vector<8xi1>, vector<8xf32>
          %69 = llvm.fcmp "ult" %68, %13 : vector<8xf32>
          %70 = llvm.select %69, %68, %13 : vector<8xi1>, vector<8xf32>
          %71 = llvm.select %60, %13, %70 : vector<8xi1>, vector<8xf32>
          %72 = llvm.intr.floor(%61) : (vector<8xf32>) -> vector<8xf32>
          %73 = llvm.fadd %61, %12 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %74 = llvm.intr.floor(%73) : (vector<8xf32>) -> vector<8xf32>
          %75 = llvm.fptosi %72 : vector<8xf32> to vector<8xi64>
          %76 = llvm.fcmp "ult" %73, %13 : vector<8xf32>
          %77 = llvm.select %76, %73, %13 : vector<8xi1>, vector<8xf32>
          %78 = llvm.select %60, %13, %77 : vector<8xi1>, vector<8xf32>
          %79 = llvm.fptosi %78 : vector<8xf32> to vector<8xi64>
          %80 = llvm.intr.floor(%71) : (vector<8xf32>) -> vector<8xf32>
          %81 = llvm.fadd %71, %12 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %82 = llvm.intr.floor(%81) : (vector<8xf32>) -> vector<8xf32>
          %83 = llvm.fptosi %80 : vector<8xf32> to vector<8xi64>
          %84 = llvm.fcmp "ult" %81, %13 : vector<8xf32>
          %85 = llvm.select %84, %81, %13 : vector<8xi1>, vector<8xf32>
          %86 = llvm.select %60, %13, %85 : vector<8xi1>, vector<8xf32>
          %87 = llvm.fptosi %86 : vector<8xf32> to vector<8xi64>
          %88 = llvm.mul %49, %10 : vector<8xi64>
          %89 = llvm.add %75, %88 : vector<8xi64>
          %90 = llvm.mul %89, %10 : vector<8xi64>
          %91 = llvm.add %83, %90 : vector<8xi64>
          %92 = llvm.mul %20, %4 : i64
          %93 = llvm.mul %20, %5 : i64
          %94 = llvm.add %92, %93 : i64
          %95 = llvm.mul %20, %6 : i64
          %96 = llvm.add %94, %95 : i64
          %97 = llvm.add %96, %20 : i64
          %98 = llvm.getelementptr %28[%97] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %99 = llvm.getelementptr %98[%91] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %100 = llvm.intr.masked.gather %99, %11, %14 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %101 = llvm.add %87, %90 : vector<8xi64>
          %102 = llvm.getelementptr %98[%101] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %103 = llvm.intr.masked.gather %102, %11, %14 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %104 = llvm.add %79, %88 : vector<8xi64>
          %105 = llvm.mul %104, %10 : vector<8xi64>
          %106 = llvm.add %83, %105 : vector<8xi64>
          %107 = llvm.getelementptr %98[%106] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %108 = llvm.intr.masked.gather %107, %11, %14 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %109 = llvm.add %87, %105 : vector<8xi64>
          %110 = llvm.getelementptr %98[%109] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %111 = llvm.intr.masked.gather %110, %11, %14 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %112 = llvm.fsub %74, %61 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %113 = llvm.fsub %61, %72 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %114 = llvm.fsub %82, %71 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %115 = llvm.fsub %71, %80 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %116 = llvm.fmul %114, %100 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %117 = llvm.fmul %115, %103 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %118 = llvm.fadd %116, %117 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %119 = llvm.fmul %112, %118 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %120 = llvm.fmul %114, %108 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %121 = llvm.fmul %115, %111 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %122 = llvm.fadd %120, %121 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %123 = llvm.fmul %113, %122 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %124 = llvm.fadd %119, %123 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %125 = llvm.getelementptr %35[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %124, %125 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %126 = llvm.add %40, %18 : i64
          llvm.br ^bb1(%126 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32_buffer = util.global.load immutable @main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_203::@embedded_elf_riscv_64::@main_graph$async_dispatch_203_elementwise_broadcast_200704_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_203) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_203::@embedded_elf_riscv_64::@main_graph$async_dispatch_203_elementwise_broadcast_200704_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_203_embedded_elf_riscv_64_main_graph$async_dispatch_203_elementwise_broadcast_200704_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
