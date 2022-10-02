
main:	file format elf64-x86-64

Disassembly of section .init:

0000000000001000 <_init>:
    1000: f3 0f 1e fa                  	endbr64
    1004: 48 83 ec 08                  	subq	$8, %rsp
    1008: 48 8b 05 e1 2f 00 00         	movq	12257(%rip), %rax       # 0x3ff0 <main.cpp+0x3ff0>
    100f: 48 85 c0                     	testq	%rax, %rax
    1012: 74 02                        	je	0x1016 <_init+0x16>
    1014: ff d0                        	callq	*%rax
    1016: 48 83 c4 08                  	addq	$8, %rsp
    101a: c3                           	retq

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020: ff 35 e2 2f 00 00            	pushq	12258(%rip)             # 0x4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026: ff 25 e4 2f 00 00            	jmpq	*12260(%rip)            # 0x4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c: 0f 1f 40 00                  	nopl	(%rax)

Disassembly of section .plt.got:

0000000000001030 <.plt.got>:
    1030: ff 25 a2 2f 00 00            	jmpq	*12194(%rip)            # 0x3fd8 <main.cpp+0x3fd8>
    1036: 66 90                        	nop

Disassembly of section .text:

0000000000001040 <_start>:
    1040: f3 0f 1e fa                  	endbr64
    1044: 31 ed                        	xorl	%ebp, %ebp
    1046: 49 89 d1                     	movq	%rdx, %r9
    1049: 5e                           	popq	%rsi
    104a: 48 89 e2                     	movq	%rsp, %rdx
    104d: 48 83 e4 f0                  	andq	$-16, %rsp
    1051: 50                           	pushq	%rax
    1052: 54                           	pushq	%rsp
    1053: 45 31 c0                     	xorl	%r8d, %r8d
    1056: 31 c9                        	xorl	%ecx, %ecx
    1058: 48 8d 3d d1 00 00 00         	leaq	209(%rip), %rdi         # 0x1130 <main>
    105f: ff 15 7b 2f 00 00            	callq	*12155(%rip)            # 0x3fe0 <main.cpp+0x3fe0>
    1065: f4                           	hlt
    1066: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000001070 <deregister_tm_clones>:
    1070: 48 8d 3d b1 2f 00 00         	leaq	12209(%rip), %rdi       # 0x4028 <completed.0>
    1077: 48 8d 05 aa 2f 00 00         	leaq	12202(%rip), %rax       # 0x4028 <completed.0>
    107e: 48 39 f8                     	cmpq	%rdi, %rax
    1081: 74 15                        	je	0x1098 <deregister_tm_clones+0x28>
    1083: 48 8b 05 5e 2f 00 00         	movq	12126(%rip), %rax       # 0x3fe8 <main.cpp+0x3fe8>
    108a: 48 85 c0                     	testq	%rax, %rax
    108d: 74 09                        	je	0x1098 <deregister_tm_clones+0x28>
    108f: ff e0                        	jmpq	*%rax
    1091: 0f 1f 80 00 00 00 00         	nopl	(%rax)
    1098: c3                           	retq
    1099: 0f 1f 80 00 00 00 00         	nopl	(%rax)

00000000000010a0 <register_tm_clones>:
    10a0: 48 8d 3d 81 2f 00 00         	leaq	12161(%rip), %rdi       # 0x4028 <completed.0>
    10a7: 48 8d 35 7a 2f 00 00         	leaq	12154(%rip), %rsi       # 0x4028 <completed.0>
    10ae: 48 29 fe                     	subq	%rdi, %rsi
    10b1: 48 89 f0                     	movq	%rsi, %rax
    10b4: 48 c1 ee 3f                  	shrq	$63, %rsi
    10b8: 48 c1 f8 03                  	sarq	$3, %rax
    10bc: 48 01 c6                     	addq	%rax, %rsi
    10bf: 48 d1 fe                     	sarq	%rsi
    10c2: 74 14                        	je	0x10d8 <register_tm_clones+0x38>
    10c4: 48 8b 05 2d 2f 00 00         	movq	12077(%rip), %rax       # 0x3ff8 <main.cpp+0x3ff8>
    10cb: 48 85 c0                     	testq	%rax, %rax
    10ce: 74 08                        	je	0x10d8 <register_tm_clones+0x38>
    10d0: ff e0                        	jmpq	*%rax
    10d2: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
    10d8: c3                           	retq
    10d9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

