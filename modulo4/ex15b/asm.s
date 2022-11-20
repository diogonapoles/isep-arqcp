.section .data

.section .text
.global activate_bits

activate_bits:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body

	movl	%edx, %ecx		# right ecx
	movl	$31, %eax
	xorl	%edx, %edx
	jmp	loop

right_lower:
	subl	$1, %eax
	jb	mask
loop:
	addl	%edx, %edx
	cmpl	%eax, %esi
	jl		left_lower
	cmpl	%eax, %ecx
	jle		right_lower
left_lower:
	addl	$1, %edx
	subl	$1, %eax
	jnb	loop
mask:
	movl	%edx, %eax
	orl	%edi, %eax			#activate bits

end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

