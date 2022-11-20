.section .data

.section .text
.global add_byte

add_byte:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body

	movslq	(%rsi), %r8			#first bit of vec1 to r8
	movq	%rdx, %rcx			#vec2 to rcx
	xorl	%eax, %eax
	movl	%r8d, (%rdx)		#mov 32b to the start of rdx
	testl	%r8d, %r8d			#same as cmp 0 to r8d
	jle	end

loop:
	movl	4(%rsi,%rax,4), %edx	#movs to vec2
	movl	%edx, 4(%rcx,%rax,4)
	addl	%edi, %edx				#sums parameter x with the edx
	movb	%dl, 4(%rcx,%rax,4)
	addq	$1, %rax				#position
	cmpq	%rax, %r8
	jne	loop


end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

