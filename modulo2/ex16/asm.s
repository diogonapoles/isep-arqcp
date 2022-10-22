.section .data 
.global num
	
.section .text 
.global steps

steps:
	movq num(%rip),%rax		# stores num

	imulq $3,%rax			# %rax = 3 * %rax, MULTIPLICATION(*3)

	addq $6,%rax			# %rax = 6 + %rax, ADDITION(+6)
	
	movq $3,%rcx			# moves op2 to rcx to use in DIVISION (divisor)
	cqto					# convert quad to octal
	idivq %rcx				# divides %rax by %rcx, DIVISION(/3)

	addq $12, %rax			# %rax = 12 + %rax, ADDITION(+12)

	movq $0, %rdx			# clear %rdx trash
	movq num(%rip), %rdx	# stores num in %rdx

	subq %rdx, %rax 		# %rax = %rax - %rdx, SUBTRACTION(-num)
	subq $1, %rax 			# %rax = %rax - 1, SUBTRACTION(-1)

	ret
