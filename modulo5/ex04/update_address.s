.section .data
    .equ ADDRESS_OFF, 84

.section .text
    .global update_address

update_address:
   # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP
    
# -----------------------------------------------------------------------

    leaq ADDRESS_OFF(%rdi), %rdi
    call strcpy

# -----------------------------------------------------------------------
end:
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret
