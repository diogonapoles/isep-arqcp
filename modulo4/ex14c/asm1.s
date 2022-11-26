.section .text
    .global reset_2bits

reset_2bits:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP

# -----------------------------------------------------------------------

    pushq %rsi
	call reset_bit				
    popq %rsi
	

	movl $31, %edx					
	subl %esi, %edx					# edx = (31 - n)
    movl %edx, %esi
	
    pushq %rsi
	call reset_bit				
    popq %rsi
	
# -----------------------------------------------------------------------

end:

    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret
    