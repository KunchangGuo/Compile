	.text
	.intel_syntax noprefix
	.file	"loop.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _Z4initv
.LCPI0_0:
	.quad	0xbff0000000000000              # double -1
.LCPI0_1:
	.quad	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	_Z4initv
	.p2align	4, 0x90
	.type	_Z4initv,@function
_Z4initv:                               # @_Z4initv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset rbp, -16
	cmp	qword ptr [rip + a], 0
	jne	.LBB0_2
# %bb.1:
	mov	edi, 800000000
	call	_Znam@PLT
	mov	qword ptr [rip + a], rax
.LBB0_2:
	xor	ebx, ebx
	xor	edi, edi
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	call	rand@PLT
                                        # kill: def $eax killed $eax def $rax
	mov	ecx, eax
	shr	ecx, 31
	add	ecx, eax
	and	ecx, -2
	neg	ecx
	add	eax, ecx
	add	eax, 1
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, qword ptr [rip + .LCPI0_0] # xmm0 = mem[0],zero
	call	pow@PLT
	cvttsd2si	ebp, xmm0
	call	rand@PLT
	imul	eax, ebp
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	divsd	xmm0, qword ptr [rip + .LCPI0_1]
	mov	rax, qword ptr [rip + a]
	movsd	qword ptr [rax + 8*rbx], xmm0
	add	rbx, 1
	cmp	rbx, 100000000
	jne	.LBB0_3
# %bb.4:
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end0:
	.size	_Z4initv, .Lfunc_end0-_Z4initv
	.cfi_endproc
                                        # -- End function
	.globl	_Z5printv                       # -- Begin function _Z5printv
	.p2align	4, 0x90
	.type	_Z5printv,@function
_Z5printv:                              # @_Z5printv
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	sub	rsp, 16
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	xor	ebx, ebx
	mov	r14, qword ptr [rip + _ZSt4cout@GOTPCREL]
	lea	r15, [rsp + 15]
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rip + a]
	movsd	xmm0, qword ptr [rax + 8*rbx]   # xmm0 = mem[0],zero
	mov	rdi, r14
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	byte ptr [rsp + 15], 32
	mov	edx, 1
	mov	rdi, rax
	mov	rsi, r15
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	add	rbx, 1
	cmp	rbx, 100000000
	jne	.LBB1_1
# %bb.2:
	mov	rax, qword ptr [r14]
	mov	rax, qword ptr [rax - 24]
	mov	rbx, qword ptr [r14 + rax + 240]
	test	rbx, rbx
	je	.LBB1_7
# %bb.3:
	cmp	byte ptr [rbx + 56], 0
	je	.LBB1_5
# %bb.4:
	mov	al, byte ptr [rbx + 67]
	jmp	.LBB1_6
.LBB1_5:
	mov	rdi, rbx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rax, qword ptr [rbx]
	mov	rdi, rbx
	mov	esi, 10
	call	qword ptr [rax + 48]
.LBB1_6:
	movsx	esi, al
	mov	rdi, qword ptr [rip + _ZSt4cout@GOTPCREL]
	call	_ZNSo3putEc@PLT
	mov	rdi, rax
	call	_ZNSo5flushEv@PLT
	add	rsp, 16
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB1_7:
	.cfi_def_cfa_offset 48
	call	_ZSt16__throw_bad_castv@PLT
.Lfunc_end1:
	.size	_Z5printv, .Lfunc_end1-_Z5printv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function _Z5loop1v
.LCPI2_0:
	.quad	0x409f400000000000              # double 2000
	.quad	0x409f400000000000              # double 2000
.LCPI2_1:
	.quad	0x40c3880000000000              # double 1.0E+4
	.quad	0x40c3880000000000              # double 1.0E+4
	.text
	.globl	_Z5loop1v
	.p2align	4, 0x90
	.type	_Z5loop1v,@function
_Z5loop1v:                              # @_Z5loop1v
	.cfi_startproc
