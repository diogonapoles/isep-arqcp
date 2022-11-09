.section .data
.global A
.global B

.section .text
.global isMultiple

isMultiple:
	
	movl A(%rip), %eax				# place A in eax because it is the dividend
	movl B(%rip), %ecx				# place B in ecx
	cmpl $0, %ecx
	je end
	
	cltd							# convert long to double
	idivl %ecx						# divides %eax by %ecx

	cmpl $0, %edx					# (%edx -$0)
	je multipleTrue					# jump if equals (%edx == $0)
	movl $0, %eax					# move 0 to %eax because it's false	
	jmp end

multipleTrue:
	movl $1, %eax					# move 1 to %eax because it's true
	
end:
	ret

