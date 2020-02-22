@arithmetic2: r1 = val2 + 9 + val3 - val1
.section .data
val1: .word 6   @32-bit variable 'val1' in memory
val2: .word 11  @32-bit variable 'val2' in memory
val3: .word 16  @32-bit variable 'val3' in memory
.section .text
.globl _start
_start:
  ldr r1, =val2   @load memory address of val2 into r1
  ldr r1, [r1]    @load value val2 into r1
  ldr r2, =val3   @load memory address of val3 into r2
  ldr r2, [r2]    @load value of val3 into r2
  ldr r3, =val1   @load memory address of val1 into r3
  ldr r3, [r3]    @load value of val1 into r3
  add r1,#9       @add 9 to r1
  add r1,r1,r2    @add r2 to r1 and store into r1
  sub r1,r1,r3    @subtract r3 from r1 and store into r1

  mov r7, #1      @Program Termination: exit syscall
  svc #0          @Program Termination: wake kernel
.end