00000000000010e0 <__do_global_dtors_aux>:
    10e0: f3 0f 1e fa                  	endbr64
    10e4: 80 3d 3d 2f 00 00 00         	cmpb	$0, 12093(%rip)         # 0x4028 <completed.0>
    10eb: 75 2b                        	jne	0x1118 <__do_global_dtors_aux+0x38>
    10ed: 55                           	pushq	%rbp
    10ee: 48 83 3d e2 2e 00 00 00      	cmpq	$0, 12002(%rip)         # 0x3fd8 <main.cpp+0x3fd8>
    10f6: 48 89 e5                     	movq	%rsp, %rbp
    10f9: 74 0c                        	je	0x1107 <__do_global_dtors_aux+0x27>
    10fb: 48 8b 3d 1e 2f 00 00         	movq	12062(%rip), %rdi       # 0x4020 <__dso_handle>
    1102: e8 29 ff ff ff               	callq	0x1030 <.plt.got>
    1107: e8 64 ff ff ff               	callq	0x1070 <deregister_tm_clones>
    110c: c6 05 15 2f 00 00 01         	movb	$1, 12053(%rip)         # 0x4028 <completed.0>
    1113: 5d                           	popq	%rbp
    1114: c3                           	retq
    1115: 0f 1f 00                     	nopl	(%rax)
    1118: c3                           	retq
    1119: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000001120 <frame_dummy>:
    1120: f3 0f 1e fa                  	endbr64
    1124: e9 77 ff ff ff               	jmp	0x10a0 <register_tm_clones>
    1129: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000001130 <main>:
    1130: 55                           	pushq	%rbp
    1131: 48 89 e5                     	movq	%rsp, %rbp
    1134: c7 45 ec 00 00 00 00         	movl	$0, -20(%rbp)
    113b: c7 45 f4 00 00 00 00         	movl	$0, -12(%rbp)
    1142: c7 45 f8 01 00 00 00         	movl	$1, -8(%rbp)
    1149: c7 45 fc 01 00 00 00         	movl	$1, -4(%rbp)
    1150: 8b 45 fc                     	movl	-4(%rbp), %eax
    1153: 3b 45 e8                     	cmpl	-24(%rbp), %eax
    1156: 7d 20                        	jge	0x1178 <main+0x48>
    1158: 8b 45 f8                     	movl	-8(%rbp), %eax
    115b: 89 45 f0                     	movl	%eax, -16(%rbp)
    115e: 8b 45 f4                     	movl	-12(%rbp), %eax
    1161: 03 45 f8                     	addl	-8(%rbp), %eax
    1164: 89 45 f8                     	movl	%eax, -8(%rbp)
    1167: 8b 45 f0                     	movl	-16(%rbp), %eax
    116a: 89 45 f4                     	movl	%eax, -12(%rbp)
    116d: 8b 45 fc                     	movl	-4(%rbp), %eax
    1170: 83 c0 01                     	addl	$1, %eax
    1173: 89 45 fc                     	movl	%eax, -4(%rbp)
    1176: eb d8                        	jmp	0x1150 <main+0x20>
    1178: 8b 45 ec                     	movl	-20(%rbp), %eax
    117b: 5d                           	popq	%rbp
    117c: c3                           	retq

Disassembly of section .fini:

0000000000001180 <_fini>:
    1180: f3 0f 1e fa                  	endbr64
    1184: 48 83 ec 08                  	subq	$8, %rsp
    1188: 48 83 c4 08                  	addq	$8, %rsp
    118c: c3                           	retq
