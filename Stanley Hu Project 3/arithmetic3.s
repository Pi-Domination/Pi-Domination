@arithmetic 3 val2+3+val3-val1
.section .data
val1: .byte 60 @signed 8 bit
val2: .byte 11
val3: .byte 16 
.section .text
.globl _start
_start:

 ldrb r1, =val1
 ldrb r1, [r1]
 ldrb r2, =val2
 ldrb r2, [r2]
 ldrsb r3, =val3
 ldrsb r3, [r3]
 mov r4, #3
 add r4, r4, r2 @add r2 to r4, store in r4
 add r4, r4, r3
 add r4, r4, r1

 mov r7, #1
 svc #0
.end
