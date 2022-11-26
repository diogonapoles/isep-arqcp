.section .text 
    .global call_incr

call_incr:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP

# -----------------------------------------------------------------------

	addw $3, %di            # short x1
    movswq %di, %rdi
    
    pushq %rdi              # save %rdi

    leaq (%rsp), %rdi
    movb $0xC3, %sil
    
    call incr

    popq %rdi

    addw %di, %ax
    movswl %ax, %eax

# -----------------------------------------------------------------------

end:
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 
    ret
