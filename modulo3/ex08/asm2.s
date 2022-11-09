.section .data
	.global ptrvec 
	.global num	
	.global even	
.section .text
	.global vec_sum_even 

vec_sum_even:
	pushq %rbp
	movq %rsp, %rbp

	movq $0,%rax		    # clean %rax	
	movq $0,%rdx		    # clean %rdx	

	movq ptrvec(%rip),%rsi
	movl num(%rip),%ecx

arraysum:
	cmpl $0,%ecx		    # check end
	jle end				

	movq (%rsi),%r8
	movq %r8, even(%rip)   
	pushq %rax			    # use of the stack
	pushq %rdx				# use of the stack
	pushq %rcx			    # use of the stack

	call test_even		    # calls the function test_even. result in eax

	cmpq $1,%rax		    # check even
	popq %rcx	            # use of the stack
	popq %rdx			    # use of the stack
    popq %rax			    # use of the stack
	je even_sum				   

	addq $8,%rsi	
	decl %ecx	    
	jmp arraysum		                

even_sum:
	addq %r8,%rax	
	addq $8,%rsi	
	decl %ecx
	jmp arraysum		

end:
	popq %rbp
	ret			 
    