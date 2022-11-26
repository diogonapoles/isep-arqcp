.section .text 
    .global count_bits_one

count_bits_one:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP

# -----------------------------------------------------------------------

	xorl %eax, %eax
	testl %edi, %edi
	je end

verify:
	movl %edi, %edx
	andl $1, %edx
	addl %edx, %eax
	shrl %edi
	jne	verify
	
# -----------------------------------------------------------------------

end:
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret

