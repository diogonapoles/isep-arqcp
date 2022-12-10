.section .data

.section .text
.global fill_s1

fill_s1:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body
	
	movb	%dl, (%rdi)
	movl	%esi, 4(%rdi)
	movb	%r8b, 8(%rdi)
	movl	%ecx, 12(%rdi)

end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

