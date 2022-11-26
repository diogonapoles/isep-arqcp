.section .text 
    .global sum_smaller

sum_smaller:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP

    movq $0, %rax

# -----------------------------------------------------------------------

    cmpl %edi, %esi         # compare parameters
    jle smaller

    movl %edi, (%rdx)       # move first parameter to rdx
    jmp sum

smaller:
    movl %esi, (%rdx)       # move second parameter to rdx

sum:
    addl %edi, %esi
    movl %esi, %eax

# -----------------------------------------------------------------------
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 
    ret 
    