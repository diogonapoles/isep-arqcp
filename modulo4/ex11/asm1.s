.section .data

.section .text
.global call_proc

call_proc:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body


	addq	%rsi, %rdx
	leaq	(%rcx,%rcx,2), %rcx
	movsbq	%cl, %rcx
	movswq	%dx, %rdx
	
	
	subq	%rcx, %rdx
	imulq	%rsi, %rdx
	leaq	(%rdx,%rdx), %rax


end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

