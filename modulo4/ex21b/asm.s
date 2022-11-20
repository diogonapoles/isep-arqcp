.section .data

.section .text
.global distance

distance:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body

	pushq	%r12
	pushq	%rbp
	movq	%rsi, %rbp			# *a into rbp
	pushq	%rbx
	movq	%rdi, %rbx			# *b into rbx
	
	pushq	%rbp
	pushq	%rbx
	call	strlen
	popq	%rbx
	popq	%rbp
	
	movq	%rbp, %rdi			# *a into rdi
	movq	%rax, %r12			# a lenght into r12
	
	pushq 	%r12
	call	strlen
	popq	%r12
	
	cmpq	%rax, %r12			#if lenght is not the same
	jne		diff_lenght
	
	movzbl	(%rbx), %edx		#b into edx
	xorl	%r8d, %r8d			#clear r8d
	testb	%dl, %dl			#ativate zero flag if dl is 0
	jz	str_end
	xorl	%eax, %eax			#clear eax

loop:
	cmpb	%dl, 0(%rbp,%rax)
	setne	%dl					#set byte if zf = 0
	addq	$1, %rax			#count ++
	movzbl	%dl, %edx
	addl	%edx, %r8d
	movzbl	(%rbx,%rax), %edx
	testb	%dl, %dl
	jne	loop
str_end:
	popq	%rbx
	movl	%r8d, %eax
	popq	%rbp
	popq	%r12
	jmp end
	
diff_lenght:

	movl	$-1, %r8d
	jmp	str_end


end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

