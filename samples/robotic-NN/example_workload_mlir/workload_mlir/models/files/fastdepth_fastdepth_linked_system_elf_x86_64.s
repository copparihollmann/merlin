	.file	"fastdepth_linked"
	.section	".text.main_graph$async_dispatch_0_slow_memcpy","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_0_slow_memcpy,@function
main_graph$async_dispatch_0_slow_memcpy:
.Lfunc_begin0:
	.file	1 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_0.mlir"
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
	imulq	$50176, %rdx, %rcx
	imulq	$50624, %rdx, %rdi
	xorl	%edx, %edx
	orq	%r8, %rcx
	addq	(%rsi), %rcx
	addq	%r8, %rdi
	leaq	908(%rax,%rdi), %rax
	.loc	1 0 8 is_stmt 0
.Ltmp1:
	.p2align	4
.LBB0_1:
	movq	%rcx, %rsi
	movq	%rax, %rdi
	xorl	%r8d, %r8d
	.p2align	4
.LBB0_2:
	movq	$-8, %r9
	.p2align	4
.LBB0_3:
	.loc	1 15 8 is_stmt 1
	vmovaps	32(%rsi,%r9,4), %ymm0
	vmovups	%ymm0, 32(%rdi,%r9,4)
	addq	$8, %r9
	cmpq	$48, %r9
	jb	.LBB0_3
	incq	%r8
	addq	$904, %rdi
	addq	$896, %rsi
	cmpq	$56, %r8
	jne	.LBB0_2
	incq	%rdx
	addq	$204304, %rax
	addq	$200704, %rcx
	cmpq	$3, %rdx
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_1:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32,@function
main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32:
.Lfunc_begin1:
	.file	2 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_1.mlir"
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
	subq	$256, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	2 14 8 prologue_end
	movq	32(%rsi), %rax
	movl	$15728768, %ecx
	vmovdqa	.LCPI1_0(%rip), %ymm0
	vbroadcastss	.LCPI1_1(%rip), %ymm2
	vxorps	%xmm1, %xmm1, %xmm1
	.loc	2 15 8
	addq	8(%rax), %rcx
	movq	%rcx, 56(%rsp)
	movl	$612928, %ecx
	.loc	2 16 8
	addq	16(%rax), %rcx
	movq	%rcx, 72(%rsp)
	.loc	2 21 8
	movl	(%rdx), %ecx
	movl	%ecx, %edx
	shrl	$2, %edx
	andl	$3, %ecx
	leaq	(%rdx,%rdx,8), %rsi
	imulq	$224, %rcx, %rdi
	imulq	$112, %rcx, %rcx
	leaq	(%rsi,%rsi,2), %rsi
	movq	%rcx, 88(%rsp)
	addq	%rdx, %rsi
	imulq	$50624, %rdx, %rdx
	movq	%rsi, 96(%rsp)
	addq	%rdi, %rdx
	addq	(%rax), %rdx
	xorl	%eax, %eax
	movq	%rdx, 64(%rsp)
	.loc	2 0 8 is_stmt 0
.Ltmp4:
	.p2align	4
.LBB1_1:
	movq	%rax, 80(%rsp)
	imulq	$51984, %rax, %rax
	addq	72(%rsp), %rax
	movq	64(%rsp), %rbx
	xorl	%ecx, %ecx
	movq	%rax, 104(%rsp)
	.p2align	4
.LBB1_2:
	movq	96(%rsp), %rax
	movq	%rcx, 112(%rsp)
	movl	$28, %r15d
	movq	%rbx, 120(%rsp)
	xorl	%r13d, %r13d
	addq	%rcx, %rax
	movq	88(%rsp), %rcx
	imulq	$456, %rax, %rax
	addq	104(%rsp), %rax
	leaq	460(%rcx,%rax), %r14
	.p2align	4
.LBB1_3:
	.loc	2 21 8 is_stmt 1
	cmpq	$8, %r15
	movl	$8, %ecx
	movl	$28, %eax
	movl	$8, %edx
	movq	56(%rsp), %rdi
	movq	%rbx, %r8
	cmovbq	%r15, %rcx
	subq	%r13, %rax
	cmpq	$8, %rax
	cmovaeq	%rdx, %rax
	xorl	%edx, %edx
	.loc	2 9 8
	vmovd	%eax, %xmm3
	vpbroadcastd	%xmm3, %ymm3
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vmaskmovps	%ymm1, %ymm3, 128(%rsp)
	.loc	2 0 8 is_stmt 0
.Ltmp5:
	.p2align	4
.LBB1_4:
	movq	%rdi, %rax
	movq	%r8, %r11
	xorl	%r10d, %r10d
	.p2align	4
.LBB1_5:
	movq	%r11, %r12
	xorl	%r9d, %r9d
	.p2align	4
.LBB1_6:
	vmovss	128(%rsp,%r9,4), %xmm4
	xorl	%esi, %esi
	.p2align	4
.LBB1_7:
	.loc	2 21 8 is_stmt 1
	vmovss	(%r12,%rsi,4), %xmm5
	.loc	2 24 10
	vfmadd231ss	(%rax,%rsi,4), %xmm5, %xmm4
	.loc	2 21 8
	incq	%rsi
	cmpq	$3, %rsi
	jne	.LBB1_7
	vmovss	%xmm4, 128(%rsp,%r9,4)
	incq	%r9
	addq	$8, %r12
	cmpq	%rcx, %r9
	jne	.LBB1_6
	incq	%r10
	addq	$904, %r11
	addq	$12, %rax
	cmpq	$3, %r10
	jne	.LBB1_5
	incq	%rdx
	addq	$204304, %r8
	addq	$36, %rdi
	cmpq	$3, %rdx
	jne	.LBB1_4
	.loc	2 27 8
	vmovaps	128(%rsp), %ymm4
	.loc	2 21 8
	addq	$-8, %r15
	addq	$64, %rbx
	cmpq	$20, %r13
	.loc	2 29 10
	vaddps	%ymm1, %ymm4, %ymm5
	.loc	2 31 10
	vcmpleps	%ymm4, %ymm1, %ymm4
	vandps	%ymm5, %ymm4, %ymm4
	.loc	2 33 10
	vminps	%ymm2, %ymm4, %ymm4
	vmaskmovps	%ymm4, %ymm3, (%r14,%r13,4)
	.loc	2 21 8
	leaq	8(%r13), %r13
	jb	.LBB1_3
	.loc	2 0 8 is_stmt 0
	movq	112(%rsp), %rcx
	movq	120(%rsp), %rbx
	.loc	2 21 8
	incq	%rcx
	addq	$1808, %rbx
	cmpq	$28, %rcx
	jne	.LBB1_2
	.loc	2 0 8
	movq	80(%rsp), %rax
	.loc	2 21 8
	addq	$108, 56(%rsp)
	incq	%rax
	cmpq	$32, %rax
	jne	.LBB1_1
	.loc	2 37 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	2 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp6:
.Lfunc_end1:
	.size	main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32, .Lfunc_end1-main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32
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
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_2_conv_112x112x32x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_2_conv_112x112x32x3x3_f32,@function
main_graph$async_dispatch_2_conv_112x112x32x3x3_f32:
.Lfunc_begin2:
	.file	3 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_2.mlir"
	.loc	3 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp7:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$320, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	3 14 8 prologue_end
	movq	32(%rsi), %rax
	movl	$15727616, %ecx
	.loc	3 21 8
	movl	(%rdx), %edx
	vmovdqa	.LCPI2_0(%rip), %ymm0
	vmovss	.LCPI2_1(%rip), %xmm3
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	.loc	3 15 8
	addq	8(%rax), %rcx
	.loc	3 21 8
	movl	%edx, %esi
	andl	$3, %edx
	shrl	$2, %esi
	imulq	$12768, %rsi, %rdi
	imulq	$112, %rdx, %rdx
	addq	%rdx, %rdi
	movq	%rcx, 48(%rsp)
	.loc	3 14 8
	movq	(%rax), %rcx
	.loc	3 16 8
	movq	16(%rax), %rax
	.loc	3 21 8
	leaq	612928(%rcx,%rdi), %rdi
	imulq	$12544, %rsi, %rcx
	addq	%rdx, %rcx
	leaq	2276416(%rax,%rcx), %r8
	xorl	%eax, %eax
	.loc	3 0 8 is_stmt 0
.Ltmp8:
	.p2align	4
