.section .data

.section .text
.global count_odd_matrix

count_odd_matrix:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body
	
	leaq	(%rdi), %rax		# registo

	xorl	%r9d, %r9d			# counter
	xorq 	%rcx, %rcx			# i 
	pushq %rdi
for1:
	
	movq	(%rax), %rdi		# endereço do vetor de inteiros
	addq	$8, %rax 			
	xorq	%r8, %r8			# j	
	pushq %rcx
	jmp for2
inc2:
	addq	$4, %rdi			# proximo valor
	for2:
		
		movq	(%rdi), %r10	# valor do vetor de inteiros
		testq	$1, %r10		# valor & 1 
		jnz odd 				# jumps if the last number is 1 (impar)

	continue:
		incl	%r8d			# j++
		cmpl	%edx, %r8d		# j > k 
		jl inc2

	popq %rcx
	incl	%ecx				# i++
	cmpl	%esi, %ecx			# i > y
	jl for1
popq %rdi
jmp end

odd:
	incl %r9d
	jmp continue


end:
	movl	%r9d, %eax

	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

