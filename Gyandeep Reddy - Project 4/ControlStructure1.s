.section .data
X: .word 4
.section .text
.globl _start
_start:
	ldr r1,=X
	ldr r1,[r1]
	cmp r1,#3
	ble ifstatement
	b elsestatement
ifstatement: sub r1,#1
	ldr r2,=X
	str r1,[r2]
	b endofif
elsestatement: sub r1,#2
	ldr r2,=X
	str r1,[r2]
endofif:
	mov r7,#1
	svc #0
.end
