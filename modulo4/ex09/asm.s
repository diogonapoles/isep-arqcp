.section .data

.section .text
.global calculate

calculate:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body
	
	
	
	pushq %rdi
	imulq %rsi, %rdi
	movq %rdi, %rcx
	movq %rdi, %r8
	
	popq %rdi
	
	pushq %rdi
	pushq %rsi
	movq %rsi, %rdx			#3 parametro
	movq %rdi, %rsi			#2 parametro
	movq $42, %rdi			#1 parametro *
	
	pushq %r8
	call print_result
	popq %r8
	popq %rsi
	popq %rdi
	
	
	pushq %rdi
	subq %rsi, %rdi
	movq %rdi, %rcx
	movq %rdi, %r9
	
	popq %rdi
	
	pushq %rdi
	pushq %rsi
	movq %rsi, %rdx			#3 parametro
	movq %rdi, %rsi			#2 parametro
	movq $45, %rdi			#1 parametro -
	
	pushq %r8
	pushq %r9
	call print_result
	popq %r9
	popq %r8
	popq %rsi
	popq %rdi
	
	subq %r8, %r9
	movq %r9, %rax


end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

