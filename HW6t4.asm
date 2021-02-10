.include "macrolib.s"
.text
main:
	#a
    read_int(t0)  
    #b  
    read_int(t1)    
    mv   a0, t0
    mv   a1, t1
    jal  ra, gcd
    mv   t2, a0
    print_int(t2)
gcd:
    blez a1, stop
    mv   s0, a1 
    rem  a1, a0, a1 
    mv   a0, s0
    j    gcd
stop:
    jalr ra
