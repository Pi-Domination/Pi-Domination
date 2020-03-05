@ write a program that calculates the following expression:
@ register = val2 + 3 + val3 - val1
@ val1 , val2, val3 are 8 bit  int mem variables
@ val2 = 11, val3  = 16, val1 = -60

@arithmetic3.s
.section .data
val1: .byte 11 @ 8 bit int mem
val2: .byte 16 @ 8 bit int mem
val3: .byte -60 @ 8 bit int mem

.section .text
.globl _start
_start:

 ldr r0,=val1   @load mem address of val1 into r0
 ldr r0,[r0]  @load value val1 into r0
 ldr r1,=val2   @load mem address of val2 into r1
 ldr r1,[r1]  @load value val2 into r1
 ldr r2,=val3   @load mem address of val3 into r2
 ldr r2,[r2]  @load value of val3 into  r2
 add r3, r1, #3 @load val 2 + 3 into r3
 add r4, r3, r2 @load r3 + val 3 into r4
 sub r5, r4, r1 @r5 = r4 - r1
.end
