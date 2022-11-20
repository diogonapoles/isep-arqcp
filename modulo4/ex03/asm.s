.section .data

.section .text
.global greatest

greatest:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body
	
	cmpl %esi, %edi
	cmovl %esi, %edi	#avoid using jumps
	cmpl %edx, %edi
	cmovl %edx, %edi	#moves if less
	cmpl %ecx, %edi
	cmovl %ecx, %edi
	
	movl %edi, %eax
	
	
	

end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

