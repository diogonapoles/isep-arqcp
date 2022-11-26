.section .text
    .global test_equal

test_equal:   
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP

    movl $1, %eax           # assuming the strings are different

# -----------------------------------------------------------------------

validation:
    movb (%rdi), %r8b       # char from first parameter
    movb (%rsi), %r9b       # char from second parameter

    cmpb $0, %r8b           # check if string reached the end
    je compare_lengths

    cmpb %r8b, %r9b         # compare chars
    jne not_equal

    incq %rdi
    incq %rsi
    jmp validation
    
not_equal:
    movl $0, %eax
    jmp end

compare_lengths:
    cmpb $0, %r9b           # check if string reached the end
    je end
    movl $0, %eax

# -----------------------------------------------------------------------

end:
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret
