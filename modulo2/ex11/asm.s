.section .data
	.global op1
	.global op2

.section .text
	.global test_flags #char test_flags(void)
	
	test_flags:
		movl op1(%rip), %eax	
		addl op2(%rip), %eax
		JC activate			#jump if has carry
		JO activate			#jump if has overflow
		movl $0, %eax		#clear to return 0 (not activated)
		jmp end
		
		activate:
			movl $1, %eax	#fill to return 1 (activated)
			
		end:	
			ret

	