# %bb.0:
	mov	eax, 2
	mov	rcx, qword ptr [rip + a]
	movapd	xmm0, xmmword ptr [rip + .LCPI2_0] # xmm0 = [2.0E+3,2.0E+3]
	movapd	xmm1, xmmword ptr [rip + .LCPI2_1] # xmm1 = [1.0E+4,1.0E+4]
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movupd	xmm2, xmmword ptr [rcx + 8*rax - 16]
	movupd	xmm3, xmmword ptr [rcx + 8*rax]
	mulpd	xmm2, xmm0
	divpd	xmm2, xmm1
	movupd	xmmword ptr [rcx + 8*rax - 16], xmm2
	mulpd	xmm3, xmm0
	divpd	xmm3, xmm1
	movupd	xmmword ptr [rcx + 8*rax], xmm3
	add	rax, 4
	cmp	rax, 100000002
	jne	.LBB2_1
# %bb.2:
	ret
.Lfunc_end2:
	.size	_Z5loop1v, .Lfunc_end2-_Z5loop1v
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function _Z5loop2v
.LCPI3_0:
	.quad	0x409f400000000000              # double 2000
	.quad	0x409f400000000000              # double 2000
.LCPI3_1:
	.quad	0x40c3880000000000              # double 1.0E+4
	.quad	0x40c3880000000000              # double 1.0E+4
	.text
	.globl	_Z5loop2v
	.p2align	4, 0x90
	.type	_Z5loop2v,@function
_Z5loop2v:                              # @_Z5loop2v
	.cfi_startproc
# %bb.0:
	mov	eax, 2
	mov	rcx, qword ptr [rip + a]
	movapd	xmm0, xmmword ptr [rip + .LCPI3_0] # xmm0 = [2.0E+3,2.0E+3]
	movapd	xmm1, xmmword ptr [rip + .LCPI3_1] # xmm1 = [1.0E+4,1.0E+4]
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movupd	xmm2, xmmword ptr [rcx + 8*rax - 16]
	movupd	xmm3, xmmword ptr [rcx + 8*rax]
	mulpd	xmm2, xmm0
	divpd	xmm2, xmm1
	movupd	xmmword ptr [rcx + 8*rax - 16], xmm2
	mulpd	xmm3, xmm0
	divpd	xmm3, xmm1
	movupd	xmmword ptr [rcx + 8*rax], xmm3
	add	rax, 4
	cmp	rax, 100000002
	jne	.LBB3_1
# %bb.2:
	ret
.Lfunc_end3:
	.size	_Z5loop2v, .Lfunc_end3-_Z5loop2v
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function main
.LCPI4_0:
	.quad	0xbff0000000000000              # double -1
.LCPI4_1:
	.quad	0x41dfffffffc00000              # double 2147483647
.LCPI4_4:
	.quad	0x41cdcd6500000000              # double 1.0E+9
.LCPI4_5:
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI4_2:
	.quad	0x409f400000000000              # double 2000
	.quad	0x409f400000000000              # double 2000
.LCPI4_3:
	.quad	0x40c3880000000000              # double 1.0E+4
	.quad	0x40c3880000000000              # double 1.0E+4
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	push	rax
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	xorpd	xmm0, xmm0
	movsd	qword ptr [rsp], xmm0           # 8-byte Spill
	xor	r15d, r15d
	.p2align	4, 0x90
.LBB4_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
                                        #     Child Loop BB4_6 Depth 2
	cmp	qword ptr [rip + a], 0
	jne	.LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	mov	edi, 800000000
	call	_Znam@PLT
	mov	qword ptr [rip + a], rax
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	xor	edi, edi
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	xor	ebx, ebx
	.p2align	4, 0x90
