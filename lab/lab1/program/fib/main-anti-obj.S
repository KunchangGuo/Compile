
main.o:	file format elf64-x86-64

Disassembly of section .text:

0000000000000000 <main>:
       0: 55                           	pushq	%rbp
       1: 48 89 e5                     	movq	%rsp, %rbp
       4: c7 45 ec 00 00 00 00         	movl	$0, -20(%rbp)
       b: c7 45 f4 00 00 00 00         	movl	$0, -12(%rbp)
      12: c7 45 f8 01 00 00 00         	movl	$1, -8(%rbp)
      19: c7 45 fc 01 00 00 00         	movl	$1, -4(%rbp)
      20: 8b 45 fc                     	movl	-4(%rbp), %eax
      23: 3b 45 e8                     	cmpl	-24(%rbp), %eax
      26: 7d 20                        	jge	0x48 <main+0x48>
      28: 8b 45 f8                     	movl	-8(%rbp), %eax
      2b: 89 45 f0                     	movl	%eax, -16(%rbp)
      2e: 8b 45 f4                     	movl	-12(%rbp), %eax
      31: 03 45 f8                     	addl	-8(%rbp), %eax
      34: 89 45 f8                     	movl	%eax, -8(%rbp)
      37: 8b 45 f0                     	movl	-16(%rbp), %eax
      3a: 89 45 f4                     	movl	%eax, -12(%rbp)
      3d: 8b 45 fc                     	movl	-4(%rbp), %eax
      40: 83 c0 01                     	addl	$1, %eax
      43: 89 45 fc                     	movl	%eax, -4(%rbp)
      46: eb d8                        	jmp	0x20 <main+0x20>
      48: 8b 45 ec                     	movl	-20(%rbp), %eax
      4b: 5d                           	popq	%rbp
      4c: c3                           	retq
