@ assignment1 part 2
.section .data
.section .text
.globl _start
_start: 
    mov r1, #10 @A
    mov r2, #11 @B
    mov r3, #7  @C
    mov r4, #2  @D
    add r5,r1,r2 @ A + B = 10 + 11
    mul r6,r3,r4 @ C * D = 7 * 2 
    sub r1,r5,r6 @ 21 - 14 = 7

    svc #0
.end
