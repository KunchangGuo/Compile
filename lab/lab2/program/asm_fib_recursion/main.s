.global main

fib:
	push    {r4, r11, lr}   @ 保护现场
	sub sp, sp, #8  		@ 分配一定的栈空间
	add	r11, sp, #0 		@ 保存栈顶指针
	str	r0, [r11, #4]   	@ 存n
	cmp	r0, #1  			@ if (n<2) return n; else return fib(n-1)+fib(n-2);
	bgt	fib_recur
	b   fib_end
fib_recur:  				@ 递归调用
	ldr	r3, [r11, #4]   	@ r3 = n
	sub	r3, r3, #1  		@ r3 = n-1
	mov	r0, r3  			@ r0 = n-1
	bl	fib 				@ r0 = fib(n-1)
	mov	r4, r0  			@ r4 = fib(n-1)
	ldr	r3, [r11, #4]   	@ r3 = n
	sub	r3, r3, #2  		@ r3 = n-2
	mov	r0, r3  			@ r0 = n-2
	bl	fib 				@ r0 = fib(n-2)
	mov	r3, r0  			@ r3 = fib(n-2)
	add	r3, r3, r4  		@ r3 = fib(n-1)+fib(n-2)
fib_end:    				@ 结束
	mov	r0, r3 				@ r0 = fib(n)
	add	r11, r11, #8
	mov	sp, r11 			@ 恢复栈顶指针
	pop	{r4, r11, pc}   	@ 恢复现场

main:
    push {r11, lr}  		@ 保护现场
    add r11, sp, #0 		@ 保存栈顶指针
    mov r0, #10 			@ r0 = n = 10
    bl  fib 				@ r0 = fib(n)
    pop {r11, pc}   		@ 恢复现场
