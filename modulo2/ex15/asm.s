.section .data
	.global A
	.global B
	.global C
	.global D
.section .text
	.global compute #int compute(void)
	
	compute:
	
		movl A(%rip), %eax
		movl B(%rip), %ecx
		movslq %ecx , %rcx #converter B para 64
		movslq %eax , %rax #converter A para 64
		imulq %rcx, %rax
		movl C(%rip), %edx
		movslq %edx , %rdx #converter C para 64
		subq %rdx, %rax
		movq $0, %rdx
		movl D(%rip), %edx
		movslq %edx , %rdx #converter D para 64
		#movq %rax, %rsi
		cmp $0, %rdx
		je end
		divq %rdx
		
		end:
		
		
		ret

	


