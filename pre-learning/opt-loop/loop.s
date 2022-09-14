	.file	"loop.cpp"
	.intel_syntax noprefix
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
	mov	eax, esi
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
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 16
	.cfi_def_cfa_offset 32
	cmp	QWORD PTR a[rip], 0
	je	.L8
.L4:
	xor	edi, edi
	xor	ebx, ebx
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	.p2align 4,,10
	.p2align 3
.L5:
	call	rand@PLT
	pxor	xmm1, xmm1
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	add	eax, 1
	cvtsi2sd	xmm1, eax
	mov	rax, QWORD PTR .LC0[rip]
	movq	xmm0, rax
	call	pow@PLT
	movsd	QWORD PTR 8[rsp], xmm0
	call	rand@PLT
	movsd	xmm0, QWORD PTR 8[rsp]
	mov	r8d, eax
	cvttsd2si	eax, xmm0
	pxor	xmm0, xmm0
	imul	eax, r8d
	cvtsi2sd	xmm0, eax
	mov	rax, QWORD PTR a[rip]
	divsd	xmm0, QWORD PTR .LC1[rip]
	movsd	QWORD PTR [rax+rbx], xmm0
	add	rbx, 8
	cmp	rbx, 800000000
	jne	.L5
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore_state
	mov	edi, 800000000
	call	_Znam@PLT
	mov	QWORD PTR a[rip], rax
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
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	lea	r12, _ZSt4cout[rip]
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	xor	ebx, ebx
	sub	rsp, 16
	.cfi_def_cfa_offset 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	lea	rbp, 7[rsp]
	.p2align 4,,10
	.p2align 3
.L10:
	mov	rax, QWORD PTR a[rip]
	mov	rdi, r12
	movsd	xmm0, QWORD PTR [rax+rbx]
	add	rbx, 8
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	edx, 1
	mov	rsi, rbp
	mov	BYTE PTR 7[rsp], 32
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmp	rbx, 800000000
	jne	.L10
	mov	rax, QWORD PTR [r12]
	mov	rax, QWORD PTR -24[rax]
	mov	rbp, QWORD PTR 240[r12+rax]
	test	rbp, rbp
	je	.L19
	cmp	BYTE PTR 56[rbp], 0
	je	.L12
	movsx	esi, BYTE PTR 67[rbp]
.L13:
	mov	rdi, r12
	call	_ZNSo3putEc@PLT
	mov	rdi, rax
	mov	rax, QWORD PTR 8[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L20
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
.L12:
	.cfi_restore_state
	mov	rdi, rbp
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rax, QWORD PTR 0[rbp]
	mov	esi, 10
	lea	rdx, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, rdx
	je	.L13
	mov	rdi, rbp
	call	rax
	movsx	esi, al
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
	mov	rax, QWORD PTR a[rip]
	movsd	xmm2, QWORD PTR .LC2[rip]
	movsd	xmm1, QWORD PTR .LC3[rip]
	lea	rdx, 800000000[rax]
	.p2align 4,,10
	.p2align 3
.L22:
	movsd	xmm0, QWORD PTR [rax]
	add	rax, 8
	mulsd	xmm0, xmm2
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rax], xmm0
	cmp	rax, rdx
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
	mov	rax, QWORD PTR a[rip]
	movsd	xmm2, QWORD PTR .LC2[rip]
	movsd	xmm1, QWORD PTR .LC3[rip]
	lea	rdx, 800000000[rax]
	.p2align 4,,10
	.p2align 3
.L25:
	movsd	xmm0, QWORD PTR [rax]
	add	rax, 8
	mulsd	xmm0, xmm2
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rax], xmm0
	cmp	rdx, rax
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
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pxor	xmm5, xmm5
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	xor	ebx, ebx
	sub	rsp, 16
	.cfi_def_cfa_offset 48
	movsd	QWORD PTR 8[rsp], xmm5
.L29:
	call	_Z4initv
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	mov	rcx, QWORD PTR .LC3[rip]
	mov	rsi, QWORD PTR .LC2[rip]
	mov	rbp, rax
	mov	rax, QWORD PTR a[rip]
	movq	xmm1, rcx
	movq	xmm2, rsi
	lea	rdx, 800000000[rax]
	.p2align 4,,10
	.p2align 3
.L28:
	movsd	xmm0, QWORD PTR [rax]
	add	rax, 8
	mulsd	xmm0, xmm2
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rax], xmm0
	cmp	rax, rdx
	jne	.L28
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	xmm0, xmm0
	movsd	xmm4, QWORD PTR .LC6[rip]
	add	ebx, 1
	sub	rax, rbp
	cvtsi2sd	xmm0, rax
	divsd	xmm0, QWORD PTR .LC5[rip]
	addsd	xmm0, QWORD PTR 8[rsp]
	comisd	xmm4, xmm0
	movsd	QWORD PTR 8[rsp], xmm0
	ja	.L29
	lea	rsi, .LC7[rip]
	lea	rdi, _ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	pxor	xmm1, xmm1
	movsd	xmm0, QWORD PTR 8[rsp]
	cvtsi2sd	xmm1, ebx
	mov	rdi, rax
	divsd	xmm0, xmm1
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	r12, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	mov	rbp, QWORD PTR 240[r12+rax]
	test	rbp, rbp
	je	.L37
	cmp	BYTE PTR 56[rbp], 0
	je	.L31
	movzx	eax, BYTE PTR 67[rbp]
.L32:
	mov	rdi, r12
	movsx	esi, al
	call	_ZNSo3putEc@PLT
	mov	rdi, rax
	call	_ZNSo5flushEv@PLT
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
.L31:
	.cfi_restore_state
	mov	rdi, rbp
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rax, QWORD PTR 0[rbp]
	lea	rcx, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	rdx, QWORD PTR 48[rax]
	mov	eax, 10
	cmp	rdx, rcx
	je	.L32
	mov	esi, 10
	mov	rdi, rbp
	call	rdx
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	lea	rbp, _ZStL8__ioinit[rip]
	mov	rdi, rbp
	call	_ZNSt8ios_base4InitC1Ev@PLT
	mov	rdi, QWORD PTR _ZNSt8ios_base4InitD1Ev@GOTPCREL[rip]
	mov	rsi, rbp
	pop	rbp
	.cfi_def_cfa_offset 8
	lea	rdx, __dso_handle[rip]
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
	.align 8
.LC2:
	.long	0
	.long	1084178432
	.align 8
.LC3:
	.long	0
	.long	1086556160
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
