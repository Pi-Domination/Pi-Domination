x: .word 0
y: .word 0
.section .text
.globl _start
_start:

   ldr r1, =x
   ldr r1, [r1]

   cmp r1,#3
   ble ifdo
   b elsedo

ifdo: sub r1, #1
   ldr r2, =x
   str r1, [r2]
   b endofif
elsedo: sub r1, #2
   ldr r2, =x
   str r1,[r2]

endofif:
   mov r7, #1
   svc #0

.end
