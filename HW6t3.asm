.include "macrolib.s"
.text
main:
	#N
    read_int(t0) 
    #D
    read_int(t1)
    mv   a0, t0
    mv   a1, t1
    jal  ra, di
    mv   t2, a0
    mv   t3, a1
    print_int(t2)
    newline
    print_int(t3)

di:
    mv   s0, zero
    mv   s1, a0    
zeloopa:
    blt  s1, a1, stop
    addi s0, s0, 1
    sub  s1, s1, a1
    j    zeloopa
stop:
    mv   a0, s0
    mv   a1, s1
    jalr ra
  