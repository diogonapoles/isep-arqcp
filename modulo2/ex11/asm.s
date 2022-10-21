.section .data
	.global op1
	.global op2

.section .text
	.global test_flags #char test_flags(void)
	
	test_flags:
		movl op1(%rip), %eax
		addl op2(%rip), %eax
		JC activate
		JO activate
		movl $0, %eax
		jmp end
		
		activate:
			movl $1, %eax
			
		end:	
			ret

	
