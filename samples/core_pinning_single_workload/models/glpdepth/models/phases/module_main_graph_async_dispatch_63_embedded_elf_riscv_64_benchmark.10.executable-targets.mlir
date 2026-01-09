#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_63 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_63_elementwise_broadcast_2x49x32_f32_pack ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        %c1_1 = arith.constant 1 : index
        hal.return %c1, %c1_0, %c1_1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_63_elementwise_broadcast_2x49x32_f32_pack(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
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
          %14 = llvm.mlir.constant(3136 : index) : i64
          %15 = llvm.mlir.constant(1568 : index) : i64
          %16 = llvm.mlir.constant(8 : i64) : i64
          %17 = llvm.mlir.constant(32 : i64) : i64
          %18 = llvm.mlir.poison : !llvm.array<7 x vector<1xf32>>
          %19 = llvm.mlir.constant(dense<false> : vector<1x7x1xi1>) : !llvm.array<1 x array<7 x vector<1xi1>>>
          %20 = llvm.mlir.constant(dense<true> : vector<1x7x1xi1>) : !llvm.array<1 x array<7 x vector<1xi1>>>
          %21 = llvm.mlir.constant(6 : index) : i64
          %22 = llvm.mlir.constant(5 : index) : i64
          %23 = llvm.mlir.constant(4 : index) : i64
          %24 = llvm.mlir.constant(3 : index) : i64
          %25 = llvm.mlir.constant(-1 : index) : i64
          %26 = llvm.mlir.constant(dense<0.000000e+00> : vector<7xf32>) : vector<7xf32>
          %27 = llvm.mlir.poison : vector<7xf32>
          %28 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xi32>) : vector<7xi32>
          %29 = llvm.mlir.constant(631296 : index) : i64
          %30 = llvm.mlir.constant(606208 : index) : i64
          %31 = llvm.mlir.constant(1 : index) : i64
          %32 = llvm.mlir.constant(0 : index) : i64
          %33 = llvm.mlir.constant(2 : index) : i64
          %34 = llvm.mlir.constant(49 : index) : i64
          %35 = llvm.mlir.constant(32 : index) : i64
          %36 = llvm.mlir.constant(7 : index) : i64
          %37 = llvm.alloca %36 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %38 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %39 = llvm.extractvalue %38[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %40 = llvm.load %39 : !llvm.ptr -> !llvm.ptr
          %41 = llvm.mul %30, %16 : i64
          %42 = llvm.udiv %41, %17 : i64
          %43 = llvm.getelementptr %40[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%43, %12 : !llvm.ptr, i64)] : i1
          %44 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %45 = llvm.extractvalue %44[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %46 = llvm.getelementptr %45[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %47 = llvm.load %46 : !llvm.ptr -> !llvm.ptr
          %48 = llvm.mul %29, %16 : i64
          %49 = llvm.udiv %48, %17 : i64
          %50 = llvm.getelementptr %47[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%50, %12 : !llvm.ptr, i64)] : i1
          %51 = llvm.extractelement %9[%8 : i64] : vector<7xi64>
          llvm.br ^bb1(%32 : i64)
        ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb6
          %53 = llvm.icmp "slt" %52, %33 : i64
          llvm.cond_br %53, ^bb2(%32 : i64), ^bb7
        ^bb2(%54: i64):  // 2 preds: ^bb1, ^bb5
          %55 = llvm.icmp "slt" %54, %34 : i64
          llvm.cond_br %55, ^bb3(%32 : i64), ^bb6
        ^bb3(%56: i64):  // 2 preds: ^bb2, ^bb4
          %57 = llvm.icmp "slt" %56, %35 : i64
          llvm.cond_br %57, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %58 = llvm.sub %35, %56 : i64
          %59 = llvm.icmp "slt" %58, %36 : i64
          %60 = llvm.select %59, %58, %36 : i1, i64
          %61 = llvm.add %56, %51 : i64
          %62 = llvm.trunc %60 : i64 to i32
          %63 = llvm.insertelement %62, %7[%6 : i32] : vector<7xi32>
          %64 = llvm.shufflevector %63, %7 [0, 0, 0, 0, 0, 0, 0] : vector<7xi32> 
          %65 = llvm.icmp "sgt" %64, %28 : vector<7xi32>
          %66 = llvm.mul %31, %14 : i64
          %67 = llvm.mul %32, %14 : i64
          %68 = llvm.add %66, %67 : i64
          %69 = llvm.mul %52, %15 : i64
          %70 = llvm.add %68, %69 : i64
          %71 = llvm.mul %54, %35 : i64
          %72 = llvm.add %70, %71 : i64
          %73 = llvm.add %72, %61 : i64
          %74 = llvm.getelementptr %43[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %75 = llvm.intr.masked.load %74, %65, %27 {alignment = 4 : i32} : (!llvm.ptr, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %76 = llvm.mul %32, %36 : i64
          %77 = llvm.add %76, %76 : i64
          %78 = llvm.add %77, %32 : i64
          %79 = llvm.getelementptr %37[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %75, %79, %65 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %80 = llvm.icmp "slt" %56, %32 : i64
          %81 = llvm.sub %25, %56 : i64
          %82 = llvm.select %80, %81, %56 : i1, i64
          %83 = llvm.sdiv %82, %36 : i64
          %84 = llvm.sub %25, %83 : i64
          %85 = llvm.select %80, %84, %83 : i1, i64
          %86 = llvm.icmp "sle" %60, %32 : i64
          %87 = llvm.sub %32, %60 : i64
          %88 = llvm.sub %60, %31 : i64
          %89 = llvm.select %86, %87, %88 : i1, i64
          %90 = llvm.sdiv %89, %36 : i64
          %91 = llvm.sub %32, %90 : i64
          %92 = llvm.add %90, %31 : i64
          %93 = llvm.select %86, %91, %92 : i1, i64
          %94 = llvm.intr.masked.load %79, %65, %26 {alignment = 4 : i32} : (!llvm.ptr, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %95 = llvm.icmp "sgt" %93, %32 : i64
          %96 = llvm.select %95, %20, %19 : i1, !llvm.array<1 x array<7 x vector<1xi1>>>
          %97 = llvm.extractelement %94[%8 : i64] : vector<7xf32>
          %98 = llvm.extractvalue %18[0] : !llvm.array<7 x vector<1xf32>> 
          %99 = llvm.insertelement %97, %98[%8 : i64] : vector<1xf32>
          %100 = llvm.extractelement %94[%5 : i64] : vector<7xf32>
          %101 = llvm.extractvalue %18[1] : !llvm.array<7 x vector<1xf32>> 
          %102 = llvm.insertelement %100, %101[%8 : i64] : vector<1xf32>
          %103 = llvm.extractelement %94[%4 : i64] : vector<7xf32>
          %104 = llvm.extractvalue %18[2] : !llvm.array<7 x vector<1xf32>> 
          %105 = llvm.insertelement %103, %104[%8 : i64] : vector<1xf32>
          %106 = llvm.extractelement %94[%3 : i64] : vector<7xf32>
          %107 = llvm.extractvalue %18[3] : !llvm.array<7 x vector<1xf32>> 
          %108 = llvm.insertelement %106, %107[%8 : i64] : vector<1xf32>
          %109 = llvm.extractelement %94[%2 : i64] : vector<7xf32>
          %110 = llvm.extractvalue %18[4] : !llvm.array<7 x vector<1xf32>> 
          %111 = llvm.insertelement %109, %110[%8 : i64] : vector<1xf32>
          %112 = llvm.extractelement %94[%1 : i64] : vector<7xf32>
          %113 = llvm.extractvalue %18[5] : !llvm.array<7 x vector<1xf32>> 
          %114 = llvm.insertelement %112, %113[%8 : i64] : vector<1xf32>
          %115 = llvm.extractelement %94[%0 : i64] : vector<7xf32>
          %116 = llvm.extractvalue %18[6] : !llvm.array<7 x vector<1xf32>> 
          %117 = llvm.insertelement %115, %116[%8 : i64] : vector<1xf32>
          %118 = llvm.extractvalue %96[0, 0] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %119 = llvm.mul %52, %10 : i64
          %120 = llvm.mul %85, %11 : i64
          %121 = llvm.add %119, %120 : i64
          %122 = llvm.mul %54, %36 : i64
          %123 = llvm.add %121, %122 : i64
          %124 = llvm.add %123, %32 : i64
          %125 = llvm.add %124, %32 : i64
          %126 = llvm.getelementptr %50[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %99, %126, %118 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %127 = llvm.extractvalue %96[0, 1] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %128 = llvm.add %123, %31 : i64
          %129 = llvm.add %128, %32 : i64
          %130 = llvm.getelementptr %50[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %102, %130, %127 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %131 = llvm.extractvalue %96[0, 2] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %132 = llvm.add %123, %33 : i64
          %133 = llvm.add %132, %32 : i64
          %134 = llvm.getelementptr %50[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %105, %134, %131 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %135 = llvm.extractvalue %96[0, 3] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %136 = llvm.add %123, %24 : i64
          %137 = llvm.add %136, %32 : i64
          %138 = llvm.getelementptr %50[%137] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %108, %138, %135 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %139 = llvm.extractvalue %96[0, 4] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %140 = llvm.add %123, %23 : i64
          %141 = llvm.add %140, %32 : i64
          %142 = llvm.getelementptr %50[%141] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %111, %142, %139 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %143 = llvm.extractvalue %96[0, 5] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %144 = llvm.add %123, %22 : i64
          %145 = llvm.add %144, %32 : i64
          %146 = llvm.getelementptr %50[%145] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %114, %146, %143 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %147 = llvm.extractvalue %96[0, 6] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %148 = llvm.add %123, %21 : i64
          %149 = llvm.add %148, %32 : i64
          %150 = llvm.getelementptr %50[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %117, %150, %147 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %151 = llvm.add %56, %36 : i64
          llvm.br ^bb3(%151 : i64)
        ^bb5:  // pred: ^bb3
          %152 = llvm.add %54, %31 : i64
          llvm.br ^bb2(%152 : i64)
        ^bb6:  // pred: ^bb2
          %153 = llvm.add %52, %31 : i64
          llvm.br ^bb1(%153 : i64)
        ^bb7:  // pred: ^bb1
          llvm.return %6 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_63_embedded_elf_riscv_64_main_graph$async_dispatch_63_elementwise_broadcast_2x49x32_f32_pack_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_63_embedded_elf_riscv_64_main_graph$async_dispatch_63_elementwise_broadcast_2x49x32_f32_pack_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_63_embedded_elf_riscv_64_main_graph$async_dispatch_63_elementwise_broadcast_2x49x32_f32_pack(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_63_embedded_elf_riscv_64_main_graph$async_dispatch_63_elementwise_broadcast_2x49x32_f32_pack_buffer = util.global.load immutable @main_graph$async_dispatch_63_embedded_elf_riscv_64_main_graph$async_dispatch_63_elementwise_broadcast_2x49x32_f32_pack_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_63::@embedded_elf_riscv_64::@main_graph$async_dispatch_63_elementwise_broadcast_2x49x32_f32_pack) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_63) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_63::@embedded_elf_riscv_64::@main_graph$async_dispatch_63_elementwise_broadcast_2x49x32_f32_pack) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_63_embedded_elf_riscv_64_main_graph$async_dispatch_63_elementwise_broadcast_2x49x32_f32_pack_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_63_embedded_elf_riscv_64_main_graph$async_dispatch_63_elementwise_broadcast_2x49x32_f32_pack_buffer : !hal.buffer)[%c32172032, %c32172032]
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