.LBB4_4:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	call	rand@PLT
                                        # kill: def $eax killed $eax def $rax
	mov	ecx, eax
	shr	ecx, 31
	add	ecx, eax
	and	ecx, -2
	neg	ecx
	add	eax, ecx
	add	eax, 1
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, qword ptr [rip + .LCPI4_0] # xmm0 = mem[0],zero
	call	pow@PLT
	cvttsd2si	ebp, xmm0
	call	rand@PLT
	imul	eax, ebp
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	divsd	xmm0, qword ptr [rip + .LCPI4_1]
	mov	rax, qword ptr [rip + a]
	movsd	qword ptr [rax + 8*rbx], xmm0
	add	rbx, 1
	cmp	rbx, 100000000
	jne	.LBB4_4
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	mov	r14, rax
	mov	eax, 2
	mov	rcx, qword ptr [rip + a]
	movapd	xmm2, xmmword ptr [rip + .LCPI4_2] # xmm2 = [2.0E+3,2.0E+3]
	movapd	xmm3, xmmword ptr [rip + .LCPI4_3] # xmm3 = [1.0E+4,1.0E+4]
	.p2align	4, 0x90
.LBB4_6:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movupd	xmm0, xmmword ptr [rcx + 8*rax - 16]
	movupd	xmm1, xmmword ptr [rcx + 8*rax]
	mulpd	xmm0, xmm2
	divpd	xmm0, xmm3
	movupd	xmmword ptr [rcx + 8*rax - 16], xmm0
	mulpd	xmm1, xmm2
	divpd	xmm1, xmm3
	movupd	xmmword ptr [rcx + 8*rax], xmm1
	add	rax, 4
	cmp	rax, 100000002
	jne	.LBB4_6
# %bb.7:                                #   in Loop: Header=BB4_1 Depth=1
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	sub	rax, r14
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	divsd	xmm0, qword ptr [rip + .LCPI4_4]
	movsd	xmm1, qword ptr [rsp]           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	xmm1, xmm0
	add	r15d, 1
	movsd	qword ptr [rsp], xmm1           # 8-byte Spill
	movsd	xmm0, qword ptr [rip + .LCPI4_5] # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm1
	ja	.LBB4_1
# %bb.8:
	mov	r14, qword ptr [rip + _ZSt4cout@GOTPCREL]
	lea	rsi, [rip + .L.str]
	mov	edx, 14
	mov	rdi, r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, r15d
	movsd	xmm0, qword ptr [rsp]           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	xmm0, xmm1
	mov	rdi, r14
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	r14, rax
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax - 24]
	mov	rbx, qword ptr [r14 + rax + 240]
	test	rbx, rbx
	je	.LBB4_13
# %bb.9:
	cmp	byte ptr [rbx + 56], 0
	je	.LBB4_11
# %bb.10:
	mov	al, byte ptr [rbx + 67]
	jmp	.LBB4_12
.LBB4_11:
	mov	rdi, rbx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rax, qword ptr [rbx]
	mov	rdi, rbx
	mov	esi, 10
	call	qword ptr [rax + 48]
.LBB4_12:
	movsx	esi, al
	mov	rdi, r14
	call	_ZNSo3putEc@PLT
	mov	rdi, rax
	call	_ZNSo5flushEv@PLT
	xor	eax, eax
	add	rsp, 8
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB4_13:
	.cfi_def_cfa_offset 48
	call	_ZSt16__throw_bad_castv@PLT
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_loop.cpp
	.type	_GLOBAL__sub_I_loop.cpp,@function
_GLOBAL__sub_I_loop.cpp:                # @_GLOBAL__sub_I_loop.cpp
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	lea	rbx, [rip + _ZStL8__ioinit]
	mov	rdi, rbx
	call	_ZNSt8ios_base4InitC1Ev@PLT
	mov	rdi, qword ptr [rip + _ZNSt8ios_base4InitD1Ev@GOTPCREL]
	lea	rdx, [rip + __dso_handle]
	mov	rsi, rbx
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT                # TAILCALL
.Lfunc_end5:
	.size	_GLOBAL__sub_I_loop.cpp, .Lfunc_end5-_GLOBAL__sub_I_loop.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	a,@object                       # @a
	.bss
	.globl	a
	.p2align	3
a:
	.quad	0
	.size	a, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Time cost is: "
	.size	.L.str, 15

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_loop.cpp
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _GLOBAL__sub_I_loop.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
