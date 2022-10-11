.global _start
.section .text

_start:
    mov r7, #0x4
    mov r0, #1
    ldr r1, =msg
    mov r2, #13
    swi 0

    mov r7, #0x1
    mov r0, #0
    swi 0

.section .data
msg:
    .ascii "Hello, world!\n"