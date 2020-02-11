@ assignment1 part2
.section .data
.section .text
.global _start
_start:
     mov r1, #10
     mov r2, #11
     add r1, r1, r2
     mov r3, #7
     mov r4, #2
     mul r5, r3, r4
     sub r1, r1, r5

     svc #0
.end
