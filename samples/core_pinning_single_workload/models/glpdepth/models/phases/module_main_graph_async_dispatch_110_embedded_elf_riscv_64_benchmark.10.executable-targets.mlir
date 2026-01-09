#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_110 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_110_elementwise_broadcast_5x49x32_f32_pack ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c2 = arith.constant 2 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c2, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_110_elementwise_broadcast_5x49x32_f32_pack(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(6 : i64) : i64
          %1 = llvm.mlir.constant(5 : i64) : i64
          %2 = llvm.mlir.constant(4 : i64) : i64
          %3 = llvm.mlir.constant(3 : i64) : i64
          %4 = llvm.mlir.constant(2 : i64) : i64
          %5 = llvm.mlir.constant(1 : i64) : i64
          %6 = llvm.mlir.constant(0 : i32) : i32
          %7 = llvm.mlir.poison : vector<7xi32>
          %8 = llvm.mlir.constant(0 : i64) : i64
          %9 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xindex>) : vector<7xi64>
          %10 = llvm.mlir.constant(1715 : index) : i64
          %11 = llvm.mlir.constant(343 : index) : i64
          %12 = llvm.mlir.constant(64 : index) : i64
          %13 = llvm.mlir.constant(true) : i1
          %14 = llvm.mlir.constant(7840 : index) : i64
          %15 = llvm.mlir.constant(1568 : index) : i64
          %16 = llvm.mlir.constant(8 : i64) : i64
          %17 = llvm.mlir.constant(32 : i64) : i64
          %18 = llvm.mlir.poison : !llvm.array<7 x vector<1xf32>>
          %19 = llvm.mlir.constant(dense<false> : vector<1x7x1xi1>) : !llvm.array<1 x array<7 x vector<1xi1>>>
          %20 = llvm.mlir.constant(dense<true> : vector<1x7x1xi1>) : !llvm.array<1 x array<7 x vector<1xi1>>>
          %21 = llvm.mlir.constant(6 : index) : i64
          %22 = llvm.mlir.constant(4 : index) : i64
          %23 = llvm.mlir.constant(3 : index) : i64
          %24 = llvm.mlir.constant(2 : index) : i64
          %25 = llvm.mlir.constant(-28 : index) : i64
          %26 = llvm.mlir.constant(49 : index) : i64
          %27 = llvm.mlir.constant(-1 : index) : i64
          %28 = llvm.mlir.constant(28 : index) : i64
          %29 = llvm.mlir.constant(dense<0.000000e+00> : vector<7xf32>) : vector<7xf32>
          %30 = llvm.mlir.poison : vector<7xf32>
          %31 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xi32>) : vector<7xi32>
          %32 = llvm.mlir.constant(0 : index) : i64
          %33 = llvm.mlir.constant(1 : index) : i64
          %34 = llvm.mlir.constant(5 : index) : i64
          %35 = llvm.mlir.constant(32 : index) : i64
          %36 = llvm.mlir.constant(7 : index) : i64
          %37 = llvm.alloca %36 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %38 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %39 = llvm.extractvalue %38[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %40 = llvm.load %39 : !llvm.ptr -> i32
          %41 = llvm.getelementptr %39[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %42 = llvm.load %41 : !llvm.ptr -> i32
          %43 = llvm.zext %40 : i32 to i64
          %44 = llvm.zext %42 : i32 to i64
          %45 = llvm.extractvalue %38[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %46 = llvm.load %45 : !llvm.ptr -> !llvm.ptr
          %47 = llvm.mul %43, %16 : i64
          %48 = llvm.udiv %47, %17 : i64
          %49 = llvm.getelementptr %46[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%49, %12 : !llvm.ptr, i64)] : i1
          %50 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %51 = llvm.extractvalue %50[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %52 = llvm.getelementptr %51[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %53 = llvm.load %52 : !llvm.ptr -> !llvm.ptr
          %54 = llvm.mul %44, %16 : i64
          %55 = llvm.udiv %54, %17 : i64
          %56 = llvm.getelementptr %53[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%56, %12 : !llvm.ptr, i64)] : i1
          %57 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %58 = llvm.extractvalue %57[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %59 = llvm.zext %58 : i32 to i64
          %60 = llvm.mul %59, %28 overflow<nsw> : i64
          %61 = llvm.mul %59, %25 overflow<nsw> : i64
          %62 = llvm.add %61, %26 : i64
          %63 = llvm.icmp "slt" %62, %28 : i64
          %64 = llvm.select %63, %62, %28 : i1, i64
          %65 = llvm.extractelement %9[%8 : i64] : vector<7xi64>
          llvm.br ^bb1(%32 : i64)
        ^bb1(%66: i64):  // 2 preds: ^bb0, ^bb7
          %67 = llvm.icmp "slt" %66, %34 : i64
          llvm.cond_br %67, ^bb2(%32 : i64), ^bb8
        ^bb2(%68: i64):  // 2 preds: ^bb1, ^bb6
          %69 = llvm.icmp "slt" %68, %64 : i64
          llvm.cond_br %69, ^bb3, ^bb7
        ^bb3:  // pred: ^bb2
          %70 = llvm.add %60, %68 : i64
          llvm.br ^bb4(%32 : i64)
        ^bb4(%71: i64):  // 2 preds: ^bb3, ^bb5
          %72 = llvm.icmp "slt" %71, %35 : i64
          llvm.cond_br %72, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %73 = llvm.sub %35, %71 : i64
          %74 = llvm.icmp "slt" %73, %36 : i64
          %75 = llvm.select %74, %73, %36 : i1, i64
          %76 = llvm.add %71, %65 : i64
          %77 = llvm.trunc %75 : i64 to i32
          %78 = llvm.insertelement %77, %7[%6 : i32] : vector<7xi32>
          %79 = llvm.shufflevector %78, %7 [0, 0, 0, 0, 0, 0, 0] : vector<7xi32> 
          %80 = llvm.icmp "sgt" %79, %31 : vector<7xi32>
          %81 = llvm.mul %33, %14 : i64
          %82 = llvm.mul %32, %14 : i64
          %83 = llvm.add %81, %82 : i64
          %84 = llvm.mul %66, %15 : i64
          %85 = llvm.add %83, %84 : i64
          %86 = llvm.mul %70, %35 : i64
          %87 = llvm.add %85, %86 : i64
          %88 = llvm.add %87, %76 : i64
          %89 = llvm.getelementptr %49[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %90 = llvm.intr.masked.load %89, %80, %30 {alignment = 4 : i32} : (!llvm.ptr, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %91 = llvm.mul %32, %36 : i64
          %92 = llvm.add %91, %91 : i64
          %93 = llvm.add %92, %32 : i64
          %94 = llvm.getelementptr %37[%93] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %90, %94, %80 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %95 = llvm.icmp "slt" %71, %32 : i64
          %96 = llvm.sub %27, %71 : i64
          %97 = llvm.select %95, %96, %71 : i1, i64
          %98 = llvm.sdiv %97, %36 : i64
          %99 = llvm.sub %27, %98 : i64
          %100 = llvm.select %95, %99, %98 : i1, i64
          %101 = llvm.icmp "sle" %75, %32 : i64
          %102 = llvm.sub %32, %75 : i64
          %103 = llvm.sub %75, %33 : i64
          %104 = llvm.select %101, %102, %103 : i1, i64
          %105 = llvm.sdiv %104, %36 : i64
          %106 = llvm.sub %32, %105 : i64
          %107 = llvm.add %105, %33 : i64
          %108 = llvm.select %101, %106, %107 : i1, i64
          %109 = llvm.intr.masked.load %94, %80, %29 {alignment = 4 : i32} : (!llvm.ptr, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %110 = llvm.icmp "sgt" %108, %32 : i64
          %111 = llvm.select %110, %20, %19 : i1, !llvm.array<1 x array<7 x vector<1xi1>>>
          %112 = llvm.extractelement %109[%8 : i64] : vector<7xf32>
          %113 = llvm.extractvalue %18[0] : !llvm.array<7 x vector<1xf32>> 
          %114 = llvm.insertelement %112, %113[%8 : i64] : vector<1xf32>
          %115 = llvm.extractelement %109[%5 : i64] : vector<7xf32>
          %116 = llvm.extractvalue %18[1] : !llvm.array<7 x vector<1xf32>> 
          %117 = llvm.insertelement %115, %116[%8 : i64] : vector<1xf32>
          %118 = llvm.extractelement %109[%4 : i64] : vector<7xf32>
          %119 = llvm.extractvalue %18[2] : !llvm.array<7 x vector<1xf32>> 
          %120 = llvm.insertelement %118, %119[%8 : i64] : vector<1xf32>
          %121 = llvm.extractelement %109[%3 : i64] : vector<7xf32>
          %122 = llvm.extractvalue %18[3] : !llvm.array<7 x vector<1xf32>> 
          %123 = llvm.insertelement %121, %122[%8 : i64] : vector<1xf32>
          %124 = llvm.extractelement %109[%2 : i64] : vector<7xf32>
          %125 = llvm.extractvalue %18[4] : !llvm.array<7 x vector<1xf32>> 
          %126 = llvm.insertelement %124, %125[%8 : i64] : vector<1xf32>
          %127 = llvm.extractelement %109[%1 : i64] : vector<7xf32>
          %128 = llvm.extractvalue %18[5] : !llvm.array<7 x vector<1xf32>> 
          %129 = llvm.insertelement %127, %128[%8 : i64] : vector<1xf32>
          %130 = llvm.extractelement %109[%0 : i64] : vector<7xf32>
          %131 = llvm.extractvalue %18[6] : !llvm.array<7 x vector<1xf32>> 
          %132 = llvm.insertelement %130, %131[%8 : i64] : vector<1xf32>
          %133 = llvm.extractvalue %111[0, 0] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %134 = llvm.mul %66, %10 : i64
          %135 = llvm.mul %100, %11 : i64
          %136 = llvm.add %134, %135 : i64
          %137 = llvm.mul %70, %36 : i64
          %138 = llvm.add %136, %137 : i64
          %139 = llvm.add %138, %32 : i64
          %140 = llvm.add %139, %32 : i64
          %141 = llvm.getelementptr %56[%140] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %114, %141, %133 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %142 = llvm.extractvalue %111[0, 1] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %143 = llvm.add %138, %33 : i64
          %144 = llvm.add %143, %32 : i64
          %145 = llvm.getelementptr %56[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %117, %145, %142 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %146 = llvm.extractvalue %111[0, 2] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %147 = llvm.add %138, %24 : i64
          %148 = llvm.add %147, %32 : i64
          %149 = llvm.getelementptr %56[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %120, %149, %146 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %150 = llvm.extractvalue %111[0, 3] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %151 = llvm.add %138, %23 : i64
          %152 = llvm.add %151, %32 : i64
          %153 = llvm.getelementptr %56[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %123, %153, %150 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %154 = llvm.extractvalue %111[0, 4] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %155 = llvm.add %138, %22 : i64
          %156 = llvm.add %155, %32 : i64
          %157 = llvm.getelementptr %56[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %126, %157, %154 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %158 = llvm.extractvalue %111[0, 5] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %159 = llvm.add %138, %34 : i64
          %160 = llvm.add %159, %32 : i64
          %161 = llvm.getelementptr %56[%160] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %129, %161, %158 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %162 = llvm.extractvalue %111[0, 6] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %163 = llvm.add %138, %21 : i64
          %164 = llvm.add %163, %32 : i64
          %165 = llvm.getelementptr %56[%164] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %132, %165, %162 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %166 = llvm.add %71, %36 : i64
          llvm.br ^bb4(%166 : i64)
        ^bb6:  // pred: ^bb4
          %167 = llvm.add %68, %33 : i64
          llvm.br ^bb2(%167 : i64)
        ^bb7:  // pred: ^bb2
          %168 = llvm.add %66, %33 : i64
          llvm.br ^bb1(%168 : i64)
        ^bb8:  // pred: ^bb1
          llvm.return %6 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_110_embedded_elf_riscv_64_main_graph$async_dispatch_110_elementwise_broadcast_5x49x32_f32_pack_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_110_embedded_elf_riscv_64_main_graph$async_dispatch_110_elementwise_broadcast_5x49x32_f32_pack_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_110_embedded_elf_riscv_64_main_graph$async_dispatch_110_elementwise_broadcast_5x49x32_f32_pack(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c401408_i32 = arith.constant 401408 : i32
    %c464128_i32 = arith.constant 464128 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_110_embedded_elf_riscv_64_main_graph$async_dispatch_110_elementwise_broadcast_5x49x32_f32_pack_buffer = util.global.load immutable @main_graph$async_dispatch_110_embedded_elf_riscv_64_main_graph$async_dispatch_110_elementwise_broadcast_5x49x32_f32_pack_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_110::@embedded_elf_riscv_64::@main_graph$async_dispatch_110_elementwise_broadcast_5x49x32_f32_pack) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_110) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_110::@embedded_elf_riscv_64::@main_graph$async_dispatch_110_elementwise_broadcast_5x49x32_f32_pack) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c401408_i32, %c464128_i32]) bindings([
      (%main_graph$async_dispatch_110_embedded_elf_riscv_64_main_graph$async_dispatch_110_elementwise_broadcast_5x49x32_f32_pack_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_110_embedded_elf_riscv_64_main_graph$async_dispatch_110_elementwise_broadcast_5x49x32_f32_pack_buffer : !hal.buffer)[%c32172032, %c32172032]
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
