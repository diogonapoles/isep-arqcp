.section .text
    .global approved_semester
    # ------------------------------- #
    # int approved_semester(group *g) #
    # ------------------------------- #
approved_semester:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP
    
# -----------------------------------------------------------------------
# %rdi -> group *g

	movswl	(%rdi), %eax
	testl	%eax, %eax		# bitwise AND
	je	clear_eax			# jumps if zero flag is set (the test function does something simillar to this: cmp eax, 0)

	movq	8(%rdi), %rdx	# gets *individual_grades
	leaq	2(%rdx), %rdi
	leaq	(%rdi,%rax,2), %r8
	xorl	%eax, %eax		# clears %eax

grades:
	movzwl	(%rdx), %edx	
	xorl	%ecx, %ecx		# clears %ecx
	
set_bits:
	movl	%edx, %esi
	andl	$1, %esi
	addl	%esi, %ecx
	shrw	%dx
	jnz	set_bits			# verifies if number is already zero
	cmpl	$10, %ecx
	sbbl	$-1, %eax		# subtract with borrow (dest <-- dest - src - EFLAGS.CF)

	movq	%rdi, %rdx
	cmpq	%r8, %rdi
	je	end

	addq	$2, %rdi
	jmp	grades
	
clear_eax:
	xorl	%eax, %eax

# -----------------------------------------------------------------------
end:
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret
    