.section .data
a:.hword-2

.section .text
.globl _start
_start:

@loads set of value into set of registers
mov r0, #0x1 @=1
mov r1, #0xFFFFFFFF @=-1 signed
mov r2, #0xFF  @255
mov r3, #0x101 @257
mov r4, #0x400 @=1024

mov r7, #1
svc #0
.end
