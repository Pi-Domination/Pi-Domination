@ Third Program
.section .data
a: .shalfword -2		@ 16-bit signed integer
.section .text
.globl _start
_start:
mov r0, #0x1		@ = 1
mov r1, #0xFFFFFFFF	@ = -1
mov r2, #0xFF		@ = 255
mov r3, #0x101		@ = 257
mov r4, #0x400		@ = 1024

mov r7, #1	@ Program Termination: exit syscall
svc #0		@ Program Termination: wake kernel
.end