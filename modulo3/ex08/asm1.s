.section .data
	.global even	
    
.section .text
	.global test_even 

test_even:
	movq $0,%rdx	
	movq $2,%rcx	

	idivq %rcx
	cmpq $0, %rdx

	je is_even
	movq $0,%rax
	jmp end		

is_even:
	movq $1,%rax
	jmp end	

end:
	ret			 
    