.LBB2_1:
	movl	$28, %r10d
	xorl	%ecx, %ecx
	movq	%rax, 24(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rdi, 40(%rsp)
	.p2align	4
.LBB2_2:
	.loc	3 21 8 is_stmt 1
	cmpq	$8, %r10
	movl	$8, %ebx
	movl	$28, %eax
	movq	%rcx, 56(%rsp)
	movq	%r8, %r14
	movq	%rdi, %rsi
	cmovbq	%r10, %rbx
	subq	%rcx, %rax
	movl	$8, %ecx
	cmpq	$8, %rax
	cmovaeq	%rcx, %rax
	xorl	%r13d, %r13d
	.loc	3 9 8
	vmovd	%eax, %xmm4
	movq	48(%rsp), %rax
	vpbroadcastd	%xmm4, %ymm4
	vpcmpgtd	%ymm0, %ymm4, %ymm4
	vmaskmovps	%ymm1, %ymm4, 128(%rsp)
	.loc	3 0 8 is_stmt 0
.Ltmp9:
	.p2align	4
.LBB2_3:
	xorl	%ecx, %ecx
	.p2align	4
.LBB2_4:
	.loc	3 21 8 is_stmt 1
	vmovss	128(%rsp,%rcx,4), %xmm4
	vmovss	%xmm4, 64(%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB2_4
	.loc	3 0 8 is_stmt 0
	movq	%rax, %r15
	movq	%rsi, %r9
	xorl	%edx, %edx
	.p2align	4
.LBB2_6:
	movq	%r9, %r12
	xorl	%ecx, %ecx
	.p2align	4
.LBB2_7:
	vmovss	64(%rsp,%rcx,4), %xmm4
	xorl	%r11d, %r11d
	.p2align	4
.LBB2_8:
	.loc	3 21 8 is_stmt 1
	vmovss	(%r12,%r11,4), %xmm5
	.loc	3 24 10
	vfmadd231ss	(%r15,%r11,4), %xmm5, %xmm4
	.loc	3 21 8
	incq	%r11
	cmpq	$3, %r11
	jne	.LBB2_8
	vmovss	%xmm4, 64(%rsp,%rcx,4)
	incq	%rcx
	addq	$4, %r12
	cmpq	%rbx, %rcx
	jne	.LBB2_7
	incq	%rdx
	addq	$456, %r9
	addq	$12, %r15
	cmpq	$3, %rdx
	jne	.LBB2_6
	.loc	3 0 8 is_stmt 0
	xorl	%ecx, %ecx
	.p2align	4
.LBB2_12:
	.loc	3 21 8 is_stmt 1
	vmovss	128(%rsp,%rcx,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB2_12
	.loc	3 0 8 is_stmt 0
	xorl	%ecx, %ecx
	.p2align	4
.LBB2_14:
	.loc	3 21 8 is_stmt 1
	vmovss	64(%rsp,%rcx,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB2_14
	.loc	3 0 8 is_stmt 0
	xorl	%ecx, %ecx
	.p2align	4
.LBB2_16:
	.loc	3 27 8 is_stmt 1
	vmovss	192(%rsp,%rcx,4), %xmm4
	vaddss	%xmm2, %xmm4, %xmm5
	vcmpless	%xmm4, %xmm2, %xmm4
	vandps	%xmm5, %xmm4, %xmm4
	vminss	%xmm3, %xmm4, %xmm4
	vmovss	%xmm4, (%r14,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB2_16
	.loc	3 21 8
	incq	%r13
	addq	$51984, %rsi
	addq	$36, %rax
	addq	$50176, %r14
	cmpq	$32, %r13
	jne	.LBB2_3
	.loc	3 0 8 is_stmt 0
	movq	56(%rsp), %rax
	.loc	3 21 8
	addq	$-8, %r10
	addq	$32, %rdi
	addq	$32, %r8
	leaq	8(%rax), %rcx
	cmpq	$20, %rax
	jb	.LBB2_2
	.loc	3 0 8
	movq	24(%rsp), %rax
	movq	40(%rsp), %rdi
	movq	32(%rsp), %r8
	.loc	3 21 8
	incq	%rax
	addq	$456, %rdi
	addq	$448, %r8
	cmpq	$28, %rax
	jne	.LBB2_1
	.loc	3 37 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	3 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp10:
.Lfunc_end2:
	.size	main_graph$async_dispatch_2_conv_112x112x32x3x3_f32, .Lfunc_end2-main_graph$async_dispatch_2_conv_112x112x32x3x3_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI3_0:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_3_matmul_like_64x12544x32_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_3_matmul_like_64x12544x32_f32,@function
main_graph$async_dispatch_3_matmul_like_64x12544x32_f32:
.Lfunc_begin3:
	.file	4 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_3.mlir"
	.loc	4 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp11:
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.loc	4 14 8 prologue_end
	movq	32(%rsi), %rdi
	.loc	4 21 8
	movl	(%rdx), %edx
	vmovss	.LCPI3_0(%rip), %xmm1
	movl	$3882048, %eax
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	4 14 8
	movq	(%rdi), %rsi
	.loc	4 21 8
	movq	%rdx, %rcx
	shlq	$8, %rdx
	.loc	4 16 8
	addq	16(%rdi), %rax
	.loc	4 21 8
	shlq	$6, %rcx
	leaq	2627648(%rdx,%rsi), %rdx
	movl	$15343644, %esi
	addq	8(%rdi), %rsi
	xorl	%edi, %edi
	.loc	4 0 8 is_stmt 0
.Ltmp12:
	.p2align	4
.LBB3_1:
	imulq	$50176, %rdi, %r8
	movq	%rdx, %r9
	xorl	%r10d, %r10d
	addq	%rax, %r8
	.p2align	4
.LBB3_2:
	.loc	4 21 8 is_stmt 1
	leaq	(%r10,%rcx), %r11
	movq	$-8, %rbx
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%r9, %r14
	.loc	4 0 8 is_stmt 0
.Ltmp13:
	.p2align	4
.LBB3_3:
	.loc	4 21 8
	vmovss	-351232(%r14), %xmm3
	vmovss	-301056(%r14), %xmm4
	vmovss	-250880(%r14), %xmm5
	vmovss	-200704(%r14), %xmm6
	vmovss	-150528(%r14), %xmm7
	vmovss	-100352(%r14), %xmm8
	vmovss	-50176(%r14), %xmm9
	vmovss	(%r14), %xmm10
	addq	$401408, %r14
	.loc	4 24 10 is_stmt 1
	vfmadd132ss	4(%rsi,%rbx,4), %xmm2, %xmm3
	vfmadd231ss	8(%rsi,%rbx,4), %xmm4, %xmm3
	vfmadd231ss	12(%rsi,%rbx,4), %xmm5, %xmm3
	vfmadd231ss	16(%rsi,%rbx,4), %xmm6, %xmm3
	vfmadd231ss	20(%rsi,%rbx,4), %xmm7, %xmm3
	vfmadd231ss	24(%rsi,%rbx,4), %xmm8, %xmm3
	vfmadd231ss	28(%rsi,%rbx,4), %xmm9, %xmm3
	vmovaps	%xmm3, %xmm2
	vfmadd231ss	32(%rsi,%rbx,4), %xmm10, %xmm2
	.loc	4 21 8
	addq	$8, %rbx
	cmpq	$24, %rbx
	jb	.LBB3_3
	vaddss	%xmm0, %xmm2, %xmm3
	vcmpless	%xmm2, %xmm0, %xmm2
	incq	%r10
	addq	$4, %r9
	vandps	%xmm3, %xmm2, %xmm2
	vminss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, (%r8,%r11,4)
	cmpq	$64, %r10
	jne	.LBB3_2
	incq	%rdi
	subq	$-128, %rsi
	cmpq	$64, %rdi
	jne	.LBB3_1
	.loc	4 37 8
	xorl	%eax, %eax
	.loc	4 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp14:
.Lfunc_end3:
	.size	main_graph$async_dispatch_3_matmul_like_64x12544x32_f32, .Lfunc_end3-main_graph$async_dispatch_3_matmul_like_64x12544x32_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_4_slow_memcpy","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_4_slow_memcpy,@function
main_graph$async_dispatch_4_slow_memcpy:
.Lfunc_begin4:
	.file	5 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_4.mlir"
	.loc	5 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp15:
	.loc	5 16 8 prologue_end
	movl	(%rdx), %edx
	.loc	5 11 8
	movq	32(%rsi), %rax
	.loc	5 16 8
	movq	%rdx, %rdi
	shlq	$62, %rdi
	movl	%edx, %r8d
	shrl	$2, %r8d
	.loc	5 11 8
	movq	(%rax), %rsi
	.loc	5 13 8
	movq	8(%rax), %rcx
	xorl	%eax, %eax
	.loc	5 16 8
	sarq	$63, %rdi
	imulq	$831744, %r8, %r9
	andl	$56, %edi
	imulq	$456, %rdi, %r10
	testb	$1, %dl
	movl	$224, %edx
	cmovel	%eax, %edx
	imulq	$802816, %r8, %r8
	imulq	$448, %rdi, %rdi
	addq	%rdx, %r9
	addq	%r10, %r9
	addq	%r8, %rdi
	leaq	7093772(%rcx,%r9), %rcx
	orq	%rdx, %rdi
	leaq	3882048(%rsi,%rdi), %rdx
	.loc	5 0 8 is_stmt 0
.Ltmp16:
	.p2align	4
.LBB4_1:
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	xorl	%r8d, %r8d
	.p2align	4
.LBB4_2:
	movq	$-8, %r9
	.p2align	4
.LBB4_3:
	.loc	5 16 8 is_stmt 1
	vmovaps	32(%rsi,%r9,4), %ymm0
	vmovups	%ymm0, 32(%rdi,%r9,4)
	addq	$8, %r9
	cmpq	$48, %r9
	jb	.LBB4_3
	incq	%r8
	addq	$456, %rdi
	addq	$448, %rsi
	cmpq	$56, %r8
	jne	.LBB4_2
	incq	%rax
	addq	$51984, %rcx
	addq	$50176, %rdx
	cmpq	$16, %rax
	jne	.LBB4_1
	.loc	5 20 8
	xorl	%eax, %eax
	.loc	5 20 8 epilogue_begin is_stmt 0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp17:
.Lfunc_end4:
	.size	main_graph$async_dispatch_4_slow_memcpy, .Lfunc_end4-main_graph$async_dispatch_4_slow_memcpy
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
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_5_conv_56x56x64x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_5_conv_56x56x64x3x3_f32,@function
main_graph$async_dispatch_5_conv_56x56x64x3x3_f32:
.Lfunc_begin5:
	.file	6 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_5.mlir"
	.loc	6 1 0 is_stmt 1
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
	andq	$-64, %rsp
	subq	$320, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	6 21 8 prologue_end
	movl	(%rdx), %edx
	.loc	6 14 8
	movq	32(%rsi), %rcx
	.loc	6 21 8
	movl	$257, %edi
	vmovdqa	.LCPI5_0(%rip), %ymm0
	vmovss	.LCPI5_1(%rip), %xmm3
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	movl	%edx, %esi
	bextrl	%edi, %edx, %edi
	shrl	$2, %esi
	andl	$1, %edx
	.loc	6 14 8
	movq	(%rcx), %rax
	.loc	6 21 8
	imulq	$1663488, %rdx, %r9
	imulq	$12768, %rsi, %r10
	imulq	$224, %rdi, %r8
	addq	%r9, %r10
	addq	%r8, %r10
	leaq	(%rdx,%rdx,8), %r8
	imulq	$401408, %rdx, %rdx
	leaq	7093312(%rax,%r10), %r9
	.loc	6 15 8
	movq	8(%rcx), %rax
	.loc	6 21 8
	shll	$7, %r8d
	leaq	15725312(%r8,%rax), %rax
	imulq	$3136, %rsi, %r8
	movq	%rax, 48(%rsp)
	imulq	$112, %rdi, %rax
	addq	%rdx, %r8
	addq	%rax, %r8
	addq	16(%rcx), %r8
	xorl	%eax, %eax
	.loc	6 0 8 is_stmt 0
.Ltmp19:
	.p2align	4
.LBB5_1:
	movl	$28, %r10d
	movq	%rax, 24(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r9, 40(%rsp)
	movq	%r9, %rdi
	xorl	%ecx, %ecx
	.p2align	4
.LBB5_2:
	.loc	6 21 8 is_stmt 1
	cmpq	$8, %r10
	movl	$8, %ebx
	movl	$28, %eax
	movq	%rcx, 56(%rsp)
	movq	%r8, %r14
	movq	%rdi, %rsi
	cmovbq	%r10, %rbx
	subq	%rcx, %rax
	movl	$8, %ecx
	cmpq	$8, %rax
	cmovaeq	%rcx, %rax
	movq	48(%rsp), %rcx
	xorl	%r13d, %r13d
	.loc	6 9 8
	vmovd	%eax, %xmm4
	vpbroadcastd	%xmm4, %ymm4
	vpcmpgtd	%ymm0, %ymm4, %ymm4
	vmaskmovps	%ymm1, %ymm4, 128(%rsp)
	.loc	6 0 8 is_stmt 0
.Ltmp20:
	.p2align	4
.LBB5_3:
	xorl	%eax, %eax
	.p2align	4
.LBB5_4:
	.loc	6 21 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 64(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB5_4
	.loc	6 0 8 is_stmt 0
	movq	%rcx, %r15
	movq	%rsi, %r9
	xorl	%edx, %edx
	.p2align	4
.LBB5_6:
	movq	%r9, %r12
	xorl	%eax, %eax
	.p2align	4
.LBB5_7:
	vmovss	64(%rsp,%rax,4), %xmm4
	xorl	%r11d, %r11d
	.p2align	4
.LBB5_8:
	.loc	6 21 8 is_stmt 1
	vmovss	(%r12,%r11,4), %xmm5
	.loc	6 24 10
	vfmadd231ss	(%r15,%r11,4), %xmm5, %xmm4
	.loc	6 21 8
	incq	%r11
	cmpq	$3, %r11
	jne	.LBB5_8
	vmovss	%xmm4, 64(%rsp,%rax,4)
	incq	%rax
	addq	$8, %r12
	cmpq	%rbx, %rax
	jne	.LBB5_7
	incq	%rdx
	addq	$456, %r9
	addq	$12, %r15
	cmpq	$3, %rdx
	jne	.LBB5_6
	.loc	6 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB5_12:
	.loc	6 21 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB5_12
	.loc	6 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB5_14:
	.loc	6 21 8 is_stmt 1
	vmovss	64(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB5_14
	.loc	6 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB5_16:
	.loc	6 27 8 is_stmt 1
	vmovss	192(%rsp,%rax,4), %xmm4
	vaddss	%xmm2, %xmm4, %xmm5
	vcmpless	%xmm4, %xmm2, %xmm4
	vandps	%xmm5, %xmm4, %xmm4
	vminss	%xmm3, %xmm4, %xmm4
	vmovss	%xmm4, (%r14,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB5_16
	.loc	6 21 8
	incq	%r13
	addq	$51984, %rsi
	addq	$36, %rcx
	addq	$12544, %r14
	cmpq	$32, %r13
	jne	.LBB5_3
	.loc	6 0 8 is_stmt 0
	movq	56(%rsp), %rax
	.loc	6 21 8
	addq	$-8, %r10
	addq	$64, %rdi
	addq	$32, %r8
	leaq	8(%rax), %rcx
	cmpq	$20, %rax
	jb	.LBB5_2
	.loc	6 0 8
	movq	24(%rsp), %rax
	movq	40(%rsp), %r9
	movq	32(%rsp), %r8
	.loc	6 21 8
	incq	%rax
	addq	$912, %r9
	addq	$224, %r8
	cmpq	$14, %rax
	jne	.LBB5_1
	.loc	6 37 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	6 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp21:
.Lfunc_end5:
	.size	main_graph$async_dispatch_5_conv_56x56x64x3x3_f32, .Lfunc_end5-main_graph$async_dispatch_5_conv_56x56x64x3x3_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI6_0:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32,@function
main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32:
.Lfunc_begin6:
	.file	7 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_6.mlir"
	.loc	7 1 0 is_stmt 1
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	7 21 8 prologue_end
	movl	(%rdx), %edx
	.loc	7 14 8
	movq	32(%rsi), %r8
	vmovss	.LCPI6_0(%rip), %xmm1
	movl	$802816, %eax
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	7 21 8
	imulq	$613566757, %rdx, %rcx
	movl	%edx, %r9d
	.loc	7 15 8
	movq	8(%r8), %rdi
	.loc	7 16 8
	addq	16(%r8), %rax
	.loc	7 21 8
	shrq	$32, %rcx
	subl	%ecx, %r9d
	shrl	%r9d
	addl	%ecx, %r9d
	shrl	$2, %r9d
	leal	(,%r9,8), %esi
	movl	%r9d, %ecx
	subl	%esi, %ecx
	addl	%edx, %ecx
	movq	%r9, %rdx
	shlq	$14, %r9
	shlq	$6, %rdx
	shll	$3, %ecx
	leaq	15310876(%r9,%rdi), %rdi
	imulq	$224, %rcx, %rsi
	addq	(%r8), %rsi
	xorl	%r8d, %r8d
	.loc	7 0 8 is_stmt 0
.Ltmp23:
	.p2align	4
.LBB6_1:
	.loc	7 21 8
	leaq	(%r8,%rdx), %r9
	movq	%rsi, %r10
	xorl	%r11d, %r11d
	imulq	$13456, %r9, %r9
	addq	%rax, %r9
	.loc	7 0 8
.Ltmp24:
	.p2align	4
.LBB6_2:
	leaq	(%r11,%rcx), %rbx
	movq	%r10, %r14
	xorl	%r15d, %r15d
	imulq	$232, %rbx, %rbx
	leaq	232(%r9,%rbx), %rbx
	.p2align	4
.LBB6_3:
	movq	$-8, %r12
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%r14, %r13
	.p2align	4
.LBB6_4:
	.loc	7 21 8 is_stmt 1
	vmovss	(%r13), %xmm3
	vmovss	12544(%r13), %xmm4
	vmovss	25088(%r13), %xmm5
	vmovss	37632(%r13), %xmm6
	vmovss	50176(%r13), %xmm7
	vmovss	62720(%r13), %xmm8
	vmovss	75264(%r13), %xmm9
	vmovss	87808(%r13), %xmm10
	addq	$100352, %r13
	.loc	7 24 10
	vfmadd132ss	4(%rdi,%r12,4), %xmm2, %xmm3
	vfmadd231ss	8(%rdi,%r12,4), %xmm4, %xmm3
	vfmadd231ss	12(%rdi,%r12,4), %xmm5, %xmm3
	vfmadd231ss	16(%rdi,%r12,4), %xmm6, %xmm3
	vfmadd231ss	20(%rdi,%r12,4), %xmm7, %xmm3
	vfmadd231ss	24(%rdi,%r12,4), %xmm8, %xmm3
	vfmadd231ss	28(%rdi,%r12,4), %xmm9, %xmm3
	vmovaps	%xmm3, %xmm2
	vfmadd231ss	32(%rdi,%r12,4), %xmm10, %xmm2
	.loc	7 21 8
	addq	$8, %r12
	cmpq	$56, %r12
	jb	.LBB6_4
	vaddss	%xmm0, %xmm2, %xmm3
	vcmpless	%xmm2, %xmm0, %xmm2
	addq	$4, %r14
	vandps	%xmm3, %xmm2, %xmm2
	vminss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, 4(%rbx,%r15,4)
	incq	%r15
	cmpq	$56, %r15
	jne	.LBB6_3
	incq	%r11
	addq	$224, %r10
	cmpq	$8, %r11
	jne	.LBB6_2
	incq	%r8
	addq	$256, %rdi
	cmpq	$64, %r8
	jne	.LBB6_1
	.loc	7 37 8
	xorl	%eax, %eax
	.loc	7 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp25:
.Lfunc_end6:
	.size	main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32, .Lfunc_end6-main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI7_0:
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
.LCPI7_1:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_7_conv_56x56x128x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_7_conv_56x56x128x3x3_f32,@function
main_graph$async_dispatch_7_conv_56x56x128x3x3_f32:
.Lfunc_begin7:
	.file	8 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_7.mlir"
	.loc	8 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp26:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$320, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	8 21 8 prologue_end
	movl	(%rdx), %edx
	.loc	8 14 8
	movq	32(%rsi), %rcx
	vmovdqa	.LCPI7_0(%rip), %ymm0
	vmovss	.LCPI7_1(%rip), %xmm3
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	.loc	8 21 8
	movl	%edx, %edi
	movl	%edx, %r8d
	shrl	$3, %edi
	andl	$3, %r8d
	.loc	8 14 8
	movq	(%rcx), %rsi
	.loc	8 15 8
	movq	8(%rcx), %rax
	.loc	8 16 8
	movq	16(%rcx), %rcx
	.loc	8 21 8
	imulq	$430592, %r8, %r9
	imulq	$6496, %rdi, %r10
	addq	%r9, %r10
	xorl	%r9d, %r9d
	testb	$4, %dl
	movl	$112, %edx
	cmovel	%r9d, %edx
	addq	%rdx, %r10
	leaq	802816(%rsi,%r10), %r10
	leaq	(%r8,%r8,8), %rsi
	imulq	$401408, %r8, %r8
	shll	$7, %esi
	leaq	15720704(%rsi,%rax), %rax
	imulq	$6272, %rdi, %rsi
	movq	%rax, 48(%rsp)
	addq	%r8, %rsi
	orq	%rdx, %rsi
	leaq	7093312(%rcx,%rsi), %r8
	.loc	8 0 8 is_stmt 0
.Ltmp27:
	.p2align	4
.LBB7_1:
	movq	%r10, 32(%rsp)
	movq	%r10, %rdi
	movl	$28, %r10d
	xorl	%ecx, %ecx
	movq	%r9, 40(%rsp)
	movq	%r8, 24(%rsp)
	.p2align	4
.LBB7_2:
	.loc	8 21 8 is_stmt 1
	cmpq	$8, %r10
	movl	$8, %ebx
	movl	$28, %eax
	movq	%rcx, 56(%rsp)
	movq	48(%rsp), %rdx
	movq	%r8, %r14
	cmovbq	%r10, %rbx
	subq	%rcx, %rax
	movl	$8, %ecx
	cmpq	$8, %rax
	cmovaeq	%rcx, %rax
	movq	%rdi, %rcx
	xorl	%r13d, %r13d
	.loc	8 9 8
	vmovd	%eax, %xmm4
	vpbroadcastd	%xmm4, %ymm4
	vpcmpgtd	%ymm0, %ymm4, %ymm4
	vmaskmovps	%ymm1, %ymm4, 128(%rsp)
	.loc	8 0 8 is_stmt 0
.Ltmp28:
	.p2align	4
.LBB7_3:
	xorl	%eax, %eax
	.p2align	4
.LBB7_4:
	.loc	8 21 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 64(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB7_4
	.loc	8 0 8 is_stmt 0
	movq	%rdx, %r15
	movq	%rcx, %r9
	xorl	%esi, %esi
	.p2align	4
.LBB7_6:
	movq	%r9, %r12
	xorl	%eax, %eax
	.p2align	4
.LBB7_7:
	vmovss	64(%rsp,%rax,4), %xmm4
	xorl	%r11d, %r11d
	.p2align	4
.LBB7_8:
	.loc	8 21 8 is_stmt 1
	vmovss	(%r12,%r11,4), %xmm5
	.loc	8 24 10
	vfmadd231ss	(%r15,%r11,4), %xmm5, %xmm4
	.loc	8 21 8
	incq	%r11
	cmpq	$3, %r11
	jne	.LBB7_8
	vmovss	%xmm4, 64(%rsp,%rax,4)
	incq	%rax
	addq	$4, %r12
	cmpq	%rbx, %rax
	jne	.LBB7_7
	incq	%rsi
	addq	$232, %r9
	addq	$12, %r15
	cmpq	$3, %rsi
	jne	.LBB7_6
	.loc	8 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB7_12:
	.loc	8 21 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB7_12
	.loc	8 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB7_14:
	.loc	8 21 8 is_stmt 1
	vmovss	64(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB7_14
	.loc	8 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB7_16:
	.loc	8 27 8 is_stmt 1
	vmovss	192(%rsp,%rax,4), %xmm4
	vaddss	%xmm2, %xmm4, %xmm5
	vcmpless	%xmm4, %xmm2, %xmm4
	vandps	%xmm5, %xmm4, %xmm4
	vminss	%xmm3, %xmm4, %xmm4
	vmovss	%xmm4, (%r14,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB7_16
	.loc	8 21 8
	incq	%r13
	addq	$13456, %rcx
	addq	$36, %rdx
	addq	$12544, %r14
	cmpq	$32, %r13
	jne	.LBB7_3
	.loc	8 0 8 is_stmt 0
	movq	56(%rsp), %rax
	.loc	8 21 8
	addq	$-8, %r10
	addq	$32, %rdi
	addq	$32, %r8
	leaq	8(%rax), %rcx
	cmpq	$20, %rax
	jb	.LBB7_2
	.loc	8 0 8
	movq	40(%rsp), %r9
	movq	32(%rsp), %r10
	movq	24(%rsp), %r8
	.loc	8 21 8
	incq	%r9
	addq	$232, %r10
	addq	$224, %r8
	cmpq	$28, %r9
	jne	.LBB7_1
	.loc	8 37 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	8 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp29:
.Lfunc_end7:
	.size	main_graph$async_dispatch_7_conv_56x56x128x3x3_f32, .Lfunc_end7-main_graph$async_dispatch_7_conv_56x56x128x3x3_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI8_0:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_8_matmul_like_128x3136x128_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_8_matmul_like_128x3136x128_f32,@function
main_graph$async_dispatch_8_matmul_like_128x3136x128_f32:
.Lfunc_begin8:
	.file	9 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_8.mlir"
	.loc	9 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp30:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	9 21 8 prologue_end
	movl	(%rdx), %r8d
	.loc	9 14 8
	movq	32(%rsi), %rax
	vmovss	.LCPI8_0(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	9 21 8
	imulq	$1402438301, %r8, %r9
	.loc	9 14 8
	movq	(%rax), %rsi
	.loc	9 15 8
	movq	8(%rax), %rdi
	.loc	9 16 8
	movq	16(%rax), %rax
	.loc	9 21 8
	shrq	$36, %r9
	imull	$49, %r9d, %ecx
	subl	%ecx, %r8d
	movq	%r9, %rcx
	shlq	$15, %r9
	shlq	$6, %rcx
	movl	%r8d, %edx
	shll	$8, %r8d
	leaq	15245340(%r9,%rdi), %rdi
	shll	$6, %edx
	leaq	7181120(%r8,%rsi), %rsi
	xorl	%r8d, %r8d
	.loc	9 0 8 is_stmt 0
.Ltmp31:
	.p2align	4
.LBB8_1:
	.loc	9 21 8
	leaq	(%r8,%rcx), %r9
	movq	%rsi, %r10
	xorl	%r11d, %r11d
	imulq	$12544, %r9, %r9
	addq	%rax, %r9
	.loc	9 0 8
.Ltmp32:
	.p2align	4
.LBB8_2:
	.loc	9 21 8
	movq	%r11, %rbx
	orq	%rdx, %rbx
	movq	$-8, %r14
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%r10, %r15
	.loc	9 0 8
.Ltmp33:
	.p2align	4
.LBB8_3:
	.loc	9 21 8
	vmovss	-87808(%r15), %xmm3
	vmovss	-75264(%r15), %xmm4
	vmovss	-62720(%r15), %xmm5
	vmovss	-50176(%r15), %xmm6
	vmovss	-37632(%r15), %xmm7
	vmovss	-25088(%r15), %xmm8
	vmovss	-12544(%r15), %xmm9
	vmovss	(%r15), %xmm10
	addq	$100352, %r15
	.loc	9 24 10 is_stmt 1
	vfmadd132ss	4(%rdi,%r14,4), %xmm2, %xmm3
	vfmadd231ss	8(%rdi,%r14,4), %xmm4, %xmm3
	vfmadd231ss	12(%rdi,%r14,4), %xmm5, %xmm3
	vfmadd231ss	16(%rdi,%r14,4), %xmm6, %xmm3
	vfmadd231ss	20(%rdi,%r14,4), %xmm7, %xmm3
	vfmadd231ss	24(%rdi,%r14,4), %xmm8, %xmm3
	vfmadd231ss	28(%rdi,%r14,4), %xmm9, %xmm3
	vmovaps	%xmm3, %xmm2
	vfmadd231ss	32(%rdi,%r14,4), %xmm10, %xmm2
	.loc	9 21 8
	addq	$8, %r14
	cmpq	$120, %r14
	jb	.LBB8_3
	vaddss	%xmm0, %xmm2, %xmm3
	vcmpless	%xmm2, %xmm0, %xmm2
	incq	%r11
	addq	$4, %r10
	vandps	%xmm3, %xmm2, %xmm2
	vminss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, (%r9,%rbx,4)
	cmpq	$64, %r11
	jne	.LBB8_2
	incq	%r8
	addq	$512, %rdi
	cmpq	$64, %r8
	jne	.LBB8_1
	.loc	9 37 8
	xorl	%eax, %eax
	.loc	9 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp34:
.Lfunc_end8:
	.size	main_graph$async_dispatch_8_matmul_like_128x3136x128_f32, .Lfunc_end8-main_graph$async_dispatch_8_matmul_like_128x3136x128_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_9_slow_memcpy","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_9_slow_memcpy,@function
main_graph$async_dispatch_9_slow_memcpy:
.Lfunc_begin9:
	.file	10 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_9.mlir"
	.loc	10 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp35:
	.loc	10 16 8 prologue_end
	movl	(%rdx), %edx
	.loc	10 11 8
	movq	32(%rsi), %rsi
	xorl	%eax, %eax
	movl	$28, %r8d
	.loc	10 16 8
	testb	$1, %dl
	.loc	10 13 8
	movq	8(%rsi), %rdi
	.loc	10 16 8
	cmoveq	%rax, %r8
	shrl	%edx
	imulq	$200704, %rdx, %r9
	imulq	$224, %r8, %rcx
	imulq	$215296, %rdx, %rdx
	addq	%r9, %rcx
	addq	(%rsi), %rcx
	imulq	$232, %r8, %rsi
	addq	%rdx, %rsi
	leaq	1605868(%rdi,%rsi), %rdx
	.loc	10 0 8 is_stmt 0
.Ltmp36:
	.p2align	4
.LBB9_1:
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	xorl	%r8d, %r8d
	.p2align	4
.LBB9_2:
	movq	$-8, %r9
	.p2align	4
.LBB9_3:
	.loc	10 16 8 is_stmt 1
	vmovaps	32(%rdi,%r9,4), %ymm0
	vmovups	%ymm0, 32(%rsi,%r9,4)
	addq	$8, %r9
	cmpq	$48, %r9
	jb	.LBB9_3
	incq	%r8
	addq	$224, %rdi
	addq	$232, %rsi
	cmpq	$28, %r8
	jne	.LBB9_2
	incq	%rax
	addq	$12544, %rcx
	addq	$13456, %rdx
	cmpq	$16, %rax
	jne	.LBB9_1
	.loc	10 20 8
	xorl	%eax, %eax
	.loc	10 20 8 epilogue_begin is_stmt 0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp37:
.Lfunc_end9:
	.size	main_graph$async_dispatch_9_slow_memcpy, .Lfunc_end9-main_graph$async_dispatch_9_slow_memcpy
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI10_0:
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
.LCPI10_1:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_10_conv_28x28x128x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_10_conv_28x28x128x3x3_f32,@function
main_graph$async_dispatch_10_conv_28x28x128x3x3_f32:
.Lfunc_begin10:
	.file	11 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_10.mlir"
	.loc	11 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp38:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$320, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	11 14 8 prologue_end
	movq	32(%rsi), %rax
	.loc	11 21 8
	movl	(%rdx), %edx
	vmovdqa	.LCPI10_0(%rip), %ymm0
	vmovss	.LCPI10_1(%rip), %xmm3
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	movl	%edx, %esi
	shrl	$2, %esi
	andl	$3, %edx
	.loc	11 14 8
	movq	(%rax), %rcx
	.loc	11 21 8
	imulq	$430592, %rdx, %rdi
	imulq	$3248, %rsi, %r8
	addq	%rdi, %r8
	leaq	(%rdx,%rdx,8), %rdi
	leaq	1605632(%rcx,%r8), %r9
	.loc	11 15 8
	movq	8(%rax), %rcx
	.loc	11 16 8
	movq	16(%rax), %rax
	.loc	11 21 8
	shll	$7, %edi
	leaq	15716096(%rdi,%rcx), %rcx
	imulq	$100352, %rdx, %rdi
	imulq	$784, %rsi, %rdx
	movq	%rcx, 48(%rsp)
	addq	%rdi, %rdx
	leaq	3328000(%rax,%rdx), %r8
	xorl	%eax, %eax
	.loc	11 0 8 is_stmt 0
.Ltmp39:
	.p2align	4
.LBB10_1:
	movl	$28, %r10d
	movq	%rax, 24(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r9, 40(%rsp)
	movq	%r9, %rdi
	xorl	%ecx, %ecx
	.p2align	4
.LBB10_2:
	.loc	11 21 8 is_stmt 1
	cmpq	$8, %r10
	movl	$8, %ebx
	movl	$28, %eax
	movq	%rcx, 56(%rsp)
	movq	%r8, %r14
	movq	%rdi, %rsi
	cmovbq	%r10, %rbx
	subq	%rcx, %rax
	movl	$8, %ecx
	cmpq	$8, %rax
	cmovaeq	%rcx, %rax
	movq	48(%rsp), %rcx
	xorl	%r13d, %r13d
	.loc	11 9 8
	vmovd	%eax, %xmm4
	vpbroadcastd	%xmm4, %ymm4
	vpcmpgtd	%ymm0, %ymm4, %ymm4
	vmaskmovps	%ymm1, %ymm4, 128(%rsp)
	.loc	11 0 8 is_stmt 0
.Ltmp40:
	.p2align	4
.LBB10_3:
	xorl	%eax, %eax
	.p2align	4
.LBB10_4:
	.loc	11 21 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 64(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB10_4
	.loc	11 0 8 is_stmt 0
	movq	%rcx, %r15
	movq	%rsi, %r9
	xorl	%edx, %edx
	.p2align	4
.LBB10_6:
	movq	%r9, %r12
	xorl	%eax, %eax
	.p2align	4
.LBB10_7:
	vmovss	64(%rsp,%rax,4), %xmm4
	xorl	%r11d, %r11d
	.p2align	4
.LBB10_8:
	.loc	11 21 8 is_stmt 1
	vmovss	(%r12,%r11,4), %xmm5
	.loc	11 24 10
	vfmadd231ss	(%r15,%r11,4), %xmm5, %xmm4
	.loc	11 21 8
	incq	%r11
	cmpq	$3, %r11
	jne	.LBB10_8
	vmovss	%xmm4, 64(%rsp,%rax,4)
	incq	%rax
	addq	$8, %r12
	cmpq	%rbx, %rax
	jne	.LBB10_7
	incq	%rdx
	addq	$232, %r9
	addq	$12, %r15
	cmpq	$3, %rdx
	jne	.LBB10_6
	.loc	11 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB10_12:
	.loc	11 21 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB10_12
	.loc	11 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB10_14:
	.loc	11 21 8 is_stmt 1
	vmovss	64(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB10_14
	.loc	11 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB10_16:
	.loc	11 27 8 is_stmt 1
	vmovss	192(%rsp,%rax,4), %xmm4
	vaddss	%xmm2, %xmm4, %xmm5
	vcmpless	%xmm4, %xmm2, %xmm4
	vandps	%xmm5, %xmm4, %xmm4
	vminss	%xmm3, %xmm4, %xmm4
	vmovss	%xmm4, (%r14,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB10_16
	.loc	11 21 8
	incq	%r13
	addq	$13456, %rsi
	addq	$36, %rcx
	addq	$3136, %r14
	cmpq	$32, %r13
	jne	.LBB10_3
	.loc	11 0 8 is_stmt 0
	movq	56(%rsp), %rax
	.loc	11 21 8
	addq	$-8, %r10
	addq	$64, %rdi
	addq	$32, %r8
	leaq	8(%rax), %rcx
	cmpq	$20, %rax
	jb	.LBB10_2
	.loc	11 0 8
	movq	24(%rsp), %rax
	movq	40(%rsp), %r9
	movq	32(%rsp), %r8
	.loc	11 21 8
	incq	%rax
	addq	$464, %r9
	addq	$112, %r8
	cmpq	$7, %rax
	jne	.LBB10_1
	.loc	11 37 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	11 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp41:
.Lfunc_end10:
	.size	main_graph$async_dispatch_10_conv_28x28x128x3x3_f32, .Lfunc_end10-main_graph$async_dispatch_10_conv_28x28x128x3x3_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI11_0:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32,@function
main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32:
.Lfunc_begin11:
	.file	12 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_11.mlir"
	.loc	12 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp42:
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
	.loc	12 14 8 prologue_end
	movq	32(%rsi), %rcx
	.loc	12 21 8
	movl	(%rdx), %r9d
	movl	$7093312, %eax
	vmovss	.LCPI11_0(%rip), %xmm1
	xorl	%edx, %edx
	movl	$14, %esi
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	12 14 8
	movq	(%rcx), %rdi
	.loc	12 15 8
	movq	8(%rcx), %r8
	.loc	12 16 8
	addq	16(%rcx), %rax
	.loc	12 21 8
	movl	%r9d, %ecx
	andl	$-2, %ecx
	shlq	$4, %rcx
	testb	$1, %r9b
	cmoveq	%rdx, %rsi
	shrl	%r9d
	imulq	$112, %rsi, %r10
	shlq	$14, %r9
	leaq	15114268(%r9,%r8), %r8
	leaq	3349952(%r10,%rdi), %rdi
	.loc	12 0 8 is_stmt 0
.Ltmp43:
	.p2align	4
.LBB11_1:
	.loc	12 21 8
	movq	%rdx, %r9
	orq	%rcx, %r9
	movq	%rdi, %r10
	xorl	%r11d, %r11d
	imulq	$3600, %r9, %r9
	addq	%rax, %r9
	.loc	12 0 8
.Ltmp44:
	.p2align	4
.LBB11_2:
	leaq	(%r11,%rsi), %rbx
	movq	%r10, %r14
	xorl	%r15d, %r15d
	imulq	$120, %rbx, %rbx
	leaq	120(%r9,%rbx), %rbx
	.p2align	4
.LBB11_3:
	movq	$-8, %r12
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%r14, %r13
	.p2align	4
.LBB11_4:
	.loc	12 21 8 is_stmt 1
	vmovss	-21952(%r13), %xmm3
	vmovss	-18816(%r13), %xmm4
	vmovss	-15680(%r13), %xmm5
	vmovss	-12544(%r13), %xmm6
	vmovss	-9408(%r13), %xmm7
	vmovss	-6272(%r13), %xmm8
	vmovss	-3136(%r13), %xmm9
	vmovss	(%r13), %xmm10
	addq	$25088, %r13
	.loc	12 24 10
	vfmadd132ss	4(%r8,%r12,4), %xmm2, %xmm3
	vfmadd231ss	8(%r8,%r12,4), %xmm4, %xmm3
	vfmadd231ss	12(%r8,%r12,4), %xmm5, %xmm3
	vfmadd231ss	16(%r8,%r12,4), %xmm6, %xmm3
	vfmadd231ss	20(%r8,%r12,4), %xmm7, %xmm3
	vfmadd231ss	24(%r8,%r12,4), %xmm8, %xmm3
	vfmadd231ss	28(%r8,%r12,4), %xmm9, %xmm3
	vmovaps	%xmm3, %xmm2
	vfmadd231ss	32(%r8,%r12,4), %xmm10, %xmm2
	.loc	12 21 8
	addq	$8, %r12
	cmpq	$120, %r12
	jb	.LBB11_4
	vaddss	%xmm0, %xmm2, %xmm3
	vcmpless	%xmm2, %xmm0, %xmm2
	addq	$4, %r14
	vandps	%xmm3, %xmm2, %xmm2
	vminss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, 4(%rbx,%r15,4)
	incq	%r15
	cmpq	$28, %r15
	jne	.LBB11_3
	incq	%r11
	addq	$112, %r10
	cmpq	$14, %r11
	jne	.LBB11_2
	incq	%rdx
	addq	$512, %r8
	cmpq	$32, %rdx
	jne	.LBB11_1
	.loc	12 37 8
	xorl	%eax, %eax
	.loc	12 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp45:
.Lfunc_end11:
	.size	main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32, .Lfunc_end11-main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI12_0:
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
.LCPI12_1:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_12_conv_28x28x256x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_12_conv_28x28x256x3x3_f32,@function
main_graph$async_dispatch_12_conv_28x28x256x3x3_f32:
.Lfunc_begin12:
	.file	13 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_12.mlir"
	.loc	13 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp46:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$320, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	13 14 8 prologue_end
	movq	32(%rsi), %rax
	.loc	13 21 8
	movl	(%rdx), %edx
	vmovdqa	.LCPI12_0(%rip), %ymm0
	vmovss	.LCPI12_1(%rip), %xmm3
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	movl	%edx, %esi
	shrl	$3, %esi
	andl	$7, %edx
	.loc	13 14 8
	movq	(%rax), %rcx
	.loc	13 21 8
	imulq	$115200, %rdx, %rdi
	imulq	$1680, %rsi, %r8
	addq	%rdi, %r8
	leaq	(%rdx,%rdx,8), %rdi
	leaq	7093312(%rcx,%r8), %r9
	.loc	13 15 8
	movq	8(%rax), %rcx
	.loc	13 16 8
	movq	16(%rax), %rax
	.loc	13 21 8
	shll	$7, %edi
	leaq	15706880(%rdi,%rcx), %rcx
	imulq	$100352, %rdx, %rdi
	imulq	$1568, %rsi, %rdx
	movq	%rcx, 48(%rsp)
	addq	%rdi, %rdx
	leaq	1605632(%rax,%rdx), %r8
	xorl	%eax, %eax
	.loc	13 0 8 is_stmt 0
.Ltmp47:
	.p2align	4
.LBB12_1:
	movl	$28, %r10d
	movq	%rax, 24(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r9, 40(%rsp)
	movq	%r9, %rdi
	xorl	%ecx, %ecx
	.p2align	4
.LBB12_2:
	.loc	13 21 8 is_stmt 1
	cmpq	$8, %r10
	movl	$8, %ebx
	movl	$28, %eax
	movq	%rcx, 56(%rsp)
	movq	%r8, %r14
	movq	%rdi, %rsi
	cmovbq	%r10, %rbx
	subq	%rcx, %rax
	movl	$8, %ecx
	cmpq	$8, %rax
	cmovaeq	%rcx, %rax
	movq	48(%rsp), %rcx
	xorl	%r13d, %r13d
	.loc	13 9 8
	vmovd	%eax, %xmm4
	vpbroadcastd	%xmm4, %ymm4
	vpcmpgtd	%ymm0, %ymm4, %ymm4
	vmaskmovps	%ymm1, %ymm4, 128(%rsp)
	.loc	13 0 8 is_stmt 0
.Ltmp48:
	.p2align	4
.LBB12_3:
	xorl	%eax, %eax
	.p2align	4
.LBB12_4:
	.loc	13 21 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 64(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB12_4
	.loc	13 0 8 is_stmt 0
	movq	%rcx, %r15
	movq	%rsi, %r9
	xorl	%edx, %edx
	.p2align	4
.LBB12_6:
	movq	%r9, %r12
	xorl	%eax, %eax
	.p2align	4
.LBB12_7:
	vmovss	64(%rsp,%rax,4), %xmm4
	xorl	%r11d, %r11d
	.p2align	4
.LBB12_8:
	.loc	13 21 8 is_stmt 1
	vmovss	(%r12,%r11,4), %xmm5
	.loc	13 24 10
	vfmadd231ss	(%r15,%r11,4), %xmm5, %xmm4
	.loc	13 21 8
	incq	%r11
	cmpq	$3, %r11
	jne	.LBB12_8
	vmovss	%xmm4, 64(%rsp,%rax,4)
	incq	%rax
	addq	$4, %r12
	cmpq	%rbx, %rax
	jne	.LBB12_7
	incq	%rdx
	addq	$120, %r9
	addq	$12, %r15
	cmpq	$3, %rdx
	jne	.LBB12_6
	.loc	13 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB12_12:
	.loc	13 21 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB12_12
	.loc	13 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB12_14:
	.loc	13 21 8 is_stmt 1
	vmovss	64(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB12_14
	.loc	13 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB12_16:
	.loc	13 27 8 is_stmt 1
	vmovss	192(%rsp,%rax,4), %xmm4
	vaddss	%xmm2, %xmm4, %xmm5
	vcmpless	%xmm4, %xmm2, %xmm4
	vandps	%xmm5, %xmm4, %xmm4
	vminss	%xmm3, %xmm4, %xmm4
	vmovss	%xmm4, (%r14,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB12_16
	.loc	13 21 8
	incq	%r13
	addq	$3600, %rsi
	addq	$36, %rcx
	addq	$3136, %r14
	cmpq	$32, %r13
	jne	.LBB12_3
	.loc	13 0 8 is_stmt 0
	movq	56(%rsp), %rax
	.loc	13 21 8
	addq	$-8, %r10
	addq	$32, %rdi
	addq	$32, %r8
	leaq	8(%rax), %rcx
	cmpq	$20, %rax
	jb	.LBB12_2
	.loc	13 0 8
	movq	24(%rsp), %rax
	movq	40(%rsp), %r9
	movq	32(%rsp), %r8
	.loc	13 21 8
	incq	%rax
	addq	$120, %r9
	addq	$112, %r8
	cmpq	$14, %rax
	jne	.LBB12_1
	.loc	13 37 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	13 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp49:
.Lfunc_end12:
	.size	main_graph$async_dispatch_12_conv_28x28x256x3x3_f32, .Lfunc_end12-main_graph$async_dispatch_12_conv_28x28x256x3x3_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI13_0:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_13_matmul_like_256x784x256_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_13_matmul_like_256x784x256_f32,@function
main_graph$async_dispatch_13_matmul_like_256x784x256_f32:
.Lfunc_begin13:
	.file	14 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_13.mlir"
	.loc	14 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp50:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	14 14 8 prologue_end
	movq	32(%rsi), %rcx
	movl	$2408448, %eax
	movl	$2454267027, %r8d
	vmovss	.LCPI13_0(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	movq	(%rcx), %rsi
	.loc	14 15 8
	movq	8(%rcx), %rdi
	.loc	14 16 8
	addq	16(%rcx), %rax
	.loc	14 21 8
	movl	(%rdx), %ecx
	movl	%ecx, %edx
	shrl	%edx
	imulq	%rdx, %r8
	shrq	$34, %r8
	movl	%r8d, %edx
	shll	$4, %edx
	leal	(%r8,%r8), %r9d
	subl	%edx, %r9d
	addl	%ecx, %r9d
	movq	%r8, %rcx
	shlq	$16, %r8
	shlq	$6, %rcx
	imull	$56, %r9d, %edx
	leaq	14852124(%r8,%rdi), %rdi
	xorl	%r8d, %r8d
	leaq	1627584(%rsi,%rdx,4), %rsi
	.loc	14 0 8 is_stmt 0
.Ltmp51:
	.p2align	4
.LBB13_1:
	.loc	14 21 8
	leaq	(%r8,%rcx), %r9
	movq	%rsi, %r10
	xorl	%r11d, %r11d
	imulq	$3136, %r9, %r9
	addq	%rax, %r9
	.loc	14 0 8
.Ltmp52:
	.p2align	4
.LBB13_2:
	.loc	14 21 8
	leaq	(%r11,%rdx), %rbx
	movq	$-8, %r14
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%r10, %r15
	.loc	14 0 8
.Ltmp53:
	.p2align	4
.LBB13_3:
	.loc	14 21 8
	vmovss	-21952(%r15), %xmm3
	vmovss	-18816(%r15), %xmm4
	vmovss	-15680(%r15), %xmm5
	vmovss	-12544(%r15), %xmm6
	vmovss	-9408(%r15), %xmm7
	vmovss	-6272(%r15), %xmm8
	vmovss	-3136(%r15), %xmm9
	vmovss	(%r15), %xmm10
	addq	$25088, %r15
	.loc	14 24 10 is_stmt 1
	vfmadd132ss	4(%rdi,%r14,4), %xmm2, %xmm3
	vfmadd231ss	8(%rdi,%r14,4), %xmm4, %xmm3
	vfmadd231ss	12(%rdi,%r14,4), %xmm5, %xmm3
	vfmadd231ss	16(%rdi,%r14,4), %xmm6, %xmm3
	vfmadd231ss	20(%rdi,%r14,4), %xmm7, %xmm3
	vfmadd231ss	24(%rdi,%r14,4), %xmm8, %xmm3
	vfmadd231ss	28(%rdi,%r14,4), %xmm9, %xmm3
	vmovaps	%xmm3, %xmm2
	vfmadd231ss	32(%rdi,%r14,4), %xmm10, %xmm2
	.loc	14 21 8
	addq	$8, %r14
	cmpq	$248, %r14
	jb	.LBB13_3
	vaddss	%xmm0, %xmm2, %xmm3
	vcmpless	%xmm2, %xmm0, %xmm2
	incq	%r11
	addq	$4, %r10
	vandps	%xmm3, %xmm2, %xmm2
	vminss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, (%r9,%rbx,4)
	cmpq	$56, %r11
	jne	.LBB13_2
	incq	%r8
	addq	$1024, %rdi
	cmpq	$64, %r8
	jne	.LBB13_1
	.loc	14 37 8
	xorl	%eax, %eax
	.loc	14 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp54:
.Lfunc_end13:
	.size	main_graph$async_dispatch_13_matmul_like_256x784x256_f32, .Lfunc_end13-main_graph$async_dispatch_13_matmul_like_256x784x256_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_14_slow_memcpy","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_14_slow_memcpy,@function
main_graph$async_dispatch_14_slow_memcpy:
.Lfunc_begin14:
	.file	15 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_14.mlir"
	.loc	15 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp55:
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
	.loc	15 11 8 prologue_end
	movq	32(%rsi), %rax
	movl	$14, %esi
	movq	(%rax), %rdi
	.loc	15 13 8
	movq	8(%rax), %r9
	.loc	15 12 8
	leaq	2408448(%rdi), %rax
	movq	%rax, -48(%rbp)
	.loc	15 16 8
	movl	(%rdx), %eax
	xorl	%edx, %edx
	movl	%eax, %ecx
	andl	$-2, %ecx
	shlq	$4, %rcx
	testb	$1, %al
	cmoveq	%rdx, %rsi
	shrl	%eax
	imulq	$100352, %rax, %r8
	imulq	$112, %rsi, %r10
	imulq	$115200, %rax, %rax
	orq	%r8, %r10
	.loc	15 14 8
	leaq	7093312(%r9), %r8
	.loc	15 16 8
	leaq	2408448(%rdi,%r10), %rdi
	imulq	$120, %rsi, %r10
	addq	%rax, %r10
	leaq	7093436(%r9,%r10), %r9
	.loc	15 0 8 is_stmt 0
.Ltmp56:
	.p2align	4
.LBB14_1:
	leaq	(%rdx,%rcx), %rax
	movq	%r9, %rbx
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	imulq	$3136, %rax, %r10
	addq	-48(%rbp), %r10
	imulq	$3600, %rax, %r11
	addq	%r8, %r11
	.p2align	4
.LBB14_2:
	leaq	(%r15,%rsi), %rax
	imulq	$112, %rax, %r12
	imulq	$120, %rax, %r13
	movq	$-8, %rax
	.p2align	4
.LBB14_3:
	.loc	15 16 8 is_stmt 1
	vmovups	32(%r14,%rax,4), %ymm0
	vmovups	%ymm0, 32(%rbx,%rax,4)
	addq	$8, %rax
	cmpq	$16, %rax
	jb	.LBB14_3
	vmovaps	96(%r10,%r12), %xmm0
	incq	%r15
	addq	$112, %r14
	addq	$120, %rbx
	vmovups	%xmm0, 220(%r11,%r13)
	cmpq	$14, %r15
	jne	.LBB14_2
	incq	%rdx
	addq	$3136, %rdi
	addq	$3600, %r9
	cmpq	$32, %rdx
	jne	.LBB14_1
	.loc	15 20 8
	xorl	%eax, %eax
	.loc	15 20 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp57:
.Lfunc_end14:
	.size	main_graph$async_dispatch_14_slow_memcpy, .Lfunc_end14-main_graph$async_dispatch_14_slow_memcpy
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI15_0:
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
.LCPI15_1:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_15_conv_14x14x256x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_15_conv_14x14x256x3x3_f32,@function
main_graph$async_dispatch_15_conv_14x14x256x3x3_f32:
.Lfunc_begin15:
	.file	16 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_15.mlir"
	.loc	16 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp58:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$320, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	16 14 8 prologue_end
	movq	32(%rsi), %rax
	.loc	16 21 8
	movl	(%rdx), %edx
	vmovdqa	.LCPI15_0(%rip), %ymm0
	vmovss	.LCPI15_1(%rip), %xmm3
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	movl	%edx, %esi
	shrl	$3, %esi
	andl	$7, %edx
	.loc	16 14 8
	movq	(%rax), %rcx
	.loc	16 21 8
	imulq	$115200, %rdx, %rdi
	imulq	$1680, %rsi, %r8
	addq	%rdi, %r8
	leaq	(%rdx,%rdx,8), %rdi
	leaq	7093312(%rcx,%r8), %rcx
	shll	$7, %edi
	movq	%rcx, 40(%rsp)
	.loc	16 15 8
	movq	8(%rax), %rcx
	.loc	16 16 8
	movq	16(%rax), %rax
	.loc	16 21 8
	leaq	15697664(%rdi,%rcx), %rcx
	imulq	$25088, %rdx, %rdi
	imulq	$392, %rsi, %rdx
	movq	%rcx, 56(%rsp)
	addq	%rdi, %rdx
	leaq	3211264(%rax,%rdx), %rdx
	xorl	%eax, %eax
	.loc	16 0 8 is_stmt 0
.Ltmp59:
	.p2align	4
.LBB15_1:
	movb	$1, %r9b
	movl	$14, %r8d
	xorl	%ecx, %ecx
	movq	%rax, 48(%rsp)
	.p2align	4
.LBB15_2:
	.loc	16 21 8 is_stmt 1
	cmpq	$8, %r8
	movl	$8, %r10d
	movl	$14, %eax
	movl	$8, %esi
	movq	56(%rsp), %r14
	leaq	(%rdx,%rcx,4), %rbx
	cmovbq	%r8, %r10
	subq	%rcx, %rax
	cmpq	$8, %rax
	cmovaeq	%rsi, %rax
	movq	40(%rsp), %rsi
	xorl	%r15d, %r15d
	.loc	16 9 8
	vmovd	%eax, %xmm4
	vpbroadcastd	%xmm4, %ymm4
	vpcmpgtd	%ymm0, %ymm4, %ymm4
	.loc	16 21 8
	leaq	(%rsi,%rcx,8), %rdi
	.loc	16 9 8
	vmaskmovps	%ymm1, %ymm4, 128(%rsp)
	.loc	16 0 8 is_stmt 0
.Ltmp60:
	.p2align	4
.LBB15_3:
	xorl	%eax, %eax
	.p2align	4
.LBB15_4:
	.loc	16 21 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 64(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r10
	jne	.LBB15_4
	.loc	16 0 8 is_stmt 0
	movq	%r14, %r12
	movq	%rdi, %r11
	xorl	%esi, %esi
	.p2align	4
.LBB15_6:
	movq	%r11, %r13
	xorl	%ecx, %ecx
	.p2align	4
.LBB15_7:
	vmovss	64(%rsp,%rcx,4), %xmm4
	xorl	%eax, %eax
	.p2align	4
.LBB15_8:
	.loc	16 21 8 is_stmt 1
	vmovss	(%r13,%rax,4), %xmm5
	.loc	16 24 10
	vfmadd231ss	(%r12,%rax,4), %xmm5, %xmm4
	.loc	16 21 8
	incq	%rax
	cmpq	$3, %rax
	jne	.LBB15_8
	vmovss	%xmm4, 64(%rsp,%rcx,4)
	incq	%rcx
	addq	$8, %r13
	cmpq	%r10, %rcx
	jne	.LBB15_7
	incq	%rsi
	addq	$120, %r11
	addq	$12, %r12
	cmpq	$3, %rsi
	jne	.LBB15_6
	.loc	16 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB15_12:
	.loc	16 21 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r10
	jne	.LBB15_12
	.loc	16 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB15_14:
	.loc	16 21 8 is_stmt 1
	vmovss	64(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r10
	jne	.LBB15_14
	.loc	16 0 8 is_stmt 0
	xorl	%ecx, %ecx
	.p2align	4
.LBB15_16:
	.loc	16 27 8 is_stmt 1
	vmovss	192(%rsp,%rcx,4), %xmm4
	vaddss	%xmm2, %xmm4, %xmm5
	vcmpless	%xmm4, %xmm2, %xmm4
	vandps	%xmm5, %xmm4, %xmm4
	vminss	%xmm3, %xmm4, %xmm4
	vmovss	%xmm4, (%rbx,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %r10
	jne	.LBB15_16
	.loc	16 21 8
	incq	%r15
	addq	$3600, %rdi
	addq	$36, %r14
	addq	$784, %rbx
	cmpq	$32, %r15
	jne	.LBB15_3
	addq	$-8, %r8
	movl	$8, %ecx
	testb	$1, %r9b
	movl	$0, %r9d
	jne	.LBB15_2
	.loc	16 0 8 is_stmt 0
	movq	48(%rsp), %rax
	.loc	16 21 8
	addq	$240, 40(%rsp)
	addq	$56, %rdx
	incq	%rax
	cmpq	$7, %rax
	jne	.LBB15_1
	.loc	16 37 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	16 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp61:
.Lfunc_end15:
	.size	main_graph$async_dispatch_15_conv_14x14x256x3x3_f32, .Lfunc_end15-main_graph$async_dispatch_15_conv_14x14x256x3x3_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI16_0:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32,@function
main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32:
.Lfunc_begin16:
	.file	17 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_16.mlir"
	.loc	17 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp62:
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
	.loc	17 14 8 prologue_end
	movq	32(%rsi), %rcx
	.loc	17 21 8
	movl	(%rdx), %r9d
	movl	$1605632, %eax
	vmovss	.LCPI16_0(%rip), %xmm1
	xorl	%edx, %edx
	movl	$7, %esi
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	17 14 8
	movq	(%rcx), %rdi
	.loc	17 15 8
	movq	8(%rcx), %r8
	.loc	17 16 8
	addq	16(%rcx), %rax
	.loc	17 21 8
	movl	%r9d, %ecx
	andl	$-2, %ecx
	shlq	$5, %rcx
	testb	$1, %r9b
	cmoveq	%rdx, %rsi
	shrl	%r9d
	imulq	$56, %rsi, %r10
	shlq	$16, %r9
	leaq	14327836(%r9,%r8), %r8
	leaq	3216752(%r10,%rdi), %rdi
	.loc	17 0 8 is_stmt 0
.Ltmp63:
	.p2align	4
.LBB16_1:
	.loc	17 21 8
	movq	%rdx, %r9
	orq	%rcx, %r9
	movq	%rdi, %r10
	xorl	%r11d, %r11d
	shlq	$10, %r9
	addq	%rax, %r9
	.loc	17 0 8
.Ltmp64:
	.p2align	4
.LBB16_2:
	leaq	(%r11,%rsi), %rbx
	movq	%r10, %r14
	xorl	%r15d, %r15d
	shlq	$6, %rbx
	leaq	64(%r9,%rbx), %rbx
	.p2align	4
.LBB16_3:
	movq	$-8, %r12
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%r14, %r13
	.p2align	4
.LBB16_4:
	.loc	17 21 8 is_stmt 1
	vmovss	-5488(%r13), %xmm3
	vmovss	-4704(%r13), %xmm4
	vmovss	-3920(%r13), %xmm5
	vmovss	-3136(%r13), %xmm6
	vmovss	-2352(%r13), %xmm7
	vmovss	-1568(%r13), %xmm8
	vmovss	-784(%r13), %xmm9
	vmovss	(%r13), %xmm10
	addq	$6272, %r13
	.loc	17 24 10
	vfmadd132ss	4(%r8,%r12,4), %xmm2, %xmm3
	vfmadd231ss	8(%r8,%r12,4), %xmm4, %xmm3
	vfmadd231ss	12(%r8,%r12,4), %xmm5, %xmm3
	vfmadd231ss	16(%r8,%r12,4), %xmm6, %xmm3
	vfmadd231ss	20(%r8,%r12,4), %xmm7, %xmm3
	vfmadd231ss	24(%r8,%r12,4), %xmm8, %xmm3
	vfmadd231ss	28(%r8,%r12,4), %xmm9, %xmm3
	vmovaps	%xmm3, %xmm2
	vfmadd231ss	32(%r8,%r12,4), %xmm10, %xmm2
	.loc	17 21 8
	addq	$8, %r12
	cmpq	$248, %r12
	jb	.LBB16_4
	vaddss	%xmm0, %xmm2, %xmm3
	vcmpless	%xmm2, %xmm0, %xmm2
	addq	$4, %r14
	vandps	%xmm3, %xmm2, %xmm2
	vminss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, 4(%rbx,%r15,4)
	incq	%r15
	cmpq	$14, %r15
	jne	.LBB16_3
	incq	%r11
	addq	$56, %r10
	cmpq	$7, %r11
	jne	.LBB16_2
	incq	%rdx
	addq	$1024, %r8
	cmpq	$64, %rdx
	jne	.LBB16_1
	.loc	17 37 8
	xorl	%eax, %eax
	.loc	17 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp65:
.Lfunc_end16:
	.size	main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32, .Lfunc_end16-main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI17_0:
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
.LCPI17_1:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_17_conv_14x14x512x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_17_conv_14x14x512x3x3_f32,@function
main_graph$async_dispatch_17_conv_14x14x512x3x3_f32:
.Lfunc_begin17:
	.file	18 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_17.mlir"
	.loc	18 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp66:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$320, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	18 12 8 prologue_end
	movq	24(%rsi), %rax
	.loc	18 27 8
	movl	(%rdx), %edx
	.loc	18 12 8
	movq	32(%rsi), %rsi
	vmovdqa	.LCPI17_0(%rip), %ymm0
	vmovss	.LCPI17_1(%rip), %xmm3
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	movl	(%rax), %ecx
	.loc	18 13 8
	movl	4(%rax), %eax
	.loc	18 27 8
	leaq	(%rdx,%rdx,8), %r8
	imulq	$25088, %rdx, %rdi
	shlq	$15, %rdx
	shlq	$7, %r8
	.loc	18 20 8
	andl	$-4, %ecx
	.loc	18 21 8
	andl	$-4, %eax
	.loc	18 27 8
	addq	%rcx, %rdx
	addq	(%rsi), %rdx
	.loc	18 22 8
	movq	16(%rsi), %rcx
	.loc	18 27 8
	addq	%rax, %r8
	addq	8(%rsi), %r8
	xorl	%eax, %eax
	movq	%rdx, 40(%rsp)
	leaq	3211264(%rdi,%rcx), %rdx
	movq	%r8, 56(%rsp)
	.loc	18 0 8 is_stmt 0
.Ltmp67:
	.p2align	4
.LBB17_1:
	movb	$1, %r9b
	movl	$14, %r8d
	movq	%rax, 48(%rsp)
	xorl	%eax, %eax
	.p2align	4
.LBB17_2:
	.loc	18 27 8 is_stmt 1
	cmpq	$8, %r8
	movl	$8, %r10d
	movl	$14, %ecx
	movl	$8, %esi
	movq	56(%rsp), %r14
	leaq	(%rdx,%rax,4), %rbx
	cmovbq	%r8, %r10
	subq	%rax, %rcx
	cmpq	$8, %rcx
	cmovaeq	%rsi, %rcx
	movq	40(%rsp), %rsi
	xorl	%r15d, %r15d
	.loc	18 10 8
	vmovd	%ecx, %xmm4
	vpbroadcastd	%xmm4, %ymm4
	vpcmpgtd	%ymm0, %ymm4, %ymm4
	.loc	18 27 8
	leaq	(%rsi,%rax,4), %rdi
	.loc	18 10 8
	vmaskmovps	%ymm1, %ymm4, 128(%rsp)
	.loc	18 0 8 is_stmt 0
.Ltmp68:
	.p2align	4
.LBB17_3:
	xorl	%eax, %eax
	.p2align	4
.LBB17_4:
	.loc	18 27 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 64(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r10
	jne	.LBB17_4
	.loc	18 0 8 is_stmt 0
	movq	%r14, %r12
	movq	%rdi, %r11
	xorl	%esi, %esi
	.p2align	4
.LBB17_6:
	movq	%r11, %r13
	xorl	%eax, %eax
	.p2align	4
.LBB17_7:
	vmovss	64(%rsp,%rax,4), %xmm4
	xorl	%ecx, %ecx
	.p2align	4
.LBB17_8:
	.loc	18 27 8 is_stmt 1
	vmovss	(%r13,%rcx,4), %xmm5
	.loc	18 30 10
	vfmadd231ss	(%r12,%rcx,4), %xmm5, %xmm4
	.loc	18 27 8
	incq	%rcx
	cmpq	$3, %rcx
	jne	.LBB17_8
	vmovss	%xmm4, 64(%rsp,%rax,4)
	incq	%rax
	addq	$4, %r13
	cmpq	%r10, %rax
	jne	.LBB17_7
	incq	%rsi
	addq	$64, %r11
	addq	$12, %r12
	cmpq	$3, %rsi
	jne	.LBB17_6
	.loc	18 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB17_12:
	.loc	18 27 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r10
	jne	.LBB17_12
	.loc	18 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB17_14:
	.loc	18 27 8 is_stmt 1
	vmovss	64(%rsp,%rax,4), %xmm4
	vmovss	%xmm4, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r10
	jne	.LBB17_14
	.loc	18 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB17_16:
	.loc	18 33 8 is_stmt 1
	vmovss	192(%rsp,%rax,4), %xmm4
	vaddss	%xmm2, %xmm4, %xmm5
	vcmpless	%xmm4, %xmm2, %xmm4
	vandps	%xmm5, %xmm4, %xmm4
	vminss	%xmm3, %xmm4, %xmm4
	vmovss	%xmm4, (%rbx,%rax,4)
	incq	%rax
	cmpq	%rax, %r10
	jne	.LBB17_16
	.loc	18 27 8
	incq	%r15
	addq	$1024, %rdi
	addq	$36, %r14
	addq	$784, %rbx
	cmpq	$32, %r15
	jne	.LBB17_3
	addq	$-8, %r8
	movl	$8, %eax
	testb	$1, %r9b
	movl	$0, %r9d
	jne	.LBB17_2
	.loc	18 0 8 is_stmt 0
	movq	48(%rsp), %rax
	.loc	18 27 8
	addq	$64, 40(%rsp)
	addq	$56, %rdx
	incq	%rax
	cmpq	$14, %rax
	jne	.LBB17_1
	.loc	18 43 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	18 43 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp69:
.Lfunc_end17:
	.size	main_graph$async_dispatch_17_conv_14x14x512x3x3_f32, .Lfunc_end17-main_graph$async_dispatch_17_conv_14x14x512x3x3_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI18_0:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32,@function
main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32:
.Lfunc_begin18:
	.file	19 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_18.mlir"
	.loc	19 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp70:
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
	.loc	19 12 8 prologue_end
	movq	24(%rsi), %rax
	movq	32(%rsi), %rcx
	.loc	19 27 8
	movl	(%rdx), %r10d
	vmovss	.LCPI18_0(%rip), %xmm1
	xorl	%edx, %edx
	movl	$7, %esi
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	19 12 8
	movl	(%rax), %r8d
	.loc	19 13 8
	movl	4(%rax), %eax
	.loc	19 20 8
	movq	(%rcx), %rdi
	.loc	19 21 8
	movq	8(%rcx), %r9
	.loc	19 22 8
	andl	$-4, %eax
	addq	16(%rcx), %rax
	.loc	19 27 8
	movl	%r10d, %ecx
	andl	$-2, %ecx
	.loc	19 21 8
	andl	$-4, %r8d
	.loc	19 27 8
	shlq	$5, %rcx
	testb	$1, %r10b
	cmoveq	%rdx, %rsi
	shrl	%r10d
	imulq	$56, %rsi, %r11
	shlq	$17, %r10
	addq	%r8, %r10
	leaq	28(%r9,%r10), %r8
	leaq	3216752(%r11,%rdi), %rdi
	.loc	19 0 8 is_stmt 0
.Ltmp71:
	.p2align	4
.LBB18_1:
	.loc	19 27 8
	movq	%rdx, %r9
	orq	%rcx, %r9
	movq	%rdi, %r10
	xorl	%r11d, %r11d
	shlq	$10, %r9
	addq	%rax, %r9
	.loc	19 0 8
.Ltmp72:
	.p2align	4
.LBB18_2:
	leaq	(%r11,%rsi), %rbx
	movq	%r10, %r14
	xorl	%r15d, %r15d
	shlq	$6, %rbx
	leaq	64(%r9,%rbx), %rbx
	.p2align	4
.LBB18_3:
	movq	$-8, %r12
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%r14, %r13
	.p2align	4
.LBB18_4:
	.loc	19 27 8 is_stmt 1
	vmovss	-5488(%r13), %xmm3
	vmovss	-4704(%r13), %xmm4
	vmovss	-3920(%r13), %xmm5
	vmovss	-3136(%r13), %xmm6
	vmovss	-2352(%r13), %xmm7
	vmovss	-1568(%r13), %xmm8
	vmovss	-784(%r13), %xmm9
	vmovss	(%r13), %xmm10
	addq	$6272, %r13
	.loc	19 30 10
	vfmadd132ss	4(%r8,%r12,4), %xmm2, %xmm3
	vfmadd231ss	8(%r8,%r12,4), %xmm4, %xmm3
	vfmadd231ss	12(%r8,%r12,4), %xmm5, %xmm3
	vfmadd231ss	16(%r8,%r12,4), %xmm6, %xmm3
	vfmadd231ss	20(%r8,%r12,4), %xmm7, %xmm3
	vfmadd231ss	24(%r8,%r12,4), %xmm8, %xmm3
	vfmadd231ss	28(%r8,%r12,4), %xmm9, %xmm3
	vmovaps	%xmm3, %xmm2
	vfmadd231ss	32(%r8,%r12,4), %xmm10, %xmm2
	.loc	19 27 8
	addq	$8, %r12
	cmpq	$504, %r12
	jb	.LBB18_4
	vaddss	%xmm0, %xmm2, %xmm3
	vcmpless	%xmm2, %xmm0, %xmm2
	addq	$4, %r14
	vandps	%xmm3, %xmm2, %xmm2
	vminss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, 4(%rbx,%r15,4)
	incq	%r15
	cmpq	$14, %r15
	jne	.LBB18_3
	incq	%r11
	addq	$56, %r10
	cmpq	$7, %r11
	jne	.LBB18_2
	incq	%rdx
	addq	$2048, %r8
	cmpq	$64, %rdx
	jne	.LBB18_1
	.loc	19 43 8
	xorl	%eax, %eax
	.loc	19 43 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp73:
.Lfunc_end18:
	.size	main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32, .Lfunc_end18-main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI19_0:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_27_conv_7x7x512x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_27_conv_7x7x512x3x3_f32,@function
main_graph$async_dispatch_27_conv_7x7x512x3x3_f32:
.Lfunc_begin19:
	.file	20 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_27.mlir"
	.loc	20 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp74:
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
	.loc	20 14 8 prologue_end
	movq	32(%rsi), %rcx
	.loc	20 21 8
	movl	(%rdx), %edx
	vmovss	.LCPI19_0(%rip), %xmm1
	.loc	20 9 8
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	20 14 8
	movq	(%rcx), %rax
	.loc	20 21 8
	leaq	(%rdx,%rdx,8), %rsi
	imulq	$6272, %rdx, %rdi
	shlq	$15, %rdx
	.loc	20 16 8
	movq	16(%rcx), %r8
	.loc	20 21 8
	shlq	$7, %rsi
	leaq	7093312(%rdx,%rax), %rax
	.loc	20 15 8
	movq	8(%rcx), %rdx
	.loc	20 9 8
	vmovaps	%xmm0, (%rsp)
	movl	$0, 24(%rsp)
	movq	$0, 16(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	20 21 8
	leaq	15587072(%rsi,%rdx), %rcx
	leaq	3211264(%rdi,%r8), %rdx
	xorl	%esi, %esi
	.loc	20 0 8 is_stmt 0
.Ltmp75:
	.p2align	4
.LBB19_1:
	movq	%rdx, %rdi
	movq	%rcx, %r8
	movq	%rax, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB19_2:
	xorl	%r11d, %r11d
	.p2align	4
.LBB19_3:
	.loc	20 21 8 is_stmt 1
	vmovss	(%rsp,%r11,4), %xmm2
	vmovss	%xmm2, 64(%rsp,%r11,4)
	incq	%r11
	cmpq	$7, %r11
	jne	.LBB19_3
	.loc	20 0 8 is_stmt 0
	movq	%r8, %r11
	movq	%r9, %rbx
	xorl	%r14d, %r14d
	.p2align	4
.LBB19_5:
	movq	%rbx, %r15
	xorl	%r12d, %r12d
	.p2align	4
.LBB19_6:
	vmovss	64(%rsp,%r12,4), %xmm2
	xorl	%r13d, %r13d
	.p2align	4
.LBB19_7:
	.loc	20 21 8 is_stmt 1
	vmovss	(%r15,%r13,4), %xmm3
	.loc	20 24 10
	vfmadd231ss	(%r11,%r13,4), %xmm3, %xmm2
	.loc	20 21 8
	incq	%r13
	cmpq	$3, %r13
	jne	.LBB19_7
	vmovss	%xmm2, 64(%rsp,%r12,4)
	incq	%r12
	addq	$8, %r15
	cmpq	$7, %r12
	jne	.LBB19_6
	incq	%r14
	addq	$64, %rbx
	addq	$12, %r11
	cmpq	$3, %r14
	jne	.LBB19_5
	.loc	20 0 8 is_stmt 0
	xorl	%r11d, %r11d
	.p2align	4
.LBB19_11:
	.loc	20 27 8 is_stmt 1
	vmovss	64(%rsp,%r11,4), %xmm2
	vaddss	%xmm0, %xmm2, %xmm3
	vcmpless	%xmm2, %xmm0, %xmm2
	vandps	%xmm3, %xmm2, %xmm2
	vminss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, (%rdi,%r11,4)
	incq	%r11
	cmpq	$7, %r11
	jne	.LBB19_11
	.loc	20 21 8
	incq	%r10
	addq	$1024, %r9
	addq	$36, %r8
	addq	$196, %rdi
	cmpq	$32, %r10
	jne	.LBB19_2
	incq	%rsi
	subq	$-128, %rax
	addq	$28, %rdx
	cmpq	$7, %rsi
	jne	.LBB19_1
	.loc	20 37 8
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	20 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp76:
.Lfunc_end19:
	.size	main_graph$async_dispatch_27_conv_7x7x512x3x3_f32, .Lfunc_end19-main_graph$async_dispatch_27_conv_7x7x512x3x3_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI20_0:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32,@function
main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32:
.Lfunc_begin20:
	.file	21 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_28.mlir"
	.loc	21 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp77:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	21 14 8 prologue_end
	movq	32(%rsi), %rsi
	.loc	21 21 8
	movl	(%rdx), %r8d
	vmovss	.LCPI20_0(%rip), %xmm1
	movl	$3311616, %eax
	movl	$3212636, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	21 15 8
	movq	8(%rsi), %rdi
	.loc	21 16 8
	addq	16(%rsi), %rax
	.loc	21 21 8
	addq	(%rsi), %rdx
	movq	%r8, %rcx
	shlq	$17, %r8
	shlq	$6, %rcx
	leaq	6987804(%r8,%rdi), %rsi
	xorl	%edi, %edi
	.loc	21 0 8 is_stmt 0
.Ltmp78:
	.p2align	4
.LBB20_1:
	.loc	21 21 8
	leaq	(%rdi,%rcx), %r8
	movq	%rdx, %r9
	xorl	%r10d, %r10d
	imulq	$324, %r8, %r8
	addq	%rax, %r8
	.loc	21 0 8
.Ltmp79:
	.p2align	4
.LBB20_2:
	leaq	(%r10,%r10,8), %r11
	movq	%r9, %rbx
	xorl	%r14d, %r14d
	leaq	36(%r8,%r11,4), %r11
	.p2align	4
.LBB20_3:
	movq	$-8, %r15
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%rbx, %r12
	.p2align	4
.LBB20_4:
	.loc	21 21 8 is_stmt 1
	vmovss	-1372(%r12), %xmm3
	vmovss	-1176(%r12), %xmm4
	vmovss	-980(%r12), %xmm5
	vmovss	-784(%r12), %xmm6
	vmovss	-588(%r12), %xmm7
	vmovss	-392(%r12), %xmm8
	vmovss	-196(%r12), %xmm9
	vmovss	(%r12), %xmm10
	addq	$1568, %r12
	.loc	21 24 10
	vfmadd132ss	4(%rsi,%r15,4), %xmm2, %xmm3
	vfmadd231ss	8(%rsi,%r15,4), %xmm4, %xmm3
	vfmadd231ss	12(%rsi,%r15,4), %xmm5, %xmm3
	vfmadd231ss	16(%rsi,%r15,4), %xmm6, %xmm3
	vfmadd231ss	20(%rsi,%r15,4), %xmm7, %xmm3
	vfmadd231ss	24(%rsi,%r15,4), %xmm8, %xmm3
	vfmadd231ss	28(%rsi,%r15,4), %xmm9, %xmm3
	vmovaps	%xmm3, %xmm2
	vfmadd231ss	32(%rsi,%r15,4), %xmm10, %xmm2
	.loc	21 21 8
	addq	$8, %r15
	cmpq	$504, %r15
	jb	.LBB20_4
	vaddss	%xmm0, %xmm2, %xmm3
	vcmpless	%xmm2, %xmm0, %xmm2
	addq	$4, %rbx
	vandps	%xmm3, %xmm2, %xmm2
	vminss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, 4(%r11,%r14,4)
	incq	%r14
	cmpq	$7, %r14
	jne	.LBB20_3
	incq	%r10
	addq	$28, %r9
	cmpq	$7, %r10
	jne	.LBB20_2
	incq	%rdi
	addq	$2048, %rsi
	cmpq	$64, %rdi
	jne	.LBB20_1
	.loc	21 37 8
	xorl	%eax, %eax
	.loc	21 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp80:
.Lfunc_end20:
	.size	main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32, .Lfunc_end20-main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI21_0:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32,@function
main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32:
.Lfunc_begin21:
	.file	22 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_29.mlir"
	.loc	22 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp81:
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
	.loc	22 14 8 prologue_end
	movq	32(%rsi), %rax
	.loc	22 21 8
	movl	(%rdx), %edx
	vmovss	.LCPI21_0(%rip), %xmm1
	.loc	22 9 8
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	22 14 8
	movq	(%rax), %rcx
	.loc	22 15 8
	movq	8(%rax), %rsi
	.loc	22 16 8
	movq	16(%rax), %rdi
	.loc	22 21 8
	imulq	$10368, %rdx, %rax
	leaq	(%rdx,%rdx,8), %r8
	imulq	$6272, %rdx, %rdx
	.loc	22 9 8
	vmovaps	%xmm0, (%rsp)
	movl	$0, 24(%rsp)
	movq	$0, 16(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	22 21 8
	shlq	$7, %r8
	leaq	3311616(%rax,%rcx), %rax
	leaq	15550208(%r8,%rsi), %rcx
	leaq	3643392(%rdx,%rdi), %rdx
	xorl	%esi, %esi
	.loc	22 0 8 is_stmt 0
.Ltmp82:
	.p2align	4
.LBB21_1:
	movq	%rdx, %rdi
	movq	%rcx, %r8
	movq	%rax, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB21_2:
	xorl	%r11d, %r11d
	.p2align	4
.LBB21_3:
	.loc	22 21 8 is_stmt 1
	vmovss	(%rsp,%r11,4), %xmm2
	vmovss	%xmm2, 64(%rsp,%r11,4)
	incq	%r11
	cmpq	$7, %r11
	jne	.LBB21_3
	.loc	22 0 8 is_stmt 0
	movq	%r8, %r11
	movq	%r9, %rbx
	xorl	%r14d, %r14d
	.p2align	4
.LBB21_5:
	movq	%rbx, %r15
	xorl	%r12d, %r12d
	.p2align	4
.LBB21_6:
	vmovss	64(%rsp,%r12,4), %xmm2
	xorl	%r13d, %r13d
	.p2align	4
.LBB21_7:
	.loc	22 21 8 is_stmt 1
	vmovss	(%r15,%r13,4), %xmm3
	.loc	22 24 10
	vfmadd231ss	(%r11,%r13,4), %xmm3, %xmm2
	.loc	22 21 8
	incq	%r13
	cmpq	$3, %r13
	jne	.LBB21_7
	vmovss	%xmm2, 64(%rsp,%r12,4)
	incq	%r12
	addq	$4, %r15
	cmpq	$7, %r12
	jne	.LBB21_6
	incq	%r14
	addq	$36, %rbx
	addq	$12, %r11
	cmpq	$3, %r14
	jne	.LBB21_5
	.loc	22 0 8 is_stmt 0
	xorl	%r11d, %r11d
	.p2align	4
.LBB21_11:
	.loc	22 27 8 is_stmt 1
	vmovss	64(%rsp,%r11,4), %xmm2
	vaddss	%xmm0, %xmm2, %xmm3
	vcmpless	%xmm2, %xmm0, %xmm2
	vandps	%xmm3, %xmm2, %xmm2
	vminss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, (%rdi,%r11,4)
	incq	%r11
	cmpq	$7, %r11
	jne	.LBB21_11
	.loc	22 21 8
	incq	%r10
	addq	$324, %r9
	addq	$36, %r8
	addq	$196, %rdi
	cmpq	$32, %r10
	jne	.LBB21_2
	incq	%rsi
	addq	$36, %rax
	addq	$28, %rdx
	cmpq	$7, %rsi
	jne	.LBB21_1
	.loc	22 37 8
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	22 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp83:
.Lfunc_end21:
	.size	main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32, .Lfunc_end21-main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI22_0:
	.long	0x40c00000
	.section	".text.main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32,@function
main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32:
.Lfunc_begin22:
	.file	23 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_30.mlir"
	.loc	23 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp84:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	23 14 8 prologue_end
	movq	32(%rsi), %rsi
	.loc	23 21 8
	movl	(%rdx), %r8d
	vmovss	.LCPI22_0(%rip), %xmm1
	movl	$1605632, %eax
	movl	$3644764, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	23 15 8
	movq	8(%rsi), %rdi
	.loc	23 16 8
	addq	16(%rsi), %rax
	.loc	23 21 8
	addq	(%rsi), %rdx
	movq	%r8, %rcx
	shlq	$18, %r8
	shlq	$6, %rcx
	leaq	2793500(%r8,%rdi), %rsi
	xorl	%edi, %edi
	.loc	23 0 8 is_stmt 0
.Ltmp85:
	.p2align	4
.LBB22_1:
	.loc	23 21 8
	leaq	(%rdi,%rcx), %r8
	movq	%rdx, %r9
	xorl	%r10d, %r10d
	imulq	$484, %r8, %r8
	addq	%rax, %r8
	.loc	23 0 8
.Ltmp86:
	.p2align	4
.LBB22_2:
	imulq	$44, %r10, %r11
	movq	%r9, %rbx
	xorl	%r14d, %r14d
	leaq	96(%r8,%r11), %r11
	.p2align	4
.LBB22_3:
	movq	$-8, %r15
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%rbx, %r12
	.p2align	4
.LBB22_4:
	.loc	23 21 8 is_stmt 1
	vmovss	-1372(%r12), %xmm3
	vmovss	-1176(%r12), %xmm4
	vmovss	-980(%r12), %xmm5
	vmovss	-784(%r12), %xmm6
	vmovss	-588(%r12), %xmm7
	vmovss	-392(%r12), %xmm8
	vmovss	-196(%r12), %xmm9
	vmovss	(%r12), %xmm10
	addq	$1568, %r12
	.loc	23 24 10
	vfmadd132ss	4(%rsi,%r15,4), %xmm2, %xmm3
	vfmadd231ss	8(%rsi,%r15,4), %xmm4, %xmm3
	vfmadd231ss	12(%rsi,%r15,4), %xmm5, %xmm3
	vfmadd231ss	16(%rsi,%r15,4), %xmm6, %xmm3
	vfmadd231ss	20(%rsi,%r15,4), %xmm7, %xmm3
	vfmadd231ss	24(%rsi,%r15,4), %xmm8, %xmm3
	vfmadd231ss	28(%rsi,%r15,4), %xmm9, %xmm3
	vmovaps	%xmm3, %xmm2
	vfmadd231ss	32(%rsi,%r15,4), %xmm10, %xmm2
	.loc	23 21 8
	addq	$8, %r15
	cmpq	$1016, %r15
	jb	.LBB22_4
	vaddss	%xmm0, %xmm2, %xmm3
	vcmpless	%xmm2, %xmm0, %xmm2
	addq	$4, %rbx
	vandps	%xmm3, %xmm2, %xmm2
	vminss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, (%r11,%r14,4)
	incq	%r14
	cmpq	$7, %r14
	jne	.LBB22_3
	incq	%r10
	addq	$28, %r9
	cmpq	$7, %r10
	jne	.LBB22_2
	incq	%rdi
	addq	$4096, %rsi
	cmpq	$64, %rdi
	jne	.LBB22_1
	.loc	23 37 8
	xorl	%eax, %eax
	.loc	23 37 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp87:
.Lfunc_end22:
	.size	main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32, .Lfunc_end22-main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32,@function
main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32:
.Lfunc_begin23:
	.file	24 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_31.mlir"
	.loc	24 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp88:
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
	.loc	24 13 8 prologue_end
	movq	32(%rsi), %rax
	.loc	24 20 8
	movl	(%rdx), %edx
	.loc	24 9 8
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	24 13 8
	movq	(%rax), %rcx
	.loc	24 14 8
	movq	8(%rax), %rsi
	.loc	24 15 8
	movq	16(%rax), %rdi
	.loc	24 20 8
	imulq	$15488, %rdx, %rax
	imulq	$3200, %rdx, %r8
	imulq	$6272, %rdx, %rdx
	.loc	24 9 8
	vmovaps	%xmm0, (%rsp)
	movl	$0, 24(%rsp)
	movq	$0, 16(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	24 20 8
	leaq	1605632(%rax,%rcx), %rax
	leaq	15447808(%r8,%rsi), %rcx
	leaq	2101248(%rdx,%rdi), %rdx
	xorl	%esi, %esi
	.loc	24 0 8 is_stmt 0
.Ltmp89:
	.p2align	4
.LBB23_1:
	movq	%rdx, %rdi
	movq	%rcx, %r8
	movq	%rax, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB23_2:
	xorl	%r11d, %r11d
	.p2align	4
.LBB23_3:
	.loc	24 20 8 is_stmt 1
	vmovss	(%rsp,%r11,4), %xmm1
	vmovss	%xmm1, 64(%rsp,%r11,4)
	incq	%r11
	cmpq	$7, %r11
	jne	.LBB23_3
	.loc	24 0 8 is_stmt 0
	movq	%r8, %r11
	movq	%r9, %rbx
	xorl	%r14d, %r14d
	.p2align	4
.LBB23_5:
	movq	%rbx, %r15
	xorl	%r12d, %r12d
	.p2align	4
.LBB23_6:
	vmovss	64(%rsp,%r12,4), %xmm1
	xorl	%r13d, %r13d
	.p2align	4
.LBB23_7:
	.loc	24 20 8 is_stmt 1
	vmovss	(%r15,%r13,4), %xmm2
	.loc	24 23 10
	vfmadd231ss	(%r11,%r13,4), %xmm2, %xmm1
	.loc	24 20 8
	incq	%r13
	cmpq	$5, %r13
	jne	.LBB23_7
	vmovss	%xmm1, 64(%rsp,%r12,4)
	incq	%r12
	addq	$4, %r15
	cmpq	$7, %r12
	jne	.LBB23_6
	incq	%r14
	addq	$44, %rbx
	addq	$20, %r11
	cmpq	$5, %r14
	jne	.LBB23_5
	.loc	24 0 8 is_stmt 0
	xorl	%r11d, %r11d
	.p2align	4
.LBB23_11:
	.loc	24 26 8 is_stmt 1
	vmovss	64(%rsp,%r11,4), %xmm1
	vaddss	%xmm0, %xmm1, %xmm2
	vcmpless	%xmm0, %xmm1, %xmm1
	vandnps	%xmm2, %xmm1, %xmm1
	vmovss	%xmm1, (%rdi,%r11,4)
	incq	%r11
	cmpq	$7, %r11
	jne	.LBB23_11
	.loc	24 20 8
	incq	%r10
	addq	$484, %r9
	addq	$100, %r8
	addq	$196, %rdi
	cmpq	$32, %r10
	jne	.LBB23_2
	incq	%rsi
	addq	$44, %rax
	addq	$28, %rdx
	cmpq	$7, %rsi
	jne	.LBB23_1
	.loc	24 34 8
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	24 34 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp90:
.Lfunc_end23:
	.size	main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32, .Lfunc_end23-main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_32_matmul_like_512x49x1024_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_32_matmul_like_512x49x1024_f32,@function
main_graph$async_dispatch_32_matmul_like_512x49x1024_f32:
.Lfunc_begin24:
	.file	25 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_32.mlir"
	.loc	25 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp91:
	pushq	%rbx
	.cfi_offset %rbx, -24
	.loc	25 13 8 prologue_end
	movq	32(%rsi), %rsi
	.loc	25 20 8
	movl	(%rdx), %r8d
	movl	$2301952, %eax
	movl	$2102620, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	25 14 8
	movq	8(%rsi), %rdi
	.loc	25 15 8
	addq	16(%rsi), %rax
	.loc	25 20 8
	addq	(%rsi), %rdx
	movq	%r8, %rcx
	shlq	$18, %r8
	shlq	$6, %rcx
	leaq	696348(%r8,%rdi), %rsi
	xorl	%edi, %edi
	.loc	25 0 8 is_stmt 0
.Ltmp92:
	.p2align	4
.LBB24_1:
	.loc	25 20 8
	leaq	(%rdi,%rcx), %r8
	movq	%rdx, %r9
	xorl	%r10d, %r10d
	imulq	$196, %r8, %r8
	addq	%rax, %r8
	.loc	25 0 8
.Ltmp93:
	.p2align	4
.LBB24_2:
	movq	$-8, %r11
	vxorps	%xmm1, %xmm1, %xmm1
	movq	%r9, %rbx
	.p2align	4
.LBB24_3:
	.loc	25 20 8 is_stmt 1
	vmovss	-1372(%rbx), %xmm2
	vmovss	-1176(%rbx), %xmm3
	vmovss	-980(%rbx), %xmm4
	vmovss	-784(%rbx), %xmm5
	vmovss	-588(%rbx), %xmm6
	vmovss	-392(%rbx), %xmm7
	vmovss	-196(%rbx), %xmm8
	vmovss	(%rbx), %xmm9
	addq	$1568, %rbx
	.loc	25 23 10
	vfmadd132ss	4(%rsi,%r11,4), %xmm1, %xmm2
	vfmadd231ss	8(%rsi,%r11,4), %xmm3, %xmm2
	vfmadd231ss	12(%rsi,%r11,4), %xmm4, %xmm2
	vfmadd231ss	16(%rsi,%r11,4), %xmm5, %xmm2
	vfmadd231ss	20(%rsi,%r11,4), %xmm6, %xmm2
	vfmadd231ss	24(%rsi,%r11,4), %xmm7, %xmm2
	vfmadd231ss	28(%rsi,%r11,4), %xmm8, %xmm2
	vmovaps	%xmm2, %xmm1
	vfmadd231ss	32(%rsi,%r11,4), %xmm9, %xmm1
	.loc	25 20 8
	addq	$8, %r11
	cmpq	$1016, %r11
	jb	.LBB24_3
	vaddss	%xmm0, %xmm1, %xmm2
	vcmpless	%xmm0, %xmm1, %xmm1
	addq	$4, %r9
	vandnps	%xmm2, %xmm1, %xmm1
	vmovss	%xmm1, (%r8,%r10,4)
	incq	%r10
	cmpq	$49, %r10
	jne	.LBB24_2
	incq	%rdi
	addq	$4096, %rsi
	cmpq	$64, %rdi
	jne	.LBB24_1
	.loc	25 34 8
	xorl	%eax, %eax
	.loc	25 34 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp94:
.Lfunc_end24:
	.size	main_graph$async_dispatch_32_matmul_like_512x49x1024_f32, .Lfunc_end24-main_graph$async_dispatch_32_matmul_like_512x49x1024_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI25_0:
	.long	0x3f000000
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI25_1:
	.quad	2
	.quad	2
	.quad	3
	.quad	3
.LCPI25_2:
	.quad	4
	.quad	4
	.quad	5
	.quad	5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI25_3:
	.quad	6
	.section	".text.main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32,@function
main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32:
.Lfunc_begin25:
	.file	26 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_33.mlir"
	.loc	26 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp95:
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
	.loc	26 17 8 prologue_end
	movl	(%rdx), %r8d
	.loc	26 13 8
	movq	32(%rsi), %rdi
	xorl	%ecx, %ecx
	movl	$7, %edx
	vmovss	.LCPI25_0(%rip), %xmm0
	vmovdqa	.LCPI25_1(%rip), %ymm1
	vmovdqa	.LCPI25_2(%rip), %ymm3
	vpbroadcastq	.LCPI25_3(%rip), %xmm4
	vpcmpeqd	%xmm2, %xmm2, %xmm2
	.loc	26 17 8
	movl	%r8d, %eax
	andl	$-2, %eax
	.loc	26 14 8
	movq	8(%rdi), %rsi
	.loc	26 13 8
	movq	(%rdi), %rdi
	.loc	26 17 8
	shlq	$5, %rax
	testb	$1, %r8b
	cmoveq	%rcx, %rdx
	shrl	%r8d
	movq	%rax, -48(%rbp)
	leal	(,%rdx,8), %r9d
	imulq	$82944, %r8, %r8
	leaq	(%r9,%r9,8), %r9
	orq	%r8, %r9
	leaq	3211448(%rsi,%r9), %rsi
	.loc	26 0 8 is_stmt 0
.Ltmp96:
	.p2align	4
.LBB25_1:
	.loc	26 19 10 is_stmt 1
	movq	%rcx, %r9
	orq	-48(%rbp), %r9
	xorl	%r10d, %r10d
	.loc	26 34 10
	leaq	(,%r9,8), %r8
	subq	%r9, %r8
	movq	%rdx, %r9
	.loc	26 0 10 is_stmt 0
.Ltmp97:
	.p2align	4
.LBB25_2:
	.loc	26 23 10 is_stmt 1
	vcvtsi2ss	%r9, %xmm15, %xmm5
	.loc	26 17 8
	incq	%r9
	.loc	26 24 10
	vmulss	%xmm0, %xmm5, %xmm5
	.loc	26 25 10
	vroundss	$9, %xmm5, %xmm5, %xmm5
	.loc	26 26 10
	vcvttss2si	%xmm5, %r11
	.loc	26 34 10
	addq	%r8, %r11
	leaq	(,%r11,8), %rbx
	subq	%r11, %rbx
	vmovq	%rbx, %xmm5
	vpbroadcastq	%xmm5, %ymm5
	vpaddq	%ymm1, %ymm5, %ymm6
	vpsubq	%xmm2, %xmm5, %xmm7
	vmovq	%xmm6, %r15
	vpextrq	$1, %xmm6, %r12
	vextracti128	$1, %ymm6, %xmm6
	vmovq	%xmm7, %r11
	vpextrq	$1, %xmm7, %r14
	vmovss	2301952(%rdi,%r15,4), %xmm7
	vinsertps	$16, 2301952(%rdi,%r12,4), %xmm7, %xmm7
	vmovq	%xmm6, %r13
	vpextrq	$1, %xmm6, %rax
	vbroadcastss	2301952(%rdi,%rbx,4), %xmm6
	vinsertps	$32, 2301952(%rdi,%r11,4), %xmm6, %xmm6
	vinsertps	$32, 2301952(%rdi,%r13,4), %xmm7, %xmm7
	vinsertps	$48, 2301952(%rdi,%r14,4), %xmm6, %xmm6
	vinsertps	$48, 2301952(%rdi,%rax,4), %xmm7, %xmm7
	.loc	26 17 8
	vmovups	%xmm6, -32(%rsi,%r10)
	.loc	26 34 10
	vpaddq	%ymm3, %ymm5, %ymm6
	.loc	26 17 8
	vmovups	%xmm7, -16(%rsi,%r10)
	.loc	26 34 10
	vpaddq	%xmm4, %xmm5, %xmm5
	vmovq	%xmm6, %rax
	vpextrq	$1, %xmm6, %r11
	vextracti128	$1, %ymm6, %xmm6
	vmovq	%xmm5, %r12
	vpextrq	$1, %xmm5, %r15
	vmovss	2301952(%rdi,%r12,4), %xmm5
	vinsertps	$16, 2301952(%rdi,%r15,4), %xmm5, %xmm5
	vmovq	%xmm6, %rbx
	vpextrq	$1, %xmm6, %r14
	vmovss	2301952(%rdi,%rax,4), %xmm6
	vinsertps	$16, 2301952(%rdi,%r11,4), %xmm6, %xmm6
	vinsertps	$32, 2301952(%rdi,%rbx,4), %xmm6, %xmm6
	vinsertps	$48, 2301952(%rdi,%r14,4), %xmm6, %xmm6
	.loc	26 17 8
	vmovlps	%xmm5, 16(%rsi,%r10)
	vmovups	%xmm6, (%rsi,%r10)
	addq	$72, %r10
	cmpq	$504, %r10
	jne	.LBB25_2
	incq	%rcx
	addq	$1296, %rsi
	cmpq	$64, %rcx
	jne	.LBB25_1
	.loc	26 38 8
	xorl	%eax, %eax
	.loc	26 38 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp98:
.Lfunc_end25:
	.size	main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32, .Lfunc_end25-main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI26_0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	".text.main_graph$async_dispatch_34_conv_14x14x512x5x5_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_34_conv_14x14x512x5x5_f32,@function
main_graph$async_dispatch_34_conv_14x14x512x5x5_f32:
.Lfunc_begin26:
	.file	27 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_34.mlir"
	.loc	27 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp99:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$320, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	27 13 8 prologue_end
	movq	32(%rsi), %rax
	.loc	27 20 8
	movl	(%rdx), %edx
	vmovdqa	.LCPI26_0(%rip), %ymm0
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	.loc	27 13 8
	movq	(%rax), %rcx
	.loc	27 20 8
	imulq	$41472, %rdx, %rdi
	.loc	27 14 8
	movq	8(%rax), %rsi
	.loc	27 15 8
	movq	16(%rax), %rax
	.loc	27 20 8
	leaq	3211264(%rdi,%rcx), %rcx
	imulq	$3200, %rdx, %rdi
	imulq	$25088, %rdx, %rdx
	movq	%rcx, 40(%rsp)
	leaq	15396608(%rdi,%rsi), %rcx
	leaq	1605632(%rdx,%rax), %rdx
	xorl	%eax, %eax
	movq	%rcx, 56(%rsp)
	.loc	27 0 8 is_stmt 0
.Ltmp100:
	.p2align	4
.LBB26_1:
	movb	$1, %r9b
	movl	$14, %r8d
	xorl	%ecx, %ecx
	movq	%rax, 48(%rsp)
	.p2align	4
.LBB26_2:
	.loc	27 20 8 is_stmt 1
	cmpq	$8, %r8
	movl	$8, %r10d
	movl	$14, %eax
	movl	$8, %esi
	movq	56(%rsp), %r14
	leaq	(%rdx,%rcx,4), %rbx
	cmovbq	%r8, %r10
	subq	%rcx, %rax
	cmpq	$8, %rax
	cmovaeq	%rsi, %rax
	movq	40(%rsp), %rsi
	xorl	%r15d, %r15d
	.loc	27 9 8
	vmovd	%eax, %xmm3
	vpbroadcastd	%xmm3, %ymm3
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	.loc	27 20 8
	leaq	(%rsi,%rcx,4), %rdi
	.loc	27 9 8
	vmaskmovps	%ymm1, %ymm3, 128(%rsp)
	.loc	27 0 8 is_stmt 0
.Ltmp101:
	.p2align	4
.LBB26_3:
	xorl	%eax, %eax
	.p2align	4
.LBB26_4:
	.loc	27 20 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm3
	vmovss	%xmm3, 64(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r10
	jne	.LBB26_4
	.loc	27 0 8 is_stmt 0
	movq	%r14, %r12
	movq	%rdi, %r11
	xorl	%esi, %esi
	.p2align	4
.LBB26_6:
	movq	%r11, %r13
	xorl	%ecx, %ecx
	.p2align	4
.LBB26_7:
	vmovss	64(%rsp,%rcx,4), %xmm3
	xorl	%eax, %eax
	.p2align	4
.LBB26_8:
	.loc	27 20 8 is_stmt 1
	vmovss	(%r13,%rax,4), %xmm4
	.loc	27 23 10
	vfmadd231ss	(%r12,%rax,4), %xmm4, %xmm3
	.loc	27 20 8
	incq	%rax
	cmpq	$5, %rax
	jne	.LBB26_8
	vmovss	%xmm3, 64(%rsp,%rcx,4)
	incq	%rcx
	addq	$4, %r13
	cmpq	%r10, %rcx
	jne	.LBB26_7
	incq	%rsi
	addq	$72, %r11
	addq	$20, %r12
	cmpq	$5, %rsi
	jne	.LBB26_6
	.loc	27 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB26_12:
	.loc	27 20 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm3
	vmovss	%xmm3, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r10
	jne	.LBB26_12
	.loc	27 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB26_14:
	.loc	27 20 8 is_stmt 1
	vmovss	64(%rsp,%rax,4), %xmm3
	vmovss	%xmm3, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %r10
	jne	.LBB26_14
	.loc	27 0 8 is_stmt 0
	xorl	%ecx, %ecx
	.p2align	4
.LBB26_16:
	.loc	27 26 8 is_stmt 1
	vmovss	192(%rsp,%rcx,4), %xmm3
	vaddss	%xmm2, %xmm3, %xmm4
	vcmpless	%xmm2, %xmm3, %xmm3
	vandnps	%xmm4, %xmm3, %xmm3
	vmovss	%xmm3, (%rbx,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %r10
	jne	.LBB26_16
	.loc	27 20 8
	incq	%r15
	addq	$1296, %rdi
	addq	$100, %r14
	addq	$784, %rbx
	cmpq	$32, %r15
	jne	.LBB26_3
	addq	$-8, %r8
	movl	$8, %ecx
	testb	$1, %r9b
	movl	$0, %r9d
	jne	.LBB26_2
	.loc	27 0 8 is_stmt 0
	movq	48(%rsp), %rax
	.loc	27 20 8
	addq	$72, 40(%rsp)
	addq	$56, %rdx
	incq	%rax
	cmpq	$14, %rax
	jne	.LBB26_1
	.loc	27 34 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	27 34 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp102:
.Lfunc_end26:
	.size	main_graph$async_dispatch_34_conv_14x14x512x5x5_f32, .Lfunc_end26-main_graph$async_dispatch_34_conv_14x14x512x5x5_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_35_matmul_like_256x196x512_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_35_matmul_like_256x196x512_f32,@function
main_graph$async_dispatch_35_matmul_like_256x196x512_f32:
.Lfunc_begin27:
	.file	28 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_35.mlir"
	.loc	28 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp103:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	28 13 8 prologue_end
	movq	32(%rsi), %rcx
	.loc	28 20 8
	movl	(%rdx), %r8d
	movl	$2007040, %eax
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	28 13 8
	movq	(%rcx), %rsi
	.loc	28 14 8
	movq	8(%rcx), %rdi
	.loc	28 20 8
	movl	%r8d, %r9d
	andl	$3, %r9d
	.loc	28 15 8
	addq	16(%rcx), %rax
	.loc	28 20 8
	movq	%r8, %rcx
	shrl	$2, %r8d
	shlq	$4, %rcx
	imulq	$49, %r9, %rdx
	imulq	$196, %r9, %r9
	shlq	$17, %r8
	andq	$-64, %rcx
	leaq	172060(%r8,%rdi), %rdi
	leaq	1611120(%r9,%rsi), %rsi
	xorl	%r8d, %r8d
	.loc	28 0 8 is_stmt 0
.Ltmp104:
	.p2align	4
.LBB27_1:
	.loc	28 20 8
	movq	%r8, %r9
	orq	%rcx, %r9
	movq	%rsi, %r10
	xorl	%r11d, %r11d
	imulq	$784, %r9, %r9
	addq	%rax, %r9
	.loc	28 0 8
.Ltmp105:
	.p2align	4
.LBB27_2:
	.loc	28 20 8
	leaq	(%r11,%rdx), %rbx
	movq	$-8, %r14
	vxorps	%xmm1, %xmm1, %xmm1
	movq	%r10, %r15
	.loc	28 0 8
.Ltmp106:
	.p2align	4
.LBB27_3:
	.loc	28 20 8
	vmovss	-5488(%r15), %xmm2
	vmovss	-4704(%r15), %xmm3
	vmovss	-3920(%r15), %xmm4
	vmovss	-3136(%r15), %xmm5
	vmovss	-2352(%r15), %xmm6
	vmovss	-1568(%r15), %xmm7
	vmovss	-784(%r15), %xmm8
	vmovss	(%r15), %xmm9
	addq	$6272, %r15
	.loc	28 23 10 is_stmt 1
	vfmadd132ss	4(%rdi,%r14,4), %xmm1, %xmm2
	vfmadd231ss	8(%rdi,%r14,4), %xmm3, %xmm2
	vfmadd231ss	12(%rdi,%r14,4), %xmm4, %xmm2
	vfmadd231ss	16(%rdi,%r14,4), %xmm5, %xmm2
	vfmadd231ss	20(%rdi,%r14,4), %xmm6, %xmm2
	vfmadd231ss	24(%rdi,%r14,4), %xmm7, %xmm2
	vfmadd231ss	28(%rdi,%r14,4), %xmm8, %xmm2
	vmovaps	%xmm2, %xmm1
	vfmadd231ss	32(%rdi,%r14,4), %xmm9, %xmm1
	.loc	28 20 8
	addq	$8, %r14
	cmpq	$504, %r14
	jb	.LBB27_3
	vaddss	%xmm0, %xmm1, %xmm2
	vcmpless	%xmm0, %xmm1, %xmm1
	incq	%r11
	addq	$4, %r10
	vandnps	%xmm2, %xmm1, %xmm1
	vmovss	%xmm1, (%r9,%rbx,4)
	cmpq	$49, %r11
	jne	.LBB27_2
	incq	%r8
	addq	$2048, %rdi
	cmpq	$64, %r8
	jne	.LBB27_1
	.loc	28 34 8
	xorl	%eax, %eax
	.loc	28 34 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp107:
.Lfunc_end27:
	.size	main_graph$async_dispatch_35_matmul_like_256x196x512_f32, .Lfunc_end27-main_graph$async_dispatch_35_matmul_like_256x196x512_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI28_0:
	.long	0x3f000000
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI28_1:
	.quad	0
	.quad	1
	.quad	2
	.quad	3
.LCPI28_2:
	.quad	4
	.quad	5
	.quad	6
	.quad	7
.LCPI28_3:
	.quad	12
	.quad	12
	.quad	13
	.quad	13
	.section	".text.main_graph$async_dispatch_36_elementwise_256x28x28_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_36_elementwise_256x28x28_f32,@function
main_graph$async_dispatch_36_elementwise_256x28x28_f32:
.Lfunc_begin28:
	.file	29 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_36.mlir"
	.loc	29 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp108:
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
	.loc	29 20 8 prologue_end
	movl	(%rdx), %edx
	.loc	29 14 8
	movq	32(%rsi), %rcx
	movl	$14, %edi
	vmovss	.LCPI28_0(%rip), %xmm0
	vmovdqa	.LCPI28_1(%rip), %ymm1
	vmovdqa	.LCPI28_2(%rip), %ymm2
	vbroadcastss	.LCPI28_0(%rip), %ymm3
	vmovdqa	.LCPI28_3(%rip), %ymm4
	.loc	29 20 8
	movl	%edx, %esi
	andl	$-2, %esi
	.loc	29 14 8
	movq	(%rcx), %rax
	.loc	29 16 8
	movq	8(%rcx), %rcx
	.loc	29 20 8
	shlq	$4, %rsi
	movq	%rsi, -56(%rbp)
	xorl	%esi, %esi
	testb	$1, %dl
	cmoveq	%rsi, %rdi
	shrl	%edx
	imulq	$100352, %rdx, %r8
	imulq	$112, %rdi, %r9
	shlq	$17, %rdx
	movq	%rdi, -88(%rbp)
	orq	%r8, %r9
	leaq	2408448(%rax,%r9), %r12
	movl	%edi, %r9d
	shll	$7, %r9d
	orq	%rdx, %r9
	leaq	7093576(%rcx,%r9), %r15
	.loc	29 16 8
	addq	$7093312, %rcx
	movq	%rcx, -48(%rbp)
	.loc	29 0 8 is_stmt 0
.Ltmp109:
	.p2align	4
.LBB28_1:
	movq	%rsi, -80(%rbp)
	.loc	29 20 8 is_stmt 1
	orq	-56(%rbp), %rsi
	xorl	%r13d, %r13d
	movq	%r15, -64(%rbp)
	movq	%r12, -72(%rbp)
	.loc	29 37 10
	movq	%rsi, %rdx
	leaq	(%rsi,%rsi), %rcx
	imulq	$3136, %rsi, %rdi
	shlq	$12, %rsi
	addq	-48(%rbp), %rsi
	shlq	$4, %rdx
	subq	%rcx, %rdx
	leaq	2408448(%rax), %rcx
	movq	%rdx, -104(%rbp)
	addq	%rcx, %rdi
	movq	%rdi, -96(%rbp)
	movq	%rsi, -112(%rbp)
	.loc	29 0 10 is_stmt 0
.Ltmp110:
	.p2align	4
.LBB28_2:
	movq	-88(%rbp), %rcx
	.loc	29 20 8 is_stmt 1
	addq	%r13, %rcx
	.loc	29 26 10
	vcvtsi2ss	%rcx, %xmm15, %xmm5
	imulq	$112, %rcx, %rsi
	shlq	$7, %rcx
	.loc	29 27 10
	vmulss	%xmm0, %xmm5, %xmm5
	movq	%rsi, -120(%rbp)
	.loc	29 28 10
	vroundss	$9, %xmm5, %xmm5, %xmm5
	.loc	29 29 10
	vcvttss2si	%xmm5, %rdx
	.loc	29 37 10
	addq	-104(%rbp), %rdx
	leaq	(%rdx,%rdx), %r10
	shlq	$4, %rdx
	subq	%r10, %rdx
	vmovq	%rdx, %xmm5
	xorl	%edx, %edx
	vpbroadcastq	%xmm5, %ymm5
	.loc	29 0 10 is_stmt 0
.Ltmp111:
	.p2align	4
.LBB28_3:
	.loc	29 20 8 is_stmt 1
	vmovq	%rdx, %xmm6
	cmpq	$16, %rdx
	vpbroadcastq	%xmm6, %ymm6
	.loc	29 24 10
	vpor	%ymm1, %ymm6, %ymm7
	vpor	%ymm2, %ymm6, %ymm6
	.loc	29 32 10
	vpextrq	$1, %xmm6, %r8
	vmovq	%xmm6, %rdi
	vextracti128	$1, %ymm6, %xmm6
	vmovq	%xmm7, %rsi
	vcvtsi2ss	%r8, %xmm15, %xmm8
	vcvtsi2ss	%rdi, %xmm15, %xmm9
	vmovq	%xmm6, %r8
	vinsertps	$16, %xmm8, %xmm9, %xmm8
	vcvtsi2ss	%r8, %xmm15, %xmm9
	vpextrq	$1, %xmm6, %r8
	vcvtsi2ss	%r8, %xmm15, %xmm6
	vpextrq	$1, %xmm7, %r8
	vextracti128	$1, %ymm7, %xmm7
	vinsertps	$32, %xmm9, %xmm8, %xmm8
	vcvtsi2ss	%rsi, %xmm15, %xmm9
	vinsertps	$48, %xmm6, %xmm8, %xmm6
	vcvtsi2ss	%r8, %xmm15, %xmm8
	vmovq	%xmm7, %r8
	vinsertps	$16, %xmm8, %xmm9, %xmm8
	vcvtsi2ss	%r8, %xmm15, %xmm9
	vpextrq	$1, %xmm7, %r8
	vcvtsi2ss	%r8, %xmm15, %xmm7
	vinsertps	$32, %xmm9, %xmm8, %xmm8
	vinsertps	$48, %xmm7, %xmm8, %xmm7
	vinsertf128	$1, %xmm6, %ymm7, %ymm6
	.loc	29 33 10
	vmulps	%ymm3, %ymm6, %ymm6
	.loc	29 34 10
	vroundps	$9, %ymm6, %ymm6
	.loc	29 35 10
	vshufpd	$1, %xmm6, %xmm6, %xmm8
	vshufps	$255, %xmm6, %xmm6, %xmm7
	vmovshdup	%xmm6, %xmm9
	vcvttss2si	%xmm6, %rsi
	vextractf128	$1, %ymm6, %xmm6
	vcvttss2si	%xmm8, %rdi
	vcvttss2si	%xmm7, %r8
	vmovq	%rdi, %xmm8
	vcvttss2si	%xmm9, %rdi
	vmovq	%r8, %xmm7
	vpunpcklqdq	%xmm7, %xmm8, %xmm7
	vmovq	%rsi, %xmm8
	vmovq	%rdi, %xmm9
	vpunpcklqdq	%xmm9, %xmm8, %xmm8
	vinserti128	$1, %xmm7, %ymm8, %ymm7
	vshufps	$255, %xmm6, %xmm6, %xmm8
	vcvttss2si	%xmm8, %r8
	vshufpd	$1, %xmm6, %xmm6, %xmm8
	vcvttss2si	%xmm8, %r9
	.loc	29 37 10
	vpaddq	%ymm7, %ymm5, %ymm7
	.loc	29 35 10
	vmovq	%r8, %xmm8
	vcvttss2si	%xmm6, %r8
	vmovshdup	%xmm6, %xmm6
	vcvttss2si	%xmm6, %rsi
	vmovq	%r9, %xmm9
	.loc	29 37 10
	vpextrq	$1, %xmm7, %r9
	.loc	29 35 10
	vmovq	%r8, %xmm10
	vpunpcklqdq	%xmm8, %xmm9, %xmm8
	.loc	29 37 10
	vmovq	%xmm7, %r8
	vextracti128	$1, %ymm7, %xmm7
	.loc	29 35 10
	vmovq	%rsi, %xmm6
	vpunpcklqdq	%xmm6, %xmm10, %xmm6
	vinserti128	$1, %xmm8, %ymm6, %ymm6
	.loc	29 37 10
	vmovq	%xmm7, %rsi
	vpextrq	$1, %xmm7, %rdi
	vmovss	2007040(%rax,%r8,4), %xmm7
	vpaddq	%ymm6, %ymm5, %ymm6
	vinsertps	$16, 2007040(%rax,%r9,4), %xmm7, %xmm7
	vmovq	%xmm6, %r14
	vpextrq	$1, %xmm6, %rbx
	vextracti128	$1, %ymm6, %xmm6
	vinsertps	$32, 2007040(%rax,%rsi,4), %xmm7, %xmm7
	vinsertps	$48, 2007040(%rax,%rdi,4), %xmm7, %xmm7
	vmovq	%xmm6, %r11
	vpextrq	$1, %xmm6, %r10
	vmovss	2007040(%rax,%r14,4), %xmm6
	vinsertps	$16, 2007040(%rax,%rbx,4), %xmm6, %xmm6
	vinsertps	$32, 2007040(%rax,%r11,4), %xmm6, %xmm6
	vinsertps	$48, 2007040(%rax,%r10,4), %xmm6, %xmm6
	vinsertf128	$1, %xmm6, %ymm7, %ymm6
	.loc	29 38 10
	vaddps	(%r12,%rdx,4), %ymm6, %ymm6
	.loc	29 20 8
	vmovups	%ymm6, (%r15,%rdx,4)
	leaq	8(%rdx), %rdx
	jb	.LBB28_3
	.loc	29 37 10
	vpaddq	%ymm4, %ymm5, %ymm5
	.loc	29 20 8
	incq	%r13
	addq	$112, %r12
	subq	$-128, %r15
	.loc	29 37 10
	vmovq	%xmm5, %rdx
	vpextrq	$1, %xmm5, %rsi
	vextracti128	$1, %ymm5, %xmm5
	vmovq	%xmm5, %rdi
	vpextrq	$1, %xmm5, %r8
	vmovss	2007040(%rax,%rdx,4), %xmm5
	movq	-96(%rbp), %rdx
	vinsertps	$16, 2007040(%rax,%rsi,4), %xmm5, %xmm5
	movq	-120(%rbp), %rsi
	vinsertps	$32, 2007040(%rax,%rdi,4), %xmm5, %xmm5
	vinsertps	$48, 2007040(%rax,%r8,4), %xmm5, %xmm5
	.loc	29 38 10
	vaddps	96(%rdx,%rsi), %xmm5, %xmm5
	movq	-112(%rbp), %rdx
	.loc	29 20 8
	vmovups	%xmm5, 360(%rdx,%rcx)
	cmpq	$14, %r13
	jne	.LBB28_2
	.loc	29 0 8 is_stmt 0
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %r12
	movq	-64(%rbp), %r15
	.loc	29 20 8
	incq	%rsi
	addq	$3136, %r12
	addq	$4096, %r15
	cmpq	$32, %rsi
	jne	.LBB28_1
	.loc	29 42 8 is_stmt 1
	xorl	%eax, %eax
	.loc	29 42 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp112:
.Lfunc_end28:
	.size	main_graph$async_dispatch_36_elementwise_256x28x28_f32, .Lfunc_end28-main_graph$async_dispatch_36_elementwise_256x28x28_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI29_0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	".text.main_graph$async_dispatch_37_conv_28x28x256x5x5_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_37_conv_28x28x256x5x5_f32,@function
main_graph$async_dispatch_37_conv_28x28x256x5x5_f32:
.Lfunc_begin29:
	.file	30 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_37.mlir"
	.loc	30 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp113:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$320, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	30 20 8 prologue_end
	movl	(%rdx), %edx
	.loc	30 13 8
	movq	32(%rsi), %rax
	vmovdqa	.LCPI29_0(%rip), %ymm0
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	.loc	30 20 8
	movl	%edx, %esi
	shrl	$3, %esi
	andl	$7, %edx
	.loc	30 13 8
	movq	(%rax), %rcx
	.loc	30 20 8
	imulq	$1792, %rsi, %r9
	imulq	$3200, %rdx, %rdi
	imulq	$100352, %rdx, %r8
	shll	$17, %edx
	addq	%rdx, %r9
	.loc	30 14 8
	movq	8(%rax), %rdx
	.loc	30 15 8
	movq	16(%rax), %rax
	.loc	30 20 8
	leaq	7093312(%rcx,%r9), %r9
	leaq	15371008(%rdi,%rdx), %rcx
	movq	%rcx, 48(%rsp)
	imulq	$1568, %rsi, %rcx
	addq	%r8, %rcx
	leaq	1605632(%rax,%rcx), %r8
	xorl	%eax, %eax
	.loc	30 0 8 is_stmt 0
.Ltmp114:
	.p2align	4
.LBB29_1:
	movl	$28, %r10d
	movq	%rax, 24(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r9, 40(%rsp)
	movq	%r9, %rdi
	xorl	%ecx, %ecx
	.p2align	4
.LBB29_2:
	.loc	30 20 8 is_stmt 1
	cmpq	$8, %r10
	movl	$8, %ebx
	movl	$28, %eax
	movq	%rcx, 56(%rsp)
	movq	%r8, %r14
	movq	%rdi, %rsi
	cmovbq	%r10, %rbx
	subq	%rcx, %rax
	movl	$8, %ecx
	cmpq	$8, %rax
	cmovaeq	%rcx, %rax
	movq	48(%rsp), %rcx
	xorl	%r13d, %r13d
	.loc	30 9 8
	vmovd	%eax, %xmm3
	vpbroadcastd	%xmm3, %ymm3
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vmaskmovps	%ymm1, %ymm3, 128(%rsp)
	.loc	30 0 8 is_stmt 0
.Ltmp115:
	.p2align	4
.LBB29_3:
	xorl	%eax, %eax
	.p2align	4
.LBB29_4:
	.loc	30 20 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm3
	vmovss	%xmm3, 64(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB29_4
	.loc	30 0 8 is_stmt 0
	movq	%rcx, %r15
	movq	%rsi, %r9
	xorl	%edx, %edx
	.p2align	4
.LBB29_6:
	movq	%r9, %r12
	xorl	%eax, %eax
	.p2align	4
.LBB29_7:
	vmovss	64(%rsp,%rax,4), %xmm3
	xorl	%r11d, %r11d
	.p2align	4
.LBB29_8:
	.loc	30 20 8 is_stmt 1
	vmovss	(%r12,%r11,4), %xmm4
	.loc	30 23 10
	vfmadd231ss	(%r15,%r11,4), %xmm4, %xmm3
	.loc	30 20 8
	incq	%r11
	cmpq	$5, %r11
	jne	.LBB29_8
	vmovss	%xmm3, 64(%rsp,%rax,4)
	incq	%rax
	addq	$4, %r12
	cmpq	%rbx, %rax
	jne	.LBB29_7
	incq	%rdx
	subq	$-128, %r9
	addq	$20, %r15
	cmpq	$5, %rdx
	jne	.LBB29_6
	.loc	30 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB29_12:
	.loc	30 20 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm3
	vmovss	%xmm3, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB29_12
	.loc	30 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB29_14:
	.loc	30 20 8 is_stmt 1
	vmovss	64(%rsp,%rax,4), %xmm3
	vmovss	%xmm3, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB29_14
	.loc	30 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB29_16:
	.loc	30 26 8 is_stmt 1
	vmovss	192(%rsp,%rax,4), %xmm3
	vaddss	%xmm2, %xmm3, %xmm4
	vcmpless	%xmm2, %xmm3, %xmm3
	vandnps	%xmm4, %xmm3, %xmm3
	vmovss	%xmm3, (%r14,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB29_16
	.loc	30 20 8
	incq	%r13
	addq	$4096, %rsi
	addq	$100, %rcx
	addq	$3136, %r14
	cmpq	$32, %r13
	jne	.LBB29_3
	.loc	30 0 8 is_stmt 0
	movq	56(%rsp), %rax
	.loc	30 20 8
	addq	$-8, %r10
	addq	$32, %rdi
	addq	$32, %r8
	leaq	8(%rax), %rcx
	cmpq	$20, %rax
	jb	.LBB29_2
	.loc	30 0 8
	movq	24(%rsp), %rax
	movq	40(%rsp), %r9
	movq	32(%rsp), %r8
	.loc	30 20 8
	incq	%rax
	subq	$-128, %r9
	addq	$112, %r8
	cmpq	$14, %rax
	jne	.LBB29_1
	.loc	30 34 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	30 34 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp116:
.Lfunc_end29:
	.size	main_graph$async_dispatch_37_conv_28x28x256x5x5_f32, .Lfunc_end29-main_graph$async_dispatch_37_conv_28x28x256x5x5_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_38_matmul_like_128x784x256_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_38_matmul_like_128x784x256_f32,@function
main_graph$async_dispatch_38_matmul_like_128x784x256_f32:
.Lfunc_begin30:
	.file	31 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_38.mlir"
	.loc	31 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp117:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	31 13 8 prologue_end
	movq	32(%rsi), %rcx
	movl	$2408448, %eax
	movl	$2454267027, %r8d
	vxorps	%xmm0, %xmm0, %xmm0
	movq	(%rcx), %rsi
	.loc	31 14 8
	movq	8(%rcx), %rdi
	.loc	31 15 8
	addq	16(%rcx), %rax
	.loc	31 20 8
	movl	(%rdx), %ecx
	movl	%ecx, %edx
	shrl	%edx
	imulq	%rdx, %r8
	shrq	$34, %r8
	movl	%r8d, %edx
	shll	$4, %edx
	leal	(%r8,%r8), %r9d
	subl	%edx, %r9d
	addl	%ecx, %r9d
	movq	%r8, %rcx
	shlq	$16, %r8
	shlq	$6, %rcx
	imull	$56, %r9d, %edx
	leaq	40988(%r8,%rdi), %rdi
	xorl	%r8d, %r8d
	leaq	1627584(%rsi,%rdx,4), %rsi
	.loc	31 0 8 is_stmt 0
.Ltmp118:
	.p2align	4
.LBB30_1:
	.loc	31 20 8
	leaq	(%r8,%rcx), %r9
	movq	%rsi, %r10
	xorl	%r11d, %r11d
	imulq	$3136, %r9, %r9
	addq	%rax, %r9
	.loc	31 0 8
.Ltmp119:
	.p2align	4
.LBB30_2:
	.loc	31 20 8
	leaq	(%r11,%rdx), %rbx
	movq	$-8, %r14
	vxorps	%xmm1, %xmm1, %xmm1
	movq	%r10, %r15
	.loc	31 0 8
.Ltmp120:
	.p2align	4
.LBB30_3:
	.loc	31 20 8
	vmovss	-21952(%r15), %xmm2
	vmovss	-18816(%r15), %xmm3
	vmovss	-15680(%r15), %xmm4
	vmovss	-12544(%r15), %xmm5
	vmovss	-9408(%r15), %xmm6
	vmovss	-6272(%r15), %xmm7
	vmovss	-3136(%r15), %xmm8
	vmovss	(%r15), %xmm9
	addq	$25088, %r15
	.loc	31 23 10 is_stmt 1
	vfmadd132ss	4(%rdi,%r14,4), %xmm1, %xmm2
	vfmadd231ss	8(%rdi,%r14,4), %xmm3, %xmm2
	vfmadd231ss	12(%rdi,%r14,4), %xmm4, %xmm2
	vfmadd231ss	16(%rdi,%r14,4), %xmm5, %xmm2
	vfmadd231ss	20(%rdi,%r14,4), %xmm6, %xmm2
	vfmadd231ss	24(%rdi,%r14,4), %xmm7, %xmm2
	vfmadd231ss	28(%rdi,%r14,4), %xmm8, %xmm2
	vmovaps	%xmm2, %xmm1
	vfmadd231ss	32(%rdi,%r14,4), %xmm9, %xmm1
	.loc	31 20 8
	addq	$8, %r14
	cmpq	$248, %r14
	jb	.LBB30_3
	vaddss	%xmm0, %xmm1, %xmm2
	vcmpless	%xmm0, %xmm1, %xmm1
	incq	%r11
	addq	$4, %r10
	vandnps	%xmm2, %xmm1, %xmm1
	vmovss	%xmm1, (%r9,%rbx,4)
	cmpq	$56, %r11
	jne	.LBB30_2
	incq	%r8
	addq	$1024, %rdi
	cmpq	$64, %r8
	jne	.LBB30_1
	.loc	31 34 8
	xorl	%eax, %eax
	.loc	31 34 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp121:
.Lfunc_end30:
	.size	main_graph$async_dispatch_38_matmul_like_128x784x256_f32, .Lfunc_end30-main_graph$async_dispatch_38_matmul_like_128x784x256_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI31_0:
	.long	0x3f000000
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI31_1:
	.quad	0
	.quad	1
	.quad	2
	.quad	3
.LCPI31_2:
	.quad	4
	.quad	5
	.quad	6
	.quad	7
	.section	".text.main_graph$async_dispatch_39_elementwise_128x56x56_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_39_elementwise_128x56x56_f32,@function
main_graph$async_dispatch_39_elementwise_128x56x56_f32:
.Lfunc_begin31:
	.file	32 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_39.mlir"
	.loc	32 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp122:
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
	.loc	32 13 8 prologue_end
	movq	32(%rsi), %rcx
	.loc	32 19 8
	movl	(%rdx), %r9d
	movl	$28, %esi
	vmovss	.LCPI31_0(%rip), %xmm0
	vmovdqa	.LCPI31_1(%rip), %ymm1
	vmovdqa	.LCPI31_2(%rip), %ymm2
	vbroadcastss	.LCPI31_0(%rip), %ymm3
	.loc	32 13 8
	movq	(%rcx), %rax
	.loc	32 15 8
	movq	8(%rcx), %r8
	.loc	32 19 8
	movl	%r9d, %ecx
	andl	$-2, %ecx
	shlq	$3, %rcx
	movq	%rcx, -48(%rbp)
	xorl	%ecx, %ecx
	testb	$1, %r9b
	cmoveq	%rcx, %rsi
	shrl	%r9d
	imulq	$200704, %r9, %r10
	imulq	$224, %rsi, %r11
	imulq	$230400, %r9, %r9
	movq	%rsi, -80(%rbp)
	addq	%r10, %r11
	imulq	$240, %rsi, %r10
	addq	%rax, %r11
	addq	%r9, %r10
	leaq	7093800(%r8,%r10), %rdx
	.loc	32 0 8 is_stmt 0
.Ltmp123:
	.p2align	4
.LBB31_1:
	.loc	32 19 8
	movq	%rcx, %r10
	orq	-48(%rbp), %r10
	movq	%rcx, -72(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r11, -64(%rbp)
	xorl	%ebx, %ebx
	.loc	32 36 10 is_stmt 1
	leaq	(%r10,%r10,8), %r9
	leaq	(%r9,%r9,2), %r9
	addq	%r10, %r9
	movq	%rdx, %r10
	.loc	32 0 10 is_stmt 0
.Ltmp124:
	.p2align	4
.LBB31_2:
	movq	-80(%rbp), %rcx
	.loc	32 19 8 is_stmt 1
	leaq	(%rbx,%rcx), %r14
	.loc	32 25 10
	vcvtsi2ss	%r14, %xmm15, %xmm4
	.loc	32 26 10
	vmulss	%xmm0, %xmm4, %xmm4
	.loc	32 27 10
	vroundss	$9, %xmm4, %xmm4, %xmm4
	.loc	32 28 10
	vcvttss2si	%xmm4, %r14
	.loc	32 36 10
	addq	%r9, %r14
	leaq	(%r14,%r14,8), %r15
	leaq	(%r15,%r15,2), %r15
	addq	%r14, %r15
	xorl	%r14d, %r14d
	vmovq	%r15, %xmm4
	vpbroadcastq	%xmm4, %ymm4
	.loc	32 0 10 is_stmt 0
.Ltmp125:
	.p2align	4
.LBB31_3:
	.loc	32 19 8 is_stmt 1
	vmovq	%r14, %xmm5
	cmpq	$48, %r14
	vpbroadcastq	%xmm5, %ymm5
	.loc	32 23 10
	vpor	%ymm1, %ymm5, %ymm6
	vpor	%ymm2, %ymm5, %ymm5
	.loc	32 31 10
	vpextrq	$1, %xmm5, %r15
	vmovq	%xmm5, %rdx
	vextracti128	$1, %ymm5, %xmm5
	vmovq	%xmm6, %rcx
	vcvtsi2ss	%r15, %xmm15, %xmm7
	vcvtsi2ss	%rdx, %xmm15, %xmm8
	vmovq	%xmm5, %r15
	vinsertps	$16, %xmm7, %xmm8, %xmm7
	vcvtsi2ss	%r15, %xmm15, %xmm8
	vpextrq	$1, %xmm5, %r15
	vcvtsi2ss	%r15, %xmm15, %xmm5
	vpextrq	$1, %xmm6, %r15
	vextracti128	$1, %ymm6, %xmm6
	vinsertps	$32, %xmm8, %xmm7, %xmm7
	vcvtsi2ss	%rcx, %xmm15, %xmm8
	vinsertps	$48, %xmm5, %xmm7, %xmm5
	vcvtsi2ss	%r15, %xmm15, %xmm7
	vmovq	%xmm6, %r15
	vinsertps	$16, %xmm7, %xmm8, %xmm7
	vcvtsi2ss	%r15, %xmm15, %xmm8
	vpextrq	$1, %xmm6, %r15
	vcvtsi2ss	%r15, %xmm15, %xmm6
	vinsertps	$32, %xmm8, %xmm7, %xmm7
	vinsertps	$48, %xmm6, %xmm7, %xmm6
	vinsertf128	$1, %xmm5, %ymm6, %ymm5
	.loc	32 32 10
	vmulps	%ymm3, %ymm5, %ymm5
	.loc	32 33 10
	vroundps	$9, %ymm5, %ymm5
	.loc	32 34 10
	vshufpd	$1, %xmm5, %xmm5, %xmm7
	vshufps	$255, %xmm5, %xmm5, %xmm6
	vmovshdup	%xmm5, %xmm8
	vcvttss2si	%xmm5, %rcx
	vextractf128	$1, %ymm5, %xmm5
	vcvttss2si	%xmm7, %rdx
	vcvttss2si	%xmm6, %r15
	vmovq	%rdx, %xmm7
	vcvttss2si	%xmm8, %rdx
	vmovq	%r15, %xmm6
	vpunpcklqdq	%xmm6, %xmm7, %xmm6
	vmovq	%rcx, %xmm7
	vmovq	%rdx, %xmm8
	vpunpcklqdq	%xmm8, %xmm7, %xmm7
	vinserti128	$1, %xmm6, %ymm7, %ymm6
	vshufps	$255, %xmm5, %xmm5, %xmm7
	vcvttss2si	%xmm7, %r15
	vshufpd	$1, %xmm5, %xmm5, %xmm7
	vcvttss2si	%xmm7, %r12
	.loc	32 36 10
	vpaddq	%ymm6, %ymm4, %ymm6
	.loc	32 34 10
	vmovq	%r15, %xmm7
	vcvttss2si	%xmm5, %r15
	vmovshdup	%xmm5, %xmm5
	vcvttss2si	%xmm5, %rcx
	vmovq	%r12, %xmm8
	.loc	32 36 10
	vpextrq	$1, %xmm6, %r12
	.loc	32 34 10
	vmovq	%r15, %xmm9
	vpunpcklqdq	%xmm7, %xmm8, %xmm7
	.loc	32 36 10
	vmovq	%xmm6, %r15
	vextracti128	$1, %ymm6, %xmm6
	.loc	32 34 10
	vmovq	%rcx, %xmm5
	vpunpcklqdq	%xmm5, %xmm9, %xmm5
	vinserti128	$1, %xmm7, %ymm5, %ymm5
	.loc	32 36 10
	vmovq	%xmm6, %r13
	vpextrq	$1, %xmm6, %rcx
	vmovss	2408448(%rax,%r15,4), %xmm6
	vpaddq	%ymm5, %ymm4, %ymm5
	vinsertps	$16, 2408448(%rax,%r12,4), %xmm6, %xmm6
	vmovq	%xmm5, %rdi
	vpextrq	$1, %xmm5, %r8
	vextracti128	$1, %ymm5, %xmm5
	vinsertps	$32, 2408448(%rax,%r13,4), %xmm6, %xmm6
	vinsertps	$48, 2408448(%rax,%rcx,4), %xmm6, %xmm6
	vmovq	%xmm5, %rdx
	vpextrq	$1, %xmm5, %rsi
	vmovss	2408448(%rax,%rdi,4), %xmm5
	vinsertps	$16, 2408448(%rax,%r8,4), %xmm5, %xmm5
	vinsertps	$32, 2408448(%rax,%rdx,4), %xmm5, %xmm5
	vinsertps	$48, 2408448(%rax,%rsi,4), %xmm5, %xmm5
	vinsertf128	$1, %xmm5, %ymm6, %ymm5
	.loc	32 37 10
	vaddps	(%r11,%r14,4), %ymm5, %ymm5
	.loc	32 19 8
	vmovups	%ymm5, (%r10,%r14,4)
	leaq	8(%r14), %r14
	jb	.LBB31_3
	incq	%rbx
	addq	$224, %r11
	addq	$240, %r10
	cmpq	$28, %rbx
	jne	.LBB31_2
	.loc	32 0 8 is_stmt 0
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %r11
	movq	-56(%rbp), %rdx
	.loc	32 19 8
	incq	%rcx
	addq	$12544, %r11
	addq	$14400, %rdx
	cmpq	$16, %rcx
	jne	.LBB31_1
	.loc	32 41 8 is_stmt 1
	xorl	%eax, %eax
	.loc	32 41 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp126:
.Lfunc_end31:
	.size	main_graph$async_dispatch_39_elementwise_128x56x56_f32, .Lfunc_end31-main_graph$async_dispatch_39_elementwise_128x56x56_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI32_0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	".text.main_graph$async_dispatch_40_conv_56x56x128x5x5_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_40_conv_56x56x128x5x5_f32,@function
main_graph$async_dispatch_40_conv_56x56x128x5x5_f32:
.Lfunc_begin32:
	.file	33 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_40.mlir"
	.loc	33 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp127:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$320, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	33 20 8 prologue_end
	movl	(%rdx), %edx
	.loc	33 13 8
	movq	32(%rsi), %rcx
	vmovdqa	.LCPI32_0(%rip), %ymm0
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	.loc	33 20 8
	movl	%edx, %edi
	movl	%edx, %r8d
	shrl	$3, %edi
	andl	$3, %r8d
	.loc	33 13 8
	movq	(%rcx), %rax
	.loc	33 14 8
	movq	8(%rcx), %rsi
	.loc	33 20 8
	imulq	$460800, %r8, %r9
	imulq	$6720, %rdi, %r10
	addq	%r9, %r10
	xorl	%r9d, %r9d
	testb	$4, %dl
	movl	$112, %edx
	cmovel	%r9d, %edx
	imulq	$3200, %r8, %r11
	addq	%rdx, %r10
	leaq	7093312(%rax,%r10), %r10
	leaq	15358208(%r11,%rsi), %rax
	imulq	$401408, %r8, %rsi
	imulq	$6272, %rdi, %r8
	movq	%rax, 48(%rsp)
	addq	%rsi, %r8
	orq	%rdx, %r8
	addq	16(%rcx), %r8
	.loc	33 0 8 is_stmt 0
.Ltmp128:
	.p2align	4
.LBB32_1:
	movq	%r10, 32(%rsp)
	movq	%r10, %rdi
	movl	$28, %r10d
	xorl	%ecx, %ecx
	movq	%r9, 40(%rsp)
	movq	%r8, 24(%rsp)
	.p2align	4
.LBB32_2:
	.loc	33 20 8 is_stmt 1
	cmpq	$8, %r10
	movl	$8, %ebx
	movl	$28, %eax
	movq	%rcx, 56(%rsp)
	movq	48(%rsp), %rdx
	movq	%r8, %r14
	cmovbq	%r10, %rbx
	subq	%rcx, %rax
	movl	$8, %ecx
	cmpq	$8, %rax
	cmovaeq	%rcx, %rax
	movq	%rdi, %rcx
	xorl	%r13d, %r13d
	.loc	33 9 8
	vmovd	%eax, %xmm3
	vpbroadcastd	%xmm3, %ymm3
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vmaskmovps	%ymm1, %ymm3, 128(%rsp)
	.loc	33 0 8 is_stmt 0
.Ltmp129:
	.p2align	4
.LBB32_3:
	xorl	%eax, %eax
	.p2align	4
.LBB32_4:
	.loc	33 20 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm3
	vmovss	%xmm3, 64(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB32_4
	.loc	33 0 8 is_stmt 0
	movq	%rdx, %r15
	movq	%rcx, %r9
	xorl	%esi, %esi
	.p2align	4
.LBB32_6:
	movq	%r9, %r12
	xorl	%eax, %eax
	.p2align	4
.LBB32_7:
	vmovss	64(%rsp,%rax,4), %xmm3
	xorl	%r11d, %r11d
	.p2align	4
.LBB32_8:
	.loc	33 20 8 is_stmt 1
	vmovss	(%r12,%r11,4), %xmm4
	.loc	33 23 10
	vfmadd231ss	(%r15,%r11,4), %xmm4, %xmm3
	.loc	33 20 8
	incq	%r11
	cmpq	$5, %r11
	jne	.LBB32_8
	vmovss	%xmm3, 64(%rsp,%rax,4)
	incq	%rax
	addq	$4, %r12
	cmpq	%rbx, %rax
	jne	.LBB32_7
	incq	%rsi
	addq	$240, %r9
	addq	$20, %r15
	cmpq	$5, %rsi
	jne	.LBB32_6
	.loc	33 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB32_12:
	.loc	33 20 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm3
	vmovss	%xmm3, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB32_12
	.loc	33 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB32_14:
	.loc	33 20 8 is_stmt 1
	vmovss	64(%rsp,%rax,4), %xmm3
	vmovss	%xmm3, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB32_14
	.loc	33 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB32_16:
	.loc	33 26 8 is_stmt 1
	vmovss	192(%rsp,%rax,4), %xmm3
	vaddss	%xmm2, %xmm3, %xmm4
	vcmpless	%xmm2, %xmm3, %xmm3
	vandnps	%xmm4, %xmm3, %xmm3
	vmovss	%xmm3, (%r14,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB32_16
	.loc	33 20 8
	incq	%r13
	addq	$14400, %rcx
	addq	$100, %rdx
	addq	$12544, %r14
	cmpq	$32, %r13
	jne	.LBB32_3
	.loc	33 0 8 is_stmt 0
	movq	56(%rsp), %rax
	.loc	33 20 8
	addq	$-8, %r10
	addq	$32, %rdi
	addq	$32, %r8
	leaq	8(%rax), %rcx
	cmpq	$20, %rax
	jb	.LBB32_2
	.loc	33 0 8
	movq	40(%rsp), %r9
	movq	32(%rsp), %r10
	movq	24(%rsp), %r8
	.loc	33 20 8
	incq	%r9
	addq	$240, %r10
	addq	$224, %r8
	cmpq	$28, %r9
	jne	.LBB32_1
	.loc	33 34 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	33 34 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp130:
.Lfunc_end32:
	.size	main_graph$async_dispatch_40_conv_56x56x128x5x5_f32, .Lfunc_end32-main_graph$async_dispatch_40_conv_56x56x128x5x5_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_41_matmul_like_64x3136x128_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_41_matmul_like_64x3136x128_f32,@function
main_graph$async_dispatch_41_matmul_like_64x3136x128_f32:
.Lfunc_begin33:
	.file	34 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_41.mlir"
	.loc	34 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp131:
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.loc	34 20 8 prologue_end
	movl	(%rdx), %ecx
	.loc	34 13 8
	movq	32(%rsi), %rdi
	movl	$1605632, %eax
	movl	$8220, %esi
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	34 20 8
	movq	%rcx, %rdx
	shlq	$8, %rcx
	.loc	34 15 8
	addq	16(%rdi), %rax
	.loc	34 20 8
	addq	(%rdi), %rcx
	addq	8(%rdi), %rsi
	shlq	$6, %rdx
	xorl	%edi, %edi
	.loc	34 0 8 is_stmt 0
.Ltmp132:
	.p2align	4
.LBB33_1:
	imulq	$12544, %rdi, %r8
	movq	%rcx, %r9
	xorl	%r10d, %r10d
	addq	%rax, %r8
	.p2align	4
.LBB33_2:
	.loc	34 20 8 is_stmt 1
	leaq	(%r10,%rdx), %r11
	movq	$-8, %rbx
	vxorps	%xmm1, %xmm1, %xmm1
	movq	%r9, %r14
	.loc	34 0 8 is_stmt 0
.Ltmp133:
	.p2align	4
.LBB33_3:
	.loc	34 20 8
	vmovss	(%r14), %xmm2
	vmovss	12544(%r14), %xmm3
	vmovss	25088(%r14), %xmm4
	vmovss	37632(%r14), %xmm5
	vmovss	50176(%r14), %xmm6
	vmovss	62720(%r14), %xmm7
	vmovss	75264(%r14), %xmm8
	vmovss	87808(%r14), %xmm9
	addq	$100352, %r14
	.loc	34 23 10 is_stmt 1
	vfmadd132ss	4(%rsi,%rbx,4), %xmm1, %xmm2
	vfmadd231ss	8(%rsi,%rbx,4), %xmm3, %xmm2
	vfmadd231ss	12(%rsi,%rbx,4), %xmm4, %xmm2
	vfmadd231ss	16(%rsi,%rbx,4), %xmm5, %xmm2
	vfmadd231ss	20(%rsi,%rbx,4), %xmm6, %xmm2
	vfmadd231ss	24(%rsi,%rbx,4), %xmm7, %xmm2
	vfmadd231ss	28(%rsi,%rbx,4), %xmm8, %xmm2
	vmovaps	%xmm2, %xmm1
	vfmadd231ss	32(%rsi,%rbx,4), %xmm9, %xmm1
	.loc	34 20 8
	addq	$8, %rbx
	cmpq	$120, %rbx
	jb	.LBB33_3
	vaddss	%xmm0, %xmm1, %xmm2
	vcmpless	%xmm0, %xmm1, %xmm1
	incq	%r10
	addq	$4, %r9
	vandnps	%xmm2, %xmm1, %xmm1
	vmovss	%xmm1, (%r8,%r11,4)
	cmpq	$64, %r10
	jne	.LBB33_2
	incq	%rdi
	addq	$512, %rsi
	cmpq	$64, %rdi
	jne	.LBB33_1
	.loc	34 34 8
	xorl	%eax, %eax
	.loc	34 34 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp134:
.Lfunc_end33:
	.size	main_graph$async_dispatch_41_matmul_like_64x3136x128_f32, .Lfunc_end33-main_graph$async_dispatch_41_matmul_like_64x3136x128_f32
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI34_0:
	.long	0x3f000000
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI34_1:
	.quad	0
	.quad	1
	.quad	2
	.quad	3
.LCPI34_2:
	.quad	4
	.quad	5
	.quad	6
	.quad	7
	.section	".text.main_graph$async_dispatch_42_elementwise_64x112x112_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_42_elementwise_64x112x112_f32,@function
main_graph$async_dispatch_42_elementwise_64x112x112_f32:
.Lfunc_begin34:
	.file	35 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_42.mlir"
	.loc	35 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp135:
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
	.loc	35 14 8 prologue_end
	movq	32(%rsi), %rcx
	.loc	35 20 8
	movl	(%rdx), %r9d
	xorl	%esi, %esi
	movl	$56, %edx
	vmovss	.LCPI34_0(%rip), %xmm0
	vmovdqa	.LCPI34_1(%rip), %ymm1
	vmovdqa	.LCPI34_2(%rip), %ymm2
	vbroadcastss	.LCPI34_0(%rip), %ymm3
	.loc	35 14 8
	movq	(%rcx), %rax
	.loc	35 16 8
	movq	8(%rcx), %r8
	.loc	35 20 8
	leaq	(,%r9,4), %rcx
	andq	$-16, %rcx
	movq	%rcx, -48(%rbp)
	movq	%r9, %rcx
	shlq	$62, %rcx
	sarq	$63, %rcx
	andl	$56, %ecx
	testb	$1, %r9b
	cmoveq	%rsi, %rdx
	shrl	$2, %r9d
	imulq	$464, %rcx, %r11
	movq	%rcx, -88(%rbp)
	imulq	$861184, %r9, %r10
	leal	(,%rdx,4), %ebx
	imulq	$802816, %r9, %r9
	movq	%rdx, -80(%rbp)
	addq	%rbx, %r10
	addq	%r11, %r10
	leaq	7094248(%r8,%r10), %rdi
	imulq	$448, %rcx, %r10
	addq	%r9, %r10
	orq	%rbx, %r10
	leaq	3882048(%rax,%r10), %r11
	.loc	35 0 8 is_stmt 0
.Ltmp136:
	.p2align	4
.LBB34_1:
	.loc	35 20 8
	movq	%rsi, %r10
	orq	-48(%rbp), %r10
	movq	%rsi, -72(%rbp)
	movq	%r11, -56(%rbp)
	movq	%rdi, -64(%rbp)
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	.loc	35 37 10 is_stmt 1
	imulq	$56, %r10, %r10
	.loc	35 0 10 is_stmt 0
.Ltmp137:
	.p2align	4
.LBB34_2:
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %r12
	.loc	35 20 8 is_stmt 1
	leaq	(%r14,%rcx), %r15
	.loc	35 26 10
	vcvtsi2ss	%r15, %xmm15, %xmm4
	.loc	35 27 10
	vmulss	%xmm0, %xmm4, %xmm4
	.loc	35 28 10
	vroundss	$9, %xmm4, %xmm4, %xmm4
	.loc	35 29 10
	vcvttss2si	%xmm4, %r15
	.loc	35 37 10
	addq	%r10, %r15
	imulq	$56, %r15, %r15
	vmovq	%r15, %xmm4
	movq	$-8, %r15
	vpbroadcastq	%xmm4, %ymm4
	.loc	35 0 10 is_stmt 0
.Ltmp138:
	.p2align	4
.LBB34_3:
	.loc	35 20 8 is_stmt 1
	vmovq	%r12, %xmm5
	addq	$8, %r12
	vpbroadcastq	%xmm5, %ymm5
	.loc	35 24 10
	vpor	%ymm1, %ymm5, %ymm6
	vpor	%ymm2, %ymm5, %ymm5
	.loc	35 32 10
	vpextrq	$1, %xmm5, %r13
	vmovq	%xmm5, %rcx
	vextracti128	$1, %ymm5, %xmm5
	vmovq	%xmm6, %rdx
	vpextrq	$1, %xmm6, %r8
	vextracti128	$1, %ymm6, %xmm6
	vcvtsi2ss	%r13, %xmm15, %xmm7
	vcvtsi2ss	%rcx, %xmm15, %xmm8
	vcvtsi2ss	%rdx, %xmm15, %xmm10
	vmovq	%xmm5, %rcx
	vpextrq	$1, %xmm5, %r13
	vcvtsi2ss	%r8, %xmm15, %xmm5
	vinsertps	$16, %xmm7, %xmm8, %xmm7
	vcvtsi2ss	%rcx, %xmm15, %xmm9
	vmovq	%xmm6, %rcx
	vcvtsi2ss	%r13, %xmm15, %xmm11
	vcvtsi2ss	%rcx, %xmm15, %xmm8
	vpextrq	$1, %xmm6, %rcx
	vcvtsi2ss	%rcx, %xmm15, %xmm6
	vinsertps	$16, %xmm5, %xmm10, %xmm5
	vinsertps	$32, %xmm9, %xmm7, %xmm7
	vinsertps	$32, %xmm8, %xmm5, %xmm5
	vinsertps	$48, %xmm11, %xmm7, %xmm7
	vinsertps	$48, %xmm6, %xmm5, %xmm5
	vinsertf128	$1, %xmm7, %ymm5, %ymm5
	.loc	35 33 10
	vmulps	%ymm3, %ymm5, %ymm5
	.loc	35 34 10
	vroundps	$9, %ymm5, %ymm5
	.loc	35 35 10
	vshufps	$255, %xmm5, %xmm5, %xmm6
	vmovshdup	%xmm5, %xmm9
	vcvttss2si	%xmm5, %rsi
	vcvttss2si	%xmm6, %rcx
	vshufpd	$1, %xmm5, %xmm5, %xmm6
	vcvttss2si	%xmm9, %rdx
	vextractf128	$1, %ymm5, %xmm5
	vcvttss2si	%xmm6, %r8
	vmovq	%rsi, %xmm8
	vmovq	%rcx, %xmm6
	vmovq	%r8, %xmm7
	vpunpcklqdq	%xmm6, %xmm7, %xmm6
	vmovq	%rdx, %xmm7
	vcvttss2si	%xmm5, %rsi
	vpunpcklqdq	%xmm7, %xmm8, %xmm7
	vinserti128	$1, %xmm6, %ymm7, %ymm6
	vshufps	$255, %xmm5, %xmm5, %xmm7
	vmovq	%rsi, %xmm9
	vcvttss2si	%xmm7, %rcx
	vshufpd	$1, %xmm5, %xmm5, %xmm7
	vmovshdup	%xmm5, %xmm5
	vcvttss2si	%xmm7, %r8
	vcvttss2si	%xmm5, %rdx
	.loc	35 37 10
	vpaddq	%ymm6, %ymm4, %ymm6
	.loc	35 35 10
	vmovq	%rcx, %xmm7
	.loc	35 37 10
	vmovq	%xmm6, %rcx
	.loc	35 35 10
	vmovq	%r8, %xmm8
	vmovq	%rdx, %xmm5
	.loc	35 37 10
	vpextrq	$1, %xmm6, %r8
	vextracti128	$1, %ymm6, %xmm6
	.loc	35 35 10
	vpunpcklqdq	%xmm7, %xmm8, %xmm7
	vpunpcklqdq	%xmm5, %xmm9, %xmm5
	vinserti128	$1, %xmm7, %ymm5, %ymm5
	.loc	35 37 10
	vpaddq	%ymm5, %ymm4, %ymm5
	vmovq	%xmm6, %r13
	vpextrq	$1, %xmm6, %r9
	vmovq	%xmm5, %rsi
	vpextrq	$1, %xmm5, %rdx
	vextracti128	$1, %ymm5, %xmm5
	vmovss	1605632(%rax,%rsi,4), %xmm6
	vinsertps	$16, 1605632(%rax,%rdx,4), %xmm6, %xmm6
	vmovq	%xmm5, %rdi
	vpextrq	$1, %xmm5, %rdx
	vinsertps	$32, 1605632(%rax,%rdi,4), %xmm6, %xmm5
	vmovss	1605632(%rax,%rcx,4), %xmm6
	vinsertps	$16, 1605632(%rax,%r8,4), %xmm6, %xmm6
	vinsertps	$48, 1605632(%rax,%rdx,4), %xmm5, %xmm5
	vinsertps	$32, 1605632(%rax,%r13,4), %xmm6, %xmm6
	vinsertps	$48, 1605632(%rax,%r9,4), %xmm6, %xmm6
	vinsertf128	$1, %xmm5, %ymm6, %ymm5
	.loc	35 38 10
	vaddps	32(%r11,%r15,4), %ymm5, %ymm5
	.loc	35 20 8
	vmovups	%ymm5, 32(%rbx,%r15,4)
	addq	$8, %r15
	cmpq	$48, %r15
	jb	.LBB34_3
	incq	%r14
	addq	$464, %rbx
	addq	$448, %r11
	cmpq	$56, %r14
	jne	.LBB34_2
	.loc	35 0 8 is_stmt 0
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %r11
	.loc	35 20 8
	incq	%rsi
	addq	$53824, %rdi
	addq	$50176, %r11
	cmpq	$16, %rsi
	jne	.LBB34_1
	.loc	35 42 8 is_stmt 1
	xorl	%eax, %eax
	.loc	35 42 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp139:
.Lfunc_end34:
	.size	main_graph$async_dispatch_42_elementwise_64x112x112_f32, .Lfunc_end34-main_graph$async_dispatch_42_elementwise_64x112x112_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI35_0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	".text.main_graph$async_dispatch_43_conv_112x112x64x5x5_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_43_conv_112x112x64x5x5_f32,@function
main_graph$async_dispatch_43_conv_112x112x64x5x5_f32:
.Lfunc_begin35:
	.file	36 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_43.mlir"
	.loc	36 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp140:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$320, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	36 20 8 prologue_end
	movl	(%rdx), %edx
	.loc	36 13 8
	movq	32(%rsi), %rax
	.loc	36 20 8
	movl	$513, %r8d
	vmovdqa	.LCPI35_0(%rip), %ymm0
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	movl	%edx, %edi
	bextrl	%r8d, %edx, %r8d
	shrl	$3, %edi
	andl	$1, %edx
	.loc	36 13 8
	movq	(%rax), %rcx
	.loc	36 14 8
	movq	8(%rax), %rsi
	.loc	36 20 8
	imulq	$1722368, %rdx, %r9
	imulq	$12992, %rdi, %r10
	imulq	$112, %r8, %r8
	addq	%r9, %r10
	addq	%r8, %r10
	leaq	7093312(%rcx,%r10), %r9
	imulq	$3200, %rdx, %r10
	leaq	15351808(%r10,%rsi), %rcx
	imulq	$1605632, %rdx, %rsi
	imulq	$12544, %rdi, %rdx
	movq	%rcx, 48(%rsp)
	addq	%rsi, %rdx
	addq	%r8, %rdx
	addq	16(%rax), %rdx
	xorl	%eax, %eax
	.loc	36 0 8 is_stmt 0
.Ltmp141:
	.p2align	4
.LBB35_1:
	movl	$28, %r10d
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %r8
	movq	%r9, 40(%rsp)
	movq	%r9, %rdi
	xorl	%ecx, %ecx
	.p2align	4
.LBB35_2:
	.loc	36 20 8 is_stmt 1
	cmpq	$8, %r10
	movl	$8, %ebx
	movl	$28, %eax
	movq	%rcx, 56(%rsp)
	movq	%r8, %r14
	movq	%rdi, %rsi
	cmovbq	%r10, %rbx
	subq	%rcx, %rax
	movl	$8, %ecx
	cmpq	$8, %rax
	cmovaeq	%rcx, %rax
	movq	48(%rsp), %rcx
	xorl	%r13d, %r13d
	.loc	36 9 8
	vmovd	%eax, %xmm3
	vpbroadcastd	%xmm3, %ymm3
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vmaskmovps	%ymm1, %ymm3, 128(%rsp)
	.loc	36 0 8 is_stmt 0
.Ltmp142:
	.p2align	4
.LBB35_3:
	xorl	%eax, %eax
	.p2align	4
.LBB35_4:
	.loc	36 20 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm3
	vmovss	%xmm3, 64(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB35_4
	.loc	36 0 8 is_stmt 0
	movq	%rcx, %r15
	movq	%rsi, %r9
	xorl	%edx, %edx
	.p2align	4
.LBB35_6:
	movq	%r9, %r12
	xorl	%eax, %eax
	.p2align	4
.LBB35_7:
	vmovss	64(%rsp,%rax,4), %xmm3
	xorl	%r11d, %r11d
	.p2align	4
.LBB35_8:
	.loc	36 20 8 is_stmt 1
	vmovss	(%r12,%r11,4), %xmm4
	.loc	36 23 10
	vfmadd231ss	(%r15,%r11,4), %xmm4, %xmm3
	.loc	36 20 8
	incq	%r11
	cmpq	$5, %r11
	jne	.LBB35_8
	vmovss	%xmm3, 64(%rsp,%rax,4)
	incq	%rax
	addq	$4, %r12
	cmpq	%rbx, %rax
	jne	.LBB35_7
	incq	%rdx
	addq	$464, %r9
	addq	$20, %r15
	cmpq	$5, %rdx
	jne	.LBB35_6
	.loc	36 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB35_12:
	.loc	36 20 8 is_stmt 1
	vmovss	128(%rsp,%rax,4), %xmm3
	vmovss	%xmm3, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB35_12
	.loc	36 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB35_14:
	.loc	36 20 8 is_stmt 1
	vmovss	64(%rsp,%rax,4), %xmm3
	vmovss	%xmm3, 192(%rsp,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB35_14
	.loc	36 0 8 is_stmt 0
	xorl	%eax, %eax
	.p2align	4
.LBB35_16:
	.loc	36 26 8 is_stmt 1
	vmovss	192(%rsp,%rax,4), %xmm3
	vaddss	%xmm2, %xmm3, %xmm4
	vcmpless	%xmm2, %xmm3, %xmm3
	vandnps	%xmm4, %xmm3, %xmm3
	vmovss	%xmm3, (%r14,%rax,4)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB35_16
	.loc	36 20 8
	incq	%r13
	addq	$53824, %rsi
	addq	$100, %rcx
	addq	$50176, %r14
	cmpq	$32, %r13
	jne	.LBB35_3
	.loc	36 0 8 is_stmt 0
	movq	56(%rsp), %rax
	.loc	36 20 8
	addq	$-8, %r10
	addq	$32, %rdi
	addq	$32, %r8
	leaq	8(%rax), %rcx
	cmpq	$20, %rax
	jb	.LBB35_2
	.loc	36 0 8
	movq	24(%rsp), %rax
	movq	40(%rsp), %r9
	movq	32(%rsp), %rdx
	.loc	36 20 8
	incq	%rax
	addq	$464, %r9
	addq	$448, %rdx
	cmpq	$28, %rax
	jne	.LBB35_1
	.loc	36 34 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	36 34 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp143:
.Lfunc_end35:
	.size	main_graph$async_dispatch_43_conv_112x112x64x5x5_f32, .Lfunc_end35-main_graph$async_dispatch_43_conv_112x112x64x5x5_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_44_matmul_like_32x12544x64_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_44_matmul_like_32x12544x64_f32,@function
main_graph$async_dispatch_44_matmul_like_32x12544x64_f32:
.Lfunc_begin36:
	.file	37 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_44.mlir"
	.loc	37 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp144:
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.loc	37 12 8 prologue_end
	movq	32(%rsi), %rdi
	.loc	37 19 8
	movl	(%rdx), %edx
	movl	$3211264, %ecx
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	37 13 8
	movq	8(%rdi), %rax
	.loc	37 19 8
	movq	%rdx, %rsi
	shlq	$8, %rdx
	.loc	37 14 8
	addq	16(%rdi), %rcx
	.loc	37 19 8
	addq	(%rdi), %rdx
	shlq	$6, %rsi
	xorl	%edi, %edi
	addq	$28, %rax
	.loc	37 0 8 is_stmt 0
.Ltmp145:
	.p2align	4
.LBB36_1:
	imulq	$50176, %rdi, %r8
	movq	%rdx, %r9
	xorl	%r10d, %r10d
	addq	%rcx, %r8
	.p2align	4
.LBB36_2:
	.loc	37 19 8 is_stmt 1
	leaq	(%r10,%rsi), %r11
	movq	$-8, %rbx
	vxorps	%xmm1, %xmm1, %xmm1
	movq	%r9, %r14
	.loc	37 0 8 is_stmt 0
.Ltmp146:
	.p2align	4
.LBB36_3:
	.loc	37 19 8
	vmovss	(%r14), %xmm2
	vmovss	50176(%r14), %xmm3
	vmovss	100352(%r14), %xmm4
	vmovss	150528(%r14), %xmm5
	vmovss	200704(%r14), %xmm6
	vmovss	250880(%r14), %xmm7
	vmovss	301056(%r14), %xmm8
	vmovss	351232(%r14), %xmm9
	addq	$401408, %r14
	.loc	37 22 10 is_stmt 1
	vfmadd132ss	4(%rax,%rbx,4), %xmm1, %xmm2
	vfmadd231ss	8(%rax,%rbx,4), %xmm3, %xmm2
	vfmadd231ss	12(%rax,%rbx,4), %xmm4, %xmm2
	vfmadd231ss	16(%rax,%rbx,4), %xmm5, %xmm2
	vfmadd231ss	20(%rax,%rbx,4), %xmm6, %xmm2
	vfmadd231ss	24(%rax,%rbx,4), %xmm7, %xmm2
	vfmadd231ss	28(%rax,%rbx,4), %xmm8, %xmm2
	vmovaps	%xmm2, %xmm1
	vfmadd231ss	32(%rax,%rbx,4), %xmm9, %xmm1
	.loc	37 19 8
	addq	$8, %rbx
	cmpq	$56, %rbx
	jb	.LBB36_3
	vaddss	%xmm0, %xmm1, %xmm2
	vcmpless	%xmm0, %xmm1, %xmm1
	incq	%r10
	addq	$4, %r9
	vandnps	%xmm2, %xmm1, %xmm1
	vmovss	%xmm1, (%r8,%r11,4)
	cmpq	$64, %r10
	jne	.LBB36_2
	incq	%rdi
	addq	$256, %rax
	cmpq	$32, %rdi
	jne	.LBB36_1
	.loc	37 33 8
	xorl	%eax, %eax
	.loc	37 33 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp147:
.Lfunc_end36:
	.size	main_graph$async_dispatch_44_matmul_like_32x12544x64_f32, .Lfunc_end36-main_graph$async_dispatch_44_matmul_like_32x12544x64_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI37_0:
	.quad	0
	.quad	1
	.quad	2
	.quad	3
.LCPI37_1:
	.quad	4
	.quad	5
	.quad	6
	.quad	7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI37_2:
	.long	0x3f000000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI37_3:
	.quad	112
	.section	".text.main_graph$async_dispatch_45_matvec_like_50176x32_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_45_matvec_like_50176x32_f32,@function
main_graph$async_dispatch_45_matvec_like_50176x32_f32:
.Lfunc_begin37:
	.file	38 "/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs" "configured_fastdepth_main_graph$async_dispatch_45.mlir"
	.loc	38 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp148:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$2560, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	38 15 8 prologue_end
	movq	32(%rsi), %rax
	vmovdqa	.LCPI37_0(%rip), %ymm1
	vmovdqa	.LCPI37_1(%rip), %ymm2
	vmovss	.LCPI37_2(%rip), %xmm3
	vbroadcastss	.LCPI37_2(%rip), %ymm4
	vpbroadcastq	.LCPI37_3(%rip), %ymm5
	.loc	38 42 8
	movl	(%rdx), %ecx
	movabsq	$2635249153387078803, %r8
	vxorps	%xmm6, %xmm6, %xmm6
	movq	$0, 48(%rsp)
	vxorps	%xmm7, %xmm7, %xmm7
	vxorps	%xmm8, %xmm8, %xmm8
	vxorps	%xmm13, %xmm13, %xmm13
	vxorps	%xmm9, %xmm9, %xmm9
	vxorps	%xmm10, %xmm10, %xmm10
	vxorps	%xmm11, %xmm11, %xmm11
	vxorps	%xmm12, %xmm12, %xmm12
	.loc	38 15 8
	movq	(%rax), %rsi
	.loc	38 16 8
	movq	8(%rax), %rax
	.loc	38 42 8
	shlq	$6, %rcx
	movq	%rax, 56(%rsp)
	.loc	38 0 8 is_stmt 0
.Ltmp149:
	.p2align	4
.LBB37_1:
	leaq	448(%rsp), %r11
	xorl	%ebx, %ebx
	vmovaps	%ymm13, 64(%rsp)
	vmovaps	%ymm8, 96(%rsp)
	vmovaps	%ymm7, 128(%rsp)
	vmovaps	%ymm6, 160(%rsp)
	.p2align	4
.LBB37_2:
	movq	48(%rsp), %rax
	xorl	%r14d, %r14d
	.loc	38 23 10 is_stmt 1
	leaq	(%rbx,%rax), %rdx
	.loc	38 39 10
	imulq	$112, %rdx, %rdx
	vmovq	%rdx, %xmm0
	vpbroadcastq	%xmm0, %ymm13
	.loc	38 0 10 is_stmt 0
.Ltmp150:
	.p2align	4
.LBB37_3:
	.loc	38 21 8 is_stmt 1
	leaq	(%rcx,%r14), %r15
	vmovq	%r15, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	.loc	38 24 10
	vpor	%ymm1, %ymm0, %ymm14
	vpor	%ymm2, %ymm0, %ymm0
	.loc	38 25 10
	vextracti128	$1, %ymm0, %xmm15
	vpextrq	$1, %xmm0, %rdi
	vpextrq	$1, %xmm14, %r13
	vpextrq	$1, %xmm15, %r12
	vmovq	%xmm15, %rax
	movq	%r12, %rdx
	shrq	$5, %rdx
	mulxq	%r8, %rdx, %rdx
	imulq	$224, %rdx, %rdx
	subq	%rdx, %r12
	movq	%rax, %rdx
	shrq	$5, %rdx
	mulxq	%r8, %rdx, %rdx
	vmovq	%r12, %xmm6
	imulq	$224, %rdx, %rdx
	subq	%rdx, %rax
	movq	%rdi, %rdx
	shrq	$5, %rdx
	mulxq	%r8, %rdx, %rdx
	vmovq	%rax, %xmm15
	vmovq	%xmm0, %rax
	vpunpcklqdq	%xmm6, %xmm15, %xmm6
	imulq	$224, %rdx, %rdx
	subq	%rdx, %rdi
	movq	%rax, %rdx
	shrq	$5, %rdx
	mulxq	%r8, %rdx, %rdx
	vmovq	%rdi, %xmm15
	imulq	$224, %rdx, %rdx
	subq	%rdx, %rax
	vmovq	%rax, %xmm0
	vpunpcklqdq	%xmm15, %xmm0, %xmm0
	vinserti128	$1, %xmm6, %ymm0, %ymm15
	vextracti128	$1, %ymm14, %xmm0
	vpextrq	$1, %xmm0, %r12
	vmovq	%xmm0, %rdi
	movq	%r12, %rdx
	shrq	$5, %rdx
	mulxq	%r8, %rdx, %rdx
	imulq	$224, %rdx, %rdx
	subq	%rdx, %r12
	movq	%rdi, %rdx
	shrq	$5, %rdx
	mulxq	%r8, %rdx, %rdx
	vmovq	%r12, %xmm6
	imulq	$224, %rdx, %rdx
	subq	%rdx, %rdi
	movq	%r15, %rdx
	shrq	$5, %rdx
	mulxq	%r8, %rax, %rax
	vmovq	%rdi, %xmm0
	vpunpcklqdq	%xmm6, %xmm0, %xmm0
	imulq	$224, %rax, %rdx
	subq	%rdx, %r15
	movq	%r13, %rdx
	shrq	$5, %rdx
	mulxq	%r8, %rdx, %rdx
	vmovq	%r15, %xmm6
	imulq	$224, %rdx, %rdx
	subq	%rdx, %r13
	.loc	38 21 8
	cmpq	$56, %r14
	.loc	38 25 10
	vmovq	%r13, %xmm14
	vpunpcklqdq	%xmm14, %xmm6, %xmm6
	vinserti128	$1, %xmm0, %ymm6, %ymm0
	.loc	38 34 10
	vpackusdw	%ymm15, %ymm0, %ymm0
	.loc	38 28 10
	vcvtsi2ss	%rax, %xmm1, %xmm6
	.loc	38 34 10
	vpermpd	$216, %ymm0, %ymm0
	.loc	38 29 10
	vmulss	%xmm3, %xmm6, %xmm6
	vbroadcastss	%xmm6, %ymm6
	.loc	38 34 10
	vcvtdq2ps	%ymm0, %ymm0
	.loc	38 30 10
	vroundps	$9, %ymm6, %ymm6
	.loc	38 35 10
	vmulps	%ymm4, %ymm0, %ymm0
	.loc	38 31 10
	vshufps	$255, %xmm6, %xmm6, %xmm14
	vmovshdup	%xmm6, %xmm7
	vcvttss2si	%xmm14, %rdx
	vshufpd	$1, %xmm6, %xmm6, %xmm14
	vcvttss2si	%xmm7, %rdi
	.loc	38 36 10
	vroundps	$9, %ymm0, %ymm0
	.loc	38 31 10
	vcvttss2si	%xmm14, %r15
	vmovq	%rdx, %xmm14
	vcvttss2si	%xmm6, %rdx
	vextractf128	$1, %ymm6, %xmm6
	vmovq	%rdi, %xmm7
	vmovq	%r15, %xmm15
	.loc	38 37 10
	vmovshdup	%xmm0, %xmm8
	.loc	38 31 10
	vpunpcklqdq	%xmm14, %xmm15, %xmm14
	vmovq	%rdx, %xmm15
	vpunpcklqdq	%xmm7, %xmm15, %xmm7
	vshufpd	$1, %xmm6, %xmm6, %xmm15
	vinserti128	$1, %xmm14, %ymm7, %ymm14
	vshufps	$255, %xmm6, %xmm6, %xmm7
	vcvttss2si	%xmm6, %rdi
	vmovshdup	%xmm6, %xmm6
	vcvttss2si	%xmm15, %rax
	vcvttss2si	%xmm7, %rdx
	vmovq	%rax, %xmm15
	vcvttss2si	%xmm6, %rax
	vmovq	%rdx, %xmm7
	vpunpcklqdq	%xmm7, %xmm15, %xmm7
	vmovq	%rdi, %xmm15
	.loc	38 37 10
	vcvttss2si	%xmm8, %rdi
	.loc	38 31 10
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm15, %xmm6
	.loc	38 37 10
	vmovq	%rdi, %xmm8
	.loc	38 31 10
	vinserti128	$1, %xmm7, %ymm6, %ymm15
	.loc	38 37 10
	vshufps	$255, %xmm0, %xmm0, %xmm6
	vcvttss2si	%xmm6, %rdx
	vshufpd	$1, %xmm0, %xmm0, %xmm6
	vcvttss2si	%xmm6, %r15
	vmovq	%rdx, %xmm6
	vcvttss2si	%xmm0, %rdx
	vextractf128	$1, %ymm0, %xmm0
	vmovq	%r15, %xmm7
	vpunpcklqdq	%xmm6, %xmm7, %xmm6
	vmovq	%rdx, %xmm7
	vpunpcklqdq	%xmm8, %xmm7, %xmm7
	vshufpd	$1, %xmm0, %xmm0, %xmm8
	vinserti128	$1, %xmm6, %ymm7, %ymm6
	vshufps	$255, %xmm0, %xmm0, %xmm7
	vcvttss2si	%xmm0, %rdi
	vmovshdup	%xmm0, %xmm0
	vcvttss2si	%xmm8, %rax
	vcvttss2si	%xmm7, %rdx
	vmovq	%rax, %xmm8
	vcvttss2si	%xmm0, %rax
	vmovq	%rdx, %xmm7
	vpunpcklqdq	%xmm7, %xmm8, %xmm7
	vmovq	%rdi, %xmm8
	vmovq	%rax, %xmm0
	vpunpcklqdq	%xmm0, %xmm8, %xmm0
	.loc	38 39 10
	vpaddq	%ymm14, %ymm13, %ymm8
	vpmuludq	%ymm5, %ymm8, %ymm14
	vpsrlq	$32, %ymm8, %ymm8
	.loc	38 37 10
	vinserti128	$1, %xmm7, %ymm0, %ymm0
	.loc	38 39 10
	vpaddq	%ymm15, %ymm13, %ymm7
	vpmuludq	%ymm5, %ymm8, %ymm8
	vpsllq	$32, %ymm8, %ymm8
	vpaddq	%ymm8, %ymm14, %ymm8
	vpmuludq	%ymm5, %ymm7, %ymm14
	vpsrlq	$32, %ymm7, %ymm7
	vpmuludq	%ymm5, %ymm7, %ymm7
	vpaddq	%ymm6, %ymm8, %ymm6
	vmovq	%xmm6, %rdx
	vpextrq	$1, %xmm6, %r15
	vextracti128	$1, %ymm6, %xmm6
	vpsllq	$32, %ymm7, %ymm7
	vpaddq	%ymm7, %ymm14, %ymm7
	vpaddq	%ymm0, %ymm7, %ymm0
	vmovq	%xmm6, %r12
	vpextrq	$1, %xmm6, %r13
	vmovq	%xmm0, %rdi
	vpextrq	$1, %xmm0, %rax
	vextracti128	$1, %ymm0, %xmm0
	vmovss	3211264(%rsi,%rdi,4), %xmm6
	vinsertps	$16, 3211264(%rsi,%rax,4), %xmm6, %xmm6
	vmovq	%xmm0, %r9
	vpextrq	$1, %xmm0, %r10
	vmovss	3211264(%rsi,%rdx,4), %xmm0
	vinsertps	$16, 3211264(%rsi,%r15,4), %xmm0, %xmm0
	vinsertps	$32, 3211264(%rsi,%r9,4), %xmm6, %xmm6
	vinsertps	$32, 3211264(%rsi,%r12,4), %xmm0, %xmm0
	vinsertps	$48, 3211264(%rsi,%r10,4), %xmm6, %xmm6
	vinsertps	$48, 3211264(%rsi,%r13,4), %xmm0, %xmm0
	.loc	38 21 8
	vmovaps	%xmm6, 16(%r11,%r14,4)
	vmovaps	%xmm0, (%r11,%r14,4)
	leaq	8(%r14), %r14
	jb	.LBB37_3
	incq	%rbx
	addq	$256, %r11
	cmpq	$8, %rbx
	jne	.LBB37_2
	.loc	38 0 8 is_stmt 0
	movq	48(%rsp), %rdx
	leaq	__constant_32xf32(%rip), %rax
	vmovaps	64(%rsp), %ymm13
	vmovaps	96(%rsp), %ymm8
	vmovaps	160(%rsp), %ymm6
	vmovaps	128(%rsp), %ymm7
	.loc	38 45 10 is_stmt 1
	vbroadcastss	(%rax,%rdx,4), %ymm0
	vfmadd231ps	672(%rsp), %ymm0, %ymm12
	vfmadd231ps	640(%rsp), %ymm0, %ymm11
	vfmadd231ps	608(%rsp), %ymm0, %ymm10
	vfmadd231ps	576(%rsp), %ymm0, %ymm9
	vfmadd231ps	544(%rsp), %ymm0, %ymm13
	vfmadd231ps	512(%rsp), %ymm0, %ymm8
	vfmadd231ps	448(%rsp), %ymm0, %ymm6
	vfmadd231ps	480(%rsp), %ymm0, %ymm7
	vbroadcastss	4(%rax,%rdx,4), %ymm0
	vfmadd231ps	736(%rsp), %ymm0, %ymm7
	vfmadd231ps	704(%rsp), %ymm0, %ymm6
	vfmadd231ps	768(%rsp), %ymm0, %ymm8
	vfmadd231ps	800(%rsp), %ymm0, %ymm13
	vfmadd231ps	832(%rsp), %ymm0, %ymm9
	vfmadd231ps	864(%rsp), %ymm0, %ymm10
	vfmadd231ps	896(%rsp), %ymm0, %ymm11
	vfmadd231ps	928(%rsp), %ymm0, %ymm12
	vbroadcastss	8(%rax,%rdx,4), %ymm0
	vfmadd231ps	1184(%rsp), %ymm0, %ymm12
	vfmadd231ps	1152(%rsp), %ymm0, %ymm11
	vfmadd231ps	1120(%rsp), %ymm0, %ymm10
	vfmadd231ps	1088(%rsp), %ymm0, %ymm9
	vfmadd231ps	1056(%rsp), %ymm0, %ymm13
	vfmadd231ps	1024(%rsp), %ymm0, %ymm8
	vfmadd231ps	960(%rsp), %ymm0, %ymm6
	vfmadd231ps	992(%rsp), %ymm0, %ymm7
	vbroadcastss	12(%rax,%rdx,4), %ymm0
	vfmadd231ps	1248(%rsp), %ymm0, %ymm7
	vfmadd231ps	1216(%rsp), %ymm0, %ymm6
	vfmadd231ps	1280(%rsp), %ymm0, %ymm8
	vfmadd231ps	1312(%rsp), %ymm0, %ymm13
	vfmadd231ps	1344(%rsp), %ymm0, %ymm9
	vfmadd231ps	1376(%rsp), %ymm0, %ymm10
	vfmadd231ps	1408(%rsp), %ymm0, %ymm11
	vfmadd231ps	1440(%rsp), %ymm0, %ymm12
	vbroadcastss	16(%rax,%rdx,4), %ymm0
	vfmadd231ps	1696(%rsp), %ymm0, %ymm12
	vfmadd231ps	1664(%rsp), %ymm0, %ymm11
	vfmadd231ps	1632(%rsp), %ymm0, %ymm10
	vfmadd231ps	1600(%rsp), %ymm0, %ymm9
	vfmadd231ps	1568(%rsp), %ymm0, %ymm13
	vfmadd231ps	1536(%rsp), %ymm0, %ymm8
	vfmadd231ps	1472(%rsp), %ymm0, %ymm6
	vfmadd231ps	1504(%rsp), %ymm0, %ymm7
	vbroadcastss	20(%rax,%rdx,4), %ymm0
	vfmadd231ps	1760(%rsp), %ymm0, %ymm7
	vfmadd231ps	1728(%rsp), %ymm0, %ymm6
	vfmadd231ps	1792(%rsp), %ymm0, %ymm8
	vfmadd231ps	1824(%rsp), %ymm0, %ymm13
	vfmadd231ps	1856(%rsp), %ymm0, %ymm9
	vfmadd231ps	1888(%rsp), %ymm0, %ymm10
	vfmadd231ps	1920(%rsp), %ymm0, %ymm11
	vfmadd231ps	1952(%rsp), %ymm0, %ymm12
	vbroadcastss	24(%rax,%rdx,4), %ymm0
	vfmadd231ps	2208(%rsp), %ymm0, %ymm12
	vfmadd231ps	2176(%rsp), %ymm0, %ymm11
	vfmadd231ps	2144(%rsp), %ymm0, %ymm10
	vfmadd231ps	2112(%rsp), %ymm0, %ymm9
	vfmadd231ps	2080(%rsp), %ymm0, %ymm13
	vfmadd231ps	2048(%rsp), %ymm0, %ymm8
	vfmadd231ps	1984(%rsp), %ymm0, %ymm6
	vfmadd231ps	2016(%rsp), %ymm0, %ymm7
	vbroadcastss	28(%rax,%rdx,4), %ymm0
	.loc	38 42 8
	leaq	8(%rdx), %rax
	movq	%rax, 48(%rsp)
	.loc	38 45 10
	vfmadd231ps	2272(%rsp), %ymm0, %ymm7
	vfmadd231ps	2240(%rsp), %ymm0, %ymm6
	vfmadd231ps	2304(%rsp), %ymm0, %ymm8
	vfmadd231ps	2336(%rsp), %ymm0, %ymm13
	vfmadd231ps	2368(%rsp), %ymm0, %ymm9
	vfmadd231ps	2400(%rsp), %ymm0, %ymm10
	vfmadd231ps	2432(%rsp), %ymm0, %ymm11
	vfmadd231ps	2464(%rsp), %ymm0, %ymm12
	.loc	38 42 8
	cmpq	$24, %rdx
	jb	.LBB37_1
	.loc	38 0 8 is_stmt 0
	movq	56(%rsp), %rax
	.loc	38 45 10 is_stmt 1
	vmovaps	%ymm6, 192(%rsp)
	vmovaps	%ymm7, 224(%rsp)
	vmovaps	%ymm8, 256(%rsp)
	vmovaps	%ymm13, 288(%rsp)
	vmovaps	%ymm9, 320(%rsp)
	vmovaps	%ymm10, 352(%rsp)
	vmovaps	%ymm11, 384(%rsp)
	vmovaps	%ymm12, 416(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	leaq	(%rax,%rcx,4), %rax
	xorl	%ecx, %ecx
	.loc	38 0 10 is_stmt 0
.Ltmp151:
	.p2align	4
.LBB37_7:
	.loc	38 48 8 is_stmt 1
	vmovss	192(%rsp,%rcx,4), %xmm1
	vaddss	%xmm0, %xmm1, %xmm2
	vcmpless	%xmm0, %xmm1, %xmm1
	vandnps	%xmm2, %xmm1, %xmm1
	vmovss	%xmm1, (%rax,%rcx,4)
	incq	%rcx
	cmpq	$64, %rcx
	jne	.LBB37_7
	.loc	38 56 8
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	38 56 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp152:
.Lfunc_end37:
	.size	main_graph$async_dispatch_45_matvec_like_50176x32_f32, .Lfunc_end37-main_graph$async_dispatch_45_matvec_like_50176x32_f32
	.cfi_endproc

	.section	.text.iree_hal_executable_library_query,"ax",@progbits
	.globl	iree_hal_executable_library_query
	.p2align	4
	.type	iree_hal_executable_library_query,@function
iree_hal_executable_library_query:
.Liree_hal_executable_library_query$local:
	.type	.Liree_hal_executable_library_query$local,@function
.Lfunc_begin38:
	.cfi_startproc
	xorl	%eax, %eax
	cmpl	$6, %edi
	leaq	iree_hal_executable_library_query_v0(%rip), %rcx
	cmoveq	%rcx, %rax
	retq
.Lfunc_end38:
	.size	iree_hal_executable_library_query, .Lfunc_end38-iree_hal_executable_library_query
	.size	.Liree_hal_executable_library_query$local, .Lfunc_end38-iree_hal_executable_library_query
	.cfi_endproc

	.section	.text.iree_h2f_ieee,"ax",@progbits
	.p2align	4
	.type	iree_h2f_ieee,@function
iree_h2f_ieee:
.Lfunc_begin39:
	.cfi_startproc
	movl	%edi, %eax
	andl	$32768, %eax
	movl	%edi, %edx
	movl	%edi, %ecx
	andl	$1023, %ecx
	shll	$16, %eax
	andw	$31744, %dx
	je	.LBB39_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB39_5
	testw	%cx, %cx
	je	.LBB39_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB39_6:
	movzwl	%cx, %ecx
	orl	$864026624, %eax
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB39_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	leal	939524096(%rdx,%rax), %eax
	vmovd	%eax, %xmm0
	retq
.LBB39_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end39:
	.size	iree_h2f_ieee, .Lfunc_end39-iree_h2f_ieee
	.cfi_endproc

	.section	.text.iree_f2h_ieee,"ax",@progbits
	.p2align	4
	.type	iree_f2h_ieee,@function
iree_f2h_ieee:
.Lfunc_begin40:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB40_4
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB40_6
	testl	%edx, %edx
	je	.LBB40_7
	orl	$32767, %eax
	retq
.LBB40_4:
	movl	%ecx, %edx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB40_6:
	cmpl	$1191182336, %ecx
	jbe	.LBB40_8
.LBB40_7:
	movl	$31744, %edx
	xorl	%ecx, %ecx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB40_8:
	cmpl	$947912704, %ecx
	jae	.LBB40_10
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB40_10:
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
.Lfunc_end40:
	.size	iree_f2h_ieee, .Lfunc_end40-iree_f2h_ieee
	.cfi_endproc

	.section	.text.__gnu_h2f_ieee,"ax",@progbits
	.p2align	4
	.type	__gnu_h2f_ieee,@function
__gnu_h2f_ieee:
.Lfunc_begin41:
	.cfi_startproc
	movl	%edi, %eax
	andl	$32768, %eax
	movl	%edi, %edx
	movl	%edi, %ecx
	andl	$1023, %ecx
	shll	$16, %eax
	andw	$31744, %dx
	je	.LBB41_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB41_5
	testw	%cx, %cx
	je	.LBB41_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB41_6:
	movzwl	%cx, %ecx
	orl	$864026624, %eax
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB41_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	leal	939524096(%rdx,%rax), %eax
	vmovd	%eax, %xmm0
	retq
.LBB41_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end41:
	.size	__gnu_h2f_ieee, .Lfunc_end41-__gnu_h2f_ieee
	.cfi_endproc

	.section	.text.__extendhfsf2,"ax",@progbits
	.p2align	4
	.type	__extendhfsf2,@function
__extendhfsf2:
.Lfunc_begin42:
	.cfi_startproc
	vmovd	%xmm0, %ecx
	movl	%ecx, %eax
	shll	$16, %eax
	movl	%ecx, %edx
	andl	$1023, %edx
	movl	%ecx, %esi
	andl	$-2147483648, %eax
	andl	$31744, %esi
	je	.LBB42_6
	cmpl	$31744, %esi
	jne	.LBB42_5
	testw	%dx, %dx
	je	.LBB42_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB42_6:
	movzwl	%dx, %ecx
	orl	$864026624, %eax
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB42_5:
	andl	$32767, %ecx
	shll	$13, %ecx
	leal	939524096(%rcx,%rax), %eax
	vmovd	%eax, %xmm0
	retq
.LBB42_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end42:
	.size	__extendhfsf2, .Lfunc_end42-__extendhfsf2
	.cfi_endproc

	.section	.text.__gnu_f2h_ieee,"ax",@progbits
	.p2align	4
	.type	__gnu_f2h_ieee,@function
__gnu_f2h_ieee:
.Lfunc_begin43:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB43_4
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB43_6
	testl	%edx, %edx
	je	.LBB43_7
	orl	$32767, %eax
	retq
.LBB43_4:
	movl	%ecx, %edx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB43_6:
	cmpl	$1191182336, %ecx
	jbe	.LBB43_8
.LBB43_7:
	movl	$31744, %edx
	xorl	%ecx, %ecx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB43_8:
	cmpl	$947912704, %ecx
	jae	.LBB43_10
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB43_10:
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
.Lfunc_end43:
	.size	__gnu_f2h_ieee, .Lfunc_end43-__gnu_f2h_ieee
	.cfi_endproc

	.section	.text.__truncsfhf2,"ax",@progbits
	.p2align	4
	.type	__truncsfhf2,@function
__truncsfhf2:
.Lfunc_begin44:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB44_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB44_6
	testl	%edx, %edx
	je	.LBB44_4
	orl	$32767, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.LBB44_1:
	movl	%ecx, %edx
	jmp	.LBB44_10
.LBB44_6:
	cmpl	$1191182336, %ecx
	jbe	.LBB44_7
.LBB44_4:
	movl	$31744, %edx
	xorl	%ecx, %ecx
	jmp	.LBB44_10
.LBB44_7:
	cmpl	$947912704, %ecx
	jae	.LBB44_9
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB44_10
.LBB44_9:
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
.LBB44_10:
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.Lfunc_end44:
	.size	__truncsfhf2, .Lfunc_end44-__truncsfhf2
	.cfi_endproc

	.type	__constant_32xf32,@object
	.section	.rodata.__constant_32xf32,"a",@progbits
	.p2align	6, 0x0
__constant_32xf32:
	.long	0xbe196543
	.long	0xbe1a9de0
	.long	0x3d9c8b4c
	.long	0xbe09afee
	.long	0xbdf247c3
	.long	0x3d6f9d78
	.long	0x3e031253
	.long	0xbd181016
	.long	0xbdafb4d6
	.long	0x3d6293db
	.long	0xbd87f8b9
	.long	0xbd9138b7
	.long	0x3df3aff0
	.long	0x3e08e838
	.long	0xbdc7b4b0
	.long	0x3e06f32d
	.long	0xbda53419
	.long	0x3e2d6959
	.long	0x3d93f631
	.long	0xbe10974c
	.long	0x3daed49c
	.long	0xbb273c46
	.long	0x3cf26f4a
	.long	0x3ce82812
	.long	0xbd7d6e23
	.long	0x3b43f845
	.long	0x3e039ee6
	.long	0xbd917cfb
	.long	0xbe0b8f09
	.long	0xbde8b2b0
	.long	0x3d65066a
	.long	0xbd9ee4e6
	.size	__constant_32xf32, 128

	.type	__unnamed_1,@object
	.section	.rodata.__unnamed_1,"a",@progbits
__unnamed_1:
	.asciz	"fastdepth_linked"
	.size	__unnamed_1, 17

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
	.quad	main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32
	.quad	main_graph$async_dispatch_2_conv_112x112x32x3x3_f32
	.quad	main_graph$async_dispatch_3_matmul_like_64x12544x32_f32
	.quad	main_graph$async_dispatch_4_slow_memcpy
	.quad	main_graph$async_dispatch_5_conv_56x56x64x3x3_f32
	.quad	main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32
	.quad	main_graph$async_dispatch_7_conv_56x56x128x3x3_f32
	.quad	main_graph$async_dispatch_8_matmul_like_128x3136x128_f32
	.quad	main_graph$async_dispatch_9_slow_memcpy
	.quad	main_graph$async_dispatch_10_conv_28x28x128x3x3_f32
	.quad	main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32
	.quad	main_graph$async_dispatch_12_conv_28x28x256x3x3_f32
	.quad	main_graph$async_dispatch_13_matmul_like_256x784x256_f32
	.quad	main_graph$async_dispatch_14_slow_memcpy
	.quad	main_graph$async_dispatch_15_conv_14x14x256x3x3_f32
	.quad	main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32
	.quad	main_graph$async_dispatch_17_conv_14x14x512x3x3_f32
	.quad	main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32
	.quad	main_graph$async_dispatch_27_conv_7x7x512x3x3_f32
	.quad	main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32
	.quad	main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32
	.quad	main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32
	.quad	main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32
	.quad	main_graph$async_dispatch_32_matmul_like_512x49x1024_f32
	.quad	main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32
	.quad	main_graph$async_dispatch_34_conv_14x14x512x5x5_f32
	.quad	main_graph$async_dispatch_35_matmul_like_256x196x512_f32
	.quad	main_graph$async_dispatch_36_elementwise_256x28x28_f32
	.quad	main_graph$async_dispatch_37_conv_28x28x256x5x5_f32
	.quad	main_graph$async_dispatch_38_matmul_like_128x784x256_f32
	.quad	main_graph$async_dispatch_39_elementwise_128x56x56_f32
	.quad	main_graph$async_dispatch_40_conv_56x56x128x5x5_f32
	.quad	main_graph$async_dispatch_41_matmul_like_64x3136x128_f32
	.quad	main_graph$async_dispatch_42_elementwise_64x112x112_f32
	.quad	main_graph$async_dispatch_43_conv_112x112x64x5x5_f32
	.quad	main_graph$async_dispatch_44_matmul_like_32x12544x64_f32
	.quad	main_graph$async_dispatch_45_matvec_like_50176x32_f32
	.size	iree_hal_executable_library_query_v0_funcs, 304

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
	.byte	2
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
	.byte	2
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
	.size	iree_hal_executable_library_query_v0_attrs, 2432

	.type	__unnamed_2,@object
	.section	.rodata.__unnamed_2,"a",@progbits
__unnamed_2:
	.asciz	"main_graph$async_dispatch_0_slow_memcpy"
	.size	__unnamed_2, 40

	.type	__unnamed_3,@object
	.section	.rodata.__unnamed_3,"a",@progbits
__unnamed_3:
	.asciz	"main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32"
	.size	__unnamed_3, 54

	.type	__unnamed_4,@object
	.section	.rodata.__unnamed_4,"a",@progbits
__unnamed_4:
	.asciz	"main_graph$async_dispatch_2_conv_112x112x32x3x3_f32"
	.size	__unnamed_4, 52

	.type	__unnamed_5,@object
	.section	.rodata.__unnamed_5,"a",@progbits
__unnamed_5:
	.asciz	"main_graph$async_dispatch_3_matmul_like_64x12544x32_f32"
	.size	__unnamed_5, 56

	.type	__unnamed_6,@object
	.section	.rodata.__unnamed_6,"a",@progbits
__unnamed_6:
	.asciz	"main_graph$async_dispatch_4_slow_memcpy"
	.size	__unnamed_6, 40

	.type	__unnamed_7,@object
	.section	.rodata.__unnamed_7,"a",@progbits
__unnamed_7:
	.asciz	"main_graph$async_dispatch_5_conv_56x56x64x3x3_f32"
	.size	__unnamed_7, 50

	.type	__unnamed_8,@object
	.section	.rodata.__unnamed_8,"a",@progbits
__unnamed_8:
	.asciz	"main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32"
	.size	__unnamed_8, 57

	.type	__unnamed_9,@object
	.section	.rodata.__unnamed_9,"a",@progbits
__unnamed_9:
	.asciz	"main_graph$async_dispatch_7_conv_56x56x128x3x3_f32"
	.size	__unnamed_9, 51

	.type	__unnamed_10,@object
	.section	.rodata.__unnamed_10,"a",@progbits
__unnamed_10:
	.asciz	"main_graph$async_dispatch_8_matmul_like_128x3136x128_f32"
	.size	__unnamed_10, 57

	.type	__unnamed_11,@object
	.section	.rodata.__unnamed_11,"a",@progbits
__unnamed_11:
	.asciz	"main_graph$async_dispatch_9_slow_memcpy"
	.size	__unnamed_11, 40

	.type	__unnamed_12,@object
	.section	.rodata.__unnamed_12,"a",@progbits
__unnamed_12:
	.asciz	"main_graph$async_dispatch_10_conv_28x28x128x3x3_f32"
	.size	__unnamed_12, 52

	.type	__unnamed_13,@object
	.section	.rodata.__unnamed_13,"a",@progbits
__unnamed_13:
	.asciz	"main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32"
	.size	__unnamed_13, 59

	.type	__unnamed_14,@object
	.section	.rodata.__unnamed_14,"a",@progbits
__unnamed_14:
	.asciz	"main_graph$async_dispatch_12_conv_28x28x256x3x3_f32"
	.size	__unnamed_14, 52

	.type	__unnamed_15,@object
	.section	.rodata.__unnamed_15,"a",@progbits
__unnamed_15:
	.asciz	"main_graph$async_dispatch_13_matmul_like_256x784x256_f32"
	.size	__unnamed_15, 57

	.type	__unnamed_16,@object
	.section	.rodata.__unnamed_16,"a",@progbits
__unnamed_16:
	.asciz	"main_graph$async_dispatch_14_slow_memcpy"
	.size	__unnamed_16, 41

	.type	__unnamed_17,@object
	.section	.rodata.__unnamed_17,"a",@progbits
__unnamed_17:
	.asciz	"main_graph$async_dispatch_15_conv_14x14x256x3x3_f32"
	.size	__unnamed_17, 52

	.type	__unnamed_18,@object
	.section	.rodata.__unnamed_18,"a",@progbits
__unnamed_18:
	.asciz	"main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32"
	.size	__unnamed_18, 59

	.type	__unnamed_19,@object
	.section	.rodata.__unnamed_19,"a",@progbits
__unnamed_19:
	.asciz	"main_graph$async_dispatch_17_conv_14x14x512x3x3_f32"
	.size	__unnamed_19, 52

	.type	__unnamed_20,@object
	.section	.rodata.__unnamed_20,"a",@progbits
__unnamed_20:
	.asciz	"main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32"
	.size	__unnamed_20, 59

	.type	__unnamed_21,@object
	.section	.rodata.__unnamed_21,"a",@progbits
__unnamed_21:
	.asciz	"main_graph$async_dispatch_27_conv_7x7x512x3x3_f32"
	.size	__unnamed_21, 50

	.type	__unnamed_22,@object
	.section	.rodata.__unnamed_22,"a",@progbits
__unnamed_22:
	.asciz	"main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32"
	.size	__unnamed_22, 58

	.type	__unnamed_23,@object
	.section	.rodata.__unnamed_23,"a",@progbits
__unnamed_23:
	.asciz	"main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32"
	.size	__unnamed_23, 51

	.type	__unnamed_24,@object
	.section	.rodata.__unnamed_24,"a",@progbits
__unnamed_24:
	.asciz	"main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32"
	.size	__unnamed_24, 59

	.type	__unnamed_25,@object
	.section	.rodata.__unnamed_25,"a",@progbits
__unnamed_25:
	.asciz	"main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32"
	.size	__unnamed_25, 51

	.type	__unnamed_26,@object
	.section	.rodata.__unnamed_26,"a",@progbits
__unnamed_26:
	.asciz	"main_graph$async_dispatch_32_matmul_like_512x49x1024_f32"
	.size	__unnamed_26, 57

	.type	__unnamed_27,@object
	.section	.rodata.__unnamed_27,"a",@progbits
__unnamed_27:
	.asciz	"main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32"
	.size	__unnamed_27, 65

	.type	__unnamed_28,@object
	.section	.rodata.__unnamed_28,"a",@progbits
__unnamed_28:
	.asciz	"main_graph$async_dispatch_34_conv_14x14x512x5x5_f32"
	.size	__unnamed_28, 52

	.type	__unnamed_29,@object
	.section	.rodata.__unnamed_29,"a",@progbits
__unnamed_29:
	.asciz	"main_graph$async_dispatch_35_matmul_like_256x196x512_f32"
	.size	__unnamed_29, 57

	.type	__unnamed_30,@object
	.section	.rodata.__unnamed_30,"a",@progbits
__unnamed_30:
	.asciz	"main_graph$async_dispatch_36_elementwise_256x28x28_f32"
	.size	__unnamed_30, 55

	.type	__unnamed_31,@object
	.section	.rodata.__unnamed_31,"a",@progbits
__unnamed_31:
	.asciz	"main_graph$async_dispatch_37_conv_28x28x256x5x5_f32"
	.size	__unnamed_31, 52

	.type	__unnamed_32,@object
	.section	.rodata.__unnamed_32,"a",@progbits
__unnamed_32:
	.asciz	"main_graph$async_dispatch_38_matmul_like_128x784x256_f32"
	.size	__unnamed_32, 57

	.type	__unnamed_33,@object
	.section	.rodata.__unnamed_33,"a",@progbits
__unnamed_33:
	.asciz	"main_graph$async_dispatch_39_elementwise_128x56x56_f32"
	.size	__unnamed_33, 55

	.type	__unnamed_34,@object
	.section	.rodata.__unnamed_34,"a",@progbits
__unnamed_34:
	.asciz	"main_graph$async_dispatch_40_conv_56x56x128x5x5_f32"
	.size	__unnamed_34, 52

	.type	__unnamed_35,@object
	.section	.rodata.__unnamed_35,"a",@progbits
__unnamed_35:
	.asciz	"main_graph$async_dispatch_41_matmul_like_64x3136x128_f32"
	.size	__unnamed_35, 57

	.type	__unnamed_36,@object
	.section	.rodata.__unnamed_36,"a",@progbits
__unnamed_36:
	.asciz	"main_graph$async_dispatch_42_elementwise_64x112x112_f32"
	.size	__unnamed_36, 56

	.type	__unnamed_37,@object
	.section	.rodata.__unnamed_37,"a",@progbits
__unnamed_37:
	.asciz	"main_graph$async_dispatch_43_conv_112x112x64x5x5_f32"
	.size	__unnamed_37, 53

	.type	__unnamed_38,@object
	.section	.rodata.__unnamed_38,"a",@progbits
__unnamed_38:
	.asciz	"main_graph$async_dispatch_44_matmul_like_32x12544x64_f32"
	.size	__unnamed_38, 57

	.type	__unnamed_39,@object
	.section	.rodata.__unnamed_39,"a",@progbits
__unnamed_39:
	.asciz	"main_graph$async_dispatch_45_matvec_like_50176x32_f32"
	.size	__unnamed_39, 54

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
	.quad	__unnamed_17
	.quad	__unnamed_18
	.quad	__unnamed_19
	.quad	__unnamed_20
	.quad	__unnamed_21
	.quad	__unnamed_22
	.quad	__unnamed_23
	.quad	__unnamed_24
	.quad	__unnamed_25
	.quad	__unnamed_26
	.quad	__unnamed_27
	.quad	__unnamed_28
	.quad	__unnamed_29
	.quad	__unnamed_30
	.quad	__unnamed_31
	.quad	__unnamed_32
	.quad	__unnamed_33
	.quad	__unnamed_34
	.quad	__unnamed_35
	.quad	__unnamed_36
	.quad	__unnamed_37
	.quad	__unnamed_38
	.quad	__unnamed_39
	.size	iree_hal_executable_library_query_v0_names, 304

	.type	__unnamed_40,@object
	.section	.rodata.__unnamed_40,"a",@progbits
__unnamed_40:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_0.mlir"
	.size	__unnamed_40, 142

	.type	__unnamed_41,@object
	.section	.rodata.__unnamed_41,"a",@progbits
__unnamed_41:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_1.mlir"
	.size	__unnamed_41, 142

	.type	__unnamed_42,@object
	.section	.rodata.__unnamed_42,"a",@progbits
__unnamed_42:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_2.mlir"
	.size	__unnamed_42, 142

	.type	__unnamed_43,@object
	.section	.rodata.__unnamed_43,"a",@progbits
__unnamed_43:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_3.mlir"
	.size	__unnamed_43, 142

	.type	__unnamed_44,@object
	.section	.rodata.__unnamed_44,"a",@progbits
__unnamed_44:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_4.mlir"
	.size	__unnamed_44, 142

	.type	__unnamed_45,@object
	.section	.rodata.__unnamed_45,"a",@progbits
__unnamed_45:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_5.mlir"
	.size	__unnamed_45, 142

	.type	__unnamed_46,@object
	.section	.rodata.__unnamed_46,"a",@progbits
__unnamed_46:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_6.mlir"
	.size	__unnamed_46, 142

	.type	__unnamed_47,@object
	.section	.rodata.__unnamed_47,"a",@progbits
__unnamed_47:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_7.mlir"
	.size	__unnamed_47, 142

	.type	__unnamed_48,@object
	.section	.rodata.__unnamed_48,"a",@progbits
__unnamed_48:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_8.mlir"
	.size	__unnamed_48, 142

	.type	__unnamed_49,@object
	.section	.rodata.__unnamed_49,"a",@progbits
__unnamed_49:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_9.mlir"
	.size	__unnamed_49, 142

	.type	__unnamed_50,@object
	.section	.rodata.__unnamed_50,"a",@progbits
__unnamed_50:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_10.mlir"
	.size	__unnamed_50, 143

	.type	__unnamed_51,@object
	.section	.rodata.__unnamed_51,"a",@progbits
__unnamed_51:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_11.mlir"
	.size	__unnamed_51, 143

	.type	__unnamed_52,@object
	.section	.rodata.__unnamed_52,"a",@progbits
__unnamed_52:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_12.mlir"
	.size	__unnamed_52, 143

	.type	__unnamed_53,@object
	.section	.rodata.__unnamed_53,"a",@progbits
__unnamed_53:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_13.mlir"
	.size	__unnamed_53, 143

	.type	__unnamed_54,@object
	.section	.rodata.__unnamed_54,"a",@progbits
__unnamed_54:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_14.mlir"
	.size	__unnamed_54, 143

	.type	__unnamed_55,@object
	.section	.rodata.__unnamed_55,"a",@progbits
__unnamed_55:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_15.mlir"
	.size	__unnamed_55, 143

	.type	__unnamed_56,@object
	.section	.rodata.__unnamed_56,"a",@progbits
__unnamed_56:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_16.mlir"
	.size	__unnamed_56, 143

	.type	__unnamed_57,@object
	.section	.rodata.__unnamed_57,"a",@progbits
__unnamed_57:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_17.mlir"
	.size	__unnamed_57, 143

	.type	__unnamed_58,@object
	.section	.rodata.__unnamed_58,"a",@progbits
__unnamed_58:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_18.mlir"
	.size	__unnamed_58, 143

	.type	__unnamed_59,@object
	.section	.rodata.__unnamed_59,"a",@progbits
__unnamed_59:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_27.mlir"
	.size	__unnamed_59, 143

	.type	__unnamed_60,@object
	.section	.rodata.__unnamed_60,"a",@progbits
__unnamed_60:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_28.mlir"
	.size	__unnamed_60, 143

	.type	__unnamed_61,@object
	.section	.rodata.__unnamed_61,"a",@progbits
__unnamed_61:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_29.mlir"
	.size	__unnamed_61, 143

	.type	__unnamed_62,@object
	.section	.rodata.__unnamed_62,"a",@progbits
__unnamed_62:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_30.mlir"
	.size	__unnamed_62, 143

	.type	__unnamed_63,@object
	.section	.rodata.__unnamed_63,"a",@progbits
__unnamed_63:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_31.mlir"
	.size	__unnamed_63, 143

	.type	__unnamed_64,@object
	.section	.rodata.__unnamed_64,"a",@progbits
__unnamed_64:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_32.mlir"
	.size	__unnamed_64, 143

	.type	__unnamed_65,@object
	.section	.rodata.__unnamed_65,"a",@progbits
__unnamed_65:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_33.mlir"
	.size	__unnamed_65, 143

	.type	__unnamed_66,@object
	.section	.rodata.__unnamed_66,"a",@progbits
__unnamed_66:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_34.mlir"
	.size	__unnamed_66, 143

	.type	__unnamed_67,@object
	.section	.rodata.__unnamed_67,"a",@progbits
__unnamed_67:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_35.mlir"
	.size	__unnamed_67, 143

	.type	__unnamed_68,@object
	.section	.rodata.__unnamed_68,"a",@progbits
__unnamed_68:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_36.mlir"
	.size	__unnamed_68, 143

	.type	__unnamed_69,@object
	.section	.rodata.__unnamed_69,"a",@progbits
__unnamed_69:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_37.mlir"
	.size	__unnamed_69, 143

	.type	__unnamed_70,@object
	.section	.rodata.__unnamed_70,"a",@progbits
__unnamed_70:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_38.mlir"
	.size	__unnamed_70, 143

	.type	__unnamed_71,@object
	.section	.rodata.__unnamed_71,"a",@progbits
__unnamed_71:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_39.mlir"
	.size	__unnamed_71, 143

	.type	__unnamed_72,@object
	.section	.rodata.__unnamed_72,"a",@progbits
__unnamed_72:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_40.mlir"
	.size	__unnamed_72, 143

	.type	__unnamed_73,@object
	.section	.rodata.__unnamed_73,"a",@progbits
__unnamed_73:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_41.mlir"
	.size	__unnamed_73, 143

	.type	__unnamed_74,@object
	.section	.rodata.__unnamed_74,"a",@progbits
__unnamed_74:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_42.mlir"
	.size	__unnamed_74, 143

	.type	__unnamed_75,@object
	.section	.rodata.__unnamed_75,"a",@progbits
__unnamed_75:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_43.mlir"
	.size	__unnamed_75, 143

	.type	__unnamed_76,@object
	.section	.rodata.__unnamed_76,"a",@progbits
__unnamed_76:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_44.mlir"
	.size	__unnamed_76, 143

	.type	__unnamed_77,@object
	.section	.rodata.__unnamed_77,"a",@progbits
__unnamed_77:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs//configured_fastdepth_main_graph$async_dispatch_45.mlir"
	.size	__unnamed_77, 143

	.type	iree_hal_executable_library_query_v0_source_locations,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_source_locations,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_source_locations:
	.long	3
	.long	141
	.quad	__unnamed_40
	.long	3
	.long	141
	.quad	__unnamed_41
	.long	3
	.long	141
	.quad	__unnamed_42
	.long	3
	.long	141
	.quad	__unnamed_43
	.long	3
	.long	141
	.quad	__unnamed_44
	.long	3
	.long	141
	.quad	__unnamed_45
	.long	3
	.long	141
	.quad	__unnamed_46
	.long	3
	.long	141
	.quad	__unnamed_47
	.long	3
	.long	141
	.quad	__unnamed_48
	.long	3
	.long	141
	.quad	__unnamed_49
	.long	3
	.long	142
	.quad	__unnamed_50
	.long	3
	.long	142
	.quad	__unnamed_51
	.long	3
	.long	142
	.quad	__unnamed_52
	.long	3
	.long	142
	.quad	__unnamed_53
	.long	3
	.long	142
	.quad	__unnamed_54
	.long	3
	.long	142
	.quad	__unnamed_55
	.long	3
	.long	142
	.quad	__unnamed_56
	.long	3
	.long	142
	.quad	__unnamed_57
	.long	3
	.long	142
	.quad	__unnamed_58
	.long	3
	.long	142
	.quad	__unnamed_59
	.long	3
	.long	142
	.quad	__unnamed_60
	.long	3
	.long	142
	.quad	__unnamed_61
	.long	3
	.long	142
	.quad	__unnamed_62
	.long	3
	.long	142
	.quad	__unnamed_63
	.long	3
	.long	142
	.quad	__unnamed_64
	.long	3
	.long	142
	.quad	__unnamed_65
	.long	3
	.long	142
	.quad	__unnamed_66
	.long	3
	.long	142
	.quad	__unnamed_67
	.long	3
	.long	142
	.quad	__unnamed_68
	.long	3
	.long	142
	.quad	__unnamed_69
	.long	3
	.long	142
	.quad	__unnamed_70
	.long	3
	.long	142
	.quad	__unnamed_71
	.long	3
	.long	142
	.quad	__unnamed_72
	.long	3
	.long	142
	.quad	__unnamed_73
	.long	3
	.long	142
	.quad	__unnamed_74
	.long	3
	.long	142
	.quad	__unnamed_75
	.long	3
	.long	142
	.quad	__unnamed_76
	.long	3
	.long	142
	.quad	__unnamed_77
	.size	iree_hal_executable_library_query_v0_source_locations, 608

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

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_source_locations, 0

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
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_conv_112x112x32x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_like_64x12544x32_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_56x56x64x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_conv_56x56x128x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_matmul_like_128x3136x128_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_slow_memcpy_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_conv_28x28x128x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_conv_28x28x256x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_like_256x784x256_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_slow_memcpy_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_15_conv_14x14x256x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_conv_14x14x512x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_conv_7x7x512x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_like_512x49x1024_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_conv_14x14x512x5x5_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_like_256x196x512_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_elementwise_256x28x28_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_conv_28x28x256x5x5_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_matmul_like_128x784x256_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_elementwise_128x56x56_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_conv_56x56x128x5x5_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_like_64x3136x128_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_elementwise_64x112x112_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_43_conv_112x112x64x5x5_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_matmul_like_32x12544x64_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matvec_like_50176x32_f32_stage_source_locations
	.size	iree_hal_executable_library_query_v0_stage_location_tables, 912

	.type	iree_hal_executable_library_query_v0,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0:
	.quad	iree_hal_executable_library_query_v0_header
	.zero	16
	.long	38
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
	.long	.Linfo_string40
	.long	.Linfo_string40
	.byte	1
	.byte	1
	.long	71

	.byte	3
	.long	.Linfo_string41
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
	.long	.Linfo_string42
	.long	.Linfo_string42
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
	.long	.Linfo_string43
	.long	.Linfo_string43
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
	.long	.Linfo_string44
	.long	.Linfo_string44
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
	.long	.Linfo_string45
	.long	.Linfo_string45
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
	.long	.Linfo_string46
	.long	.Linfo_string46
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
	.long	.Linfo_string47
	.long	.Linfo_string47
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
	.long	.Linfo_string48
	.long	.Linfo_string48
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
	.long	.Linfo_string49
	.long	.Linfo_string49
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
	.long	.Linfo_string50
	.long	.Linfo_string50
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
	.long	.Linfo_string51
	.long	.Linfo_string51
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
	.long	.Linfo_string52
	.long	.Linfo_string52
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
	.long	.Linfo_string53
	.long	.Linfo_string53
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
	.long	.Linfo_string54
	.long	.Linfo_string54
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
	.long	.Linfo_string55
	.long	.Linfo_string55
	.byte	15
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end14:
.Lcu_begin15:
	.long	.Ldebug_info_end15-.Ldebug_info_start15
.Ldebug_info_start15:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string17
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin15
	.long	.Lfunc_end15-.Lfunc_begin15
	.byte	4
	.quad	.Lfunc_begin15
	.long	.Lfunc_end15-.Lfunc_begin15
	.byte	1
	.byte	86
	.long	.Linfo_string56
	.long	.Linfo_string56
	.byte	16
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end15:
.Lcu_begin16:
	.long	.Ldebug_info_end16-.Ldebug_info_start16
.Ldebug_info_start16:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string18
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin16
	.long	.Lfunc_end16-.Lfunc_begin16
	.byte	4
	.quad	.Lfunc_begin16
	.long	.Lfunc_end16-.Lfunc_begin16
	.byte	1
	.byte	86
	.long	.Linfo_string57
	.long	.Linfo_string57
	.byte	17
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end16:
.Lcu_begin17:
	.long	.Ldebug_info_end17-.Ldebug_info_start17
.Ldebug_info_start17:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string19
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin17
	.long	.Lfunc_end17-.Lfunc_begin17
	.byte	4
	.quad	.Lfunc_begin17
	.long	.Lfunc_end17-.Lfunc_begin17
	.byte	1
	.byte	86
	.long	.Linfo_string58
	.long	.Linfo_string58
	.byte	18
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end17:
.Lcu_begin18:
	.long	.Ldebug_info_end18-.Ldebug_info_start18
.Ldebug_info_start18:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string20
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin18
	.long	.Lfunc_end18-.Lfunc_begin18
	.byte	4
	.quad	.Lfunc_begin18
	.long	.Lfunc_end18-.Lfunc_begin18
	.byte	1
	.byte	86
	.long	.Linfo_string59
	.long	.Linfo_string59
	.byte	19
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end18:
.Lcu_begin19:
	.long	.Ldebug_info_end19-.Ldebug_info_start19
.Ldebug_info_start19:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string21
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin19
	.long	.Lfunc_end19-.Lfunc_begin19
	.byte	4
	.quad	.Lfunc_begin19
	.long	.Lfunc_end19-.Lfunc_begin19
	.byte	1
	.byte	86
	.long	.Linfo_string60
	.long	.Linfo_string60
	.byte	20
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end19:
.Lcu_begin20:
	.long	.Ldebug_info_end20-.Ldebug_info_start20
.Ldebug_info_start20:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string22
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin20
	.long	.Lfunc_end20-.Lfunc_begin20
	.byte	4
	.quad	.Lfunc_begin20
	.long	.Lfunc_end20-.Lfunc_begin20
	.byte	1
	.byte	86
	.long	.Linfo_string61
	.long	.Linfo_string61
	.byte	21
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end20:
.Lcu_begin21:
	.long	.Ldebug_info_end21-.Ldebug_info_start21
.Ldebug_info_start21:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string23
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin21
	.long	.Lfunc_end21-.Lfunc_begin21
	.byte	4
	.quad	.Lfunc_begin21
	.long	.Lfunc_end21-.Lfunc_begin21
	.byte	1
	.byte	86
	.long	.Linfo_string62
	.long	.Linfo_string62
	.byte	22
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end21:
.Lcu_begin22:
	.long	.Ldebug_info_end22-.Ldebug_info_start22
.Ldebug_info_start22:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string24
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin22
	.long	.Lfunc_end22-.Lfunc_begin22
	.byte	4
	.quad	.Lfunc_begin22
	.long	.Lfunc_end22-.Lfunc_begin22
	.byte	1
	.byte	86
	.long	.Linfo_string63
	.long	.Linfo_string63
	.byte	23
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end22:
.Lcu_begin23:
	.long	.Ldebug_info_end23-.Ldebug_info_start23
.Ldebug_info_start23:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string25
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin23
	.long	.Lfunc_end23-.Lfunc_begin23
	.byte	4
	.quad	.Lfunc_begin23
	.long	.Lfunc_end23-.Lfunc_begin23
	.byte	1
	.byte	86
	.long	.Linfo_string64
	.long	.Linfo_string64
	.byte	24
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end23:
.Lcu_begin24:
	.long	.Ldebug_info_end24-.Ldebug_info_start24
.Ldebug_info_start24:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string26
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin24
	.long	.Lfunc_end24-.Lfunc_begin24
	.byte	4
	.quad	.Lfunc_begin24
	.long	.Lfunc_end24-.Lfunc_begin24
	.byte	1
	.byte	86
	.long	.Linfo_string65
	.long	.Linfo_string65
	.byte	25
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end24:
.Lcu_begin25:
	.long	.Ldebug_info_end25-.Ldebug_info_start25
.Ldebug_info_start25:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string27
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin25
	.long	.Lfunc_end25-.Lfunc_begin25
	.byte	4
	.quad	.Lfunc_begin25
	.long	.Lfunc_end25-.Lfunc_begin25
	.byte	1
	.byte	86
	.long	.Linfo_string66
	.long	.Linfo_string66
	.byte	26
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end25:
.Lcu_begin26:
	.long	.Ldebug_info_end26-.Ldebug_info_start26
.Ldebug_info_start26:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string28
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin26
	.long	.Lfunc_end26-.Lfunc_begin26
	.byte	4
	.quad	.Lfunc_begin26
	.long	.Lfunc_end26-.Lfunc_begin26
	.byte	1
	.byte	86
	.long	.Linfo_string67
	.long	.Linfo_string67
	.byte	27
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end26:
.Lcu_begin27:
	.long	.Ldebug_info_end27-.Ldebug_info_start27
.Ldebug_info_start27:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string29
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin27
	.long	.Lfunc_end27-.Lfunc_begin27
	.byte	4
	.quad	.Lfunc_begin27
	.long	.Lfunc_end27-.Lfunc_begin27
	.byte	1
	.byte	86
	.long	.Linfo_string68
	.long	.Linfo_string68
	.byte	28
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end27:
.Lcu_begin28:
	.long	.Ldebug_info_end28-.Ldebug_info_start28
.Ldebug_info_start28:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string30
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin28
	.long	.Lfunc_end28-.Lfunc_begin28
	.byte	4
	.quad	.Lfunc_begin28
	.long	.Lfunc_end28-.Lfunc_begin28
	.byte	1
	.byte	86
	.long	.Linfo_string69
	.long	.Linfo_string69
	.byte	29
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end28:
.Lcu_begin29:
	.long	.Ldebug_info_end29-.Ldebug_info_start29
.Ldebug_info_start29:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string31
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin29
	.long	.Lfunc_end29-.Lfunc_begin29
	.byte	4
	.quad	.Lfunc_begin29
	.long	.Lfunc_end29-.Lfunc_begin29
	.byte	1
	.byte	86
	.long	.Linfo_string70
	.long	.Linfo_string70
	.byte	30
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end29:
.Lcu_begin30:
	.long	.Ldebug_info_end30-.Ldebug_info_start30
.Ldebug_info_start30:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string32
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin30
	.long	.Lfunc_end30-.Lfunc_begin30
	.byte	4
	.quad	.Lfunc_begin30
	.long	.Lfunc_end30-.Lfunc_begin30
	.byte	1
	.byte	86
	.long	.Linfo_string71
	.long	.Linfo_string71
	.byte	31
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end30:
.Lcu_begin31:
	.long	.Ldebug_info_end31-.Ldebug_info_start31
.Ldebug_info_start31:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string33
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin31
	.long	.Lfunc_end31-.Lfunc_begin31
	.byte	4
	.quad	.Lfunc_begin31
	.long	.Lfunc_end31-.Lfunc_begin31
	.byte	1
	.byte	86
	.long	.Linfo_string72
	.long	.Linfo_string72
	.byte	32
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end31:
.Lcu_begin32:
	.long	.Ldebug_info_end32-.Ldebug_info_start32
.Ldebug_info_start32:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string34
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin32
	.long	.Lfunc_end32-.Lfunc_begin32
	.byte	4
	.quad	.Lfunc_begin32
	.long	.Lfunc_end32-.Lfunc_begin32
	.byte	1
	.byte	86
	.long	.Linfo_string73
	.long	.Linfo_string73
	.byte	33
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end32:
.Lcu_begin33:
	.long	.Ldebug_info_end33-.Ldebug_info_start33
.Ldebug_info_start33:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string35
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin33
	.long	.Lfunc_end33-.Lfunc_begin33
	.byte	4
	.quad	.Lfunc_begin33
	.long	.Lfunc_end33-.Lfunc_begin33
	.byte	1
	.byte	86
	.long	.Linfo_string74
	.long	.Linfo_string74
	.byte	34
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end33:
.Lcu_begin34:
	.long	.Ldebug_info_end34-.Ldebug_info_start34
.Ldebug_info_start34:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string36
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin34
	.long	.Lfunc_end34-.Lfunc_begin34
	.byte	4
	.quad	.Lfunc_begin34
	.long	.Lfunc_end34-.Lfunc_begin34
	.byte	1
	.byte	86
	.long	.Linfo_string75
	.long	.Linfo_string75
	.byte	35
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end34:
.Lcu_begin35:
	.long	.Ldebug_info_end35-.Ldebug_info_start35
.Ldebug_info_start35:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string37
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin35
	.long	.Lfunc_end35-.Lfunc_begin35
	.byte	4
	.quad	.Lfunc_begin35
	.long	.Lfunc_end35-.Lfunc_begin35
	.byte	1
	.byte	86
	.long	.Linfo_string76
	.long	.Linfo_string76
	.byte	36
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end35:
.Lcu_begin36:
	.long	.Ldebug_info_end36-.Ldebug_info_start36
.Ldebug_info_start36:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string38
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin36
	.long	.Lfunc_end36-.Lfunc_begin36
	.byte	4
	.quad	.Lfunc_begin36
	.long	.Lfunc_end36-.Lfunc_begin36
	.byte	1
	.byte	86
	.long	.Linfo_string77
	.long	.Linfo_string77
	.byte	37
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end36:
.Lcu_begin37:
	.long	.Ldebug_info_end37-.Ldebug_info_start37
.Ldebug_info_start37:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string39
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin37
	.long	.Lfunc_end37-.Lfunc_begin37
	.byte	4
	.quad	.Lfunc_begin37
	.long	.Lfunc_end37-.Lfunc_begin37
	.byte	1
	.byte	86
	.long	.Linfo_string78
	.long	.Linfo_string78
	.byte	38
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end37:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"IREE"
.Linfo_string1:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_0.mlir"
.Linfo_string2:
	.asciz	"/scratch2/merlin/samples/robotic-NN/example_workload_mlir/workload_mlir/models/configs"
.Linfo_string3:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_1.mlir"
.Linfo_string4:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_2.mlir"
.Linfo_string5:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_3.mlir"
.Linfo_string6:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_4.mlir"
.Linfo_string7:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_5.mlir"
.Linfo_string8:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_6.mlir"
.Linfo_string9:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_7.mlir"
.Linfo_string10:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_8.mlir"
.Linfo_string11:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_9.mlir"
.Linfo_string12:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_10.mlir"
.Linfo_string13:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_11.mlir"
.Linfo_string14:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_12.mlir"
.Linfo_string15:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_13.mlir"
.Linfo_string16:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_14.mlir"
.Linfo_string17:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_15.mlir"
.Linfo_string18:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_16.mlir"
.Linfo_string19:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_17.mlir"
.Linfo_string20:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_18.mlir"
.Linfo_string21:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_27.mlir"
.Linfo_string22:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_28.mlir"
.Linfo_string23:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_29.mlir"
.Linfo_string24:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_30.mlir"
.Linfo_string25:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_31.mlir"
.Linfo_string26:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_32.mlir"
.Linfo_string27:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_33.mlir"
.Linfo_string28:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_34.mlir"
.Linfo_string29:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_35.mlir"
.Linfo_string30:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_36.mlir"
.Linfo_string31:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_37.mlir"
.Linfo_string32:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_38.mlir"
.Linfo_string33:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_39.mlir"
.Linfo_string34:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_40.mlir"
.Linfo_string35:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_41.mlir"
.Linfo_string36:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_42.mlir"
.Linfo_string37:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_43.mlir"
.Linfo_string38:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_44.mlir"
.Linfo_string39:
	.asciz	"configured_fastdepth_main_graph$async_dispatch_45.mlir"
.Linfo_string40:
	.asciz	"main_graph$async_dispatch_0_slow_memcpy"
.Linfo_string41:
	.asciz	"int"
.Linfo_string42:
	.asciz	"main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32"
.Linfo_string43:
	.asciz	"main_graph$async_dispatch_2_conv_112x112x32x3x3_f32"
.Linfo_string44:
	.asciz	"main_graph$async_dispatch_3_matmul_like_64x12544x32_f32"
.Linfo_string45:
	.asciz	"main_graph$async_dispatch_4_slow_memcpy"
.Linfo_string46:
	.asciz	"main_graph$async_dispatch_5_conv_56x56x64x3x3_f32"
.Linfo_string47:
	.asciz	"main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32"
.Linfo_string48:
	.asciz	"main_graph$async_dispatch_7_conv_56x56x128x3x3_f32"
.Linfo_string49:
	.asciz	"main_graph$async_dispatch_8_matmul_like_128x3136x128_f32"
.Linfo_string50:
	.asciz	"main_graph$async_dispatch_9_slow_memcpy"
.Linfo_string51:
	.asciz	"main_graph$async_dispatch_10_conv_28x28x128x3x3_f32"
.Linfo_string52:
	.asciz	"main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32"
.Linfo_string53:
	.asciz	"main_graph$async_dispatch_12_conv_28x28x256x3x3_f32"
.Linfo_string54:
	.asciz	"main_graph$async_dispatch_13_matmul_like_256x784x256_f32"
.Linfo_string55:
	.asciz	"main_graph$async_dispatch_14_slow_memcpy"
.Linfo_string56:
	.asciz	"main_graph$async_dispatch_15_conv_14x14x256x3x3_f32"
.Linfo_string57:
	.asciz	"main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32"
.Linfo_string58:
	.asciz	"main_graph$async_dispatch_17_conv_14x14x512x3x3_f32"
.Linfo_string59:
	.asciz	"main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32"
.Linfo_string60:
	.asciz	"main_graph$async_dispatch_27_conv_7x7x512x3x3_f32"
.Linfo_string61:
	.asciz	"main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32"
.Linfo_string62:
	.asciz	"main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32"
.Linfo_string63:
	.asciz	"main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32"
.Linfo_string64:
	.asciz	"main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32"
.Linfo_string65:
	.asciz	"main_graph$async_dispatch_32_matmul_like_512x49x1024_f32"
.Linfo_string66:
	.asciz	"main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32"
.Linfo_string67:
	.asciz	"main_graph$async_dispatch_34_conv_14x14x512x5x5_f32"
.Linfo_string68:
	.asciz	"main_graph$async_dispatch_35_matmul_like_256x196x512_f32"
.Linfo_string69:
	.asciz	"main_graph$async_dispatch_36_elementwise_256x28x28_f32"
.Linfo_string70:
	.asciz	"main_graph$async_dispatch_37_conv_28x28x256x5x5_f32"
.Linfo_string71:
	.asciz	"main_graph$async_dispatch_38_matmul_like_128x784x256_f32"
.Linfo_string72:
	.asciz	"main_graph$async_dispatch_39_elementwise_128x56x56_f32"
.Linfo_string73:
	.asciz	"main_graph$async_dispatch_40_conv_56x56x128x5x5_f32"
.Linfo_string74:
	.asciz	"main_graph$async_dispatch_41_matmul_like_64x3136x128_f32"
.Linfo_string75:
	.asciz	"main_graph$async_dispatch_42_elementwise_64x112x112_f32"
.Linfo_string76:
	.asciz	"main_graph$async_dispatch_43_conv_112x112x64x5x5_f32"
.Linfo_string77:
	.asciz	"main_graph$async_dispatch_44_matmul_like_32x12544x64_f32"
.Linfo_string78:
	.asciz	"main_graph$async_dispatch_45_matvec_like_50176x32_f32"
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
	.asciz	"main_graph$async_dispatch_1_conv_32x112x112x3x3x3_f32"
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
	.asciz	"main_graph$async_dispatch_2_conv_112x112x32x3x3_f32"
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
	.asciz	"main_graph$async_dispatch_3_matmul_like_64x12544x32_f32"
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
	.asciz	"main_graph$async_dispatch_4_slow_memcpy"
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
	.asciz	"main_graph$async_dispatch_5_conv_56x56x64x3x3_f32"
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
	.asciz	"main_graph$async_dispatch_6_matmul_like_128x56x56x64_f32"
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
	.asciz	"main_graph$async_dispatch_7_conv_56x56x128x3x3_f32"
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
	.asciz	"main_graph$async_dispatch_8_matmul_like_128x3136x128_f32"
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
	.asciz	"main_graph$async_dispatch_9_slow_memcpy"
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
	.asciz	"main_graph$async_dispatch_10_conv_28x28x128x3x3_f32"
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
	.asciz	"main_graph$async_dispatch_11_matmul_like_256x28x28x128_f32"
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
	.asciz	"main_graph$async_dispatch_12_conv_28x28x256x3x3_f32"
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
	.asciz	"main_graph$async_dispatch_13_matmul_like_256x784x256_f32"
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
	.asciz	"main_graph$async_dispatch_14_slow_memcpy"
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
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end15-.LpubNames_start15
.LpubNames_start15:
	.short	2
	.long	.Lcu_begin15
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_15_conv_14x14x256x3x3_f32"
	.long	0
.LpubNames_end15:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end15-.LpubTypes_start15
.LpubTypes_start15:
	.short	2
	.long	.Lcu_begin15
	.long	72
	.long	0
.LpubTypes_end15:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end16-.LpubNames_start16
.LpubNames_start16:
	.short	2
	.long	.Lcu_begin16
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_16_matmul_like_512x14x14x256_f32"
	.long	0
.LpubNames_end16:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end16-.LpubTypes_start16
.LpubTypes_start16:
	.short	2
	.long	.Lcu_begin16
	.long	72
	.long	0
.LpubTypes_end16:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end17-.LpubNames_start17
.LpubNames_start17:
	.short	2
	.long	.Lcu_begin17
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_17_conv_14x14x512x3x3_f32"
	.long	0
.LpubNames_end17:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end17-.LpubTypes_start17
.LpubTypes_start17:
	.short	2
	.long	.Lcu_begin17
	.long	72
	.long	0
.LpubTypes_end17:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end18-.LpubNames_start18
.LpubNames_start18:
	.short	2
	.long	.Lcu_begin18
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_18_matmul_like_512x14x14x512_f32"
	.long	0
.LpubNames_end18:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end18-.LpubTypes_start18
.LpubTypes_start18:
	.short	2
	.long	.Lcu_begin18
	.long	72
	.long	0
.LpubTypes_end18:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end19-.LpubNames_start19
.LpubNames_start19:
	.short	2
	.long	.Lcu_begin19
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_27_conv_7x7x512x3x3_f32"
	.long	0
.LpubNames_end19:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end19-.LpubTypes_start19
.LpubTypes_start19:
	.short	2
	.long	.Lcu_begin19
	.long	72
	.long	0
.LpubTypes_end19:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end20-.LpubNames_start20
.LpubNames_start20:
	.short	2
	.long	.Lcu_begin20
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_28_matmul_like_1024x7x7x512_f32"
	.long	0
.LpubNames_end20:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end20-.LpubTypes_start20
.LpubTypes_start20:
	.short	2
	.long	.Lcu_begin20
	.long	72
	.long	0
.LpubTypes_end20:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end21-.LpubNames_start21
.LpubNames_start21:
	.short	2
	.long	.Lcu_begin21
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_29_conv_7x7x1024x3x3_f32"
	.long	0
.LpubNames_end21:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end21-.LpubTypes_start21
.LpubTypes_start21:
	.short	2
	.long	.Lcu_begin21
	.long	72
	.long	0
.LpubTypes_end21:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end22-.LpubNames_start22
.LpubNames_start22:
	.short	2
	.long	.Lcu_begin22
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_30_matmul_like_1024x7x7x1024_f32"
	.long	0
.LpubNames_end22:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end22-.LpubTypes_start22
.LpubTypes_start22:
	.short	2
	.long	.Lcu_begin22
	.long	72
	.long	0
.LpubTypes_end22:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end23-.LpubNames_start23
.LpubNames_start23:
	.short	2
	.long	.Lcu_begin23
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_31_conv_7x7x1024x5x5_f32"
	.long	0
.LpubNames_end23:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end23-.LpubTypes_start23
.LpubTypes_start23:
	.short	2
	.long	.Lcu_begin23
	.long	72
	.long	0
.LpubTypes_end23:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end24-.LpubNames_start24
.LpubNames_start24:
	.short	2
	.long	.Lcu_begin24
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_32_matmul_like_512x49x1024_f32"
	.long	0
.LpubNames_end24:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end24-.LpubTypes_start24
.LpubTypes_start24:
	.short	2
	.long	.Lcu_begin24
	.long	72
	.long	0
.LpubTypes_end24:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end25-.LpubNames_start25
.LpubNames_start25:
	.short	2
	.long	.Lcu_begin25
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_33_elementwise_broadcast_512x14x14_f32"
	.long	0
.LpubNames_end25:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end25-.LpubTypes_start25
.LpubTypes_start25:
	.short	2
	.long	.Lcu_begin25
	.long	72
	.long	0
.LpubTypes_end25:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end26-.LpubNames_start26
.LpubNames_start26:
	.short	2
	.long	.Lcu_begin26
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_34_conv_14x14x512x5x5_f32"
	.long	0
.LpubNames_end26:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end26-.LpubTypes_start26
.LpubTypes_start26:
	.short	2
	.long	.Lcu_begin26
	.long	72
	.long	0
.LpubTypes_end26:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end27-.LpubNames_start27
.LpubNames_start27:
	.short	2
	.long	.Lcu_begin27
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_35_matmul_like_256x196x512_f32"
	.long	0
.LpubNames_end27:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end27-.LpubTypes_start27
.LpubTypes_start27:
	.short	2
	.long	.Lcu_begin27
	.long	72
	.long	0
.LpubTypes_end27:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end28-.LpubNames_start28
.LpubNames_start28:
	.short	2
	.long	.Lcu_begin28
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_36_elementwise_256x28x28_f32"
	.long	0
.LpubNames_end28:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end28-.LpubTypes_start28
.LpubTypes_start28:
	.short	2
	.long	.Lcu_begin28
	.long	72
	.long	0
.LpubTypes_end28:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end29-.LpubNames_start29
.LpubNames_start29:
	.short	2
	.long	.Lcu_begin29
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_37_conv_28x28x256x5x5_f32"
	.long	0
.LpubNames_end29:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end29-.LpubTypes_start29
.LpubTypes_start29:
	.short	2
	.long	.Lcu_begin29
	.long	72
	.long	0
.LpubTypes_end29:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end30-.LpubNames_start30
.LpubNames_start30:
	.short	2
	.long	.Lcu_begin30
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_38_matmul_like_128x784x256_f32"
	.long	0
.LpubNames_end30:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end30-.LpubTypes_start30
.LpubTypes_start30:
	.short	2
	.long	.Lcu_begin30
	.long	72
	.long	0
.LpubTypes_end30:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end31-.LpubNames_start31
.LpubNames_start31:
	.short	2
	.long	.Lcu_begin31
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_39_elementwise_128x56x56_f32"
	.long	0
.LpubNames_end31:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end31-.LpubTypes_start31
.LpubTypes_start31:
	.short	2
	.long	.Lcu_begin31
	.long	72
	.long	0
.LpubTypes_end31:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end32-.LpubNames_start32
.LpubNames_start32:
	.short	2
	.long	.Lcu_begin32
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_40_conv_56x56x128x5x5_f32"
	.long	0
.LpubNames_end32:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end32-.LpubTypes_start32
.LpubTypes_start32:
	.short	2
	.long	.Lcu_begin32
	.long	72
	.long	0
.LpubTypes_end32:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end33-.LpubNames_start33
.LpubNames_start33:
	.short	2
	.long	.Lcu_begin33
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_41_matmul_like_64x3136x128_f32"
	.long	0
.LpubNames_end33:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end33-.LpubTypes_start33
.LpubTypes_start33:
	.short	2
	.long	.Lcu_begin33
	.long	72
	.long	0
.LpubTypes_end33:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end34-.LpubNames_start34
.LpubNames_start34:
	.short	2
	.long	.Lcu_begin34
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_42_elementwise_64x112x112_f32"
	.long	0
.LpubNames_end34:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end34-.LpubTypes_start34
.LpubTypes_start34:
	.short	2
	.long	.Lcu_begin34
	.long	72
	.long	0
.LpubTypes_end34:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end35-.LpubNames_start35
.LpubNames_start35:
	.short	2
	.long	.Lcu_begin35
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_43_conv_112x112x64x5x5_f32"
	.long	0
.LpubNames_end35:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end35-.LpubTypes_start35
.LpubTypes_start35:
	.short	2
	.long	.Lcu_begin35
	.long	72
	.long	0
.LpubTypes_end35:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end36-.LpubNames_start36
.LpubNames_start36:
	.short	2
	.long	.Lcu_begin36
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_44_matmul_like_32x12544x64_f32"
	.long	0
.LpubNames_end36:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end36-.LpubTypes_start36
.LpubTypes_start36:
	.short	2
	.long	.Lcu_begin36
	.long	72
	.long	0
.LpubTypes_end36:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end37-.LpubNames_start37
.LpubNames_start37:
	.short	2
	.long	.Lcu_begin37
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_45_matvec_like_50176x32_f32"
	.long	0
.LpubNames_end37:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end37-.LpubTypes_start37
.LpubTypes_start37:
	.short	2
	.long	.Lcu_begin37
	.long	72
	.long	0
.LpubTypes_end37:
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
