#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_210 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_210_elementwise_broadcast_802816_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c196 = arith.constant 196 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c196, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_210_elementwise_broadcast_802816_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xi64>
          %2 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xindex>) : vector<8xi64>
          %3 = llvm.mlir.constant(true) : i1
          %4 = llvm.mlir.constant(200704 : index) : i64
          %5 = llvm.mlir.constant(3136 : index) : i64
          %6 = llvm.mlir.constant(56 : index) : i64
          %7 = llvm.mlir.constant(64 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.constant(dense<56> : vector<8xindex>) : vector<8xi64>
          %11 = llvm.mlir.constant(dense<true> : vector<8xi1>) : vector<8xi1>
          %12 = llvm.mlir.constant(dense<1.000000e+00> : vector<8xf32>) : vector<8xf32>
          %13 = llvm.mlir.constant(dense<5.500000e+01> : vector<8xf32>) : vector<8xf32>
          %14 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %15 = llvm.mlir.constant(dense<2.000000e+00> : vector<8xf32>) : vector<8xf32>
          %16 = llvm.mlir.constant(dense<5.000000e-01> : vector<8xf32>) : vector<8xf32>
          %17 = llvm.mlir.constant(dense<64> : vector<8xindex>) : vector<8xi64>
          %18 = llvm.mlir.constant(dense<112> : vector<8xindex>) : vector<8xi64>
          %19 = llvm.mlir.constant(8 : index) : i64
          %20 = llvm.mlir.constant(4096 : index) : i64
          %21 = llvm.mlir.constant(0 : index) : i64
          %22 = llvm.mlir.constant(2007040 : index) : i64
          %23 = llvm.mlir.constant(2809856 : index) : i64
          %24 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %25 = llvm.extractvalue %24[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %26 = llvm.load %25 : !llvm.ptr -> !llvm.ptr
          %27 = llvm.mul %22, %8 : i64
          %28 = llvm.udiv %27, %9 : i64
          %29 = llvm.getelementptr %26[%28] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %3 ["align"(%29, %7 : !llvm.ptr, i64)] : i1
          %30 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %31 = llvm.extractvalue %30[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %32 = llvm.getelementptr %31[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %33 = llvm.load %32 : !llvm.ptr -> !llvm.ptr
          %34 = llvm.mul %23, %8 : i64
          %35 = llvm.udiv %34, %9 : i64
          %36 = llvm.getelementptr %33[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %3 ["align"(%36, %7 : !llvm.ptr, i64)] : i1
          %37 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %38 = llvm.extractvalue %37[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %39 = llvm.zext %38 : i32 to i64
          %40 = llvm.mul %39, %20 overflow<nsw> : i64
          llvm.br ^bb1(%21 : i64)
        ^bb1(%41: i64):  // 2 preds: ^bb0, ^bb2
          %42 = llvm.icmp "slt" %41, %20 : i64
          llvm.cond_br %42, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %43 = llvm.add %40, %41 : i64
          %44 = llvm.insertelement %43, %1[%0 : i32] : vector<8xi64>
          %45 = llvm.shufflevector %44, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi64> 
          %46 = llvm.add %45, %2 : vector<8xi64>
          %47 = llvm.srem %46, %18 : vector<8xi64>
          %48 = llvm.sdiv %46, %18 : vector<8xi64>
          %49 = llvm.srem %48, %18 : vector<8xi64>
          %50 = llvm.sdiv %48, %18 : vector<8xi64>
          %51 = llvm.srem %50, %17 : vector<8xi64>
          %52 = llvm.sitofp %49 : vector<8xi64> to vector<8xf32>
          %53 = llvm.fadd %52, %16 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %54 = llvm.fdiv %53, %15 : vector<8xf32>
          %55 = llvm.fsub %54, %16 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %56 = llvm.fcmp "ugt" %55, %14 : vector<8xf32>
          %57 = llvm.select %56, %55, %14 : vector<8xi1>, vector<8xf32>
          %58 = llvm.fcmp "uno" %14, %14 : vector<8xf32>
          %59 = llvm.select %58, %14, %57 : vector<8xi1>, vector<8xf32>
          %60 = llvm.fcmp "ult" %59, %13 : vector<8xf32>
          %61 = llvm.select %60, %59, %13 : vector<8xi1>, vector<8xf32>
          %62 = llvm.fcmp "uno" %13, %13 : vector<8xf32>
          %63 = llvm.select %62, %13, %61 : vector<8xi1>, vector<8xf32>
          %64 = llvm.sitofp %47 : vector<8xi64> to vector<8xf32>
          %65 = llvm.fadd %64, %16 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %66 = llvm.fdiv %65, %15 : vector<8xf32>
          %67 = llvm.fsub %66, %16 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %68 = llvm.fcmp "ugt" %67, %14 : vector<8xf32>
          %69 = llvm.select %68, %67, %14 : vector<8xi1>, vector<8xf32>
          %70 = llvm.select %58, %14, %69 : vector<8xi1>, vector<8xf32>
          %71 = llvm.fcmp "ult" %70, %13 : vector<8xf32>
          %72 = llvm.select %71, %70, %13 : vector<8xi1>, vector<8xf32>
          %73 = llvm.select %62, %13, %72 : vector<8xi1>, vector<8xf32>
          %74 = llvm.intr.floor(%63) : (vector<8xf32>) -> vector<8xf32>
          %75 = llvm.fadd %63, %12 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %76 = llvm.intr.floor(%75) : (vector<8xf32>) -> vector<8xf32>
          %77 = llvm.fptosi %74 : vector<8xf32> to vector<8xi64>
          %78 = llvm.fcmp "ult" %75, %13 : vector<8xf32>
          %79 = llvm.select %78, %75, %13 : vector<8xi1>, vector<8xf32>
          %80 = llvm.select %62, %13, %79 : vector<8xi1>, vector<8xf32>
          %81 = llvm.fptosi %80 : vector<8xf32> to vector<8xi64>
          %82 = llvm.intr.floor(%73) : (vector<8xf32>) -> vector<8xf32>
          %83 = llvm.fadd %73, %12 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %84 = llvm.intr.floor(%83) : (vector<8xf32>) -> vector<8xf32>
          %85 = llvm.fptosi %82 : vector<8xf32> to vector<8xi64>
          %86 = llvm.fcmp "ult" %83, %13 : vector<8xf32>
          %87 = llvm.select %86, %83, %13 : vector<8xi1>, vector<8xf32>
          %88 = llvm.select %62, %13, %87 : vector<8xi1>, vector<8xf32>
          %89 = llvm.fptosi %88 : vector<8xf32> to vector<8xi64>
          %90 = llvm.mul %51, %10 : vector<8xi64>
          %91 = llvm.add %77, %90 : vector<8xi64>
          %92 = llvm.mul %91, %10 : vector<8xi64>
          %93 = llvm.add %85, %92 : vector<8xi64>
          %94 = llvm.mul %21, %4 : i64
          %95 = llvm.mul %21, %5 : i64
          %96 = llvm.add %94, %95 : i64
          %97 = llvm.mul %21, %6 : i64
          %98 = llvm.add %96, %97 : i64
          %99 = llvm.add %98, %21 : i64
          %100 = llvm.getelementptr %29[%99] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %101 = llvm.getelementptr %100[%93] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %102 = llvm.intr.masked.gather %101, %11, %14 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %103 = llvm.add %89, %92 : vector<8xi64>
          %104 = llvm.getelementptr %100[%103] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %105 = llvm.intr.masked.gather %104, %11, %14 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %106 = llvm.add %81, %90 : vector<8xi64>
          %107 = llvm.mul %106, %10 : vector<8xi64>
          %108 = llvm.add %85, %107 : vector<8xi64>
          %109 = llvm.getelementptr %100[%108] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %110 = llvm.intr.masked.gather %109, %11, %14 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %111 = llvm.add %89, %107 : vector<8xi64>
          %112 = llvm.getelementptr %100[%111] : (!llvm.ptr, vector<8xi64>) -> vector<8x!llvm.ptr>, f32
          %113 = llvm.intr.masked.gather %112, %11, %14 {alignment = 4 : i32} : (vector<8x!llvm.ptr>, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %114 = llvm.fsub %76, %63 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %115 = llvm.fsub %63, %74 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %116 = llvm.fsub %84, %73 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %117 = llvm.fsub %73, %82 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %118 = llvm.fmul %116, %102 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %119 = llvm.fmul %117, %105 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %120 = llvm.fadd %118, %119 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %121 = llvm.fmul %114, %120 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %122 = llvm.fmul %116, %110 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %123 = llvm.fmul %117, %113 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %124 = llvm.fadd %122, %123 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %125 = llvm.fmul %115, %124 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %126 = llvm.fadd %121, %125 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %127 = llvm.getelementptr %36[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %126, %127 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %128 = llvm.add %41, %19 : i64
          llvm.br ^bb1(%128 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_210_embedded_elf_riscv_64_main_graph$async_dispatch_210_elementwise_broadcast_802816_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_210_embedded_elf_riscv_64_main_graph$async_dispatch_210_elementwise_broadcast_802816_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_210_embedded_elf_riscv_64_main_graph$async_dispatch_210_elementwise_broadcast_802816_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_210_embedded_elf_riscv_64_main_graph$async_dispatch_210_elementwise_broadcast_802816_f32_buffer = util.global.load immutable @main_graph$async_dispatch_210_embedded_elf_riscv_64_main_graph$async_dispatch_210_elementwise_broadcast_802816_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_210::@embedded_elf_riscv_64::@main_graph$async_dispatch_210_elementwise_broadcast_802816_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_210) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_210::@embedded_elf_riscv_64::@main_graph$async_dispatch_210_elementwise_broadcast_802816_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_210_embedded_elf_riscv_64_main_graph$async_dispatch_210_elementwise_broadcast_802816_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_210_embedded_elf_riscv_64_main_graph$async_dispatch_210_elementwise_broadcast_802816_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
