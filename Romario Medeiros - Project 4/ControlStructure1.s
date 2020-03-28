.section .data
x: .word 1 @ 32-bit signed integer, you can also use int directive instead of .word directive

.section .text
.globl _start
_start:
	ldr r1, =x @ load the memory address of x into r1
	ldr r1, [r1] @ load the value x into r1
	cmp r1,#3
	ble ifthis
	b elsethis

ifthis:
	sub r1, #1
	ldr r2, =x @ load the memory address of y into r3
	str r1, [r2] @ load r2 register value into y memory address
elsethis:
	sub r1, #2
	ldr r2, =x
	str r1,[r2]
endofif:
	mov r7, #1 @ Program Termination: exit syscall
	svc #0 @ Program Termination: wake kernel
	.end

