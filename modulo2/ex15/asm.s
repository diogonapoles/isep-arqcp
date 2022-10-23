.section .data
	.global A
	.global B
	.global C
	.global D
.section .text
	.global compute #int compute(void)
	
	compute:
	
		
	
		movl A(%rip), %eax
		imull B(%rip), %eax		#(A*B)
		subl C(%rip), %eax		#(A*B)-C
		
		
		movl D(%rip), %edx
		testl %edx, %edx
		jz end
		
		cltd
		idivl %ecx
		
		ret	
		
		end:
			movq $0, %rax
			ret

	


