.section .data
	.global op1
	.global op2
	.equ CONST,20
.section .text
	.global sum	#int sum(void)
	.global sum_v2 #int sum_v2(void)
	sum:
		movl op1(%rip), %ecx #place op1 in ecx
		movl op2(%rip), %eax #place op2 in eax
		addl %ecx, %eax #add ecx to eax. Result is in eax
		ret
	
	sum_v2:
		movl $CONST, %eax
		movl op1(%rip), %ecx #place op1 in ecx
		movl op2(%rip), %edx #place op2 in edx
		subl %ecx, %eax #result = const - op1
		subl %ecx, %eax #result = result - op1
		addl %edx, %eax #result = result + op2
	ret

	
