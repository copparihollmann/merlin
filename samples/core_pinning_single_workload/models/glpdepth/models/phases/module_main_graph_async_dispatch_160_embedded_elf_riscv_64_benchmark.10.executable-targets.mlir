#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_160 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_160_unpack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c28 = arith.constant 28 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c28, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_160_unpack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(256 : index) : i64
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.constant(1792 : index) : i64
          %4 = llvm.mlir.constant(224 : index) : i64
          %5 = llvm.mlir.constant(8 : i64) : i64
          %6 = llvm.mlir.constant(32 : i64) : i64
          %7 = llvm.mlir.constant(-1 : index) : i64
          %8 = llvm.mlir.constant(7 : index) : i64
          %9 = llvm.mlir.constant(6 : index) : i64
          %10 = llvm.mlir.constant(5 : index) : i64
          %11 = llvm.mlir.constant(4 : index) : i64
          %12 = llvm.mlir.constant(3 : index) : i64
          %13 = llvm.mlir.constant(2 : index) : i64
          %14 = llvm.mlir.constant(1 : index) : i64
          %15 = llvm.mlir.constant(32 : index) : i64
          %16 = llvm.mlir.constant(64 : index) : i64
          %17 = llvm.mlir.constant(0 : index) : i64
          %18 = llvm.mlir.constant(627200 : index) : i64
          %19 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %20 = llvm.extractvalue %19[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %21 = llvm.load %20 : !llvm.ptr -> i32
          %22 = llvm.zext %21 : i32 to i64
          %23 = llvm.extractvalue %19[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %24 = llvm.load %23 : !llvm.ptr -> !llvm.ptr
          %25 = llvm.mul %22, %5 : i64
          %26 = llvm.udiv %25, %6 : i64
          %27 = llvm.getelementptr %24[%26] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %2 ["align"(%27, %16 : !llvm.ptr, i64)] : i1
          %28 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %29 = llvm.extractvalue %28[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %30 = llvm.getelementptr %29[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
          %32 = llvm.mul %18, %5 : i64
          %33 = llvm.udiv %32, %6 : i64
          %34 = llvm.getelementptr %31[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %2 ["align"(%34, %16 : !llvm.ptr, i64)] : i1
          %35 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %36 = llvm.extractvalue %35[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %37 = llvm.zext %36 : i32 to i64
          %38 = llvm.sdiv %37, %11 : i64
          %39 = llvm.mul %38, %11 : i64
          %40 = llvm.icmp "ne" %37, %39 : i64
          %41 = llvm.icmp "slt" %37, %17 : i64
          %42 = llvm.and %40, %41 : i1
          %43 = llvm.add %38, %7 : i64
          %44 = llvm.select %42, %43, %38 : i1, i64
          %45 = llvm.srem %37, %11 : i64
          %46 = llvm.icmp "slt" %45, %17 : i64
          %47 = llvm.add %45, %11 overflow<nsw> : i64
          %48 = llvm.select %46, %47, %45 : i1, i64
          %49 = llvm.mul %44, %8 overflow<nsw> : i64
          %50 = llvm.mul %48, %16 overflow<nsw> : i64
          %51 = llvm.icmp "slt" %49, %17 : i64
          %52 = llvm.sub %7, %49 : i64
          %53 = llvm.select %51, %52, %49 : i1, i64
          %54 = llvm.sdiv %53, %8 : i64
          %55 = llvm.sub %7, %54 : i64
          %56 = llvm.select %51, %55, %54 : i1, i64
          %57 = llvm.icmp "slt" %50, %17 : i64
          %58 = llvm.sub %7, %50 : i64
          %59 = llvm.select %57, %58, %50 : i1, i64
          %60 = llvm.sdiv %59, %15 : i64
          %61 = llvm.sub %7, %60 : i64
          %62 = llvm.select %57, %61, %60 : i1, i64
          llvm.br ^bb1(%17 : i64)
        ^bb1(%63: i64):  // 2 preds: ^bb0, ^bb2
          %64 = llvm.icmp "slt" %63, %16 : i64
          llvm.cond_br %64, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %65 = llvm.icmp "slt" %63, %17 : i64
          %66 = llvm.sub %7, %63 : i64
          %67 = llvm.select %65, %66, %63 : i1, i64
          %68 = llvm.sdiv %67, %15 : i64
          %69 = llvm.sub %7, %68 : i64
          %70 = llvm.select %65, %69, %68 : i1, i64
          %71 = llvm.add %70, %62 : i64
          %72 = llvm.mul %56, %3 : i64
          %73 = llvm.mul %71, %4 : i64
          %74 = llvm.add %72, %73 : i64
          %75 = llvm.mul %17, %15 : i64
          %76 = llvm.add %74, %75 : i64
          %77 = llvm.add %76, %17 : i64
          %78 = llvm.getelementptr %27[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %79 = llvm.load %78 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %80 = llvm.mul %14, %15 : i64
          %81 = llvm.add %74, %80 : i64
          %82 = llvm.add %81, %17 : i64
          %83 = llvm.getelementptr %27[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %84 = llvm.load %83 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %85 = llvm.mul %13, %15 : i64
          %86 = llvm.add %74, %85 : i64
          %87 = llvm.add %86, %17 : i64
          %88 = llvm.getelementptr %27[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %89 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %90 = llvm.mul %12, %15 : i64
          %91 = llvm.add %74, %90 : i64
          %92 = llvm.add %91, %17 : i64
          %93 = llvm.getelementptr %27[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %94 = llvm.load %93 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %95 = llvm.mul %11, %15 : i64
          %96 = llvm.add %74, %95 : i64
          %97 = llvm.add %96, %17 : i64
          %98 = llvm.getelementptr %27[%97] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %99 = llvm.load %98 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %100 = llvm.mul %10, %15 : i64
          %101 = llvm.add %74, %100 : i64
          %102 = llvm.add %101, %17 : i64
          %103 = llvm.getelementptr %27[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %104 = llvm.load %103 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %105 = llvm.mul %9, %15 : i64
          %106 = llvm.add %74, %105 : i64
          %107 = llvm.add %106, %17 : i64
          %108 = llvm.getelementptr %27[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %109 = llvm.load %108 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %110 = llvm.add %50, %63 : i64
          %111 = llvm.mul %49, %1 : i64
          %112 = llvm.add %111, %110 : i64
          %113 = llvm.getelementptr %34[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %79, %113 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %114 = llvm.add %49, %14 : i64
          %115 = llvm.mul %114, %1 : i64
          %116 = llvm.add %115, %110 : i64
          %117 = llvm.getelementptr %34[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %84, %117 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %118 = llvm.add %49, %13 : i64
          %119 = llvm.mul %118, %1 : i64
          %120 = llvm.add %119, %110 : i64
          %121 = llvm.getelementptr %34[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %89, %121 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %122 = llvm.add %49, %12 : i64
          %123 = llvm.mul %122, %1 : i64
          %124 = llvm.add %123, %110 : i64
          %125 = llvm.getelementptr %34[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %94, %125 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %126 = llvm.add %49, %11 : i64
          %127 = llvm.mul %126, %1 : i64
          %128 = llvm.add %127, %110 : i64
          %129 = llvm.getelementptr %34[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %99, %129 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %130 = llvm.add %49, %10 : i64
          %131 = llvm.mul %130, %1 : i64
          %132 = llvm.add %131, %110 : i64
          %133 = llvm.getelementptr %34[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %104, %133 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %134 = llvm.add %49, %9 : i64
          %135 = llvm.mul %134, %1 : i64
          %136 = llvm.add %135, %110 : i64
          %137 = llvm.getelementptr %34[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %109, %137 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %138 = llvm.add %63, %15 : i64
          llvm.br ^bb1(%138 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_160_embedded_elf_riscv_64_main_graph$async_dispatch_160_unpack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_160_embedded_elf_riscv_64_main_graph$async_dispatch_160_unpack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_160_embedded_elf_riscv_64_main_graph$async_dispatch_160_unpack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c526848_i32 = arith.constant 526848 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_160_embedded_elf_riscv_64_main_graph$async_dispatch_160_unpack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_160_embedded_elf_riscv_64_main_graph$async_dispatch_160_unpack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_160::@embedded_elf_riscv_64::@main_graph$async_dispatch_160_unpack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_160) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_160::@embedded_elf_riscv_64::@main_graph$async_dispatch_160_unpack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c526848_i32]) bindings([
      (%main_graph$async_dispatch_160_embedded_elf_riscv_64_main_graph$async_dispatch_160_unpack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_160_embedded_elf_riscv_64_main_graph$async_dispatch_160_unpack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
