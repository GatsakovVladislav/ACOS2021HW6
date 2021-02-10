.include "macrolib.s"
.text
main:
    read_int(t0)
    mv a0,t0
    jal ra, fib
    li a7, 1
    ecall
fib:
    addi t1, a0, -1
    blez t1, stop   
    addi sp, sp, -12
    sw ra, 8(sp)
    sw s0, 4(sp)
    sw s1, 0(sp)
    
    addi s1, t1, -1
    mv   a0, t1
    call fib
    mv s0, a0
    mv  a0, s1
    call fib
    add a0, a0, s0
    lw   ra, 8(sp)
    lw   s0, 4(sp)
    lw   s1, 0(sp)
    addi sp, sp,12
stop:
    jalr ra
