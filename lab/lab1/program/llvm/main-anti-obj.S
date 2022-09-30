
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_Z4fib1i>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	89 7d ec             	mov    %edi,-0x14(%rbp)
   7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   e:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  15:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  1c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  23:	8b 45 fc             	mov    -0x4(%rbp),%eax
  26:	3b 45 ec             	cmp    -0x14(%rbp),%eax
  29:	7d 20                	jge    4b <_Z4fib1i+0x4b>
  2b:	8b 45 f4             	mov    -0xc(%rbp),%eax
  2e:	03 45 f8             	add    -0x8(%rbp),%eax
  31:	89 45 f0             	mov    %eax,-0x10(%rbp)
  34:	8b 45 f8             	mov    -0x8(%rbp),%eax
  37:	89 45 f4             	mov    %eax,-0xc(%rbp)
  3a:	8b 45 f0             	mov    -0x10(%rbp),%eax
  3d:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40:	8b 45 fc             	mov    -0x4(%rbp),%eax
  43:	83 c0 01             	add    $0x1,%eax
  46:	89 45 fc             	mov    %eax,-0x4(%rbp)
  49:	eb d8                	jmp    23 <_Z4fib1i+0x23>
  4b:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4e:	5d                   	pop    %rbp
  4f:	c3                   	ret    

0000000000000050 <_Z3fibi>:
  50:	55                   	push   %rbp
  51:	48 89 e5             	mov    %rsp,%rbp
  54:	53                   	push   %rbx
  55:	50                   	push   %rax
  56:	89 7d f4             	mov    %edi,-0xc(%rbp)
  59:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  5d:	75 09                	jne    68 <_Z3fibi+0x18>
  5f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  66:	eb 2c                	jmp    94 <_Z3fibi+0x44>
  68:	83 7d f4 01          	cmpl   $0x1,-0xc(%rbp)
  6c:	75 09                	jne    77 <_Z3fibi+0x27>
  6e:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%rbp)
  75:	eb 1d                	jmp    94 <_Z3fibi+0x44>
  77:	8b 7d f4             	mov    -0xc(%rbp),%edi
  7a:	83 ef 01             	sub    $0x1,%edi
  7d:	e8 00 00 00 00       	call   82 <_Z3fibi+0x32>
  82:	89 c3                	mov    %eax,%ebx
  84:	8b 7d f4             	mov    -0xc(%rbp),%edi
  87:	83 ef 02             	sub    $0x2,%edi
  8a:	e8 00 00 00 00       	call   8f <_Z3fibi+0x3f>
  8f:	01 c3                	add    %eax,%ebx
  91:	89 5d f0             	mov    %ebx,-0x10(%rbp)
  94:	8b 45 f0             	mov    -0x10(%rbp),%eax
  97:	48 83 c4 08          	add    $0x8,%rsp
  9b:	5b                   	pop    %rbx
  9c:	5d                   	pop    %rbp
  9d:	c3                   	ret    
  9e:	66 90                	xchg   %ax,%ax

00000000000000a0 <main>:
  a0:	55                   	push   %rbp
  a1:	48 89 e5             	mov    %rsp,%rbp
  a4:	48 83 ec 10          	sub    $0x10,%rsp
  a8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  af:	bf 0a 00 00 00       	mov    $0xa,%edi
  b4:	e8 00 00 00 00       	call   b9 <main+0x19>
  b9:	48 83 c4 10          	add    $0x10,%rsp
  bd:	5d                   	pop    %rbp
  be:	c3                   	ret    
