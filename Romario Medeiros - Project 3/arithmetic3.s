.section .data
val1: .byte -60
val2: .byte 11
val3: .byte 16

.section .text
.globl _start
_start:

@The following is a sample ARM code example that attempts to load a set of values into registers amd it might have problems.
@Resgister=val2+3+val3-val1
@30=11+3+16-60
ldr r1,=val1
ldrsb r1,[r1]
ldr r2,=val2
ldrb r2,[r2]
ldr r3,=val3
ldrb r3,[r3]
add r2,r2,#3
add r2,r2,r3
sub r2,r2,r1

mov r7,#1          @Program Termination: exit syscall
svc #0             @Program Termination: wake kernel

