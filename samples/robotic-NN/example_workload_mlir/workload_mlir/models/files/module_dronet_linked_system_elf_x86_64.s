	.file	"dronet_linked"
	.section	".text.main_graph$async_dispatch_0_slow_memcpy","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_0_slow_memcpy,@function
main_graph$async_dispatch_0_slow_memcpy:
.Lfunc_begin0:
	.file	1 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_0.mlir"
	.loc	1 1 0
	.cfi_sections .debug_frame
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp0:
	.loc	1 15 8 prologue_end
	movl	(%rdx), %ecx
	.loc	1 10 8
	movq	32(%rsi), %rsi
	.loc	1 15 8
	movl	%ecx, %edx
	shrl	$2, %edx
	andl	$3, %ecx
	.loc	1 12 8
	movq	8(%rsi), %rax
	.loc	1 15 8
	imulq	$224, %rcx, %r8
	imulq	$100352, %rdx, %rcx
	imulq	$102144, %rdx, %rdi
	xorl	%edx, %edx
	orq	%r8, %rcx
	addq	(%rsi), %rcx
	addq	%r8, %rdi
	leaq	1832(%rax,%rdi), %rax
	.loc	1 0 8 is_stmt 0
.Ltmp1:
	.p2align	4
.LBB0_1:
	movq	$-8, %rsi
	.p2align	4
.LBB0_2:
	.loc	1 15 8 is_stmt 1
	vmovaps	32(%rcx,%rsi,4), %ymm0
	vmovups	%ymm0, 32(%rax,%rsi,4)
	addq	$8, %rsi
	cmpq	$48, %rsi
	jb	.LBB0_2
	incq	%rdx
	addq	$912, %rax
	addq	$896, %rcx
	cmpq	$112, %rdx
	jne	.LBB0_1
	.loc	1 19 8
	xorl	%eax, %eax
	.loc	1 19 8 epilogue_begin is_stmt 0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp2:
.Lfunc_end0:
	.size	main_graph$async_dispatch_0_slow_memcpy, .Lfunc_end0-main_graph$async_dispatch_0_slow_memcpy
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI1_0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	".text.main_graph$async_dispatch_1_conv_32x112x112x5x5_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_1_conv_32x112x112x5x5_f32,@function
main_graph$async_dispatch_1_conv_32x112x112x5x5_f32:
.Lfunc_begin1:
	.file	2 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_1.mlir"
	.loc	2 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp3:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$192, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	2 14 8 prologue_end
	movq	32(%rsi), %rax
	.loc	2 21 8
	movl	(%rdx), %edx
	vmovdqa	.LCPI1_0(%rip), %ymm0
	movl	$95232, %esi
	vxorps	%xmm1, %xmm1, %xmm1
	.loc	2 16 8
	movq	16(%rax), %rcx
	.loc	2 21 8
	movl	%edx, %edi
	andl	$3, %edx
	shrl	$2, %edi
	.loc	2 15 8
	addq	8(%rax), %rsi
	imulq	$224, %rdx, %r9
	imulq	$112, %rdx, %rdx
	.loc	2 21 8
	leaq	(%rdi,%rdi,8), %r8
	leaq	(%r8,%r8,2), %r8
	leaq	207936(%rcx,%rdx), %rcx
	imulq	$51072, %rdi, %rdx
	addq	%rdi, %r8
	movq	%r8, 40(%rsp)
	movq	%rcx, 24(%rsp)
	addq	%r9, %rdx
	addq	(%rax), %rdx
	movl	$8, %r9d
	xorl	%eax, %eax
	movq	%rdx, 16(%rsp)
	.loc	2 0 8 is_stmt 0
.Ltmp4:
	.p2align	4
.LBB1_1:
	leaq	__constant_32xf32(%rip), %rcx
	movq	%rax, 32(%rsp)
	movq	16(%rsp), %rdx
	xorl	%ebx, %ebx
	vbroadcastss	(%rcx,%rax,4), %ymm2
	imulq	$50176, %rax, %rax
	.loc	2 21 8
	addq	24(%rsp), %rax
	movq	%rax, 48(%rsp)
	.loc	2 0 8
.Ltmp5:
	.p2align	4
.LBB1_2:
	movq	40(%rsp), %rax
	movl	$28, %r15d
	movq	%rdx, 56(%rsp)
	xorl	%r13d, %r13d
	addq	%rbx, %rax
	imulq	$448, %rax, %r14
	addq	48(%rsp), %r14
	.p2align	4
.LBB1_3:
	.loc	2 21 8 is_stmt 1
	cmpq	$8, %r15
	movl	$8, %r8d
	movl	$28, %eax
	movq	%rdx, %r11
	cmovbq	%r15, %r8
	subq	%r13, %rax
	cmpq	$8, %rax
	cmovaeq	%r9, %rax
	xorl	%edi, %edi
	.loc	2 9 8
	vmovd	%eax, %xmm3
	movq	%rsi, %rax
	vpbroadcastd	%xmm3, %ymm3
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vmaskmovps	%ymm1, %ymm3, 64(%rsp)
	.loc	2 0 8 is_stmt 0
.Ltmp6:
	.p2align	4
.LBB1_4:
	movq	%r11, %r12
	xorl	%r10d, %r10d
	.p2align	4
.LBB1_5:
	vmovss	64(%rsp,%r10,4), %xmm4
	xorl	%ecx, %ecx
	.p2align	4
.LBB1_6:
	.loc	2 21 8 is_stmt 1
	vmovss	(%r12,%rcx,4), %xmm5
	.loc	2 24 10
	vfmadd231ss	(%rax,%rcx,4), %xmm5, %xmm4
	.loc	2 21 8
	incq	%rcx
	cmpq	$5, %rcx
	jne	.LBB1_6
	vmovss	%xmm4, 64(%rsp,%r10,4)
	incq	%r10
	addq	$8, %r12
	cmpq	%r8, %r10
	jne	.LBB1_5
	incq	%rdi
	addq	$912, %r11
	addq	$20, %rax
	cmpq	$5, %rdi
	jne	.LBB1_4
	.loc	2 29 10
	vaddps	64(%rsp), %ymm2, %ymm4
	.loc	2 21 8
	addq	$-8, %r15
	addq	$64, %rdx
	cmpq	$20, %r13
	.loc	2 29 10
	vmaskmovps	%ymm4, %ymm3, (%r14,%r13,4)
	.loc	2 21 8
	leaq	8(%r13), %r13
	jb	.LBB1_3
	.loc	2 0 8 is_stmt 0
	movq	56(%rsp), %rdx
	.loc	2 21 8
	incq	%rbx
	addq	$1824, %rdx
	cmpq	$28, %rbx
	jne	.LBB1_2
	.loc	2 0 8
	movq	32(%rsp), %rax
	.loc	2 21 8
	addq	$100, %rsi
	incq	%rax
	cmpq	$32, %rax
	jne	.LBB1_1
	.loc	2 33 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	2 33 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp7:
.Lfunc_end1:
	.size	main_graph$async_dispatch_1_conv_32x112x112x5x5_f32, .Lfunc_end1-main_graph$async_dispatch_1_conv_32x112x112x5x5_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI2_0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_1:
	.long	0xff800000
.LCPI2_2:
	.long	0x3f86ec50
	.section	".text.main_graph$async_dispatch_2_conv_32x55x55x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_2_conv_32x55x55x3x3_f32,@function
main_graph$async_dispatch_2_conv_32x55x55x3x3_f32:
.Lfunc_begin2:
	.file	3 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_2.mlir"
	.loc	3 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp8:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	3 16 8 prologue_end
	movq	32(%rsi), %rcx
	movl	$1813568, %esi
	.loc	3 23 8
	movl	(%rdx), %edx
	vmovdqa	.LCPI2_0(%rip), %ymm0
	vbroadcastss	.LCPI2_1(%rip), %ymm1
	vbroadcastss	.LCPI2_2(%rip), %ymm3
	vxorps	%xmm2, %xmm2, %xmm2
	vxorps	%xmm4, %xmm4, %xmm4
	.loc	3 17 8
	addq	8(%rcx), %rsi
	.loc	3 23 8
	imulq	$1374389535, %rdx, %r10
	.loc	3 16 8
	movq	(%rcx), %rax
	.loc	3 23 8
	movl	%edx, %r8d
	imulq	$88, %rdx, %r9
	movq	%rsi, -64(%rbp)
	movl	$2229440, %esi
	.loc	3 18 8
	addq	16(%rcx), %rsi
	.loc	3 23 8
	movq	%r10, %rcx
	shrq	$35, %rcx
	shrq	$32, %r10
	andl	$-8, %r10d
	movq	%r10, -48(%rbp)
	movq	%rsi, -56(%rbp)
	leal	(%rcx,%rcx,4), %esi
	imulq	$401408, %rcx, %rcx
	leal	(%rsi,%rsi,4), %edi
	movl	$3435973837, %esi
	imulq	%rdx, %rsi
	addq	%rcx, %r9
	subl	%edi, %edx
	imull	$52, %edx, %edx
	shrq	$34, %rsi
	leal	(%rsi,%rsi,4), %edi
	imulq	$440, %rsi, %rcx
	movzbl	%dh, %edx
	subl	%edi, %r8d
	leaq	(%rdx,%rdx,4), %rdi
	leaq	(%rdx,%rdi,2), %rdi
	imulq	$9856, %rdx, %rdx
	movq	%rdi, -88(%rbp)
	leaq	(%r8,%r8,4), %rdi
	addq	%rdx, %r9
	subq	%rcx, %r9
	leaq	(%r8,%rdi,2), %rdi
	leaq	207936(%r9,%rax), %r15
	xorl	%eax, %eax
	movq	%rdi, -120(%rbp)
	jmp	.LBB2_1
	.loc	3 0 8 is_stmt 0
.Ltmp9:
	.p2align	4
.LBB2_13:
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %r15
	.loc	3 23 8
	incq	%rax
	addq	$50176, %r15
	cmpq	$8, %rax
	je	.LBB2_14
