.section .text
	.global	join_bits

join_bits:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP

# -----------------------------------------------------------------------

	movl	%edx, %ecx      # moves int pos to %ecx
	movl	$1, %eax        
	sall	%cl, %eax       # left shift "1", %cl times
	movl	%eax, %edx      

	movl	%edi, %eax      # first parameter to %eax
	xorl	%esi, %eax      

    leal	-1(%rdx,%rdx), %edi
	andl	%edi, %eax
	xorl	%esi, %eax

# -----------------------------------------------------------------------

end:
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret
