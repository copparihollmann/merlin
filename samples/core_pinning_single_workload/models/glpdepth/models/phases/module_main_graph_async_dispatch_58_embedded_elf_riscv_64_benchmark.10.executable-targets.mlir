#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_58 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_58_elementwise_broadcast_2x32x49_f32_pack ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        %c1_1 = arith.constant 1 : index
        hal.return %c1, %c1_0, %c1_1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_58_elementwise_broadcast_2x32x49_f32_pack(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<7xi64>
          %2 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xindex>) : vector<7xi64>
          %3 = llvm.mlir.constant(224 : index) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(3136 : index) : i64
          %7 = llvm.mlir.constant(1568 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.constant(-1 : index) : i64
          %11 = llvm.mlir.constant(dense<0.000000e+00> : vector<7xf32>) : vector<7xf32>
          %12 = llvm.mlir.constant(dense<true> : vector<7xi1>) : vector<7xi1>
          %13 = llvm.mlir.constant(dense<32> : vector<7xindex>) : vector<7xi64>
          %14 = llvm.mlir.constant(7 : index) : i64
          %15 = llvm.mlir.constant(1 : index) : i64
          %16 = llvm.mlir.constant(49 : index) : i64
          %17 = llvm.mlir.constant(32 : index) : i64
          %18 = llvm.mlir.constant(2 : index) : i64
          %19 = llvm.mlir.constant(0 : index) : i64
          %20 = llvm.mlir.constant(606208 : index) : i64
          %21 = llvm.mlir.constant(631296 : index) : i64
          %22 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %23 = llvm.extractvalue %22[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %24 = llvm.load %23 : !llvm.ptr -> !llvm.ptr
          %25 = llvm.mul %20, %8 : i64
          %26 = llvm.udiv %25, %9 : i64
          %27 = llvm.getelementptr %24[%26] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%27, %4 : !llvm.ptr, i64)] : i1
          %28 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %29 = llvm.extractvalue %28[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %30 = llvm.getelementptr %29[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
          %32 = llvm.mul %21, %8 : i64
          %33 = llvm.udiv %32, %9 : i64
          %34 = llvm.getelementptr %31[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%34, %4 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%19 : i64)
        ^bb1(%35: i64):  // 2 preds: ^bb0, ^bb7
          %36 = llvm.icmp "slt" %35, %18 : i64
          llvm.cond_br %36, ^bb2, ^bb8
        ^bb2:  // pred: ^bb1
          %37 = llvm.mul %35, %16 : i64
          llvm.br ^bb3(%19 : i64)
        ^bb3(%38: i64):  // 2 preds: ^bb2, ^bb6
          %39 = llvm.icmp "slt" %38, %17 : i64
          llvm.cond_br %39, ^bb4(%19 : i64), ^bb7
        ^bb4(%40: i64):  // 2 preds: ^bb3, ^bb5
          %41 = llvm.icmp "slt" %40, %16 : i64
          llvm.cond_br %41, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %42 = llvm.insertelement %40, %1[%0 : i32] : vector<7xi64>
          %43 = llvm.shufflevector %42, %1 [0, 0, 0, 0, 0, 0, 0] : vector<7xi64> 
          %44 = llvm.add %43, %2 : vector<7xi64>
          %45 = llvm.insertelement %37, %1[%0 : i32] : vector<7xi64>
          %46 = llvm.shufflevector %45, %1 [0, 0, 0, 0, 0, 0, 0] : vector<7xi64> 
          %47 = llvm.add %44, %46 : vector<7xi64>
          %48 = llvm.mul %47, %13 : vector<7xi64>
          %49 = llvm.insertelement %38, %1[%0 : i32] : vector<7xi64>
          %50 = llvm.shufflevector %49, %1 [0, 0, 0, 0, 0, 0, 0] : vector<7xi64> 
          %51 = llvm.add %50, %48 : vector<7xi64>
          %52 = llvm.mul %19, %6 : i64
          %53 = llvm.add %52, %52 : i64
          %54 = llvm.mul %19, %7 : i64
          %55 = llvm.add %53, %54 : i64
          %56 = llvm.mul %19, %17 : i64
          %57 = llvm.add %55, %56 : i64
          %58 = llvm.add %57, %19 : i64
          %59 = llvm.getelementptr %27[%58] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %60 = llvm.getelementptr %59[%51] : (!llvm.ptr, vector<7xi64>) -> vector<7x!llvm.ptr>, f32
          %61 = llvm.intr.masked.gather %60, %12, %11 {alignment = 4 : i32} : (vector<7x!llvm.ptr>, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %62 = llvm.icmp "slt" %40, %19 : i64
          %63 = llvm.sub %10, %40 : i64
          %64 = llvm.select %62, %63, %40 : i1, i64
          %65 = llvm.sdiv %64, %14 : i64
          %66 = llvm.sub %10, %65 : i64
          %67 = llvm.select %62, %66, %65 : i1, i64
          %68 = llvm.mul %35, %7 : i64
          %69 = llvm.mul %67, %3 : i64
          %70 = llvm.add %68, %69 : i64
          %71 = llvm.mul %38, %14 : i64
          %72 = llvm.add %70, %71 : i64
          %73 = llvm.add %72, %19 : i64
          %74 = llvm.add %73, %19 : i64
          %75 = llvm.getelementptr %34[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %61, %75 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %76 = llvm.add %40, %14 : i64
          llvm.br ^bb4(%76 : i64)
        ^bb6:  // pred: ^bb4
          %77 = llvm.add %38, %15 : i64
          llvm.br ^bb3(%77 : i64)
        ^bb7:  // pred: ^bb3
          %78 = llvm.add %35, %15 : i64
          llvm.br ^bb1(%78 : i64)
        ^bb8:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_58_embedded_elf_riscv_64_main_graph$async_dispatch_58_elementwise_broadcast_2x32x49_f32_pack_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_58_embedded_elf_riscv_64_main_graph$async_dispatch_58_elementwise_broadcast_2x32x49_f32_pack_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_58_embedded_elf_riscv_64_main_graph$async_dispatch_58_elementwise_broadcast_2x32x49_f32_pack(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_58_embedded_elf_riscv_64_main_graph$async_dispatch_58_elementwise_broadcast_2x32x49_f32_pack_buffer = util.global.load immutable @main_graph$async_dispatch_58_embedded_elf_riscv_64_main_graph$async_dispatch_58_elementwise_broadcast_2x32x49_f32_pack_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_58::@embedded_elf_riscv_64::@main_graph$async_dispatch_58_elementwise_broadcast_2x32x49_f32_pack) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_58) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_58::@embedded_elf_riscv_64::@main_graph$async_dispatch_58_elementwise_broadcast_2x32x49_f32_pack) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_58_embedded_elf_riscv_64_main_graph$async_dispatch_58_elementwise_broadcast_2x32x49_f32_pack_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_58_embedded_elf_riscv_64_main_graph$async_dispatch_58_elementwise_broadcast_2x32x49_f32_pack_buffer : !hal.buffer)[%c32172032, %c32172032]
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
