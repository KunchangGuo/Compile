	.file	"loop.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1565:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1565:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4
	.globl	_Z4initv
	.type	_Z4initv, @function
_Z4initv:
.LFB2515:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, a(%rip)
	je	.L8
.L4:
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	.p2align 4,,10
	.p2align 3
.L5:
	call	rand@PLT
	pxor	%xmm1, %xmm1
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	movq	.LC0(%rip), %rax
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	%xmm0, 8(%rsp)
	call	rand@PLT
	movsd	8(%rsp), %xmm0
	movl	%eax, %r8d
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	imull	%r8d, %eax
	cvtsi2sdl	%eax, %xmm0
	movq	a(%rip), %rax
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, (%rax,%rbx)
	addq	$8, %rbx
	cmpq	$800000000, %rbx
	jne	.L5
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore_state
	movl	$800000000, %edi
	call	_Znam@PLT
	movq	%rax, a(%rip)
	jmp	.L4
	.cfi_endproc
.LFE2515:
	.size	_Z4initv, .-_Z4initv
	.p2align 4
	.globl	_Z5printv
	.type	_Z5printv, @function
_Z5printv:
.LFB2516:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	_ZSt4cout(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	xorl	%ebx, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	7(%rsp), %rbp
	.p2align 4,,10
	.p2align 3
.L10:
	movq	a(%rip), %rax
	movq	%r12, %rdi
	movsd	(%rax,%rbx), %xmm0
	addq	$8, %rbx
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movb	$32, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpq	$800000000, %rbx
	jne	.L10
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbp
	testq	%rbp, %rbp
	je	.L19
	cmpb	$0, 56(%rbp)
	je	.L12
	movsbl	67(%rbp), %esi
.L13:
	movq	%r12, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L20
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
.L12:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L13
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L13
.L20:
	call	__stack_chk_fail@PLT
.L19:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE2516:
	.size	_Z5printv, .-_Z5printv
	.p2align 4
	.globl	_Z5loop1v
	.type	_Z5loop1v, @function
_Z5loop1v:
.LFB2517:
	.cfi_startproc
	endbr64
	movq	a(%rip), %rax
	movapd	.LC2(%rip), %xmm2
	movapd	.LC3(%rip), %xmm1
	leaq	800000000(%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L22:
	movupd	(%rax), %xmm0
	addq	$16, %rax
	mulpd	%xmm2, %xmm0
	divpd	%xmm1, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L22
	ret
	.cfi_endproc
.LFE2517:
	.size	_Z5loop1v, .-_Z5loop1v
	.p2align 4
	.globl	_Z5loop2v
	.type	_Z5loop2v, @function
_Z5loop2v:
.LFB2518:
	.cfi_startproc
	endbr64
	movq	a(%rip), %rax
	movapd	.LC2(%rip), %xmm2
	movapd	.LC3(%rip), %xmm1
	leaq	800000000(%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L25:
	movupd	(%rax), %xmm0
	addq	$16, %rax
	mulpd	%xmm2, %xmm0
	divpd	%xmm1, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L25
	ret
	.cfi_endproc
.LFE2518:
	.size	_Z5loop2v, .-_Z5loop2v
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"Time cost is: "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2519:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pxor	%xmm5, %xmm5
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	xorl	%ebx, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movsd	%xmm5, 8(%rsp)
.L29:
	call	_Z4initv
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movapd	.LC3(%rip), %xmm1
	movapd	.LC2(%rip), %xmm2
	movq	%rax, %rbp
	movq	a(%rip), %rax
	leaq	800000000(%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L28:
	movupd	(%rax), %xmm0
	addq	$16, %rax
	mulpd	%xmm2, %xmm0
	divpd	%xmm1, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L28
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movsd	.LC6(%rip), %xmm4
	addl	$1, %ebx
	subq	%rbp, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC5(%rip), %xmm0
	addsd	8(%rsp), %xmm0
	comisd	%xmm0, %xmm4
	movsd	%xmm0, 8(%rsp)
	ja	.L29
	leaq	_ZSt4cout(%rip), %rbp
	movl	$14, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	pxor	%xmm1, %xmm1
	movsd	8(%rsp), %xmm0
	movq	%rbp, %rdi
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbp
	testq	%rbp, %rbp
	je	.L37
	cmpb	$0, 56(%rbp)
	je	.L31
	movzbl	67(%rbp), %eax
.L32:
	movq	%r12, %rdi
	movsbl	%al, %esi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L31:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movq	48(%rax), %rdx
	movl	$10, %eax
	cmpq	%rcx, %rdx
	je	.L32
	movl	$10, %esi
	movq	%rbp, %rdi
	call	*%rdx
	jmp	.L32
.L37:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE2519:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I_a, @function
_GLOBAL__sub_I_a:
.LFB3201:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	_ZStL8__ioinit(%rip), %rbp
	movq	%rbp, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	popq	%rbp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE3201:
	.size	_GLOBAL__sub_I_a, .-_GLOBAL__sub_I_a
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_a
	.globl	a
	.bss
	.align 8
	.type	a, @object
	.size	a, 8
a:
	.zero	8
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	-1074790400
	.align 8
.LC1:
	.long	-4194304
	.long	1105199103
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	0
	.long	1084178432
	.long	0
	.long	1084178432
	.align 16
.LC3:
	.long	0
	.long	1086556160
	.long	0
	.long	1086556160
	.section	.rodata.cst8
	.align 8
.LC5:
	.long	0
	.long	1104006501
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
