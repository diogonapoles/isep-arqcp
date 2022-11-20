.section .data

.section .text
.global count_odd

count_odd:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body

	xor %eax, %eax
	
	func:
	cmpl $0, %esi
	je end
	movb (%rdi), %cl
	
	decl %esi
	incq %rdi 
					# %cl & 1
	testb $1, %cl	# if is an odd number jump to add
	jnz add_one		
	
	jmp func
	
add_one:
	addl $1, %eax 
	jmp func

end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

