.include "macrolib.s"
.text 
main:
    read_int(t0)
    read_int(t1)
    mv a0, t0
    mv a1, t1
    
    jal ra, funcf
    li a7, 1
    ecall
    mv s0, a0  
    newline
    
    mv a0, t0
    mv a1, t1
    jal ra, funcg
    li a7, 1
    ecall
    mv s1, a0 
    newline
    
    add s2, s0, t0
    add s2, s2, s1
    sub s2, s2, t1
    print_int(s2)
funcf:
    slli a0, a0, 1
    add a0, a0, a1
    jalr ra
    
funcg:
    li t2, 3
    mul t3, a1, t2
    sub a0, t3, a0
    jalr ra