#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_14 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_14_elementwise_broadcast_49x32_f32_pack ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        %c1_1 = arith.constant 1 : index
        hal.return %c1, %c1_0, %c1_1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_14_elementwise_broadcast_49x32_f32_pack(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
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
          %10 = llvm.mlir.constant(343 : index) : i64
          %11 = llvm.mlir.constant(64 : index) : i64
          %12 = llvm.mlir.constant(true) : i1
          %13 = llvm.mlir.constant(1568 : index) : i64
          %14 = llvm.mlir.constant(8 : i64) : i64
          %15 = llvm.mlir.constant(32 : i64) : i64
          %16 = llvm.mlir.poison : !llvm.array<7 x vector<1xf32>>
          %17 = llvm.mlir.constant(dense<false> : vector<1x7x1xi1>) : !llvm.array<1 x array<7 x vector<1xi1>>>
          %18 = llvm.mlir.constant(dense<true> : vector<1x7x1xi1>) : !llvm.array<1 x array<7 x vector<1xi1>>>
          %19 = llvm.mlir.constant(6 : index) : i64
          %20 = llvm.mlir.constant(5 : index) : i64
          %21 = llvm.mlir.constant(4 : index) : i64
          %22 = llvm.mlir.constant(3 : index) : i64
          %23 = llvm.mlir.constant(2 : index) : i64
          %24 = llvm.mlir.constant(-1 : index) : i64
          %25 = llvm.mlir.constant(dense<0.000000e+00> : vector<7xf32>) : vector<7xf32>
          %26 = llvm.mlir.poison : vector<7xf32>
          %27 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xi32>) : vector<7xi32>
          %28 = llvm.mlir.constant(0 : index) : i64
          %29 = llvm.mlir.constant(1 : index) : i64
          %30 = llvm.mlir.constant(49 : index) : i64
          %31 = llvm.mlir.constant(32 : index) : i64
          %32 = llvm.mlir.constant(7 : index) : i64
          %33 = llvm.alloca %32 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %34 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %35 = llvm.extractvalue %34[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %36 = llvm.load %35 : !llvm.ptr -> i32
          %37 = llvm.getelementptr %35[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %38 = llvm.load %37 : !llvm.ptr -> i32
          %39 = llvm.zext %36 : i32 to i64
          %40 = llvm.zext %38 : i32 to i64
          %41 = llvm.extractvalue %34[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %42 = llvm.load %41 : !llvm.ptr -> !llvm.ptr
          %43 = llvm.mul %39, %14 : i64
          %44 = llvm.udiv %43, %15 : i64
          %45 = llvm.getelementptr %42[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%45, %11 : !llvm.ptr, i64)] : i1
          %46 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %47 = llvm.extractvalue %46[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %48 = llvm.getelementptr %47[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %49 = llvm.load %48 : !llvm.ptr -> !llvm.ptr
          %50 = llvm.mul %40, %14 : i64
          %51 = llvm.udiv %50, %15 : i64
          %52 = llvm.getelementptr %49[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%52, %11 : !llvm.ptr, i64)] : i1
          %53 = llvm.extractelement %9[%8 : i64] : vector<7xi64>
          llvm.br ^bb1(%28 : i64)
        ^bb1(%54: i64):  // 2 preds: ^bb0, ^bb4
          %55 = llvm.icmp "slt" %54, %30 : i64
          llvm.cond_br %55, ^bb2(%28 : i64), ^bb5
        ^bb2(%56: i64):  // 2 preds: ^bb1, ^bb3
          %57 = llvm.icmp "slt" %56, %31 : i64
          llvm.cond_br %57, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %58 = llvm.sub %31, %56 : i64
          %59 = llvm.icmp "slt" %58, %32 : i64
          %60 = llvm.select %59, %58, %32 : i1, i64
          %61 = llvm.add %56, %53 : i64
          %62 = llvm.trunc %60 : i64 to i32
          %63 = llvm.insertelement %62, %7[%6 : i32] : vector<7xi32>
          %64 = llvm.shufflevector %63, %7 [0, 0, 0, 0, 0, 0, 0] : vector<7xi32> 
          %65 = llvm.icmp "sgt" %64, %27 : vector<7xi32>
          %66 = llvm.mul %29, %13 : i64
          %67 = llvm.mul %28, %13 : i64
          %68 = llvm.add %66, %67 : i64
          %69 = llvm.add %68, %67 : i64
          %70 = llvm.mul %54, %31 : i64
          %71 = llvm.add %69, %70 : i64
          %72 = llvm.add %71, %61 : i64
          %73 = llvm.getelementptr %45[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %74 = llvm.intr.masked.load %73, %65, %26 {alignment = 4 : i32} : (!llvm.ptr, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %75 = llvm.mul %28, %32 : i64
          %76 = llvm.add %75, %28 : i64
          %77 = llvm.getelementptr %33[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %74, %77, %65 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %78 = llvm.icmp "slt" %56, %28 : i64
          %79 = llvm.sub %24, %56 : i64
          %80 = llvm.select %78, %79, %56 : i1, i64
          %81 = llvm.sdiv %80, %32 : i64
          %82 = llvm.sub %24, %81 : i64
          %83 = llvm.select %78, %82, %81 : i1, i64
          %84 = llvm.icmp "sle" %60, %28 : i64
          %85 = llvm.sub %28, %60 : i64
          %86 = llvm.sub %60, %29 : i64
          %87 = llvm.select %84, %85, %86 : i1, i64
          %88 = llvm.sdiv %87, %32 : i64
          %89 = llvm.sub %28, %88 : i64
          %90 = llvm.add %88, %29 : i64
          %91 = llvm.select %84, %89, %90 : i1, i64
          %92 = llvm.intr.masked.load %77, %65, %25 {alignment = 4 : i32} : (!llvm.ptr, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %93 = llvm.icmp "sgt" %91, %28 : i64
          %94 = llvm.select %93, %18, %17 : i1, !llvm.array<1 x array<7 x vector<1xi1>>>
          %95 = llvm.extractelement %92[%8 : i64] : vector<7xf32>
          %96 = llvm.extractvalue %16[0] : !llvm.array<7 x vector<1xf32>> 
          %97 = llvm.insertelement %95, %96[%8 : i64] : vector<1xf32>
          %98 = llvm.extractelement %92[%5 : i64] : vector<7xf32>
          %99 = llvm.extractvalue %16[1] : !llvm.array<7 x vector<1xf32>> 
          %100 = llvm.insertelement %98, %99[%8 : i64] : vector<1xf32>
          %101 = llvm.extractelement %92[%4 : i64] : vector<7xf32>
          %102 = llvm.extractvalue %16[2] : !llvm.array<7 x vector<1xf32>> 
          %103 = llvm.insertelement %101, %102[%8 : i64] : vector<1xf32>
          %104 = llvm.extractelement %92[%3 : i64] : vector<7xf32>
          %105 = llvm.extractvalue %16[3] : !llvm.array<7 x vector<1xf32>> 
          %106 = llvm.insertelement %104, %105[%8 : i64] : vector<1xf32>
          %107 = llvm.extractelement %92[%2 : i64] : vector<7xf32>
          %108 = llvm.extractvalue %16[4] : !llvm.array<7 x vector<1xf32>> 
          %109 = llvm.insertelement %107, %108[%8 : i64] : vector<1xf32>
          %110 = llvm.extractelement %92[%1 : i64] : vector<7xf32>
          %111 = llvm.extractvalue %16[5] : !llvm.array<7 x vector<1xf32>> 
          %112 = llvm.insertelement %110, %111[%8 : i64] : vector<1xf32>
          %113 = llvm.extractelement %92[%0 : i64] : vector<7xf32>
          %114 = llvm.extractvalue %16[6] : !llvm.array<7 x vector<1xf32>> 
          %115 = llvm.insertelement %113, %114[%8 : i64] : vector<1xf32>
          %116 = llvm.extractvalue %94[0, 0] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %117 = llvm.mul %83, %10 : i64
          %118 = llvm.mul %54, %32 : i64
          %119 = llvm.add %117, %118 : i64
          %120 = llvm.add %119, %28 : i64
          %121 = llvm.add %120, %28 : i64
          %122 = llvm.getelementptr %52[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %97, %122, %116 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %123 = llvm.extractvalue %94[0, 1] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %124 = llvm.add %119, %29 : i64
          %125 = llvm.add %124, %28 : i64
          %126 = llvm.getelementptr %52[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %100, %126, %123 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %127 = llvm.extractvalue %94[0, 2] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %128 = llvm.add %119, %23 : i64
          %129 = llvm.add %128, %28 : i64
          %130 = llvm.getelementptr %52[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %103, %130, %127 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %131 = llvm.extractvalue %94[0, 3] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %132 = llvm.add %119, %22 : i64
          %133 = llvm.add %132, %28 : i64
          %134 = llvm.getelementptr %52[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %106, %134, %131 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %135 = llvm.extractvalue %94[0, 4] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %136 = llvm.add %119, %21 : i64
          %137 = llvm.add %136, %28 : i64
          %138 = llvm.getelementptr %52[%137] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %109, %138, %135 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %139 = llvm.extractvalue %94[0, 5] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %140 = llvm.add %119, %20 : i64
          %141 = llvm.add %140, %28 : i64
          %142 = llvm.getelementptr %52[%141] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %112, %142, %139 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %143 = llvm.extractvalue %94[0, 6] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %144 = llvm.add %119, %19 : i64
          %145 = llvm.add %144, %28 : i64
          %146 = llvm.getelementptr %52[%145] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %115, %146, %143 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %147 = llvm.add %56, %32 : i64
          llvm.br ^bb2(%147 : i64)
        ^bb4:  // pred: ^bb2
          %148 = llvm.add %54, %29 : i64
          llvm.br ^bb1(%148 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %6 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_14_embedded_elf_riscv_64_main_graph$async_dispatch_14_elementwise_broadcast_49x32_f32_pack_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_14_embedded_elf_riscv_64_main_graph$async_dispatch_14_elementwise_broadcast_49x32_f32_pack_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_14_embedded_elf_riscv_64_main_graph$async_dispatch_14_elementwise_broadcast_49x32_f32_pack(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c407680_i32 = arith.constant 407680 : i32
    %c1649536_i32 = arith.constant 1649536 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_14_embedded_elf_riscv_64_main_graph$async_dispatch_14_elementwise_broadcast_49x32_f32_pack_buffer = util.global.load immutable @main_graph$async_dispatch_14_embedded_elf_riscv_64_main_graph$async_dispatch_14_elementwise_broadcast_49x32_f32_pack_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_14::@embedded_elf_riscv_64::@main_graph$async_dispatch_14_elementwise_broadcast_49x32_f32_pack) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_14) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_14::@embedded_elf_riscv_64::@main_graph$async_dispatch_14_elementwise_broadcast_49x32_f32_pack) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c407680_i32, %c1649536_i32]) bindings([
      (%main_graph$async_dispatch_14_embedded_elf_riscv_64_main_graph$async_dispatch_14_elementwise_broadcast_49x32_f32_pack_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_14_embedded_elf_riscv_64_main_graph$async_dispatch_14_elementwise_broadcast_49x32_f32_pack_buffer : !hal.buffer)[%c32172032, %c32172032]
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