.LBB2_1:
	.loc	3 0 8
	movq	%rax, -72(%rbp)
	.loc	3 23 8
	orq	-48(%rbp), %rax
	movq	%r15, -80(%rbp)
	imulq	$12100, %rax, %rcx
	addq	-56(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	leaq	__constant_32xf32_0(%rip), %rcx
	vbroadcastss	(%rcx,%rax,4), %ymm5
	imulq	$12996, %rax, %rax
	addq	-64(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rax, -96(%rbp)
	jmp	.LBB2_2
	.loc	3 0 8
.Ltmp10:
	.p2align	4
.LBB2_12:
	movq	-112(%rbp), %rcx
	.loc	3 23 8
	addq	$896, %r15
	incq	%rcx
	cmpq	$11, %rcx
	je	.LBB2_13
.LBB2_2:
	.loc	3 0 8
	movq	-88(%rbp), %rax
	movq	%rcx, -112(%rbp)
	xorl	%esi, %esi
	addq	%rcx, %rax
	movq	-96(%rbp), %rcx
	imulq	$220, %rax, %r13
	imulq	$228, %rax, %rax
	addq	-104(%rbp), %r13
	leaq	232(%rcx,%rax), %r10
	movb	$1, %cl
	movl	$11, %eax
	jmp	.LBB2_3
	.p2align	4
.LBB2_11:
	.loc	3 28 8 is_stmt 1
	vmaskmovps	(%r9), %ymm6, %ymm7
	.loc	3 23 8
	addq	$-8, %rax
	movl	$8, %esi
	.loc	3 31 10
	vsubps	%ymm5, %ymm7, %ymm7
	.loc	3 32 10
	vmulps	%ymm3, %ymm7, %ymm7
	.loc	3 33 10
	vaddps	%ymm4, %ymm7, %ymm8
	.loc	3 35 10
	vcmpnleps	%ymm4, %ymm7, %ymm7
	vandps	%ymm7, %ymm8, %ymm7
	vmaskmovps	%ymm7, %ymm6, (%r10,%r8,4)
	.loc	3 23 8
	testb	$1, %cl
	movl	$0, %ecx
	je	.LBB2_12
.LBB2_3:
	.loc	3 23 8
	cmpq	$8, %rax
	movl	$8, %edx
	movl	$11, %r8d
	movl	$8, %edi
	leaq	(%r15,%rsi,8), %r14
	cmovbq	%rax, %rdx
	subq	%rsi, %r8
	cmpq	$8, %r8
	cmovaeq	%rdi, %r8
	movq	-120(%rbp), %rdi
	xorl	%ebx, %ebx
	.loc	3 9 8
	vmovd	%r8d, %xmm6
	vpbroadcastd	%xmm6, %ymm6
	vpcmpgtd	%ymm0, %ymm6, %ymm6
	leaq	(%rsi,%rdi), %r8
	leaq	(%r13,%r8,4), %r9
	vmaskmovps	%ymm1, %ymm6, (%r13,%r8,4)
	jmp	.LBB2_4
	.loc	3 0 8 is_stmt 0
.Ltmp11:
	.p2align	4
.LBB2_10:
	.loc	3 23 8 is_stmt 1
	incq	%rbx
	addq	$448, %r14
	cmpq	$3, %rbx
	je	.LBB2_11
.LBB2_4:
	.loc	3 0 8 is_stmt 0
	movq	%r14, %rsi
	xorl	%r12d, %r12d
	jmp	.LBB2_5
	.p2align	4
.LBB2_9:
	.loc	3 23 8
	incq	%r12
	addq	$8, %rsi
	cmpq	%rdx, %r12
	je	.LBB2_10
.LBB2_5:
	.loc	3 0 8
	vmovss	(%r9,%r12,4), %xmm7
	xorl	%r11d, %r11d
	jmp	.LBB2_6
	.p2align	4
.LBB2_8:
	.loc	3 23 8 is_stmt 1
	incq	%r11
	vmovss	%xmm8, (%r9,%r12,4)
	vmovaps	%xmm8, %xmm7
	cmpq	$3, %r11
	je	.LBB2_9
.LBB2_6:
	.loc	3 23 8
	vmovss	(%rsi,%r11,4), %xmm8
	.loc	3 25 10
	vcmpless	%xmm8, %xmm7, %xmm9
	vcmpunordss	%xmm2, %xmm8, %xmm10
	vorps	%xmm9, %xmm10, %xmm9
	vmovd	%xmm9, %edi
	testb	$1, %dil
	jne	.LBB2_8
	.loc	3 0 10 is_stmt 0
	vmovaps	%xmm7, %xmm8
	jmp	.LBB2_8
.LBB2_14:
	.loc	3 40 8 is_stmt 1
	xorl	%eax, %eax
	.loc	3 40 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp12:
.Lfunc_end2:
	.size	main_graph$async_dispatch_2_conv_32x55x55x3x3_f32, .Lfunc_end2-main_graph$async_dispatch_2_conv_32x55x55x3x3_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI3_0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	".text.main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32,@function
main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32:
.Lfunc_begin3:
	.file	4 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_3.mlir"
	.loc	4 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp13:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$256, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	4 14 8 prologue_end
	movq	32(%rsi), %rcx
	vmovdqa	.LCPI3_0(%rip), %ymm0
	vxorps	%xmm1, %xmm1, %xmm1
	movq	(%rcx), %rsi
	.loc	4 15 8
	movq	8(%rcx), %rax
	.loc	4 16 8
	movq	16(%rcx), %rcx
	movq	%rcx, 80(%rsp)
	.loc	4 21 8
	movl	(%rdx), %ecx
	movl	%ecx, %edx
	movq	%rcx, %rdi
	addq	%rcx, %rdi
	shrl	%ecx
	andl	$1, %edx
	leaq	(%rcx,%rcx,8), %rcx
	imulq	$6384, %rdx, %r8
	andq	$-4, %rdi
	movq	%rdi, 72(%rsp)
	leaq	(%rdx,%rdx), %rdi
	shll	$4, %edx
	shlq	$9, %rcx
	subq	%rdi, %rdx
	leaq	1813568(%r8,%rsi), %rsi
	leaq	873600(%rcx,%rax), %rax
	movq	%rdx, 96(%rsp)
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	%rsi, 64(%rsp)
	.loc	4 0 8 is_stmt 0
.Ltmp14:
	.p2align	4
.LBB3_1:
	movq	%rax, 88(%rsp)
	.loc	4 21 8
	orq	72(%rsp), %rax
	leaq	__constant_32xf32_1(%rip), %rcx
	movq	64(%rsp), %r14
	vbroadcastss	(%rcx,%rax,4), %ymm2
	imulq	$3600, %rax, %rax
	addq	80(%rsp), %rax
	xorl	%ecx, %ecx
	movq	%rax, 104(%rsp)
	.loc	4 0 8
.Ltmp15:
	.p2align	4
.LBB3_2:
	movq	96(%rsp), %rax
	movq	104(%rsp), %rdx
	movl	$28, %r12d
	movq	%rcx, 112(%rsp)
	movq	%r14, 120(%rsp)
	xorl	%r9d, %r9d
	addq	%rcx, %rax
	imulq	$120, %rax, %rax
	leaq	124(%rdx,%rax), %r15
	.p2align	4
.LBB3_3:
	.loc	4 21 8 is_stmt 1
	cmpq	$8, %r12
	movl	$8, %eax
	movl	$28, %ecx
	movl	$8, %edx
	movq	56(%rsp), %rsi
	cmovbq	%r12, %rax
	subq	%r9, %rcx
	cmpq	$8, %rcx
	cmovaeq	%rdx, %rcx
	xorl	%r8d, %r8d
	.loc	4 9 8
	vmovd	%ecx, %xmm3
	movq	%r14, %rcx
	vpbroadcastd	%xmm3, %ymm3
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vmaskmovps	%ymm1, %ymm3, 128(%rsp)
	.loc	4 0 8 is_stmt 0
.Ltmp16:
	.p2align	4
.LBB3_4:
	movq	%rsi, %rdi
	movq	%rcx, %rbx
	xorl	%r11d, %r11d
	.p2align	4
.LBB3_5:
	movq	%rbx, %r13
	xorl	%r10d, %r10d
	.p2align	4
.LBB3_6:
	vmovss	128(%rsp,%r10,4), %xmm4
	xorl	%edx, %edx
	.p2align	4
.LBB3_7:
	.loc	4 21 8 is_stmt 1
	vmovss	(%r13,%rdx,4), %xmm5
	.loc	4 24 10
	vfmadd231ss	(%rdi,%rdx,4), %xmm5, %xmm4
	.loc	4 21 8
	incq	%rdx
	cmpq	$3, %rdx
	jne	.LBB3_7
	vmovss	%xmm4, 128(%rsp,%r10,4)
	incq	%r10
	addq	$8, %r13
	cmpq	%rax, %r10
	jne	.LBB3_6
	incq	%r11
	addq	$228, %rbx
	addq	$12, %rdi
	cmpq	$3, %r11
	jne	.LBB3_5
	incq	%r8
	addq	$12996, %rcx
	addq	$36, %rsi
	cmpq	$32, %r8
	jne	.LBB3_4
	.loc	4 29 10
	vaddps	128(%rsp), %ymm2, %ymm4
	.loc	4 21 8
	addq	$-8, %r12
	addq	$64, %r14
	cmpq	$20, %r9
	.loc	4 31 10
	vcmpnleps	%ymm1, %ymm4, %ymm5
	vandps	%ymm4, %ymm5, %ymm4
	vmaskmovps	%ymm4, %ymm3, (%r15,%r9,4)
	.loc	4 21 8
	leaq	8(%r9), %r9
	jb	.LBB3_3
	.loc	4 0 8 is_stmt 0
	movq	112(%rsp), %rcx
	movq	120(%rsp), %r14
	.loc	4 21 8
	incq	%rcx
	addq	$456, %r14
	cmpq	$14, %rcx
	jne	.LBB3_2
	.loc	4 0 8
	movq	88(%rsp), %rax
	.loc	4 21 8
	addq	$1152, 56(%rsp)
	incq	%rax
	cmpq	$4, %rax
	jne	.LBB3_1
	.loc	4 35 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	4 35 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp17:
.Lfunc_end3:
	.size	main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32, .Lfunc_end3-main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32,@function
main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32:
.Lfunc_begin4:
	.file	5 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_4.mlir"
	.loc	5 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp18:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	5 13 8 prologue_end
	movq	32(%rsi), %rcx
	.loc	5 20 8
	movl	(%rdx), %r9d
	movl	$115200, %eax
	xorl	%edx, %edx
	movl	$14, %esi
	.loc	5 13 8
	movq	(%rcx), %rdi
	.loc	5 14 8
	movq	8(%rcx), %r8
	.loc	5 15 8
	addq	16(%rcx), %rax
	.loc	5 20 8
	movl	%r9d, %ecx
	andl	$-2, %ecx
	addq	%rcx, %rcx
	testb	$1, %r9b
	cmoveq	%rdx, %rsi
	shrl	%r9d
	imulq	$440, %rsi, %r10
	shlq	$9, %r9
	leaq	91164(%r9,%r8), %r8
	leaq	2314140(%r10,%rdi), %rdi
	.loc	5 0 8 is_stmt 0
.Ltmp19:
	.p2align	4
.LBB4_1:
	.loc	5 20 8
	movq	%rdx, %r9
	orq	%rcx, %r9
	movq	%rdi, %r10
	xorl	%r11d, %r11d
	imulq	$3136, %r9, %r9
	addq	%rax, %r9
	.loc	5 0 8
.Ltmp20:
	.p2align	4
.LBB4_2:
	leaq	(%r11,%rsi), %rbx
	movq	%r10, %r14
	xorl	%r15d, %r15d
	imulq	$112, %rbx, %rbx
	addq	%r9, %rbx
	.p2align	4
.LBB4_3:
	movq	$-8, %r12
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%r14, %r13
	.p2align	4
.LBB4_4:
	.loc	5 20 8 is_stmt 1
	vmovss	-84700(%r13), %xmm1
	vmovss	-72600(%r13), %xmm2
	vmovss	-60500(%r13), %xmm3
	vmovss	-48400(%r13), %xmm4
	vmovss	-36300(%r13), %xmm5
	vmovss	-24200(%r13), %xmm6
	vmovss	-12100(%r13), %xmm7
	vmovss	(%r13), %xmm8
	addq	$96800, %r13
	.loc	5 23 10
	vfmadd132ss	4(%r8,%r12,4), %xmm0, %xmm1
	vfmadd231ss	8(%r8,%r12,4), %xmm2, %xmm1
	vfmadd231ss	12(%r8,%r12,4), %xmm3, %xmm1
	vfmadd231ss	16(%r8,%r12,4), %xmm4, %xmm1
	vfmadd231ss	20(%r8,%r12,4), %xmm5, %xmm1
	vfmadd231ss	24(%r8,%r12,4), %xmm6, %xmm1
	vfmadd231ss	28(%r8,%r12,4), %xmm7, %xmm1
	vmovaps	%xmm1, %xmm0
	vfmadd231ss	32(%r8,%r12,4), %xmm8, %xmm0
	.loc	5 20 8
	addq	$8, %r12
	cmpq	$24, %r12
	jb	.LBB4_4
	vmovss	%xmm0, (%rbx,%r15,4)
	incq	%r15
	addq	$8, %r14
	cmpq	$28, %r15
	jne	.LBB4_3
	incq	%r11
	addq	$440, %r10
	cmpq	$14, %r11
	jne	.LBB4_2
	incq	%rdx
	subq	$-128, %r8
	cmpq	$4, %rdx
	jne	.LBB4_1
	.loc	5 27 8
	xorl	%eax, %eax
	.loc	5 27 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp21:
.Lfunc_end4:
	.size	main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32, .Lfunc_end4-main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI5_0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI5_1:
	.long	0x3f86ec50
	.section	".text.main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32,@function
main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32:
.Lfunc_begin5:
	.file	6 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_5.mlir"
	.loc	6 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp22:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$256, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	6 19 8 prologue_end
	movq	32(%rsi), %rcx
	vmovdqa	.LCPI5_0(%rip), %ymm0
	vbroadcastss	.LCPI5_1(%rip), %ymm2
	movl	$14, %r8d
	vxorps	%xmm1, %xmm1, %xmm1
	movq	(%rcx), %rsi
	.loc	6 20 8
	movq	8(%rcx), %rax
	.loc	6 21 8
	leaq	115200(%rsi), %rdi
	movq	%rdi, 112(%rsp)
	movl	$215552, %edi
	.loc	6 22 8
	addq	16(%rcx), %rdi
	movq	%rdi, 48(%rsp)
	movl	$330752, %edi
	.loc	6 23 8
	addq	24(%rcx), %rdi
	.loc	6 29 8
	movl	(%rdx), %ecx
	movl	%ecx, %edx
	andl	$-2, %edx
	movq	%rdi, 104(%rsp)
	addq	%rdx, %rdx
	movq	%rdx, 40(%rsp)
	xorl	%edx, %edx
	testb	$1, %cl
	cmoveq	%rdx, %r8
	shrl	%ecx
	leaq	(%rcx,%rcx,8), %rcx
	imulq	$120, %r8, %rdi
	movq	%r8, 64(%rsp)
	shlq	$9, %rcx
	leaq	98432(%rcx,%rax), %rax
	addq	%rsi, %rdi
	movq	%rdi, 32(%rsp)
	movq	%rax, 24(%rsp)
	.loc	6 0 8 is_stmt 0
.Ltmp23:
	.p2align	4
.LBB5_1:
	.loc	6 29 8
	movq	%rdx, %rax
	orq	40(%rsp), %rax
	movq	32(%rsp), %rsi
	movq	%rdx, 56(%rsp)
	imulq	$784, %rax, %rcx
	movq	%rcx, 80(%rsp)
	leaq	__constant_32xf32_0_0(%rip), %rcx
	vbroadcastss	(%rcx,%rax,4), %ymm3
	leaq	__constant_32xf32_1_0(%rip), %rcx
	vbroadcastss	(%rcx,%rax,4), %ymm4
	leaq	__constant_32xf32_2(%rip), %rcx
	vbroadcastss	(%rcx,%rax,4), %ymm5
	imulq	$3600, %rax, %rax
	addq	48(%rsp), %rax
	xorl	%ecx, %ecx
	movq	%rax, 72(%rsp)
	.loc	6 0 8
.Ltmp24:
	.p2align	4
.LBB5_2:
	movq	64(%rsp), %rax
	movq	%rcx, 88(%rsp)
	movq	72(%rsp), %rdx
	movl	$28, %r11d
	movq	%rsi, 96(%rsp)
	xorl	%edi, %edi
	addq	%rcx, %rax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %r14
	movq	80(%rsp), %rcx
	addq	%rax, %rcx
	imulq	$120, %rax, %rax
	addq	%rcx, %r14
	leaq	124(%rdx,%rax), %rax
	movq	%rax, 120(%rsp)
	.p2align	4
.LBB5_3:
	.loc	6 29 8 is_stmt 1
	cmpq	$8, %r11
	movl	$8, %r8d
	movl	$28, %eax
	movl	$8, %ecx
	movq	24(%rsp), %r12
	movq	%rsi, %r15
	cmovbq	%r11, %r8
	subq	%rdi, %rax
	cmpq	$8, %rax
	cmovaeq	%rcx, %rax
	xorl	%r13d, %r13d
	.loc	6 10 8
	vmovd	%eax, %xmm6
	vpbroadcastd	%xmm6, %ymm6
	vpcmpgtd	%ymm0, %ymm6, %ymm6
	vmaskmovps	%ymm1, %ymm6, 128(%rsp)
	.loc	6 0 8 is_stmt 0
.Ltmp25:
	.p2align	4
.LBB5_4:
	movq	%r12, %r10
	movq	%r15, %rdx
	xorl	%eax, %eax
	.p2align	4
.LBB5_5:
	movq	%rdx, %r9
	xorl	%ebx, %ebx
	.p2align	4
.LBB5_6:
	vmovss	128(%rsp,%rbx,4), %xmm7
	xorl	%ecx, %ecx
	.p2align	4
.LBB5_7:
	.loc	6 29 8 is_stmt 1
	vmovss	(%r9,%rcx,4), %xmm8
	.loc	6 32 10
	vfmadd231ss	(%r10,%rcx,4), %xmm8, %xmm7
	.loc	6 29 8
	incq	%rcx
	cmpq	$3, %rcx
	jne	.LBB5_7
	vmovss	%xmm7, 128(%rsp,%rbx,4)
	incq	%rbx
	addq	$4, %r9
	cmpq	%r8, %rbx
	jne	.LBB5_6
	incq	%rax
	addq	$120, %rdx
	addq	$12, %r10
	cmpq	$3, %rax
	jne	.LBB5_5
	incq	%r13
	addq	$3600, %r15
	addq	$36, %r12
	cmpq	$32, %r13
	jne	.LBB5_4
	.loc	6 0 8 is_stmt 0
	movq	112(%rsp), %rcx
	.loc	6 35 8 is_stmt 1
	leaq	(%r14,%rdi), %rax
	.loc	6 37 10
	vaddps	128(%rsp), %ymm3, %ymm8
	.loc	6 29 8
	addq	$-8, %r11
	addq	$32, %rsi
	cmpq	$20, %rdi
	.loc	6 35 8
	vmaskmovps	(%rcx,%rax,4), %ymm6, %ymm7
	movq	104(%rsp), %rcx
	.loc	6 38 10
	vaddps	%ymm7, %ymm4, %ymm7
	.loc	6 39 10
	vaddps	%ymm7, %ymm8, %ymm7
	.loc	6 41 10
	vsubps	%ymm5, %ymm7, %ymm8
	.loc	6 39 10
	vmaskmovps	%ymm7, %ymm6, (%rcx,%rax,4)
	movq	120(%rsp), %rax
	.loc	6 42 10
	vmulps	%ymm2, %ymm8, %ymm8
	.loc	6 43 10
	vaddps	%ymm1, %ymm8, %ymm9
	.loc	6 45 10
	vcmpnleps	%ymm1, %ymm8, %ymm8
	vandps	%ymm9, %ymm8, %ymm8
	vmaskmovps	%ymm8, %ymm6, (%rax,%rdi,4)
	.loc	6 29 8
	leaq	8(%rdi), %rdi
	jb	.LBB5_3
	.loc	6 0 8 is_stmt 0
	movq	88(%rsp), %rcx
	movq	96(%rsp), %rsi
	.loc	6 29 8
	incq	%rcx
	addq	$120, %rsi
	cmpq	$14, %rcx
	jne	.LBB5_2
	.loc	6 0 8
	movq	56(%rsp), %rdx
	.loc	6 29 8
	addq	$1152, 24(%rsp)
	incq	%rdx
	cmpq	$4, %rdx
	jne	.LBB5_1
	.loc	6 50 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	6 50 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp26:
.Lfunc_end5:
	.size	main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32, .Lfunc_end5-main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI6_0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	".text.main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32,@function
main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32:
.Lfunc_begin6:
	.file	7 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_6.mlir"
	.loc	7 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp27:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$256, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	7 14 8 prologue_end
	movq	32(%rsi), %rcx
	movl	$431104, %edi
	vmovdqa	.LCPI6_0(%rip), %ymm0
	vxorps	%xmm1, %xmm1, %xmm1
	.loc	7 16 8
	addq	16(%rcx), %rdi
	.loc	7 14 8
	movq	(%rcx), %rsi
	.loc	7 15 8
	movq	8(%rcx), %rax
	.loc	7 21 8
	movl	(%rdx), %ecx
	movl	%ecx, %edx
	movq	%rcx, %r8
	shrl	%ecx
	andl	$1, %edx
	shlq	$2, %r8
	movq	%rdi, 80(%rsp)
	leaq	(%rcx,%rcx,8), %rcx
	imulq	$1680, %rdx, %r9
	andq	$-8, %r8
	movq	%r8, 72(%rsp)
	movl	%edx, %r8d
	shlq	$3, %r8
	shlq	$10, %rcx
	subq	%rdx, %r8
	leaq	215552(%r9,%rsi), %rsi
	leaq	910464(%rcx,%rax), %rax
	movq	%r8, 96(%rsp)
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	%rsi, 64(%rsp)
	.loc	7 0 8 is_stmt 0
.Ltmp28:
	.p2align	4
.LBB6_1:
	.loc	7 21 8
	movq	%rax, %rcx
	orq	72(%rsp), %rcx
	movq	%rax, 88(%rsp)
	leaq	__constant_64xf32(%rip), %rax
	movq	64(%rsp), %rbx
	vbroadcastss	(%rax,%rcx,4), %ymm2
	shlq	$10, %rcx
	addq	80(%rsp), %rcx
	movq	%rcx, 104(%rsp)
	xorl	%ecx, %ecx
	.loc	7 0 8
.Ltmp29:
	.p2align	4
.LBB6_2:
	movq	96(%rsp), %rax
	movq	104(%rsp), %rdx
	movb	$1, %r13b
	movl	$14, %r12d
	xorl	%r9d, %r9d
	movq	%rcx, 112(%rsp)
	addq	%rcx, %rax
	shlq	$6, %rax
	leaq	68(%rdx,%rax), %rax
	movq	%rax, 120(%rsp)
	.p2align	4
.LBB6_3:
	.loc	7 21 8 is_stmt 1
	cmpq	$8, %r12
	movl	$8, %eax
	movl	$14, %ecx
	movl	$8, %edx
	leaq	(%rbx,%r9,8), %r10
	cmovbq	%r12, %rax
	subq	%r9, %rcx
	cmpq	$8, %rcx
	cmovaeq	%rdx, %rcx
	xorl	%r8d, %r8d
	.loc	7 9 8
	vmovd	%ecx, %xmm3
	movq	56(%rsp), %rcx
	vpbroadcastd	%xmm3, %ymm3
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vmaskmovps	%ymm1, %ymm3, 128(%rsp)
	.loc	7 0 8 is_stmt 0
.Ltmp30:
	.p2align	4
.LBB6_4:
	movq	%rcx, %rdi
	movq	%r10, %r11
	xorl	%r14d, %r14d
	.p2align	4
.LBB6_5:
	movq	%r11, %rsi
	xorl	%edx, %edx
	.p2align	4
.LBB6_6:
	vmovss	128(%rsp,%rdx,4), %xmm4
	xorl	%r15d, %r15d
	.p2align	4
.LBB6_7:
	.loc	7 21 8 is_stmt 1
	vmovss	(%rsi,%r15,4), %xmm5
	.loc	7 24 10
	vfmadd231ss	(%rdi,%r15,4), %xmm5, %xmm4
	.loc	7 21 8
	incq	%r15
	cmpq	$3, %r15
	jne	.LBB6_7
	vmovss	%xmm4, 128(%rsp,%rdx,4)
	incq	%rdx
	addq	$8, %rsi
	cmpq	%rax, %rdx
	jne	.LBB6_6
	incq	%r14
	addq	$120, %r11
	addq	$12, %rdi
	cmpq	$3, %r14
	jne	.LBB6_5
	incq	%r8
	addq	$3600, %r10
	addq	$36, %rcx
	cmpq	$32, %r8
	jne	.LBB6_4
	.loc	7 29 10
	vaddps	128(%rsp), %ymm2, %ymm4
	movq	120(%rsp), %rax
	.loc	7 21 8
	addq	$-8, %r12
	.loc	7 31 10
	vcmpnleps	%ymm1, %ymm4, %ymm5
	vandps	%ymm4, %ymm5, %ymm4
	vmaskmovps	%ymm4, %ymm3, (%rax,%r9,4)
	movl	$8, %r9d
	.loc	7 21 8
	testb	$1, %r13b
	movl	$0, %r13d
	jne	.LBB6_3
	.loc	7 0 8 is_stmt 0
	movq	112(%rsp), %rcx
	.loc	7 21 8
	addq	$240, %rbx
	incq	%rcx
	cmpq	$7, %rcx
	jne	.LBB6_2
	.loc	7 0 8
	movq	88(%rsp), %rax
	.loc	7 21 8
	addq	$1152, 56(%rsp)
	incq	%rax
	cmpq	$8, %rax
	jne	.LBB6_1
	.loc	7 35 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	7 35 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp31:
.Lfunc_end6:
	.size	main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32, .Lfunc_end6-main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32,@function
main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32:
.Lfunc_begin7:
	.file	8 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_7.mlir"
	.loc	8 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp32:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	8 20 8 prologue_end
	movl	(%rdx), %r9d
	.loc	8 13 8
	movq	32(%rsi), %rax
	xorl	%edx, %edx
	movl	$7, %esi
	.loc	8 20 8
	movl	%r9d, %ecx
	andl	$-2, %ecx
	.loc	8 13 8
	movq	(%rax), %rdi
	.loc	8 14 8
	movq	8(%rax), %r8
	.loc	8 15 8
	movq	16(%rax), %rax
	.loc	8 20 8
	shlq	$2, %rcx
	testb	$1, %r9b
	cmoveq	%rdx, %rsi
	shrl	%r9d
	imulq	$224, %rsi, %r10
	shlq	$10, %r9
	leaq	82972(%r9,%r8), %r8
	leaq	352704(%r10,%rdi), %rdi
	.loc	8 0 8 is_stmt 0
.Ltmp33:
	.p2align	4
.LBB7_1:
	.loc	8 20 8
	movq	%rdx, %r9
	orq	%rcx, %r9
	movq	%rdi, %r10
	xorl	%r11d, %r11d
	imulq	$784, %r9, %r9
	addq	%rax, %r9
	.loc	8 0 8
.Ltmp34:
	.p2align	4
.LBB7_2:
	leaq	(%r11,%rsi), %rbx
	movq	%r10, %r14
	xorl	%r15d, %r15d
	imulq	$56, %rbx, %rbx
	addq	%r9, %rbx
	.p2align	4
.LBB7_3:
	movq	$-8, %r12
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%r14, %r13
	.p2align	4
.LBB7_4:
	.loc	8 20 8 is_stmt 1
	vmovss	-21952(%r13), %xmm1
	vmovss	-18816(%r13), %xmm2
	vmovss	-15680(%r13), %xmm3
	vmovss	-12544(%r13), %xmm4
	vmovss	-9408(%r13), %xmm5
	vmovss	-6272(%r13), %xmm6
	vmovss	-3136(%r13), %xmm7
	vmovss	(%r13), %xmm8
	addq	$25088, %r13
	.loc	8 23 10
	vfmadd132ss	4(%r8,%r12,4), %xmm0, %xmm1
	vfmadd231ss	8(%r8,%r12,4), %xmm2, %xmm1
	vfmadd231ss	12(%r8,%r12,4), %xmm3, %xmm1
	vfmadd231ss	16(%r8,%r12,4), %xmm4, %xmm1
	vfmadd231ss	20(%r8,%r12,4), %xmm5, %xmm1
	vfmadd231ss	24(%r8,%r12,4), %xmm6, %xmm1
	vfmadd231ss	28(%r8,%r12,4), %xmm7, %xmm1
	vmovaps	%xmm1, %xmm0
	vfmadd231ss	32(%r8,%r12,4), %xmm8, %xmm0
	.loc	8 20 8
	addq	$8, %r12
	cmpq	$24, %r12
	jb	.LBB7_4
	vmovss	%xmm0, (%rbx,%r15,4)
	incq	%r15
	addq	$8, %r14
	cmpq	$14, %r15
	jne	.LBB7_3
	incq	%r11
	addq	$224, %r10
	cmpq	$7, %r11
	jne	.LBB7_2
	incq	%rdx
	subq	$-128, %r8
	cmpq	$8, %rdx
	jne	.LBB7_1
	.loc	8 27 8
	xorl	%eax, %eax
	.loc	8 27 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp35:
.Lfunc_end7:
	.size	main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32, .Lfunc_end7-main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI8_0:
	.long	0x3727c5ac
.LCPI8_1:
	.long	0x3f800000
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI8_2:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	".text.main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32,@function
main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32:
.Lfunc_begin8:
	.file	9 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_8.mlir"
	.loc	9 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp36:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$256, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	9 20 8 prologue_end
	movq	32(%rsi), %rcx
	movl	$50176, %edi
	vmovss	.LCPI8_0(%rip), %xmm0
	vmovss	.LCPI8_1(%rip), %xmm1
	vmovdqa	.LCPI8_2(%rip), %ymm2
	vxorps	%xmm3, %xmm3, %xmm3
	.loc	9 23 8
	addq	16(%rcx), %rdi
	.loc	9 20 8
	movq	(%rcx), %rsi
	.loc	9 21 8
	movq	8(%rcx), %rax
	movq	%rdi, 56(%rsp)
	movl	$115712, %edi
	.loc	9 24 8
	addq	24(%rcx), %rdi
	.loc	9 30 8
	movl	(%rdx), %ecx
	movq	%rsi, 112(%rsp)
	movl	%ecx, %edx
	andl	$-2, %edx
	movq	%rdi, 104(%rsp)
	xorl	%edi, %edi
	shlq	$2, %rdx
	testb	$1, %cl
	movq	%rdx, 48(%rsp)
	movl	$7, %edx
	cmoveq	%rdi, %rdx
	shrl	%ecx
	leaq	(%rcx,%rcx,8), %rcx
	movq	%rdx, 72(%rsp)
	shll	$6, %edx
	leaq	431104(%rdx,%rsi), %rdx
	shlq	$11, %rcx
	leaq	135296(%rcx,%rax), %rax
	movq	%rdx, 40(%rsp)
	movq	%rax, 24(%rsp)
	.loc	9 0 8 is_stmt 0
.Ltmp37:
	.p2align	4
.LBB8_1:
	movq	%rdi, 64(%rsp)
	.loc	9 30 8
	orq	48(%rsp), %rdi
	leaq	__constant_64xf32_2(%rip), %rdx
	leaq	__constant_64xf32_1(%rip), %rsi
	xorl	%ecx, %ecx
	vbroadcastss	(%rdx,%rdi,4), %ymm5
	leaq	__constant_64xf32_3(%rip), %rdx
	vbroadcastss	(%rsi,%rdi,4), %ymm4
	leaq	__constant_64xf32_0(%rip), %rsi
	imulq	$196, %rdi, %rax
	vaddss	(%rdx,%rdi,4), %xmm0, %xmm7
	vbroadcastss	(%rsi,%rdi,4), %ymm6
	shlq	$10, %rdi
	addq	56(%rsp), %rdi
	movq	%rax, 80(%rsp)
	movq	40(%rsp), %rax
	movq	%rdi, 88(%rsp)
	movq	%rax, 32(%rsp)
	vsqrtss	%xmm7, %xmm7, %xmm7
	vdivss	%xmm7, %xmm1, %xmm7
	vbroadcastss	%xmm7, %ymm7
	.loc	9 0 8
.Ltmp38:
	.p2align	4
.LBB8_2:
	movq	72(%rsp), %rax
	movq	88(%rsp), %rsi
	movq	%rcx, 96(%rsp)
	movb	$1, %dl
	movl	$14, %ebx
	xorl	%edi, %edi
	addq	%rcx, %rax
	movq	%rax, %r15
	leaq	(%rax,%rax), %rcx
	shlq	$4, %r15
	shlq	$6, %rax
	subq	%rcx, %r15
	addq	80(%rsp), %r15
	leaq	68(%rsi,%rax), %rax
	movq	%rax, 120(%rsp)
	.p2align	4
.LBB8_3:
	.loc	9 30 8 is_stmt 1
	cmpq	$8, %rbx
	movl	$8, %r8d
	movl	$14, %eax
	movl	$8, %ecx
	movq	24(%rsp), %r13
	cmovbq	%rbx, %r8
	subq	%rdi, %rax
	cmpq	$8, %rax
	cmovaeq	%rcx, %rax
	movq	32(%rsp), %rcx
	xorl	%r14d, %r14d
	.loc	9 10 8
	vmovd	%eax, %xmm8
	vpbroadcastd	%xmm8, %ymm8
	vpcmpgtd	%ymm2, %ymm8, %ymm8
	.loc	9 30 8
	leaq	(%rcx,%rdi,4), %r12
	.loc	9 10 8
	vmaskmovps	%ymm3, %ymm8, 128(%rsp)
	.loc	9 0 8 is_stmt 0
.Ltmp39:
	.p2align	4
.LBB8_4:
	movq	%r13, %r10
	movq	%r12, %rax
	xorl	%esi, %esi
	.p2align	4
.LBB8_5:
	movq	%rax, %r11
	xorl	%r9d, %r9d
	.p2align	4
.LBB8_6:
	vmovss	128(%rsp,%r9,4), %xmm9
	xorl	%ecx, %ecx
	.p2align	4
.LBB8_7:
	.loc	9 30 8 is_stmt 1
	vmovss	(%r11,%rcx,4), %xmm10
	.loc	9 33 10
	vfmadd231ss	(%r10,%rcx,4), %xmm10, %xmm9
	.loc	9 30 8
	incq	%rcx
	cmpq	$3, %rcx
	jne	.LBB8_7
	vmovss	%xmm9, 128(%rsp,%r9,4)
	incq	%r9
	addq	$4, %r11
	cmpq	%r8, %r9
	jne	.LBB8_6
	incq	%rsi
	addq	$64, %rax
	addq	$12, %r10
	cmpq	$3, %rsi
	jne	.LBB8_5
	incq	%r14
	addq	$1024, %r12
	addq	$36, %r13
	cmpq	$64, %r14
	jne	.LBB8_4
	.loc	9 0 8 is_stmt 0
	movq	112(%rsp), %rcx
	.loc	9 36 8 is_stmt 1
	leaq	(%r15,%rdi), %rax
	.loc	9 38 10
	vaddps	128(%rsp), %ymm4, %ymm10
	.loc	9 30 8
	addq	$-8, %rbx
	.loc	9 36 8
	vmaskmovps	(%rcx,%rax,4), %ymm8, %ymm9
	movq	104(%rsp), %rcx
	.loc	9 39 10
	vaddps	%ymm5, %ymm9, %ymm9
	.loc	9 40 10
	vaddps	%ymm10, %ymm9, %ymm9
	.loc	9 43 10
	vsubps	%ymm6, %ymm9, %ymm10
	.loc	9 40 10
	vmaskmovps	%ymm9, %ymm8, (%rcx,%rax,4)
	movq	120(%rsp), %rax
	.loc	9 44 10
	vmulps	%ymm7, %ymm10, %ymm10
	.loc	9 45 10
	vaddps	%ymm3, %ymm10, %ymm11
	.loc	9 47 10
	vcmpnleps	%ymm3, %ymm10, %ymm10
	vandps	%ymm11, %ymm10, %ymm10
	vmaskmovps	%ymm10, %ymm8, (%rax,%rdi,4)
	movl	$8, %edi
	.loc	9 30 8
	testb	$1, %dl
	movl	$0, %edx
	jne	.LBB8_3
	.loc	9 0 8 is_stmt 0
	movq	96(%rsp), %rcx
	.loc	9 30 8
	addq	$64, 32(%rsp)
	incq	%rcx
	cmpq	$7, %rcx
	jne	.LBB8_2
	.loc	9 0 8
	movq	64(%rsp), %rdi
	.loc	9 30 8
	addq	$2304, 24(%rsp)
	incq	%rdi
	cmpq	$8, %rdi
	jne	.LBB8_1
	.loc	9 52 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	9 52 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp40:
.Lfunc_end8:
	.size	main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32, .Lfunc_end8-main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32,@function
main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32:
.Lfunc_begin9:
	.file	10 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_9.mlir"
	.loc	10 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp41:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$256, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	10 23 8 prologue_end
	movl	(%rdx), %edx
	.loc	10 14 8
	movq	32(%rsi), %rax
	.loc	10 9 8
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	10 23 8
	imulq	$613566757, %rdx, %rdi
	movl	%edx, %ecx
	.loc	10 14 8
	movq	(%rax), %rsi
	.loc	10 15 8
	movq	8(%rax), %r9
	.loc	10 17 8
	movq	16(%rax), %rax
	.loc	10 9 8
	vmovaps	%xmm0, 64(%rsp)
	movl	$0, 88(%rsp)
	movq	$0, 80(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	10 23 8
	shrq	$32, %rdi
	subl	%edi, %ecx
	shrl	%ecx
	movq	%r9, 56(%rsp)
	addl	%edi, %ecx
	shrl	$2, %ecx
	leal	(,%rcx,8), %edi
	movl	%ecx, %r8d
	subl	%edi, %r8d
	addl	%edx, %r8d
	leaq	(%r8,%r8,8), %rdx
	shll	$7, %r8d
	leaq	50176(%rsi,%r8), %rsi
	xorl	%r8d, %r8d
	movq	%rsi, 48(%rsp)
	leaq	165888(%rax,%rdx,4), %rsi
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$4, %rcx
	shlq	$12, %rdx
	leaq	984192(%rdx,%r9), %rdi
	.loc	10 0 8 is_stmt 0
.Ltmp42:
	.p2align	4
.LBB9_1:
	xorl	%eax, %eax
	.p2align	4
.LBB9_2:
	.loc	10 23 8 is_stmt 1
	vmovss	64(%rsp,%rax,4), %xmm1
	vmovss	%xmm1, 128(%rsp,%rax,4)
	incq	%rax
	cmpq	$7, %rax
	jne	.LBB9_2
	.loc	10 0 8 is_stmt 0
	movq	48(%rsp), %r11
	.loc	10 23 8
	leaq	(%r8,%rcx), %r9
	movq	%rdi, %r10
	xorl	%ebx, %ebx
	.loc	10 0 8
.Ltmp43:
	.p2align	4
.LBB9_4:
	movq	%r10, %r14
	movq	%r11, %r15
	xorl	%r12d, %r12d
	.p2align	4
.LBB9_5:
	movq	%r15, %r13
	xorl	%eax, %eax
	.p2align	4
.LBB9_6:
	vmovss	128(%rsp,%rax,4), %xmm1
	xorl	%edx, %edx
	.p2align	4
.LBB9_7:
	.loc	10 23 8 is_stmt 1
	vmovss	(%r13,%rdx,4), %xmm2
	.loc	10 26 10
	vfmadd231ss	(%r14,%rdx,4), %xmm2, %xmm1
	.loc	10 23 8
	incq	%rdx
	cmpq	$3, %rdx
	jne	.LBB9_7
	vmovss	%xmm1, 128(%rsp,%rax,4)
	incq	%rax
	addq	$8, %r13
	cmpq	$7, %rax
	jne	.LBB9_6
	incq	%r12
	addq	$64, %r15
	addq	$12, %r14
	cmpq	$3, %r12
	jne	.LBB9_5
	incq	%rbx
	addq	$1024, %r11
	addq	$36, %r10
	cmpq	$64, %rbx
	jne	.LBB9_4
	.loc	10 0 8 is_stmt 0
	movq	56(%rsp), %rax
	.loc	10 23 8
	incq	%r8
	addq	$2304, %rdi
	.loc	10 31 10 is_stmt 1
	vbroadcastss	1279104(%rax,%r9,4), %ymm1
	.loc	10 23 8
	imulq	$324, %r9, %rax
	.loc	10 31 10
	vaddps	128(%rsp), %ymm1, %ymm1
	.loc	10 33 10
	vcmpnleps	%ymm0, %ymm1, %ymm2
	vandps	%ymm1, %ymm2, %ymm1
	.loc	10 23 8
	vextractf128	$1, %ymm1, %xmm2
	vmovups	%xmm1, 40(%rsi,%rax)
	vextractps	$2, %xmm2, 64(%rsi,%rax)
	vmovlps	%xmm2, 56(%rsi,%rax)
	cmpq	$16, %r8
	jne	.LBB9_1
	.loc	10 37 8
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	10 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp44:
.Lfunc_end9:
	.size	main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32, .Lfunc_end9-main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32,@function
main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32:
.Lfunc_begin10:
	.file	11 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_10.mlir"
	.loc	11 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp45:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	11 13 8 prologue_end
	movq	32(%rsi), %rsi
	.loc	11 20 8
	movl	(%rdx), %r8d
	movl	$121200, %edx
	.loc	11 14 8
	movq	8(%rsi), %rdi
	.loc	11 15 8
	movq	16(%rsi), %rax
	.loc	11 20 8
	addq	(%rsi), %rdx
	movq	%r8, %rcx
	shlq	$12, %r8
	shlq	$4, %rcx
	leaq	50204(%r8,%rdi), %rsi
	xorl	%edi, %edi
	.loc	11 0 8 is_stmt 0
.Ltmp46:
	.p2align	4
.LBB10_1:
	.loc	11 20 8
	leaq	(%rdi,%rcx), %r8
	movq	%rdx, %r9
	xorl	%r10d, %r10d
	imulq	$196, %r8, %r8
	addq	%rax, %r8
	.loc	11 0 8
.Ltmp47:
	.p2align	4
.LBB10_2:
	leaq	(%r10,%r10,8), %r11
	movq	%r9, %rbx
	xorl	%r14d, %r14d
	leaq	(%r11,%r11,2), %r11
	addq	%r10, %r11
	addq	%r8, %r11
	.p2align	4
.LBB10_3:
	movq	$-8, %r15
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rbx, %r12
	.p2align	4
.LBB10_4:
	.loc	11 20 8 is_stmt 1
	vmovss	-5488(%r12), %xmm1
	vmovss	-4704(%r12), %xmm2
	vmovss	-3920(%r12), %xmm3
	vmovss	-3136(%r12), %xmm4
	vmovss	-2352(%r12), %xmm5
	vmovss	-1568(%r12), %xmm6
	vmovss	-784(%r12), %xmm7
	vmovss	(%r12), %xmm8
	addq	$6272, %r12
	.loc	11 23 10
	vfmadd132ss	4(%rsi,%r15,4), %xmm0, %xmm1
	vfmadd231ss	8(%rsi,%r15,4), %xmm2, %xmm1
	vfmadd231ss	12(%rsi,%r15,4), %xmm3, %xmm1
	vfmadd231ss	16(%rsi,%r15,4), %xmm4, %xmm1
	vfmadd231ss	20(%rsi,%r15,4), %xmm5, %xmm1
	vfmadd231ss	24(%rsi,%r15,4), %xmm6, %xmm1
	vfmadd231ss	28(%rsi,%r15,4), %xmm7, %xmm1
	vmovaps	%xmm1, %xmm0
	vfmadd231ss	32(%rsi,%r15,4), %xmm8, %xmm0
	.loc	11 20 8
	addq	$8, %r15
	cmpq	$56, %r15
	jb	.LBB10_4
	vmovss	%xmm0, (%r11,%r14,4)
	incq	%r14
	addq	$8, %rbx
	cmpq	$7, %r14
	jne	.LBB10_3
	incq	%r10
	addq	$112, %r9
	cmpq	$7, %r10
	jne	.LBB10_2
	incq	%rdi
	addq	$256, %rsi
	cmpq	$16, %rdi
	jne	.LBB10_1
	.loc	11 27 8
	xorl	%eax, %eax
	.loc	11 27 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp48:
.Lfunc_end10:
	.size	main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32, .Lfunc_end10-main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32,@function
main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32:
.Lfunc_begin11:
	.file	12 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_11.mlir"
	.loc	12 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp49:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$256, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	12 29 8 prologue_end
	movl	(%rdx), %ecx
	.loc	12 16 8
	movq	32(%rsi), %rsi
	.loc	12 9 8
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	12 29 8
	imulq	$613566757, %rcx, %rdi
	movl	%ecx, %edx
	.loc	12 16 8
	movq	(%rsi), %rax
	.loc	12 29 8
	shrq	$32, %rdi
	subl	%edi, %edx
	shrl	%edx
	addl	%edi, %edx
	shrl	$2, %edx
	leal	(,%rdx,8), %edi
	movq	%rdx, %r10
	leaq	(%rdx,%rdx,8), %r9
	imulq	$252, %rdx, %r8
	shlq	$4, %r10
	movq	%r10, 56(%rsp)
	xorl	%r10d, %r10d
	subl	%edi, %edx
	.loc	12 17 8
	movq	8(%rsi), %rdi
	.loc	12 21 8
	movq	16(%rsi), %rsi
	.loc	12 29 8
	shlq	$13, %r9
	.loc	12 9 8
	vmovaps	%xmm0, 64(%rsp)
	movl	$0, 88(%rsp)
	movq	$0, 80(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	12 29 8
	addl	%ecx, %edx
	shlq	$2, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	subq	%r8, %rcx
	leaq	(,%rdx,8), %r8
	leaq	165888(%rcx,%rax), %rcx
	leaq	282752(%r9,%rdi), %r9
	movq	%rdi, 48(%rsp)
	subq	%rdx, %r8
	movq	%rcx, 32(%rsp)
	movq	%r8, 40(%rsp)
	.loc	12 0 8 is_stmt 0
.Ltmp50:
	.p2align	4
.LBB11_1:
	xorl	%ecx, %ecx
	.p2align	4
.LBB11_2:
	.loc	12 29 8 is_stmt 1
	vmovss	64(%rsp,%rcx,4), %xmm1
	vmovss	%xmm1, 128(%rsp,%rcx,4)
	incq	%rcx
	cmpq	$7, %rcx
	jne	.LBB11_2
	.loc	12 0 8 is_stmt 0
	movq	56(%rsp), %rcx
	movq	32(%rsp), %r8
	movq	%r9, %rbx
	xorl	%r15d, %r15d
	.loc	12 29 8
	leaq	(%r10,%rcx), %r11
	.loc	12 0 8
.Ltmp51:
	.p2align	4
.LBB11_4:
	movq	%rbx, %r12
	movq	%r8, %r14
	xorl	%ecx, %ecx
	.p2align	4
.LBB11_5:
	movq	%r14, %r13
	xorl	%edi, %edi
	.p2align	4
.LBB11_6:
	vmovss	128(%rsp,%rdi,4), %xmm1
	xorl	%edx, %edx
	.p2align	4
.LBB11_7:
	.loc	12 29 8 is_stmt 1
	vmovss	(%r13,%rdx,4), %xmm2
	.loc	12 32 10
	vfmadd231ss	(%r12,%rdx,4), %xmm2, %xmm1
	.loc	12 29 8
	incq	%rdx
	cmpq	$3, %rdx
	jne	.LBB11_7
	vmovss	%xmm1, 128(%rsp,%rdi,4)
	incq	%rdi
	addq	$4, %r13
	cmpq	$7, %rdi
	jne	.LBB11_6
	incq	%rcx
	addq	$36, %r14
	addq	$12, %r12
	cmpq	$3, %rcx
	jne	.LBB11_5
	incq	%r15
	addq	$324, %r8
	addq	$36, %rbx
	cmpq	$128, %r15
	jne	.LBB11_4
	.loc	12 35 8
	imulq	$49, %r11, %rcx
	addq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	.loc	12 29 8
	incq	%r10
	addq	$4608, %r9
	.loc	12 35 8
	vmovsd	16(%rax,%rcx,4), %xmm1
	vmovups	(%rax,%rcx,4), %xmm2
	.loc	12 38 10
	vbroadcastss	873088(%rdx,%r11,4), %ymm3
	.loc	12 35 8
	vinsertps	$32, 24(%rax,%rcx,4), %xmm1, %xmm1
	vinsertf128	$1, %xmm1, %ymm2, %ymm1
	.loc	12 37 10
	vbroadcastss	872576(%rdx,%r11,4), %ymm2
	vaddps	128(%rsp), %ymm2, %ymm2
	.loc	12 38 10
	vaddps	%ymm3, %ymm1, %ymm1
	.loc	12 39 10
	vaddps	%ymm2, %ymm1, %ymm1
	.loc	12 41 10
	vcmpnleps	%ymm0, %ymm1, %ymm2
	vandps	%ymm1, %ymm2, %ymm1
	.loc	12 29 8
	vextractf128	$1, %ymm1, %xmm2
	vmovups	%xmm1, 25088(%rsi,%rcx,4)
	vmovlps	%xmm2, 25104(%rsi,%rcx,4)
	vextractps	$2, %xmm2, 25112(%rsi,%rcx,4)
	cmpq	$16, %r10
	jne	.LBB11_1
	.loc	12 45 8
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	12 45 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp52:
.Lfunc_end11:
	.size	main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32, .Lfunc_end11-main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI12_0:
	.long	0x3bfcdc62
	.section	".text.main_graph$async_dispatch_12_matvec_like_6272_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_12_matvec_like_6272_f32,@function
main_graph$async_dispatch_12_matvec_like_6272_f32:
.Lfunc_begin12:
	.file	13 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_12.mlir"
	.loc	13 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp53:
	.loc	13 13 8 prologue_end
	movq	32(%rsi), %rax
	movq	$-8, %rsi
	vxorps	%xmm0, %xmm0, %xmm0
	movq	(%rax), %rcx
	.loc	13 14 8
	movq	8(%rax), %rdx
	.loc	13 15 8
	movq	16(%rax), %rax
	.loc	13 0 8 is_stmt 0
.Ltmp54:
	.p2align	4
.LBB12_1:
	.loc	13 20 8 is_stmt 1
	vmovaps	25120(%rcx,%rsi,4), %ymm1
	.loc	13 23 10
	vmulps	25120(%rdx,%rsi,4), %ymm1, %ymm1
	.loc	13 20 8
	addq	$8, %rsi
	.loc	13 23 10
	vextractf128	$1, %ymm1, %xmm2
	vaddps	%xmm2, %xmm1, %xmm1
	vshufpd	$1, %xmm1, %xmm1, %xmm2
	vaddps	%xmm2, %xmm1, %xmm1
	vmovshdup	%xmm1, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	.loc	13 20 8
	cmpq	$6264, %rsi
	jb	.LBB12_1
	.loc	13 28 10
	vaddss	.LCPI12_0(%rip), %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
	.loc	13 32 8
	xorl	%eax, %eax
	.loc	13 32 8 epilogue_begin is_stmt 0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp55:
.Lfunc_end12:
	.size	main_graph$async_dispatch_12_matvec_like_6272_f32, .Lfunc_end12-main_graph$async_dispatch_12_matvec_like_6272_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_13_slow_memcpy","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_13_slow_memcpy,@function
main_graph$async_dispatch_13_slow_memcpy:
.Lfunc_begin13:
	.file	14 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_13.mlir"
	.loc	14 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp56:
	.loc	14 15 8 prologue_end
	xorl	%eax, %eax
	.loc	14 15 8 epilogue_begin is_stmt 0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp57:
.Lfunc_end13:
	.size	main_graph$async_dispatch_13_slow_memcpy, .Lfunc_end13-main_graph$async_dispatch_13_slow_memcpy
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI14_0:
	.long	0x3abc0256
.LCPI14_1:
	.long	0x80000000
.LCPI14_2:
	.long	0xc2af999a
.LCPI14_3:
	.long	0x42b1999a
.LCPI14_4:
	.long	0x3f000000
.LCPI14_5:
	.long	0x3fb8aa3b
.LCPI14_6:
	.long	0xc2fe0000
.LCPI14_7:
	.long	0x42fe0000
.LCPI14_8:
	.long	0xbf318000
.LCPI14_9:
	.long	0x395e8083
.LCPI14_10:
	.long	0x39506967
.LCPI14_11:
	.long	0x3ab743ce
.LCPI14_12:
	.long	0x3c088908
.LCPI14_13:
	.long	0x3d2aa9c1
.LCPI14_14:
	.long	0x3e2aaaaa
.LCPI14_15:
	.long	0x3f800000
	.section	".text.main_graph$async_dispatch_14_matvec_like_6272_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_14_matvec_like_6272_f32,@function
main_graph$async_dispatch_14_matvec_like_6272_f32:
.Lfunc_begin14:
	.file	15 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_module_main_graph$async_dispatch_14.mlir"
	.loc	15 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp58:
	.loc	15 15 8 prologue_end
	movq	32(%rsi), %rax
	movq	$-8, %rsi
	vxorps	%xmm0, %xmm0, %xmm0
	movq	(%rax), %rcx
	.loc	15 16 8
	movq	8(%rax), %rdx
	.loc	15 17 8
	movq	16(%rax), %rax
	.loc	15 0 8 is_stmt 0
.Ltmp59:
	.p2align	4
.LBB14_1:
	.loc	15 22 8 is_stmt 1
	vmovaps	25120(%rcx,%rsi,4), %ymm1
	.loc	15 25 10
	vmulps	32(%rdx,%rsi,4), %ymm1, %ymm1
	.loc	15 22 8
	addq	$8, %rsi
	.loc	15 25 10
	vextractf128	$1, %ymm1, %xmm2
	vaddps	%xmm2, %xmm1, %xmm1
	vshufpd	$1, %xmm1, %xmm1, %xmm2
	vaddps	%xmm2, %xmm1, %xmm1
	vmovshdup	%xmm1, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	.loc	15 22 8
	cmpq	$6264, %rsi
	jb	.LBB14_1
	.loc	15 30 10
	vaddss	.LCPI14_0(%rip), %xmm0, %xmm0
	.loc	15 31 10
	vbroadcastss	.LCPI14_1(%rip), %xmm1
	vmovss	.LCPI14_5(%rip), %xmm2
	vmovss	.LCPI14_6(%rip), %xmm3
	vxorps	%xmm1, %xmm0, %xmm0
	vmovss	.LCPI14_2(%rip), %xmm1
	.loc	15 32 10
	vmaxss	%xmm0, %xmm1, %xmm0
	vmovss	.LCPI14_3(%rip), %xmm1
	vminss	%xmm0, %xmm1, %xmm0
	vmovss	.LCPI14_4(%rip), %xmm1
	vfmadd213ss	%xmm1, %xmm0, %xmm2
	vroundss	$9, %xmm2, %xmm2, %xmm2
	vmaxss	%xmm2, %xmm3, %xmm2
	vmovss	.LCPI14_7(%rip), %xmm3
	vminss	%xmm2, %xmm3, %xmm2
	vfmadd231ss	.LCPI14_8(%rip), %xmm2, %xmm0
	vmovss	.LCPI14_10(%rip), %xmm3
	vcvttss2si	%xmm2, %ecx
	shll	$23, %ecx
	vfmadd231ss	.LCPI14_9(%rip), %xmm2, %xmm0
	addl	$1065353216, %ecx
	vmovd	%ecx, %xmm2
	vfmadd213ss	.LCPI14_11(%rip), %xmm0, %xmm3
	vfmadd213ss	.LCPI14_12(%rip), %xmm0, %xmm3
	vfmadd213ss	.LCPI14_13(%rip), %xmm0, %xmm3
	vfmadd213ss	.LCPI14_14(%rip), %xmm0, %xmm3
	vfmadd213ss	%xmm1, %xmm0, %xmm3
	vmulss	%xmm0, %xmm0, %xmm1
	vfmadd213ss	%xmm0, %xmm3, %xmm1
	vmovss	.LCPI14_15(%rip), %xmm0
	vaddss	%xmm0, %xmm1, %xmm1
	.loc	15 33 10
	vfmadd213ss	%xmm0, %xmm1, %xmm2
	.loc	15 34 10
	vdivss	%xmm2, %xmm0, %xmm0
	vmovss	%xmm0, 64(%rax)
	.loc	15 38 8
	xorl	%eax, %eax
	.loc	15 38 8 epilogue_begin is_stmt 0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp60:
.Lfunc_end14:
	.size	main_graph$async_dispatch_14_matvec_like_6272_f32, .Lfunc_end14-main_graph$async_dispatch_14_matvec_like_6272_f32
	.cfi_endproc

	.section	.text.iree_hal_executable_library_query,"ax",@progbits
	.globl	iree_hal_executable_library_query
	.p2align	4
	.type	iree_hal_executable_library_query,@function
iree_hal_executable_library_query:
.Liree_hal_executable_library_query$local:
	.type	.Liree_hal_executable_library_query$local,@function
.Lfunc_begin15:
	.cfi_startproc
	xorl	%eax, %eax
	cmpl	$6, %edi
	leaq	iree_hal_executable_library_query_v0(%rip), %rcx
	cmoveq	%rcx, %rax
	retq
.Lfunc_end15:
	.size	iree_hal_executable_library_query, .Lfunc_end15-iree_hal_executable_library_query
	.size	.Liree_hal_executable_library_query$local, .Lfunc_end15-iree_hal_executable_library_query
	.cfi_endproc

	.section	.text.iree_h2f_ieee,"ax",@progbits
	.p2align	4
	.type	iree_h2f_ieee,@function
iree_h2f_ieee:
.Lfunc_begin16:
	.cfi_startproc
	movl	%edi, %eax
	andl	$32768, %eax
	movl	%edi, %edx
	movl	%edi, %ecx
	andl	$1023, %ecx
	shll	$16, %eax
	andw	$31744, %dx
	je	.LBB16_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB16_5
	testw	%cx, %cx
	je	.LBB16_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB16_6:
	movzwl	%cx, %ecx
	orl	$864026624, %eax
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB16_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	leal	939524096(%rdx,%rax), %eax
	vmovd	%eax, %xmm0
	retq
.LBB16_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end16:
	.size	iree_h2f_ieee, .Lfunc_end16-iree_h2f_ieee
	.cfi_endproc

	.section	.text.iree_f2h_ieee,"ax",@progbits
	.p2align	4
	.type	iree_f2h_ieee,@function
iree_f2h_ieee:
.Lfunc_begin17:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB17_4
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB17_6
	testl	%edx, %edx
	je	.LBB17_7
	orl	$32767, %eax
	retq
.LBB17_4:
	movl	%ecx, %edx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB17_6:
	cmpl	$1191182336, %ecx
	jbe	.LBB17_8
.LBB17_7:
	movl	$31744, %edx
	xorl	%ecx, %ecx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB17_8:
	cmpl	$947912704, %ecx
	jae	.LBB17_10
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB17_10:
	andl	$8192, %esi
	shrl	$23, %ecx
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	movl	%edx, %esi
	sbbl	$-1, %ecx
	shrl	$13, %esi
	xorl	%edi, %edi
	cmpl	$8388608, %edx
	cmovbl	%esi, %edi
	shll	$10, %ecx
	movl	%ecx, %edx
	addl	$-114688, %edx
	movl	%edi, %ecx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end17:
	.size	iree_f2h_ieee, .Lfunc_end17-iree_f2h_ieee
	.cfi_endproc

	.section	.text.__gnu_h2f_ieee,"ax",@progbits
	.p2align	4
	.type	__gnu_h2f_ieee,@function
__gnu_h2f_ieee:
.Lfunc_begin18:
	.cfi_startproc
	movl	%edi, %eax
	andl	$32768, %eax
	movl	%edi, %edx
	movl	%edi, %ecx
	andl	$1023, %ecx
	shll	$16, %eax
	andw	$31744, %dx
	je	.LBB18_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB18_5
	testw	%cx, %cx
	je	.LBB18_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB18_6:
	movzwl	%cx, %ecx
	orl	$864026624, %eax
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB18_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	leal	939524096(%rdx,%rax), %eax
	vmovd	%eax, %xmm0
	retq
.LBB18_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end18:
	.size	__gnu_h2f_ieee, .Lfunc_end18-__gnu_h2f_ieee
	.cfi_endproc

	.section	.text.__extendhfsf2,"ax",@progbits
	.p2align	4
	.type	__extendhfsf2,@function
__extendhfsf2:
.Lfunc_begin19:
	.cfi_startproc
	vmovd	%xmm0, %ecx
	movl	%ecx, %eax
	shll	$16, %eax
	movl	%ecx, %edx
	andl	$1023, %edx
	movl	%ecx, %esi
	andl	$-2147483648, %eax
	andl	$31744, %esi
	je	.LBB19_6
	cmpl	$31744, %esi
	jne	.LBB19_5
	testw	%dx, %dx
	je	.LBB19_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB19_6:
	movzwl	%dx, %ecx
	orl	$864026624, %eax
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB19_5:
	andl	$32767, %ecx
	shll	$13, %ecx
	leal	939524096(%rcx,%rax), %eax
	vmovd	%eax, %xmm0
	retq
.LBB19_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end19:
	.size	__extendhfsf2, .Lfunc_end19-__extendhfsf2
	.cfi_endproc

	.section	.text.__gnu_f2h_ieee,"ax",@progbits
	.p2align	4
	.type	__gnu_f2h_ieee,@function
__gnu_f2h_ieee:
.Lfunc_begin20:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB20_4
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB20_6
	testl	%edx, %edx
	je	.LBB20_7
	orl	$32767, %eax
	retq
.LBB20_4:
	movl	%ecx, %edx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB20_6:
	cmpl	$1191182336, %ecx
	jbe	.LBB20_8
.LBB20_7:
	movl	$31744, %edx
	xorl	%ecx, %ecx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB20_8:
	cmpl	$947912704, %ecx
	jae	.LBB20_10
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB20_10:
	andl	$8192, %esi
	shrl	$23, %ecx
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	movl	%edx, %esi
	sbbl	$-1, %ecx
	shrl	$13, %esi
	xorl	%edi, %edi
	cmpl	$8388608, %edx
	cmovbl	%esi, %edi
	shll	$10, %ecx
	movl	%ecx, %edx
	addl	$-114688, %edx
	movl	%edi, %ecx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end20:
	.size	__gnu_f2h_ieee, .Lfunc_end20-__gnu_f2h_ieee
	.cfi_endproc

	.section	.text.__truncsfhf2,"ax",@progbits
	.p2align	4
	.type	__truncsfhf2,@function
__truncsfhf2:
.Lfunc_begin21:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB21_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB21_6
	testl	%edx, %edx
	je	.LBB21_4
	orl	$32767, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.LBB21_1:
	movl	%ecx, %edx
	jmp	.LBB21_10
.LBB21_6:
	cmpl	$1191182336, %ecx
	jbe	.LBB21_7
.LBB21_4:
	movl	$31744, %edx
	xorl	%ecx, %ecx
	jmp	.LBB21_10
.LBB21_7:
	cmpl	$947912704, %ecx
	jae	.LBB21_9
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB21_10
.LBB21_9:
	andl	$8192, %esi
	shrl	$23, %ecx
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	movl	%edx, %esi
	sbbl	$-1, %ecx
	shrl	$13, %esi
	xorl	%edi, %edi
	cmpl	$8388608, %edx
	cmovbl	%esi, %edi
	shll	$10, %ecx
	movl	%ecx, %edx
	addl	$-114688, %edx
	movl	%edi, %ecx
.LBB21_10:
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.Lfunc_end21:
	.size	__truncsfhf2, .Lfunc_end21-__truncsfhf2
	.cfi_endproc

	.type	__constant_32xf32,@object
	.section	.rodata.__constant_32xf32,"a",@progbits
	.p2align	6, 0x0
__constant_32xf32:
	.long	0xbcae59e7
	.long	0xbc80d25a
	.long	0x3e07a230
	.long	0x3e2de4da
	.long	0xbe1a532b
	.long	0xbd11777a
	.long	0x3dce19c3
	.long	0xbe2971ea
	.long	0xbd8e1a77
	.long	0xbc6bcf80
	.long	0xbe002cdb
	.long	0xbe362b7a
	.long	0xbe19d128
	.long	0x3e4bb262
	.long	0xbdd94e70
	.long	0x3dc82f53
	.long	0xbe279bc2
	.long	0x3ce1c94d
	.long	0xbe011622
	.long	0x3e21c2d5
	.long	0x3cd88927
	.long	0xbd5f9b27
	.long	0xbe14b77f
	.long	0x3dea3e90
	.long	0xbd04957a
	.long	0xbde4d033
	.long	0x3c9ae780
	.long	0x3e153d4d
	.long	0xbd0af8fa
	.long	0xbcca90e7
	.long	0x3d5445a0
	.long	0xbe28c68b
	.size	__constant_32xf32, 128

	.type	__constant_32xf32_0,@object
	.section	.rodata.__constant_32xf32_0,"a",@progbits
	.p2align	6, 0x0
__constant_32xf32_0:
	.long	0xbb0b7b1f
	.long	0xbace1d5d
	.long	0x3c590380
	.long	0x3c8b1d7b
	.long	0xbc76eb78
	.long	0xbb68bf2a
	.long	0x3c24e169
	.long	0xbc878e55
	.long	0xbbe35d8b
	.long	0xbabca600
	.long	0xbc4d1492
	.long	0xbc91bc62
	.long	0xbc761b73
	.long	0x3ca2f51b
	.long	0xbc2dd85a
	.long	0x3c2025dc
	.long	0xbc861635
	.long	0x3b34a10b
	.long	0xbc4e89d0
	.long	0x3c8168ab
	.long	0x3b2d3a86
	.long	0xbbb2e286
	.long	0xbc6df265
	.long	0x3c3b6540
	.long	0xbb54225d
	.long	0xbc370cf6
	.long	0x3af7d8cd
	.long	0x3c6ec87b
	.long	0xbb5e5b2a
	.long	0xbb220d86
	.long	0x3ba9d14d
	.long	0xbc87053c
	.size	__constant_32xf32_0, 128

	.type	__constant_32xf32_1,@object
	.section	.rodata.__constant_32xf32_1,"a",@progbits
	.p2align	6, 0x0
__constant_32xf32_1:
	.long	0xbc12088f
	.long	0xbcd9b00c
	.long	0x3d05a501
	.long	0xbc0e558c
	.long	0xbd285046
	.long	0x3d64e040
	.long	0x3c8030dc
	.long	0xbca97e52
	.long	0x3d2b6a72
	.long	0xbc32359a
	.long	0xbd2072f3
	.long	0xbce86f05
	.long	0x3d4005fd
	.long	0xbb8244ae
	.long	0x3ca98baf
	.long	0x3c88f7d8
	.long	0xbd30c7b1
	.long	0x3cff71f3
	.long	0x3cc4a419
	.long	0x3c0e715b
	.long	0x3d0156a4
	.long	0x3d02c318
	.long	0xbd22f123
	.long	0x3c185a39
	.long	0x3d052d75
	.long	0xbd338f0c
	.long	0xbd09eb4e
	.long	0xbc51d1e4
	.long	0xbd34c374
	.long	0x3cc497d6
	.long	0x3ce585fd
	.long	0x3d0f5481
	.size	__constant_32xf32_1, 128

	.type	__constant_32xf32_1_0,@object
	.section	.rodata.__constant_32xf32_1_0,"a",@progbits
	.p2align	6, 0x0
__constant_32xf32_1_0:
	.long	0xbc5a2b89
	.long	0x3de86a98
	.long	0xbc395ed2
	.long	0xbd1a1259
	.long	0xbd9a7f88
	.long	0xbd56f66e
	.long	0x3d9c7114
	.long	0x3defcec4
	.long	0x3e1586a4
	.long	0xbe1e9d75
	.long	0xbde15381
	.long	0xbcb1431b
	.long	0xbd87dfe8
	.long	0x3df172ef
	.long	0xbdc98d2c
	.long	0xbe33496c
	.long	0xbd03f30b
	.long	0x3dc16b40
	.long	0x3d50f7d5
	.long	0x3ab2cbba
	.long	0xb886f811
	.long	0xbd7e57c9
	.long	0xbb1239e1
	.long	0x3e0e6274
	.long	0xbe1a64ed
	.long	0x3d5bf74f
	.long	0x3d5a6f2d
	.long	0x3dd2f011
	.long	0xbd2fab7b
	.long	0xbd887a50
	.long	0xbd2557c9
	.long	0xbe1cfed9
	.size	__constant_32xf32_1_0, 128

	.type	__constant_32xf32_0_0,@object
	.section	.rodata.__constant_32xf32_0_0,"a",@progbits
	.p2align	6, 0x0
__constant_32xf32_0_0:
	.long	0xbd20f342
	.long	0x3d534555
	.long	0xbca8291a
	.long	0x3cbe0622
	.long	0x3d0f6b5f
	.long	0xbbbc108b
	.long	0x3d6265e4
	.long	0x3d4d2e75
	.long	0xbd3e42e5
	.long	0x3cef343e
	.long	0xbd191f86
	.long	0x3cde7e70
	.long	0xbd11142c
	.long	0xbcf51bd9
	.long	0x3b170930
	.long	0xbc9de91e
	.long	0xbcdbb5da
	.long	0x3bc12636
	.long	0x3b8b52a5
	.long	0xbd29bc04
	.long	0x3c03f53b
	.long	0xbc84d80d
	.long	0xbd1faa93
	.long	0x3d001123
	.long	0xbd2727b2
	.long	0xbced2e4d
	.long	0x3d15155a
	.long	0xbd2b1c67
	.long	0xbc2142a2
	.long	0xbcb523e3
	.long	0x3d2dd21b
	.long	0x3c87b22f
	.size	__constant_32xf32_0_0, 128

	.type	__constant_32xf32_2,@object
	.section	.rodata.__constant_32xf32_2,"a",@progbits
	.p2align	6, 0x0
__constant_32xf32_2:
	.long	0xbca9f46b
	.long	0x3cfa1c32
	.long	0xbb47c99e
	.long	0x3bf34865
	.long	0xbc6901c7
	.long	0xbaf9dbd7
	.long	0x3bff66f7
	.long	0x3ca1f1d3
	.long	0x3c9af545
	.long	0xbc20e354
	.long	0xbcad83b5
	.long	0x3bc50b09
	.long	0xbbae4047
	.long	0x3c186caf
	.long	0xbbeacc33
	.long	0xbcdf9270
	.long	0xbc861571
	.long	0x3c0becd7
	.long	0x3bed23ad
	.long	0xbc3e5d44
	.long	0x3c38b123
	.long	0xbc0ba7de
	.long	0x3ad8b64f
	.long	0x3c85b490
	.long	0xbcad7e63
	.long	0xbb83ecbd
	.long	0x3bb5ddea
	.long	0x3bbe6453
	.long	0xbb8d232c
	.long	0xbb89a487
	.long	0xbba51158
	.long	0xbc5bbcb7
	.size	__constant_32xf32_2, 128

	.type	__constant_64xf32,@object
	.section	.rodata.__constant_64xf32,"a",@progbits
	.p2align	6, 0x0
__constant_64xf32:
	.long	0x3cbe9582
	.long	0x3ba0f767
	.long	0xbc1c49ca
	.long	0xbd0ae97a
	.long	0x3c2a5aff
	.long	0xbd1e1cc0
	.long	0x3d4714ca
	.long	0xbcbc7d5a
	.long	0x3cc3566c
	.long	0x3cba8db4
	.long	0x3bdfce27
	.long	0x3d1b7055
	.long	0x3d623bd6
	.long	0xbc0db850
	.long	0xbd0ccb0f
	.long	0x3d254927
	.long	0xbd3f23e3
	.long	0xbd217421
	.long	0xba663413
	.long	0xbc878244
	.long	0x3beb8414
	.long	0x3c6fe11b
	.long	0x3d5b122a
	.long	0xbd34f758
	.long	0xbcc6132a
	.long	0xbc340710
	.long	0xbd2eba1d
	.long	0x3cb96228
	.long	0x3d6165a0
	.long	0xbce930e2
	.long	0x3ce0638a
	.long	0xbcd5c45b
	.long	0x3d3ef442
	.long	0xbd51fd77
	.long	0x3d28fba8
	.long	0xbd3a2417
	.long	0x3d221e61
	.long	0x3d643668
	.long	0x3c9b7a01
	.long	0xba9e9b8d
	.long	0xbd4752a2
	.long	0xbc684ee6
	.long	0xbd565c68
	.long	0x3ca9acdf
	.long	0xbc742c09
	.long	0xbd020a6d
	.long	0xbd4d8a60
	.long	0xbc5244d5
	.long	0x3d35517b
	.long	0xbd3c29f2
	.long	0x3c0ef576
	.long	0x3beba604
	.long	0x3d0c39fe
	.long	0xbd2f63b0
	.long	0xbb8dab13
	.long	0xb9902cce
	.long	0x3d295b71
	.long	0x3d0d2111
	.long	0xbd3fa159
	.long	0x3d4699ca
	.long	0x3b11cca1
	.long	0x3d3cbde4
	.long	0xbc5d7db4
	.long	0xbc7d0770
	.size	__constant_64xf32, 256

	.type	__constant_64xf32_2,@object
	.section	.rodata.__constant_64xf32_2,"a",@progbits
	.p2align	6, 0x0
__constant_64xf32_2:
	.long	0x3da48654
	.long	0xbe0cd042
	.long	0xbce9bbdc
	.long	0xbb73d872
	.long	0x3df6a1d7
	.long	0xbd67453b
	.long	0x3d8604eb
	.long	0xbdd58e53
	.long	0x3c8dfc8f
	.long	0x3e12ceb7
	.long	0xbe130ff2
	.long	0x3dccd93f
	.long	0x3d0c6500
	.long	0x3e2e1dd8
	.long	0x3dae9041
	.long	0x3d38a1ef
	.long	0xbcd4c272
	.long	0xbe256d04
	.long	0xbdd6d4c7
	.long	0xbd1a7481
	.long	0x3dc88739
	.long	0x3b2fb803
	.long	0xbd9843fb
	.long	0xbe1a98cb
	.long	0xbe2abc2e
	.long	0x3dd230b7
	.long	0xbe18bc88
	.long	0xbe19f591
	.long	0xbcb9e542
	.long	0xbe276376
	.long	0x3e2298fa
	.long	0x3cccca2d
	.long	0x3ccfc295
	.long	0xbd778163
	.long	0xbd3dd81c
	.long	0xba5a9430
	.long	0x3e2bfc6e
	.long	0x3dfcdcd4
	.long	0xbe0d3a79
	.long	0xbd868710
	.long	0x3c8644e7
	.long	0xbcb6f2a4
	.long	0x3de66fe3
	.long	0x3cd502ed
	.long	0xbcadfafa
	.long	0x3e0c5e12
	.long	0xbd228ccb
	.long	0xb9fd65fa
	.long	0x3e2d6a36
	.long	0x3e0edbaf
	.long	0x3e03c023
	.long	0xbdd70087
	.long	0x3e32a15a
	.long	0xbd1eddf4
	.long	0xbe292eea
	.long	0x3dddf78e
	.long	0xbdca6c85
	.long	0x3e1215c3
	.long	0xbe0eb535
	.long	0xbd19f10d
	.long	0x3d82e68b
	.long	0xbd080c86
	.long	0x3c60bfb0
	.long	0x3ddd7441
	.size	__constant_64xf32_2, 256

	.type	__constant_64xf32_1,@object
	.section	.rodata.__constant_64xf32_1,"a",@progbits
	.p2align	6, 0x0
__constant_64xf32_1:
	.long	0x3ac40900
	.long	0x3d02e997
	.long	0x3ccc5e90
	.long	0xbc87f2db
	.long	0xbca967be
	.long	0xbceda4f8
	.long	0xbd1c58fb
	.long	0x3b841296
	.long	0x3cb5378b
	.long	0xba6a46ab
	.long	0xbd015736
	.long	0xbcf5f4c6
	.long	0x3c78af20
	.long	0x3d22ee67
	.long	0xbc5e6206
	.long	0xbc7ac0a6
	.long	0xbd13341f
	.long	0xbc9b88c8
	.long	0xbc773ceb
	.long	0x3c2d6460
	.long	0x3c313726
	.long	0xbc4c8c76
	.long	0x3c9ed32e
	.long	0xb7fa9556
	.long	0x3c05851b
	.long	0x3ccac238
	.long	0xbc7e12c6
	.long	0x3d1cab40
	.long	0xbb6d9aeb
	.long	0x3cb83040
	.long	0xbd236423
	.long	0x3b89a4d6
	.long	0x3c8062db
	.long	0xbc8ed5ee
	.long	0xbc2624cb
	.long	0xbac2db00
	.long	0x3b6b7480
	.long	0xbcf20a3e
	.long	0xbd0425ae
	.long	0xbd274853
	.long	0x3b04c500
	.long	0xbd1b4c6f
	.long	0xbd2493d7
	.long	0xbc7380f6
	.long	0x3d0d3f7e
	.long	0xbd1b611b
	.long	0x3cb53830
	.long	0x3d0c54e0
	.long	0x3bd70a16
	.long	0xbc9b2b40
	.long	0x3cc4c690
	.long	0xbce8da93
	.long	0x3cae989e
	.long	0x3ceb352e
	.long	0x3cd1c0b6
	.long	0xbc8c6776
	.long	0x39cce000
	.long	0xbc98dc63
	.long	0xbd068cac
	.long	0x3b54df2b
	.long	0x3ce929ee
	.long	0x3d1d90af
	.long	0xbc549bb6
	.long	0x3c8a7790
	.size	__constant_64xf32_1, 256

	.type	__constant_64xf32_0,@object
	.section	.rodata.__constant_64xf32_0,"a",@progbits
	.p2align	6, 0x0
__constant_64xf32_0:
	.long	0x3c9b68a1
	.long	0xbbeece8f
	.long	0xbae4f13b
	.long	0xbc2a7049
	.long	0x3c49859d
	.long	0x3b5cf457
	.long	0xbaf05c42
	.long	0xbc8ec4f7
	.long	0x3bfce687
	.long	0x3ca709ef
	.long	0xbd1723fe
	.long	0x3c8792cf
	.long	0x3af1f5b3
	.long	0x3bf84a5a
	.long	0xbb72e68d
	.long	0xbb4e970b
	.long	0xbbf88c88
	.long	0xbbd02e6f
	.long	0xbc211a94
	.long	0x3c103304
	.long	0x3c574df2
	.long	0xbc5bbecd
	.long	0x39892680
	.long	0xbb6b5fea
	.long	0xbca3d699
	.long	0xba80e87a
	.long	0xbc3a934a
	.long	0xbc2dd84d
	.long	0xbc464308
	.long	0xbcdac437
	.long	0xbbcc68f2
	.long	0xbc3f2c2b
	.long	0xbc36c0b4
	.long	0xb96aa5d0
	.long	0xbc26a357
	.long	0xbc386957
	.long	0x3cba90ce
	.long	0x3c92bba3
	.long	0xbc80fca1
	.long	0xbc4d1d00
	.long	0x3a45f4ee
	.long	0xbc891fd7
	.long	0xbc575b68
	.long	0xbc622723
	.long	0xbca66a49
	.long	0x3bb07a7f
	.long	0x3a232ff8
	.long	0x3bfc36ed
	.long	0x3ccc202f
	.long	0x3ce83e3f
	.long	0x3c4eaf9a
	.long	0xbc6a8cbb
	.long	0x3d271006
	.long	0xba0549c8
	.long	0xbc34e109
	.long	0xbb550838
	.long	0xbc916365
	.long	0x3c784d23
	.long	0xbc8937e3
	.long	0xbceaa9ab
	.long	0x3c48298b
	.long	0xbb41e3f6
	.long	0x3c7d0b20
	.long	0x3c873813
	.size	__constant_64xf32_0, 256

	.type	__constant_64xf32_3,@object
	.section	.rodata.__constant_64xf32_3,"a",@progbits
	.p2align	6, 0x0
__constant_64xf32_3:
	.long	0x3f66799f
	.long	0x3f66ac64
	.long	0x3f6679a9
	.long	0x3f66a840
	.long	0x3f668eed
	.long	0x3f66a097
	.long	0x3f668b9a
	.long	0x3f66caff
	.long	0x3f669682
	.long	0x3f667759
	.long	0x3f668a02
	.long	0x3f668d57
	.long	0x3f66a2c5
	.long	0x3f668e65
	.long	0x3f668203
	.long	0x3f66b994
	.long	0x3f66cf51
	.long	0x3f669a45
	.long	0x3f66933a
	.long	0x3f66ded8
	.long	0x3f6696c4
	.long	0x3f66a216
	.long	0x3f66a528
	.long	0x3f669fed
	.long	0x3f66a410
	.long	0x3f668ae3
	.long	0x3f667e65
	.long	0x3f668340
	.long	0x3f66c00e
	.long	0x3f66d27b
	.long	0x3f667c11
	.long	0x3f66a8c4
	.long	0x3f668ff0
	.long	0x3f6693e0
	.long	0x3f668997
	.long	0x3f668492
	.long	0x3f6686fe
	.long	0x3f66a1d8
	.long	0x3f668306
	.long	0x3f66834e
	.long	0x3f66c288
	.long	0x3f669267
	.long	0x3f669858
	.long	0x3f669b3f
	.long	0x3f668fa3
	.long	0x3f667f35
	.long	0x3f669a7f
	.long	0x3f668abc
	.long	0x3f667997
	.long	0x3f6689a7
	.long	0x3f669a18
	.long	0x3f66857c
	.long	0x3f66c726
	.long	0x3f66dc07
	.long	0x3f669351
	.long	0x3f6688b5
	.long	0x3f668bbd
	.long	0x3f66a79f
	.long	0x3f668999
	.long	0x3f667fab
	.long	0x3f667fcc
	.long	0x3f66904f
	.long	0x3f66a7f2
	.long	0x3f667782
	.size	__constant_64xf32_3, 256

	.type	__unnamed_1,@object
	.section	.rodata.__unnamed_1,"a",@progbits
__unnamed_1:
	.asciz	"dronet_linked"
	.size	__unnamed_1, 14

	.type	iree_hal_executable_library_query_v0_header,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_header,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_header:
	.long	6
	.zero	4
	.quad	__unnamed_1
	.long	0
	.long	0
	.size	iree_hal_executable_library_query_v0_header, 24

	.type	iree_hal_executable_library_query_v0_funcs,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_funcs,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_funcs:
	.quad	main_graph$async_dispatch_0_slow_memcpy
	.quad	main_graph$async_dispatch_1_conv_32x112x112x5x5_f32
	.quad	main_graph$async_dispatch_2_conv_32x55x55x3x3_f32
	.quad	main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32
	.quad	main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32
	.quad	main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32
	.quad	main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32
	.quad	main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32
	.quad	main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32
	.quad	main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32
	.quad	main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32
	.quad	main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32
	.quad	main_graph$async_dispatch_12_matvec_like_6272_f32
	.quad	main_graph$async_dispatch_13_slow_memcpy
	.quad	main_graph$async_dispatch_14_matvec_like_6272_f32
	.size	iree_hal_executable_library_query_v0_funcs, 120

	.type	iree_hal_executable_library_query_v0_attrs,@object
	.section	.rodata.iree_hal_executable_library_query_v0_attrs,"a",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_attrs:
	.quad	0
	.short	0
	.byte	0
	.byte	2
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	4
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	4
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	1
	.byte	1
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	iree_hal_executable_library_query_v0_attrs, 960

	.type	__unnamed_2,@object
	.section	.rodata.__unnamed_2,"a",@progbits
__unnamed_2:
	.asciz	"main_graph$async_dispatch_0_slow_memcpy"
	.size	__unnamed_2, 40

	.type	__unnamed_3,@object
	.section	.rodata.__unnamed_3,"a",@progbits
__unnamed_3:
	.asciz	"main_graph$async_dispatch_1_conv_32x112x112x5x5_f32"
	.size	__unnamed_3, 52

	.type	__unnamed_4,@object
	.section	.rodata.__unnamed_4,"a",@progbits
__unnamed_4:
	.asciz	"main_graph$async_dispatch_2_conv_32x55x55x3x3_f32"
	.size	__unnamed_4, 50

	.type	__unnamed_5,@object
	.section	.rodata.__unnamed_5,"a",@progbits
__unnamed_5:
	.asciz	"main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32"
	.size	__unnamed_5, 53

	.type	__unnamed_6,@object
	.section	.rodata.__unnamed_6,"a",@progbits
__unnamed_6:
	.asciz	"main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32"
	.size	__unnamed_6, 56

	.type	__unnamed_7,@object
	.section	.rodata.__unnamed_7,"a",@progbits
__unnamed_7:
	.asciz	"main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32"
	.size	__unnamed_7, 53

	.type	__unnamed_8,@object
	.section	.rodata.__unnamed_8,"a",@progbits
__unnamed_8:
	.asciz	"main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32"
	.size	__unnamed_8, 53

	.type	__unnamed_9,@object
	.section	.rodata.__unnamed_9,"a",@progbits
__unnamed_9:
	.asciz	"main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32"
	.size	__unnamed_9, 56

	.type	__unnamed_10,@object
	.section	.rodata.__unnamed_10,"a",@progbits
__unnamed_10:
	.asciz	"main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32"
	.size	__unnamed_10, 53

	.type	__unnamed_11,@object
	.section	.rodata.__unnamed_11,"a",@progbits
__unnamed_11:
	.asciz	"main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32"
	.size	__unnamed_11, 52

	.type	__unnamed_12,@object
	.section	.rodata.__unnamed_12,"a",@progbits
__unnamed_12:
	.asciz	"main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32"
	.size	__unnamed_12, 56

	.type	__unnamed_13,@object
	.section	.rodata.__unnamed_13,"a",@progbits
__unnamed_13:
	.asciz	"main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32"
	.size	__unnamed_13, 54

	.type	__unnamed_14,@object
	.section	.rodata.__unnamed_14,"a",@progbits
__unnamed_14:
	.asciz	"main_graph$async_dispatch_12_matvec_like_6272_f32"
	.size	__unnamed_14, 50

	.type	__unnamed_15,@object
	.section	.rodata.__unnamed_15,"a",@progbits
__unnamed_15:
	.asciz	"main_graph$async_dispatch_13_slow_memcpy"
	.size	__unnamed_15, 41

	.type	__unnamed_16,@object
	.section	.rodata.__unnamed_16,"a",@progbits
__unnamed_16:
	.asciz	"main_graph$async_dispatch_14_matvec_like_6272_f32"
	.size	__unnamed_16, 50

	.type	iree_hal_executable_library_query_v0_names,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_names,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_names:
	.quad	__unnamed_2
	.quad	__unnamed_3
	.quad	__unnamed_4
	.quad	__unnamed_5
	.quad	__unnamed_6
	.quad	__unnamed_7
	.quad	__unnamed_8
	.quad	__unnamed_9
	.quad	__unnamed_10
	.quad	__unnamed_11
	.quad	__unnamed_12
	.quad	__unnamed_13
	.quad	__unnamed_14
	.quad	__unnamed_15
	.quad	__unnamed_16
	.size	iree_hal_executable_library_query_v0_names, 120

	.type	__unnamed_17,@object
	.section	.rodata.__unnamed_17,"a",@progbits
__unnamed_17:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_0.mlir"
	.size	__unnamed_17, 139

	.type	__unnamed_18,@object
	.section	.rodata.__unnamed_18,"a",@progbits
__unnamed_18:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_1.mlir"
	.size	__unnamed_18, 139

	.type	__unnamed_19,@object
	.section	.rodata.__unnamed_19,"a",@progbits
__unnamed_19:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_2.mlir"
	.size	__unnamed_19, 139

	.type	__unnamed_20,@object
	.section	.rodata.__unnamed_20,"a",@progbits
__unnamed_20:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_3.mlir"
	.size	__unnamed_20, 139

	.type	__unnamed_21,@object
	.section	.rodata.__unnamed_21,"a",@progbits
__unnamed_21:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_4.mlir"
	.size	__unnamed_21, 139

	.type	__unnamed_22,@object
	.section	.rodata.__unnamed_22,"a",@progbits
__unnamed_22:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_5.mlir"
	.size	__unnamed_22, 139

	.type	__unnamed_23,@object
	.section	.rodata.__unnamed_23,"a",@progbits
__unnamed_23:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_6.mlir"
	.size	__unnamed_23, 139

	.type	__unnamed_24,@object
	.section	.rodata.__unnamed_24,"a",@progbits
__unnamed_24:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_7.mlir"
	.size	__unnamed_24, 139

	.type	__unnamed_25,@object
	.section	.rodata.__unnamed_25,"a",@progbits
__unnamed_25:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_8.mlir"
	.size	__unnamed_25, 139

	.type	__unnamed_26,@object
	.section	.rodata.__unnamed_26,"a",@progbits
__unnamed_26:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_9.mlir"
	.size	__unnamed_26, 139

	.type	__unnamed_27,@object
	.section	.rodata.__unnamed_27,"a",@progbits
__unnamed_27:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_10.mlir"
	.size	__unnamed_27, 140

	.type	__unnamed_28,@object
	.section	.rodata.__unnamed_28,"a",@progbits
__unnamed_28:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_11.mlir"
	.size	__unnamed_28, 140

	.type	__unnamed_29,@object
	.section	.rodata.__unnamed_29,"a",@progbits
__unnamed_29:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_12.mlir"
	.size	__unnamed_29, 140

	.type	__unnamed_30,@object
	.section	.rodata.__unnamed_30,"a",@progbits
__unnamed_30:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_13.mlir"
	.size	__unnamed_30, 140

	.type	__unnamed_31,@object
	.section	.rodata.__unnamed_31,"a",@progbits
__unnamed_31:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_module_main_graph$async_dispatch_14.mlir"
	.size	__unnamed_31, 140

	.type	iree_hal_executable_library_query_v0_source_locations,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_source_locations,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_source_locations:
	.long	3
	.long	138
	.quad	__unnamed_17
	.long	3
	.long	138
	.quad	__unnamed_18
	.long	3
	.long	138
	.quad	__unnamed_19
	.long	3
	.long	138
	.quad	__unnamed_20
	.long	3
	.long	138
	.quad	__unnamed_21
	.long	3
	.long	138
	.quad	__unnamed_22
	.long	3
	.long	138
	.quad	__unnamed_23
	.long	3
	.long	138
	.quad	__unnamed_24
	.long	3
	.long	138
	.quad	__unnamed_25
	.long	3
	.long	138
	.quad	__unnamed_26
	.long	3
	.long	139
	.quad	__unnamed_27
	.long	3
	.long	139
	.quad	__unnamed_28
	.long	3
	.long	139
	.quad	__unnamed_29
	.long	3
	.long	139
	.quad	__unnamed_30
	.long	3
	.long	139
	.quad	__unnamed_31
	.size	iree_hal_executable_library_query_v0_source_locations, 240

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_stage_location_tables,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_stage_location_tables,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_stage_location_tables:
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_slow_memcpy_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x5x5_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_32x55x55x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matvec_like_6272_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_slow_memcpy_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matvec_like_6272_f32_stage_source_locations
	.size	iree_hal_executable_library_query_v0_stage_location_tables, 360

	.type	iree_hal_executable_library_query_v0,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0:
	.quad	iree_hal_executable_library_query_v0_header
	.zero	16
	.long	15
	.zero	4
	.quad	iree_hal_executable_library_query_v0_funcs
	.quad	iree_hal_executable_library_query_v0_attrs
	.quad	0
	.quad	0
	.quad	iree_hal_executable_library_query_v0_names
	.quad	0
	.quad	0
	.quad	iree_hal_executable_library_query_v0_source_locations
	.quad	iree_hal_executable_library_query_v0_stage_location_tables
	.zero	4
	.zero	4
	.zero	16
	.size	iree_hal_executable_library_query_v0, 128

	.section	.debug_abbrev,"",@progbits
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	23
	.byte	27
	.byte	14
	.ascii	"\264B"
	.byte	25
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	2
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	3
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	4
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	16
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0
.Ldebug_info_start0:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string1
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	2
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	86
	.long	.Linfo_string17
	.long	.Linfo_string17
	.byte	1
	.byte	1
	.long	71

	.byte	3
	.long	.Linfo_string18
	.byte	5
	.byte	4
	.byte	0
.Ldebug_info_end0:
.Lcu_begin1:
	.long	.Ldebug_info_end1-.Ldebug_info_start1
.Ldebug_info_start1:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string3
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	4
	.quad	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	86
	.long	.Linfo_string19
	.long	.Linfo_string19
	.byte	2
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end1:
.Lcu_begin2:
	.long	.Ldebug_info_end2-.Ldebug_info_start2
.Ldebug_info_start2:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string4
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.byte	4
	.quad	.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.byte	1
	.byte	86
	.long	.Linfo_string20
	.long	.Linfo_string20
	.byte	3
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end2:
.Lcu_begin3:
	.long	.Ldebug_info_end3-.Ldebug_info_start3
.Ldebug_info_start3:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string5
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin3
	.long	.Lfunc_end3-.Lfunc_begin3
	.byte	4
	.quad	.Lfunc_begin3
	.long	.Lfunc_end3-.Lfunc_begin3
	.byte	1
	.byte	86
	.long	.Linfo_string21
	.long	.Linfo_string21
	.byte	4
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end3:
.Lcu_begin4:
	.long	.Ldebug_info_end4-.Ldebug_info_start4
.Ldebug_info_start4:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string6
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin4
	.long	.Lfunc_end4-.Lfunc_begin4
	.byte	4
	.quad	.Lfunc_begin4
	.long	.Lfunc_end4-.Lfunc_begin4
	.byte	1
	.byte	86
	.long	.Linfo_string22
	.long	.Linfo_string22
	.byte	5
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end4:
.Lcu_begin5:
	.long	.Ldebug_info_end5-.Ldebug_info_start5
.Ldebug_info_start5:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string7
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin5
	.long	.Lfunc_end5-.Lfunc_begin5
	.byte	4
	.quad	.Lfunc_begin5
	.long	.Lfunc_end5-.Lfunc_begin5
	.byte	1
	.byte	86
	.long	.Linfo_string23
	.long	.Linfo_string23
	.byte	6
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end5:
.Lcu_begin6:
	.long	.Ldebug_info_end6-.Ldebug_info_start6
.Ldebug_info_start6:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string8
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin6
	.long	.Lfunc_end6-.Lfunc_begin6
	.byte	4
	.quad	.Lfunc_begin6
	.long	.Lfunc_end6-.Lfunc_begin6
	.byte	1
	.byte	86
	.long	.Linfo_string24
	.long	.Linfo_string24
	.byte	7
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end6:
.Lcu_begin7:
	.long	.Ldebug_info_end7-.Ldebug_info_start7
.Ldebug_info_start7:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string9
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin7
	.long	.Lfunc_end7-.Lfunc_begin7
	.byte	4
	.quad	.Lfunc_begin7
	.long	.Lfunc_end7-.Lfunc_begin7
	.byte	1
	.byte	86
	.long	.Linfo_string25
	.long	.Linfo_string25
	.byte	8
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end7:
.Lcu_begin8:
	.long	.Ldebug_info_end8-.Ldebug_info_start8
.Ldebug_info_start8:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string10
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin8
	.long	.Lfunc_end8-.Lfunc_begin8
	.byte	4
	.quad	.Lfunc_begin8
	.long	.Lfunc_end8-.Lfunc_begin8
	.byte	1
	.byte	86
	.long	.Linfo_string26
	.long	.Linfo_string26
	.byte	9
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end8:
.Lcu_begin9:
	.long	.Ldebug_info_end9-.Ldebug_info_start9
.Ldebug_info_start9:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string11
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin9
	.long	.Lfunc_end9-.Lfunc_begin9
	.byte	4
	.quad	.Lfunc_begin9
	.long	.Lfunc_end9-.Lfunc_begin9
	.byte	1
	.byte	86
	.long	.Linfo_string27
	.long	.Linfo_string27
	.byte	10
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end9:
.Lcu_begin10:
	.long	.Ldebug_info_end10-.Ldebug_info_start10
.Ldebug_info_start10:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string12
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin10
	.long	.Lfunc_end10-.Lfunc_begin10
	.byte	4
	.quad	.Lfunc_begin10
	.long	.Lfunc_end10-.Lfunc_begin10
	.byte	1
	.byte	86
	.long	.Linfo_string28
	.long	.Linfo_string28
	.byte	11
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end10:
.Lcu_begin11:
	.long	.Ldebug_info_end11-.Ldebug_info_start11
.Ldebug_info_start11:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string13
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin11
	.long	.Lfunc_end11-.Lfunc_begin11
	.byte	4
	.quad	.Lfunc_begin11
	.long	.Lfunc_end11-.Lfunc_begin11
	.byte	1
	.byte	86
	.long	.Linfo_string29
	.long	.Linfo_string29
	.byte	12
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end11:
.Lcu_begin12:
	.long	.Ldebug_info_end12-.Ldebug_info_start12
.Ldebug_info_start12:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string14
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin12
	.long	.Lfunc_end12-.Lfunc_begin12
	.byte	4
	.quad	.Lfunc_begin12
	.long	.Lfunc_end12-.Lfunc_begin12
	.byte	1
	.byte	86
	.long	.Linfo_string30
	.long	.Linfo_string30
	.byte	13
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end12:
.Lcu_begin13:
	.long	.Ldebug_info_end13-.Ldebug_info_start13
.Ldebug_info_start13:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string15
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin13
	.long	.Lfunc_end13-.Lfunc_begin13
	.byte	4
	.quad	.Lfunc_begin13
	.long	.Lfunc_end13-.Lfunc_begin13
	.byte	1
	.byte	86
	.long	.Linfo_string31
	.long	.Linfo_string31
	.byte	14
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end13:
.Lcu_begin14:
	.long	.Ldebug_info_end14-.Ldebug_info_start14
.Ldebug_info_start14:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string16
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin14
	.long	.Lfunc_end14-.Lfunc_begin14
	.byte	4
	.quad	.Lfunc_begin14
	.long	.Lfunc_end14-.Lfunc_begin14
	.byte	1
	.byte	86
	.long	.Linfo_string32
	.long	.Linfo_string32
	.byte	15
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end14:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"IREE"
.Linfo_string1:
	.asciz	"configured_module_main_graph$async_dispatch_0.mlir"
.Linfo_string2:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs"
.Linfo_string3:
	.asciz	"configured_module_main_graph$async_dispatch_1.mlir"
.Linfo_string4:
	.asciz	"configured_module_main_graph$async_dispatch_2.mlir"
.Linfo_string5:
	.asciz	"configured_module_main_graph$async_dispatch_3.mlir"
.Linfo_string6:
	.asciz	"configured_module_main_graph$async_dispatch_4.mlir"
.Linfo_string7:
	.asciz	"configured_module_main_graph$async_dispatch_5.mlir"
.Linfo_string8:
	.asciz	"configured_module_main_graph$async_dispatch_6.mlir"
.Linfo_string9:
	.asciz	"configured_module_main_graph$async_dispatch_7.mlir"
.Linfo_string10:
	.asciz	"configured_module_main_graph$async_dispatch_8.mlir"
.Linfo_string11:
	.asciz	"configured_module_main_graph$async_dispatch_9.mlir"
.Linfo_string12:
	.asciz	"configured_module_main_graph$async_dispatch_10.mlir"
.Linfo_string13:
	.asciz	"configured_module_main_graph$async_dispatch_11.mlir"
.Linfo_string14:
	.asciz	"configured_module_main_graph$async_dispatch_12.mlir"
.Linfo_string15:
	.asciz	"configured_module_main_graph$async_dispatch_13.mlir"
.Linfo_string16:
	.asciz	"configured_module_main_graph$async_dispatch_14.mlir"
.Linfo_string17:
	.asciz	"main_graph$async_dispatch_0_slow_memcpy"
.Linfo_string18:
	.asciz	"int"
.Linfo_string19:
	.asciz	"main_graph$async_dispatch_1_conv_32x112x112x5x5_f32"
.Linfo_string20:
	.asciz	"main_graph$async_dispatch_2_conv_32x55x55x3x3_f32"
.Linfo_string21:
	.asciz	"main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32"
.Linfo_string22:
	.asciz	"main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32"
.Linfo_string23:
	.asciz	"main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32"
.Linfo_string24:
	.asciz	"main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32"
.Linfo_string25:
	.asciz	"main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32"
.Linfo_string26:
	.asciz	"main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32"
.Linfo_string27:
	.asciz	"main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32"
.Linfo_string28:
	.asciz	"main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32"
.Linfo_string29:
	.asciz	"main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32"
.Linfo_string30:
	.asciz	"main_graph$async_dispatch_12_matvec_like_6272_f32"
.Linfo_string31:
	.asciz	"main_graph$async_dispatch_13_slow_memcpy"
.Linfo_string32:
	.asciz	"main_graph$async_dispatch_14_matvec_like_6272_f32"
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0
.LpubNames_start0:
	.short	2
	.long	.Lcu_begin0
	.long	79
	.long	42
	.asciz	"main_graph$async_dispatch_0_slow_memcpy"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0
.LpubTypes_start0:
	.short	2
	.long	.Lcu_begin0
	.long	79
	.long	71
	.asciz	"int"
	.long	0
.LpubTypes_end0:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end1-.LpubNames_start1
.LpubNames_start1:
	.short	2
	.long	.Lcu_begin1
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_1_conv_32x112x112x5x5_f32"
	.long	0
.LpubNames_end1:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end1-.LpubTypes_start1
.LpubTypes_start1:
	.short	2
	.long	.Lcu_begin1
	.long	72
	.long	0
.LpubTypes_end1:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end2-.LpubNames_start2
.LpubNames_start2:
	.short	2
	.long	.Lcu_begin2
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_2_conv_32x55x55x3x3_f32"
	.long	0
.LpubNames_end2:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end2-.LpubTypes_start2
.LpubTypes_start2:
	.short	2
	.long	.Lcu_begin2
	.long	72
	.long	0
.LpubTypes_end2:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end3-.LpubNames_start3
.LpubNames_start3:
	.short	2
	.long	.Lcu_begin3
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_3_conv_32x28x28x32x3x3_f32"
	.long	0
.LpubNames_end3:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end3-.LpubTypes_start3
.LpubTypes_start3:
	.short	2
	.long	.Lcu_begin3
	.long	72
	.long	0
.LpubTypes_end3:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end4-.LpubNames_start4
.LpubNames_start4:
	.short	2
	.long	.Lcu_begin4
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_4_matmul_like_32x28x28x32_f32"
	.long	0
.LpubNames_end4:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end4-.LpubTypes_start4
.LpubTypes_start4:
	.short	2
	.long	.Lcu_begin4
	.long	72
	.long	0
.LpubTypes_end4:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end5-.LpubNames_start5
.LpubNames_start5:
	.short	2
	.long	.Lcu_begin5
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_5_conv_32x28x28x32x3x3_f32"
	.long	0
.LpubNames_end5:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end5-.LpubTypes_start5
.LpubTypes_start5:
	.short	2
	.long	.Lcu_begin5
	.long	72
	.long	0
.LpubTypes_end5:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end6-.LpubNames_start6
.LpubNames_start6:
	.short	2
	.long	.Lcu_begin6
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_6_conv_64x14x14x32x3x3_f32"
	.long	0
.LpubNames_end6:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end6-.LpubTypes_start6
.LpubTypes_start6:
	.short	2
	.long	.Lcu_begin6
	.long	72
	.long	0
.LpubTypes_end6:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end7-.LpubNames_start7
.LpubNames_start7:
	.short	2
	.long	.Lcu_begin7
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_7_matmul_like_64x14x14x32_f32"
	.long	0
.LpubNames_end7:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end7-.LpubTypes_start7
.LpubTypes_start7:
	.short	2
	.long	.Lcu_begin7
	.long	72
	.long	0
.LpubTypes_end7:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end8-.LpubNames_start8
.LpubNames_start8:
	.short	2
	.long	.Lcu_begin8
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_8_conv_64x14x14x64x3x3_f32"
	.long	0
.LpubNames_end8:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end8-.LpubTypes_start8
.LpubTypes_start8:
	.short	2
	.long	.Lcu_begin8
	.long	72
	.long	0
.LpubTypes_end8:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end9-.LpubNames_start9
.LpubNames_start9:
	.short	2
	.long	.Lcu_begin9
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_9_conv_128x7x7x64x3x3_f32"
	.long	0
.LpubNames_end9:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end9-.LpubTypes_start9
.LpubTypes_start9:
	.short	2
	.long	.Lcu_begin9
	.long	72
	.long	0
.LpubTypes_end9:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end10-.LpubNames_start10
.LpubNames_start10:
	.short	2
	.long	.Lcu_begin10
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_10_matmul_like_128x7x7x64_f32"
	.long	0
.LpubNames_end10:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end10-.LpubTypes_start10
.LpubTypes_start10:
	.short	2
	.long	.Lcu_begin10
	.long	72
	.long	0
.LpubTypes_end10:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end11-.LpubNames_start11
.LpubNames_start11:
	.short	2
	.long	.Lcu_begin11
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_11_conv_128x7x7x128x3x3_f32"
	.long	0
.LpubNames_end11:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end11-.LpubTypes_start11
.LpubTypes_start11:
	.short	2
	.long	.Lcu_begin11
	.long	72
	.long	0
.LpubTypes_end11:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end12-.LpubNames_start12
.LpubNames_start12:
	.short	2
	.long	.Lcu_begin12
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_12_matvec_like_6272_f32"
	.long	0
.LpubNames_end12:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end12-.LpubTypes_start12
.LpubTypes_start12:
	.short	2
	.long	.Lcu_begin12
	.long	72
	.long	0
.LpubTypes_end12:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end13-.LpubNames_start13
.LpubNames_start13:
	.short	2
	.long	.Lcu_begin13
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_13_slow_memcpy"
	.long	0
.LpubNames_end13:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end13-.LpubTypes_start13
.LpubTypes_start13:
	.short	2
	.long	.Lcu_begin13
	.long	72
	.long	0
.LpubTypes_end13:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end14-.LpubNames_start14
.LpubNames_start14:
	.short	2
	.long	.Lcu_begin14
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_14_matvec_like_6272_f32"
	.long	0
.LpubNames_end14:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end14-.LpubTypes_start14
.LpubTypes_start14:
	.short	2
	.long	.Lcu_begin14
	.long	72
	.long	0
.LpubTypes_end14:
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
