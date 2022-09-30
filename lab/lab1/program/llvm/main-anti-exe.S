
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 e1 2f 00 00 	mov    0x2fe1(%rip),%rax        # 3ff0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

0000000000001030 <__cxa_finalize@plt>:
    1030:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    1036:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001040 <_start>:
    1040:	f3 0f 1e fa          	endbr64 
    1044:	31 ed                	xor    %ebp,%ebp
    1046:	49 89 d1             	mov    %rdx,%r9
    1049:	5e                   	pop    %rsi
    104a:	48 89 e2             	mov    %rsp,%rdx
    104d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1051:	50                   	push   %rax
    1052:	54                   	push   %rsp
    1053:	45 31 c0             	xor    %r8d,%r8d
    1056:	31 c9                	xor    %ecx,%ecx
    1058:	48 8d 3d 71 01 00 00 	lea    0x171(%rip),%rdi        # 11d0 <main>
    105f:	ff 15 7b 2f 00 00    	call   *0x2f7b(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.34>
    1065:	f4                   	hlt    
    1066:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    106d:	00 00 00 

0000000000001070 <deregister_tm_clones>:
    1070:	48 8d 3d b1 2f 00 00 	lea    0x2fb1(%rip),%rdi        # 4028 <__TMC_END__>
    1077:	48 8d 05 aa 2f 00 00 	lea    0x2faa(%rip),%rax        # 4028 <__TMC_END__>
    107e:	48 39 f8             	cmp    %rdi,%rax
    1081:	74 15                	je     1098 <deregister_tm_clones+0x28>
    1083:	48 8b 05 5e 2f 00 00 	mov    0x2f5e(%rip),%rax        # 3fe8 <_ITM_deregisterTMCloneTable@Base>
    108a:	48 85 c0             	test   %rax,%rax
    108d:	74 09                	je     1098 <deregister_tm_clones+0x28>
    108f:	ff e0                	jmp    *%rax
    1091:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1098:	c3                   	ret    
    1099:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010a0 <register_tm_clones>:
    10a0:	48 8d 3d 81 2f 00 00 	lea    0x2f81(%rip),%rdi        # 4028 <__TMC_END__>
    10a7:	48 8d 35 7a 2f 00 00 	lea    0x2f7a(%rip),%rsi        # 4028 <__TMC_END__>
    10ae:	48 29 fe             	sub    %rdi,%rsi
    10b1:	48 89 f0             	mov    %rsi,%rax
    10b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10b8:	48 c1 f8 03          	sar    $0x3,%rax
    10bc:	48 01 c6             	add    %rax,%rsi
    10bf:	48 d1 fe             	sar    %rsi
    10c2:	74 14                	je     10d8 <register_tm_clones+0x38>
    10c4:	48 8b 05 2d 2f 00 00 	mov    0x2f2d(%rip),%rax        # 3ff8 <_ITM_registerTMCloneTable@Base>
    10cb:	48 85 c0             	test   %rax,%rax
    10ce:	74 08                	je     10d8 <register_tm_clones+0x38>
    10d0:	ff e0                	jmp    *%rax
    10d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10d8:	c3                   	ret    
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <__do_global_dtors_aux>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	80 3d 3d 2f 00 00 00 	cmpb   $0x0,0x2f3d(%rip)        # 4028 <__TMC_END__>
    10eb:	75 2b                	jne    1118 <__do_global_dtors_aux+0x38>
    10ed:	55                   	push   %rbp
    10ee:	48 83 3d e2 2e 00 00 	cmpq   $0x0,0x2ee2(%rip)        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    10f5:	00 
    10f6:	48 89 e5             	mov    %rsp,%rbp
    10f9:	74 0c                	je     1107 <__do_global_dtors_aux+0x27>
    10fb:	48 8b 3d 1e 2f 00 00 	mov    0x2f1e(%rip),%rdi        # 4020 <__dso_handle>
    1102:	e8 29 ff ff ff       	call   1030 <__cxa_finalize@plt>
    1107:	e8 64 ff ff ff       	call   1070 <deregister_tm_clones>
    110c:	c6 05 15 2f 00 00 01 	movb   $0x1,0x2f15(%rip)        # 4028 <__TMC_END__>
    1113:	5d                   	pop    %rbp
    1114:	c3                   	ret    
    1115:	0f 1f 00             	nopl   (%rax)
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <frame_dummy>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	e9 77 ff ff ff       	jmp    10a0 <register_tm_clones>
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <_Z4fib1i>:
    1130:	55                   	push   %rbp
    1131:	48 89 e5             	mov    %rsp,%rbp
    1134:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1137:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    113e:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
    1145:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    114c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1153:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1156:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1159:	7d 20                	jge    117b <_Z4fib1i+0x4b>
    115b:	8b 45 f4             	mov    -0xc(%rbp),%eax
    115e:	03 45 f8             	add    -0x8(%rbp),%eax
    1161:	89 45 f0             	mov    %eax,-0x10(%rbp)
    1164:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1167:	89 45 f4             	mov    %eax,-0xc(%rbp)
    116a:	8b 45 f0             	mov    -0x10(%rbp),%eax
    116d:	89 45 f8             	mov    %eax,-0x8(%rbp)
    1170:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1173:	83 c0 01             	add    $0x1,%eax
    1176:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1179:	eb d8                	jmp    1153 <_Z4fib1i+0x23>
    117b:	8b 45 f4             	mov    -0xc(%rbp),%eax
    117e:	5d                   	pop    %rbp
    117f:	c3                   	ret    

0000000000001180 <_Z3fibi>:
    1180:	55                   	push   %rbp
    1181:	48 89 e5             	mov    %rsp,%rbp
    1184:	53                   	push   %rbx
    1185:	50                   	push   %rax
    1186:	89 7d f4             	mov    %edi,-0xc(%rbp)
    1189:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    118d:	75 09                	jne    1198 <_Z3fibi+0x18>
    118f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    1196:	eb 2c                	jmp    11c4 <_Z3fibi+0x44>
    1198:	83 7d f4 01          	cmpl   $0x1,-0xc(%rbp)
    119c:	75 09                	jne    11a7 <_Z3fibi+0x27>
    119e:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%rbp)
    11a5:	eb 1d                	jmp    11c4 <_Z3fibi+0x44>
    11a7:	8b 7d f4             	mov    -0xc(%rbp),%edi
    11aa:	83 ef 01             	sub    $0x1,%edi
    11ad:	e8 ce ff ff ff       	call   1180 <_Z3fibi>
    11b2:	89 c3                	mov    %eax,%ebx
    11b4:	8b 7d f4             	mov    -0xc(%rbp),%edi
    11b7:	83 ef 02             	sub    $0x2,%edi
    11ba:	e8 c1 ff ff ff       	call   1180 <_Z3fibi>
    11bf:	01 c3                	add    %eax,%ebx
    11c1:	89 5d f0             	mov    %ebx,-0x10(%rbp)
    11c4:	8b 45 f0             	mov    -0x10(%rbp),%eax
    11c7:	48 83 c4 08          	add    $0x8,%rsp
    11cb:	5b                   	pop    %rbx
    11cc:	5d                   	pop    %rbp
    11cd:	c3                   	ret    
    11ce:	66 90                	xchg   %ax,%ax

00000000000011d0 <main>:
    11d0:	55                   	push   %rbp
    11d1:	48 89 e5             	mov    %rsp,%rbp
    11d4:	48 83 ec 10          	sub    $0x10,%rsp
    11d8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    11df:	bf 0a 00 00 00       	mov    $0xa,%edi
    11e4:	e8 97 ff ff ff       	call   1180 <_Z3fibi>
    11e9:	48 83 c4 10          	add    $0x10,%rsp
    11ed:	5d                   	pop    %rbp
    11ee:	c3                   	ret    

Disassembly of section .fini:

00000000000011f0 <_fini>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	48 83 ec 08          	sub    $0x8,%rsp
    11f8:	48 83 c4 08          	add    $0x8,%rsp
    11fc:	c3                   	ret    
