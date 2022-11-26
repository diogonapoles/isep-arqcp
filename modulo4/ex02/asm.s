.section .text
    .global sum_n2

sum_n2:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP

    movq $0, %rcx
    movq $0, %rax
# -----------------------------------------------------------------------

    movslq %edi, %rcx         # move 1st parameter to ECX

sum:
    cmpq $0, %rcx           # check if ecx is 0
    jle end

    movq %rcx, %r8
    imulq %r8, %r8        # square of the number

    addq %r8, %rax

    decq %rcx
    jmp sum

# -----------------------------------------------------------------------
end:
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret
