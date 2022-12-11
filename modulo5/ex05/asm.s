.section .data

.section .text
.global update_grades

update_grades:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body
	xorq	%rdx, %rdx
	xorq 	%rcx, %rcx
loop:
	movl	(%rsi), %eax
	addq	$4, %rsi
	addq	$1, %rcx				# passar os primeiro elementos da struct e posteriormente andar por cada elemento 
	movl	%eax, (%rdi, %rcx, 4)	# copiar o elemento 
	
	addq 	$1, %rdx
	cmpq	$5, %rdx 
	jne loop

end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

