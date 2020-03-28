@fourth program
@this program computes the following if statement construct:
  @intx;
  @inty;
  @id(x==0)
  @ y=1;
.section .data
x: .word 0 @32 bit sign
y: .word 0 @32 bit sign
.section .text
.globl _start
_start:
   ldr r1, =x @load memory address of x into r1
   ldr r1, [r1] @load value of x into r1

   cmp r1,#0
   beq thenpart @branch (jump if true Z == 1 to thenpart
   b endofif @branch (jump) if false to end of If statement body (branch always)
thenpart: mov r2, #1
   ldr r3,=y @load the memory address of y into r3
   ldr r2,[r3] @load r2 register value into y memory address
endofif:
   mov r7, #1 @prog term exit syscall
   svc #0 @prog term wake kernel
   .end
