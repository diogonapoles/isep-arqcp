.section .data
	.global ptrvec 
	.global num	
	.global even	
.section .text
	.global test_even 
	.global vec_sum_even 

vec_sum_even:
	movq $0,%rax		    # clean %rax	
	movq $0,%rdx		    # clean %rdx	

	movq ptrvec(%rip),%rsi
	movl num(%rip),%ecx

arraysum:
	cmpl $0,%ecx		    # check end
	jle end				

	movq (%rsi),%rax	    
	pushq %rax			    # use of the stack
	pushq %rdx				# use of the stack
	pushq %rcx			    # use of the stack

	jmp test_even		    # calls the function test_even. result in eax

	cmpq $0,%rax		    # check odd
	popq %rax			    # use of the stack
	popq %rdx			    # use of the stack
    popq %rcx	            # use of the stack
	jne even_sum				   

	addq $4,%rsi		    
	loop arraysum		    
	jmp end		            

even_sum:
	addq (%rsi),%rax	
	addq $4,%rsi		
	loop arraysum		

end:
	ret			 
    