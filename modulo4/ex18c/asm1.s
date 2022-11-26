.section .text
	.global changes_vec	
	
changes_vec:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP

# -----------------------------------------------------------------------

my_loop:
	cmpl $0, %esi				# check if vector has already reached the end
	je end						

	pushq %rsi					# saves counter
	pushq %rdi					# saves %rdi

	call changes				
    movl (%rdi), %edx           # move int result to %edx

	popq %rdi					
	popq %rsi					

    movl %edx, (%rdi)           # move %edx to value stored in pointer
	addq $4, %rdi				# goes to the next stored integer in pointer
	decl %esi					
	jmp my_loop					

# -----------------------------------------------------------------------

end:
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret
	