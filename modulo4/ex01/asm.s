.section .data

.section .text
.global cube

cube:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function*
	
# body

	movslq %edi, %rcx
	movslq %edi, %rax
	movslq %edi, %rdx
	
	
	imulq %rcx, %rax
	imulq %rdx, %rax
	

end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

