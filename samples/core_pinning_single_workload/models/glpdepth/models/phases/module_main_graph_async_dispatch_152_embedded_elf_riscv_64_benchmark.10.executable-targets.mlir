#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_152 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_152_unpack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c56 = arith.constant 56 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c56, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_152_unpack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xi32>
          %2 = llvm.mlir.constant(2401 : index) : i64
          %3 = llvm.mlir.constant(64 : index) : i64
          %4 = llvm.mlir.constant(true) : i1
          %5 = llvm.mlir.constant(3136 : index) : i64
          %6 = llvm.mlir.constant(448 : index) : i64
          %7 = llvm.mlir.constant(224 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]> : vector<32xi32>) : vector<32xi32>
          %11 = llvm.mlir.constant(-1 : index) : i64
          %12 = llvm.mlir.constant(7 : index) : i64
          %13 = llvm.mlir.constant(6 : index) : i64
          %14 = llvm.mlir.constant(5 : index) : i64
          %15 = llvm.mlir.constant(4 : index) : i64
          %16 = llvm.mlir.constant(3 : index) : i64
          %17 = llvm.mlir.constant(2 : index) : i64
          %18 = llvm.mlir.constant(1 : index) : i64
          %19 = llvm.mlir.constant(32 : index) : i64
          %20 = llvm.mlir.constant(49 : index) : i64
          %21 = llvm.mlir.constant(0 : index) : i64
          %22 = llvm.mlir.constant(1069056 : index) : i64
          %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %24 = llvm.extractvalue %23[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.load %24 : !llvm.ptr -> i32
          %26 = llvm.zext %25 : i32 to i64
          %27 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
          %29 = llvm.mul %22, %8 : i64
          %30 = llvm.udiv %29, %9 : i64
          %31 = llvm.getelementptr %28[%30] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%31, %3 : !llvm.ptr, i64)] : i1
          %32 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %33 = llvm.extractvalue %32[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %34 = llvm.getelementptr %33[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %35 = llvm.load %34 : !llvm.ptr -> !llvm.ptr
          %36 = llvm.mul %26, %8 : i64
          %37 = llvm.udiv %36, %9 : i64
          %38 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%38, %3 : !llvm.ptr, i64)] : i1
          %39 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %40 = llvm.extractvalue %39[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %41 = llvm.zext %40 : i32 to i64
          %42 = llvm.sdiv %41, %12 : i64
          %43 = llvm.mul %42, %12 : i64
          %44 = llvm.icmp "ne" %41, %43 : i64
          %45 = llvm.icmp "slt" %41, %21 : i64
          %46 = llvm.and %44, %45 : i1
          %47 = llvm.add %42, %11 : i64
          %48 = llvm.select %46, %47, %42 : i1, i64
          %49 = llvm.srem %41, %12 : i64
          %50 = llvm.icmp "slt" %49, %21 : i64
          %51 = llvm.add %49, %12 overflow<nsw> : i64
          %52 = llvm.select %50, %51, %49 : i1, i64
          %53 = llvm.mul %52, %12 overflow<nsw> : i64
          %54 = llvm.icmp "slt" %53, %21 : i64
          %55 = llvm.sub %11, %53 : i64
          %56 = llvm.select %54, %55, %53 : i1, i64
          %57 = llvm.sdiv %56, %12 : i64
          %58 = llvm.sub %11, %57 : i64
          %59 = llvm.select %54, %58, %57 : i1, i64
          llvm.br ^bb1(%21 : i64)
        ^bb1(%60: i64):  // 2 preds: ^bb0, ^bb2
          %61 = llvm.icmp "slt" %60, %20 : i64
          llvm.cond_br %61, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %62 = llvm.sub %20, %60 : i64
          %63 = llvm.icmp "slt" %62, %19 : i64
          %64 = llvm.select %63, %62, %19 : i1, i64
          %65 = llvm.icmp "slt" %60, %21 : i64
          %66 = llvm.sub %11, %60 : i64
          %67 = llvm.select %65, %66, %60 : i1, i64
          %68 = llvm.sdiv %67, %19 : i64
          %69 = llvm.sub %11, %68 : i64
          %70 = llvm.select %65, %69, %68 : i1, i64
          %71 = llvm.mul %48, %5 : i64
          %72 = llvm.mul %59, %6 : i64
          %73 = llvm.add %71, %72 : i64
          %74 = llvm.mul %70, %7 : i64
          %75 = llvm.add %73, %74 : i64
          %76 = llvm.mul %21, %19 : i64
          %77 = llvm.add %75, %76 : i64
          %78 = llvm.add %77, %21 : i64
          %79 = llvm.getelementptr %31[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %80 = llvm.load %79 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %81 = llvm.mul %18, %19 : i64
          %82 = llvm.add %75, %81 : i64
          %83 = llvm.add %82, %21 : i64
          %84 = llvm.getelementptr %31[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %85 = llvm.load %84 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %86 = llvm.mul %17, %19 : i64
          %87 = llvm.add %75, %86 : i64
          %88 = llvm.add %87, %21 : i64
          %89 = llvm.getelementptr %31[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %90 = llvm.load %89 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %91 = llvm.mul %16, %19 : i64
          %92 = llvm.add %75, %91 : i64
          %93 = llvm.add %92, %21 : i64
          %94 = llvm.getelementptr %31[%93] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %95 = llvm.load %94 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %96 = llvm.mul %15, %19 : i64
          %97 = llvm.add %75, %96 : i64
          %98 = llvm.add %97, %21 : i64
          %99 = llvm.getelementptr %31[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %100 = llvm.load %99 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %101 = llvm.mul %14, %19 : i64
          %102 = llvm.add %75, %101 : i64
          %103 = llvm.add %102, %21 : i64
          %104 = llvm.getelementptr %31[%103] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %105 = llvm.load %104 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %106 = llvm.mul %13, %19 : i64
          %107 = llvm.add %75, %106 : i64
          %108 = llvm.add %107, %21 : i64
          %109 = llvm.getelementptr %31[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %110 = llvm.load %109 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %111 = llvm.trunc %64 : i64 to i32
          %112 = llvm.insertelement %111, %1[%0 : i32] : vector<32xi32>
          %113 = llvm.shufflevector %112, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xi32> 
          %114 = llvm.icmp "sgt" %113, %10 : vector<32xi32>
          %115 = llvm.mul %48, %2 : i64
          %116 = llvm.mul %53, %20 : i64
          %117 = llvm.add %115, %116 : i64
          %118 = llvm.add %117, %60 : i64
          %119 = llvm.getelementptr %38[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %80, %119, %114 {alignment = 4 : i32} : vector<32xf32>, vector<32xi1> into !llvm.ptr
          %120 = llvm.add %53, %18 : i64
          %121 = llvm.mul %120, %20 : i64
          %122 = llvm.add %115, %121 : i64
          %123 = llvm.add %122, %60 : i64
          %124 = llvm.getelementptr %38[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %85, %124, %114 {alignment = 4 : i32} : vector<32xf32>, vector<32xi1> into !llvm.ptr
          %125 = llvm.add %53, %17 : i64
          %126 = llvm.mul %125, %20 : i64
          %127 = llvm.add %115, %126 : i64
          %128 = llvm.add %127, %60 : i64
          %129 = llvm.getelementptr %38[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %90, %129, %114 {alignment = 4 : i32} : vector<32xf32>, vector<32xi1> into !llvm.ptr
          %130 = llvm.add %53, %16 : i64
          %131 = llvm.mul %130, %20 : i64
          %132 = llvm.add %115, %131 : i64
          %133 = llvm.add %132, %60 : i64
          %134 = llvm.getelementptr %38[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %95, %134, %114 {alignment = 4 : i32} : vector<32xf32>, vector<32xi1> into !llvm.ptr
          %135 = llvm.add %53, %15 : i64
          %136 = llvm.mul %135, %20 : i64
          %137 = llvm.add %115, %136 : i64
          %138 = llvm.add %137, %60 : i64
          %139 = llvm.getelementptr %38[%138] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %100, %139, %114 {alignment = 4 : i32} : vector<32xf32>, vector<32xi1> into !llvm.ptr
          %140 = llvm.add %53, %14 : i64
          %141 = llvm.mul %140, %20 : i64
          %142 = llvm.add %115, %141 : i64
          %143 = llvm.add %142, %60 : i64
          %144 = llvm.getelementptr %38[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %105, %144, %114 {alignment = 4 : i32} : vector<32xf32>, vector<32xi1> into !llvm.ptr
          %145 = llvm.add %53, %13 : i64
          %146 = llvm.mul %145, %20 : i64
          %147 = llvm.add %115, %146 : i64
          %148 = llvm.add %147, %60 : i64
          %149 = llvm.getelementptr %38[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %110, %149, %114 {alignment = 4 : i32} : vector<32xf32>, vector<32xi1> into !llvm.ptr
          %150 = llvm.add %60, %19 : i64
          llvm.br ^bb1(%150 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_152_embedded_elf_riscv_64_main_graph$async_dispatch_152_unpack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_152_embedded_elf_riscv_64_main_graph$async_dispatch_152_unpack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_152_embedded_elf_riscv_64_main_graph$async_dispatch_152_unpack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c677376_i32 = arith.constant 677376 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_152_embedded_elf_riscv_64_main_graph$async_dispatch_152_unpack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_152_embedded_elf_riscv_64_main_graph$async_dispatch_152_unpack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_152::@embedded_elf_riscv_64::@main_graph$async_dispatch_152_unpack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_152) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_152::@embedded_elf_riscv_64::@main_graph$async_dispatch_152_unpack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c677376_i32]) bindings([
      (%main_graph$async_dispatch_152_embedded_elf_riscv_64_main_graph$async_dispatch_152_unpack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_152_embedded_elf_riscv_64_main_graph$async_dispatch_152_unpack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
