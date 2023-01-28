.section .data
	.global op1
	.global op2
	.equ CONST,20
	
.section .bss
	.global	op4
op4:
	.zero	8
	.global op3
op3:
	.zero	8
	
.section .text
	.global sum	#int sum(void)
	.global sum_v2 #int sum_v2(void)
	.global sum_v3 
	sum:
		movl op1(%rip), %ecx #place op1 in ecx
		movl op2(%rip), %eax #place op2 in eax
		addl %ecx, %eax #add ecx to eax. Result is in eax
		ret
	
	sum_v2:
		movl $CONST, %eax
		movl op1(%rip), %ecx #place op1 in ecx
		movl op2(%rip), %edx #place op2 in eax
		subl %ecx, %eax #result = const - op1
		subl %ecx, %eax #result = result - op1
		addl %edx, %eax #result = result + op2
		ret
		
	sum_v3:
		movq op3(%rip), %rax #place op3 in rax
		addq op4(%rip), %rax
		
		movl op2(%rip), %edx #place op2 in edx
		movslq	%edx, %rdx
		subq %rdx, %rax
		subq %rdx, %rax
		movl op1(%rip), %ecx #place op1 in ecx
		movslq	%ecx, %rcx
		addq %rcx, %rax
		addq %rcx, %rax
		
		
		
		ret

	

