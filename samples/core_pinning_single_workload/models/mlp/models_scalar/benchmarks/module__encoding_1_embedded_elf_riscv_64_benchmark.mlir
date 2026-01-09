module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf", ukernels = "none"}>]> : !hal.device
  hal.executable private @_encoding_1 {
    hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf", ukernels = "none"}>) {
      hal.executable.export public @_encoding_1_encode_32xf32_to_32xf32 ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>], flags = None>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @_encoding_1_encode_32xf32_to_32xf32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDefault>} {
          %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>], flags = None>) ordinal(0) : i32
          %1 = arith.index_castui %0 : i32 to index
          %2:2 = util.assume.int 
              %1[<umin = 1280, umax = 1280, udiv = 1280>, <umin = 5504, umax = 5504, udiv = 5504>], 
              %1[<umin = 1280, umax = 1280, udiv = 1280>, <umin = 5504, umax = 5504, udiv = 5504>]
            : index, index
          %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>], flags = None>) binding(0) alignment(64) offset(%2#0) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32xf32>>
          %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>], flags = None>) binding(1) alignment(64) offset(%2#1) flags("None") : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32xf32>>
          %5 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0], sizes = [32], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32xf32>> -> tensor<32xf32>
          iree_tensor_ext.dispatch.tensor.store %5, %4, offsets = [0], sizes = [32], strides = [1] : tensor<32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @_encoding_1_embedded_elf_riscv_64__encoding_1_encode_32xf32_to_32xf32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c12288 = arith.constant 12288 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c12288}
    util.global.store %buffer, @_encoding_1_embedded_elf_riscv_64__encoding_1_encode_32xf32_to_32xf32_buffer : !hal.buffer
    util.return
  }
  util.func public @_encoding_1_embedded_elf_riscv_64__encoding_1_encode_32xf32_to_32xf32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %c5504_i32 = arith.constant 5504 : i32
    %_encoding_1_embedded_elf_riscv_64__encoding_1_encode_32xf32_to_32xf32_buffer = util.global.load @_encoding_1_embedded_elf_riscv_64__encoding_1_encode_32xf32_to_32xf32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c5952 = arith.constant 5952 : index
    %c6144 = arith.constant 6144 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@_encoding_1::@embedded_elf_riscv_64::@_encoding_1_encode_32xf32_to_32xf32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@_encoding_1) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@_encoding_1::@embedded_elf_riscv_64::@_encoding_1_encode_32xf32_to_32xf32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c5504_i32]) bindings([
        (%_encoding_1_embedded_elf_riscv_64__encoding_1_encode_32xf32_to_32xf32_buffer : !hal.buffer)[%c0, %c5952], 
        (%_encoding_1_embedded_elf_riscv_64__encoding_1_encode_32xf32_to_32xf32_buffer : !hal.buffer)[%c6144, %c5952]
      ]) flags("None")
      hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|CommandRetire") target("CommandIssue|Dispatch") flags("None")
    }
    hal.command_buffer.finalize<%cmd : !hal.command_buffer>
    %1 = util.null : !hal.fence
    %fence = hal.fence.create device(%device : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute<%device : !hal.device> affinity(%queue_affinity) wait(%1) signal(%fence) commands(%cmd) flags("None")
    %c-1_i32 = arith.constant -1 : i32
    %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    util.return
  }
}
