.section .text 
    .global incr

incr:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP

# -----------------------------------------------------------------------
    
	movswl	(%rdi), %eax	# short to long
	movsbl	%sil, %esi		# byte to long
	addl	%eax, %esi		# add long to long
	movw	%si, (%rdi)		# save short in pointer

# -----------------------------------------------------------------------

end:
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret
	