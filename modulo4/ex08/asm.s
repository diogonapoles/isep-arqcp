.section .text 
    .global calc # int a - %edi, int * b - %rsi, int c - %edx

calc:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP

# -----------------------------------------------------------------------

    shll %edi               # * = 2
    subl (%rsi), %edi       # z = %edi
    movl %edi, %eax

    subl $4, %edx
    imull %edx              # result in %eax

# -----------------------------------------------------------------------

end:
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 
    ret
    