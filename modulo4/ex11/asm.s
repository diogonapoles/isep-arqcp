.section .data

.section .text
.global proc

proc:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body

	leaq	(%rdi,%rdx), %r10
	movq	8(%rsp), %rax
	movq	%r10, (%rsi)
	movq	%rdx, %rsi
	addq	%r8, %rdx
	subq	%rdi, %rsi
	leaq	(%rax,%rax,2), %rax
	movq	%rsi, (%rcx)
	movw	%dx, (%r9)
	movq	16(%rsp), %rdx
	movb	%al, (%rdx)


end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

