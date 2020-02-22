@Romario Medeiros
@second program - Part 2:  Register=val2+9+val3-val1
.section .data
Val1: .word 6   @32-bit variable Val1 in memory
Val2: .word 11   @32-bit variable Val2 in memory
Val3: .word 16   @32-bit variable Val3 in memory

.section .text
.globl _start
_start:
   ldr r1,=Val1    @load the memory address of Val1 into r1 :6
   ldr r1,[r1]     @load the value Val1 into r1
   ldr r2,=Val2    @load the memory address of Val2 into r2 :11
   ldr r2,[r2]     @load the value Val2 into r2
   ldr r3,=Val3    @load the memory address of Val3 into r3 :16
   ldr r3,[r3]     @load the value Val3 into r3
   add r2,#9       @add r2 and 9 into r2 :20
   add r2,r2,r3       @add r3 and r2 into r2 :36
   sub r2,r2,r1    @subtracts r1 from r2 and stores it in r2 :30

   mov r7,#1       @Program Termination: exit syscall
   svc #0          @Program Termination: wake kernel
.end
