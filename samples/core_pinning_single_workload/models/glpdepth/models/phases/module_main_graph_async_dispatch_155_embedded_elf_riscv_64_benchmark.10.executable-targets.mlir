#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_155 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c2 = arith.constant 2 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c2, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
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
          %14 = llvm.mlir.constant(12544 : index) : i64
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
          %25 = llvm.mlir.constant(2 : index) : i64
          %26 = llvm.mlir.constant(-28 : index) : i64
          %27 = llvm.mlir.constant(49 : index) : i64
          %28 = llvm.mlir.constant(-1 : index) : i64
          %29 = llvm.mlir.constant(28 : index) : i64
          %30 = llvm.mlir.constant(dense<0.000000e+00> : vector<7xf32>) : vector<7xf32>
          %31 = llvm.mlir.poison : vector<7xf32>
          %32 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xi32>) : vector<7xi32>
          %33 = llvm.mlir.constant(1080384 : index) : i64
          %34 = llvm.mlir.constant(0 : index) : i64
          %35 = llvm.mlir.constant(1 : index) : i64
          %36 = llvm.mlir.constant(8 : index) : i64
          %37 = llvm.mlir.constant(32 : index) : i64
          %38 = llvm.mlir.constant(7 : index) : i64
          %39 = llvm.alloca %38 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %40 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %41 = llvm.extractvalue %40[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %42 = llvm.load %41 : !llvm.ptr -> i32
          %43 = llvm.zext %42 : i32 to i64
          %44 = llvm.extractvalue %40[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %45 = llvm.load %44 : !llvm.ptr -> !llvm.ptr
          %46 = llvm.mul %43, %16 : i64
          %47 = llvm.udiv %46, %17 : i64
          %48 = llvm.getelementptr %45[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%48, %12 : !llvm.ptr, i64)] : i1
          %49 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %50 = llvm.extractvalue %49[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %51 = llvm.getelementptr %50[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %52 = llvm.load %51 : !llvm.ptr -> !llvm.ptr
          %53 = llvm.mul %33, %16 : i64
          %54 = llvm.udiv %53, %17 : i64
          %55 = llvm.getelementptr %52[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%55, %12 : !llvm.ptr, i64)] : i1
          %56 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %57 = llvm.extractvalue %56[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %58 = llvm.zext %57 : i32 to i64
          %59 = llvm.mul %58, %29 overflow<nsw> : i64
          %60 = llvm.mul %58, %26 overflow<nsw> : i64
          %61 = llvm.add %60, %27 : i64
          %62 = llvm.icmp "slt" %61, %29 : i64
          %63 = llvm.select %62, %61, %29 : i1, i64
          %64 = llvm.extractelement %9[%8 : i64] : vector<7xi64>
          llvm.br ^bb1(%34 : i64)
        ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb7
          %66 = llvm.icmp "slt" %65, %36 : i64
          llvm.cond_br %66, ^bb2(%34 : i64), ^bb8
        ^bb2(%67: i64):  // 2 preds: ^bb1, ^bb6
          %68 = llvm.icmp "slt" %67, %63 : i64
          llvm.cond_br %68, ^bb3, ^bb7
        ^bb3:  // pred: ^bb2
          %69 = llvm.add %59, %67 : i64
          llvm.br ^bb4(%34 : i64)
        ^bb4(%70: i64):  // 2 preds: ^bb3, ^bb5
          %71 = llvm.icmp "slt" %70, %37 : i64
          llvm.cond_br %71, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %72 = llvm.sub %37, %70 : i64
          %73 = llvm.icmp "slt" %72, %38 : i64
          %74 = llvm.select %73, %72, %38 : i1, i64
          %75 = llvm.add %70, %64 : i64
          %76 = llvm.trunc %74 : i64 to i32
          %77 = llvm.insertelement %76, %7[%6 : i32] : vector<7xi32>
          %78 = llvm.shufflevector %77, %7 [0, 0, 0, 0, 0, 0, 0] : vector<7xi32> 
          %79 = llvm.icmp "sgt" %78, %32 : vector<7xi32>
          %80 = llvm.mul %35, %14 : i64
          %81 = llvm.mul %34, %14 : i64
          %82 = llvm.add %80, %81 : i64
          %83 = llvm.mul %65, %15 : i64
          %84 = llvm.add %82, %83 : i64
          %85 = llvm.mul %69, %37 : i64
          %86 = llvm.add %84, %85 : i64
          %87 = llvm.add %86, %75 : i64
          %88 = llvm.getelementptr %48[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %89 = llvm.intr.masked.load %88, %79, %31 {alignment = 4 : i32} : (!llvm.ptr, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %90 = llvm.mul %34, %38 : i64
          %91 = llvm.add %90, %90 : i64
          %92 = llvm.add %91, %34 : i64
          %93 = llvm.getelementptr %39[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %89, %93, %79 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %94 = llvm.icmp "slt" %70, %34 : i64
          %95 = llvm.sub %28, %70 : i64
          %96 = llvm.select %94, %95, %70 : i1, i64
          %97 = llvm.sdiv %96, %38 : i64
          %98 = llvm.sub %28, %97 : i64
          %99 = llvm.select %94, %98, %97 : i1, i64
          %100 = llvm.icmp "sle" %74, %34 : i64
          %101 = llvm.sub %34, %74 : i64
          %102 = llvm.sub %74, %35 : i64
          %103 = llvm.select %100, %101, %102 : i1, i64
          %104 = llvm.sdiv %103, %38 : i64
          %105 = llvm.sub %34, %104 : i64
          %106 = llvm.add %104, %35 : i64
          %107 = llvm.select %100, %105, %106 : i1, i64
          %108 = llvm.intr.masked.load %93, %79, %30 {alignment = 4 : i32} : (!llvm.ptr, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %109 = llvm.icmp "sgt" %107, %34 : i64
          %110 = llvm.select %109, %20, %19 : i1, !llvm.array<1 x array<7 x vector<1xi1>>>
          %111 = llvm.extractelement %108[%8 : i64] : vector<7xf32>
          %112 = llvm.extractvalue %18[0] : !llvm.array<7 x vector<1xf32>> 
          %113 = llvm.insertelement %111, %112[%8 : i64] : vector<1xf32>
          %114 = llvm.extractelement %108[%5 : i64] : vector<7xf32>
          %115 = llvm.extractvalue %18[1] : !llvm.array<7 x vector<1xf32>> 
          %116 = llvm.insertelement %114, %115[%8 : i64] : vector<1xf32>
          %117 = llvm.extractelement %108[%4 : i64] : vector<7xf32>
          %118 = llvm.extractvalue %18[2] : !llvm.array<7 x vector<1xf32>> 
          %119 = llvm.insertelement %117, %118[%8 : i64] : vector<1xf32>
          %120 = llvm.extractelement %108[%3 : i64] : vector<7xf32>
          %121 = llvm.extractvalue %18[3] : !llvm.array<7 x vector<1xf32>> 
          %122 = llvm.insertelement %120, %121[%8 : i64] : vector<1xf32>
          %123 = llvm.extractelement %108[%2 : i64] : vector<7xf32>
          %124 = llvm.extractvalue %18[4] : !llvm.array<7 x vector<1xf32>> 
          %125 = llvm.insertelement %123, %124[%8 : i64] : vector<1xf32>
          %126 = llvm.extractelement %108[%1 : i64] : vector<7xf32>
          %127 = llvm.extractvalue %18[5] : !llvm.array<7 x vector<1xf32>> 
          %128 = llvm.insertelement %126, %127[%8 : i64] : vector<1xf32>
          %129 = llvm.extractelement %108[%0 : i64] : vector<7xf32>
          %130 = llvm.extractvalue %18[6] : !llvm.array<7 x vector<1xf32>> 
          %131 = llvm.insertelement %129, %130[%8 : i64] : vector<1xf32>
          %132 = llvm.extractvalue %110[0, 0] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %133 = llvm.mul %65, %10 : i64
          %134 = llvm.mul %99, %11 : i64
          %135 = llvm.add %133, %134 : i64
          %136 = llvm.mul %69, %38 : i64
          %137 = llvm.add %135, %136 : i64
          %138 = llvm.add %137, %34 : i64
          %139 = llvm.add %138, %34 : i64
          %140 = llvm.getelementptr %55[%139] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %113, %140, %132 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %141 = llvm.extractvalue %110[0, 1] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %142 = llvm.add %137, %35 : i64
          %143 = llvm.add %142, %34 : i64
          %144 = llvm.getelementptr %55[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %116, %144, %141 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %145 = llvm.extractvalue %110[0, 2] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %146 = llvm.add %137, %25 : i64
          %147 = llvm.add %146, %34 : i64
          %148 = llvm.getelementptr %55[%147] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %119, %148, %145 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %149 = llvm.extractvalue %110[0, 3] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %150 = llvm.add %137, %24 : i64
          %151 = llvm.add %150, %34 : i64
          %152 = llvm.getelementptr %55[%151] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %122, %152, %149 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %153 = llvm.extractvalue %110[0, 4] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %154 = llvm.add %137, %23 : i64
          %155 = llvm.add %154, %34 : i64
          %156 = llvm.getelementptr %55[%155] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %125, %156, %153 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %157 = llvm.extractvalue %110[0, 5] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %158 = llvm.add %137, %22 : i64
          %159 = llvm.add %158, %34 : i64
          %160 = llvm.getelementptr %55[%159] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %128, %160, %157 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %161 = llvm.extractvalue %110[0, 6] : !llvm.array<1 x array<7 x vector<1xi1>>> 
          %162 = llvm.add %137, %21 : i64
          %163 = llvm.add %162, %34 : i64
          %164 = llvm.getelementptr %55[%163] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %131, %164, %161 {alignment = 4 : i32} : vector<1xf32>, vector<1xi1> into !llvm.ptr
          %165 = llvm.add %70, %38 : i64
          llvm.br ^bb4(%165 : i64)
        ^bb6:  // pred: ^bb4
          %166 = llvm.add %67, %35 : i64
          llvm.br ^bb2(%166 : i64)
        ^bb7:  // pred: ^bb2
          %167 = llvm.add %65, %35 : i64
          llvm.br ^bb1(%167 : i64)
        ^bb8:  // pred: ^bb1
          llvm.return %6 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c577024_i32 = arith.constant 577024 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack_buffer = util.global.load immutable @main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_155::@embedded_elf_riscv_64::@main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_155) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_155::@embedded_elf_riscv_64::@main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c577024_i32]) bindings([
      (%main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_155_embedded_elf_riscv_64_main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack_buffer : !hal.buffer)[%c32172032, %c32172032]
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
