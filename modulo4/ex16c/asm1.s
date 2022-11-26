.section .text
	.global mixed_sum
	
mixed_sum:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP

# -----------------------------------------------------------------------

	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)

	movl	-28(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	movl	%ecx, %esi
	call	join_bits
	movl	%eax, -12(%rbp)

	movl	-28(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	movl	%ecx, %esi
	call	join_bits
	movl	%eax, -8(%rbp)

	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax

# -----------------------------------------------------------------------

end:
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret
