.section .data

.section .text
.global call_proc

call_proc:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body
	pushq %rdi
	pushq %rsi
	pushq %rdx
	pushq %rcx
	movq	%rcx, %rax
	leaq	(%rdx,%rdx), %r9
	movq	%rdx, %r8
	leaq	(%rsi,%rsi), %rcx
	movq 	%rsi, %rdx
	leaq	(%rdi,%rdi), %rsi
	
	subq	$16, %rsp
	movq	%rax, -16(%rsp)
	leaq	(%rax,%rax), %rax
	movq	%rax, -8(%rbp)

	call proc
	popq %rcx
	popq %rdx
	popq %rsi
	popq %rdi
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

