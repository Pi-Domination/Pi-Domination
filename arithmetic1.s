@second program
.section .data
.section .text
.globl _start
_start:
	mov r1, #10	@all mov instructions init var
	mov r2, #11
	add r1, r2 @stored in register 1 after add
	mov r3, #7
	mov r4, #2
	mul r3, r4 @stored in register 3 after mul
	sub r1, r3 @stored in register 1 afterwords.

	mov r7, #1 @prog term exit syscall
	svc #0	@prog term wake syscall
.end

