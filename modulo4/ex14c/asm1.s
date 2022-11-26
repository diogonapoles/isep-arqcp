.section .text
    .global reset_2bits

reset_2bits:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP

# -----------------------------------------------------------------------

    pushq %rsi
	call reset_bit				# 1ª chamada da funçao para ativar bit em 'pos'
    popq %rsi
	
	movl $31, %edx					# coloca 31 em eax
	subl %esi, %edx					# eax = eax - ecx (31 - pos)
	
    pushq %rsi
	call reset_bit				# 2ª chamada da funçao para ativar bit em (31-pos)
    popq %rsi
	
# -----------------------------------------------------------------------

end:

    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret
    