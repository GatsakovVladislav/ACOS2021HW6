.include "macrolib.s"
.text 
main:
	#a
    read_int(t0)
    #b
    read_int(t1)
    #c
    read_int(t2)
    #d
    read_int(t3)
    #a
    mv a0, t0
    #b
    mv a1, t1
    #c
    mv   a2, t2
    #d
    mv   a3, t3
    
    jal  ra, funcg
    mv   t4, a0
    print_int(t4)
funcf:
    slli a0, a0, 1
    add a0, a0, a1
    jalr ra
    
funcg:
    addi sp, sp, -20
    sw   ra, 16(sp)
    sw   a0, 12(sp)
    sw   a1, 8(sp)
    sw   a2, 4(sp)
    sw   a3, 0(sp)
    lw   a0, 12(sp)
    lw   a1, 4(sp)
    jal  ra, funcf
    
    mv   s0, a0 
    newline
    # b d
    lw   a0, 8(sp)
    lw   a1, 0(sp)
    jal  ra, funcf  
    mv   s1, a0
    newline
    sub  a0, s0, s1
    lw   ra, 16(sp)
    addi sp, sp, 20
    jalr ra
