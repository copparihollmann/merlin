#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_9 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_9_elementwise_broadcast_32x49_f32_pack ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        %c1_1 = arith.constant 1 : index
        hal.return %c1, %c1_0, %c1_1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_9_elementwise_broadcast_32x49_f32_pack(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<7xi64>
          %2 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xindex>) : vector<7xi64>
          %3 = llvm.mlir.constant(224 : index) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(1568 : index) : i64
          %7 = llvm.mlir.constant(8 : i64) : i64
          %8 = llvm.mlir.constant(32 : i64) : i64
          %9 = llvm.mlir.constant(-1 : index) : i64
          %10 = llvm.mlir.constant(dense<0.000000e+00> : vector<7xf32>) : vector<7xf32>
          %11 = llvm.mlir.constant(dense<true> : vector<7xi1>) : vector<7xi1>
          %12 = llvm.mlir.constant(dense<32> : vector<7xindex>) : vector<7xi64>
          %13 = llvm.mlir.constant(7 : index) : i64
          %14 = llvm.mlir.constant(1 : index) : i64
          %15 = llvm.mlir.constant(49 : index) : i64
          %16 = llvm.mlir.constant(32 : index) : i64
          %17 = llvm.mlir.constant(0 : index) : i64
          %18 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %19 = llvm.extractvalue %18[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %20 = llvm.load %19 : !llvm.ptr -> i32
          %21 = llvm.getelementptr %19[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %22 = llvm.load %21 : !llvm.ptr -> i32
          %23 = llvm.zext %20 : i32 to i64
          %24 = llvm.zext %22 : i32 to i64
          %25 = llvm.extractvalue %18[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %26 = llvm.load %25 : !llvm.ptr -> !llvm.ptr
          %27 = llvm.mul %23, %7 : i64
          %28 = llvm.udiv %27, %8 : i64
          %29 = llvm.getelementptr %26[%28] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%29, %4 : !llvm.ptr, i64)] : i1
          %30 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %31 = llvm.extractvalue %30[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %32 = llvm.getelementptr %31[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %33 = llvm.load %32 : !llvm.ptr -> !llvm.ptr
          %34 = llvm.mul %24, %7 : i64
          %35 = llvm.udiv %34, %8 : i64
          %36 = llvm.getelementptr %33[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%36, %4 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%17 : i64)
        ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb4
          %38 = llvm.icmp "slt" %37, %16 : i64
          llvm.cond_br %38, ^bb2(%17 : i64), ^bb5
        ^bb2(%39: i64):  // 2 preds: ^bb1, ^bb3
          %40 = llvm.icmp "slt" %39, %15 : i64
          llvm.cond_br %40, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %41 = llvm.insertelement %39, %1[%0 : i32] : vector<7xi64>
          %42 = llvm.shufflevector %41, %1 [0, 0, 0, 0, 0, 0, 0] : vector<7xi64> 
          %43 = llvm.add %42, %2 : vector<7xi64>
          %44 = llvm.mul %43, %12 : vector<7xi64>
          %45 = llvm.insertelement %37, %1[%0 : i32] : vector<7xi64>
          %46 = llvm.shufflevector %45, %1 [0, 0, 0, 0, 0, 0, 0] : vector<7xi64> 
          %47 = llvm.add %46, %44 : vector<7xi64>
          %48 = llvm.mul %17, %6 : i64
          %49 = llvm.add %48, %48 : i64
          %50 = llvm.add %49, %48 : i64
          %51 = llvm.mul %17, %16 : i64
          %52 = llvm.add %50, %51 : i64
          %53 = llvm.add %52, %17 : i64
          %54 = llvm.getelementptr %29[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %55 = llvm.getelementptr %54[%47] : (!llvm.ptr, vector<7xi64>) -> vector<7x!llvm.ptr>, f32
          %56 = llvm.intr.masked.gather %55, %11, %10 {alignment = 4 : i32} : (vector<7x!llvm.ptr>, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %57 = llvm.icmp "slt" %39, %17 : i64
          %58 = llvm.sub %9, %39 : i64
          %59 = llvm.select %57, %58, %39 : i1, i64
          %60 = llvm.sdiv %59, %13 : i64
          %61 = llvm.sub %9, %60 : i64
          %62 = llvm.select %57, %61, %60 : i1, i64
          %63 = llvm.mul %62, %3 : i64
          %64 = llvm.mul %37, %13 : i64
          %65 = llvm.add %63, %64 : i64
          %66 = llvm.add %65, %17 : i64
          %67 = llvm.add %66, %17 : i64
          %68 = llvm.getelementptr %36[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %56, %68 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %69 = llvm.add %39, %13 : i64
          llvm.br ^bb2(%69 : i64)
        ^bb4:  // pred: ^bb2
          %70 = llvm.add %37, %14 : i64
          llvm.br ^bb1(%70 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_9_embedded_elf_riscv_64_main_graph$async_dispatch_9_elementwise_broadcast_32x49_f32_pack_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_9_embedded_elf_riscv_64_main_graph$async_dispatch_9_elementwise_broadcast_32x49_f32_pack_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_9_embedded_elf_riscv_64_main_graph$async_dispatch_9_elementwise_broadcast_32x49_f32_pack(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c407680_i32 = arith.constant 407680 : i32
    %c401408_i32 = arith.constant 401408 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_9_embedded_elf_riscv_64_main_graph$async_dispatch_9_elementwise_broadcast_32x49_f32_pack_buffer = util.global.load immutable @main_graph$async_dispatch_9_embedded_elf_riscv_64_main_graph$async_dispatch_9_elementwise_broadcast_32x49_f32_pack_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_9::@embedded_elf_riscv_64::@main_graph$async_dispatch_9_elementwise_broadcast_32x49_f32_pack) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_9) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_9::@embedded_elf_riscv_64::@main_graph$async_dispatch_9_elementwise_broadcast_32x49_f32_pack) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c407680_i32, %c401408_i32]) bindings([
      (%main_graph$async_dispatch_9_embedded_elf_riscv_64_main_graph$async_dispatch_9_elementwise_broadcast_32x49_f32_pack_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_9_embedded_elf_riscv_64_main_graph$async_dispatch_9_elementwise_broadcast_32x49_f32_pack_buffer : !hal.buffer)[%c32172032, %c32172032]
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
