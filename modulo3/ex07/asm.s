.section .data
.global ptr1
.equ SPACE,32
													
.section .text
.global encrypt
.global decrypt


encrypt:
	movq ptr1(%rip),%rdx
	movl $0,%eax
	
loop_add:
	movb (%rdx),%cl
	cmpb $0,%cl
	je end
	
	cmpb $'a', %cl
	je no_change_add
	cmpb $SPACE, %cl
	je no_change_add
	
	addq $3,(%rdx)
	incq %rdx
	incl %eax
	jmp loop_add
	
no_change_add:
	incq %rdx
	jmp loop_add

decrypt:

	movq ptr1(%rip),%rdx
	movl $0,%eax
	
loop_sub:
	movb (%rdx),%cl
	
	cmpb $0,%cl
	je end
	
	cmpb $'a',%cl
	je no_change_sub
	cmpb $SPACE,%cl
	je no_change_sub
	
	subq $3,(%rdx)
	incq %rdx
	incl %eax
	jmp loop_sub
	
no_change_sub:
	incq %rdx
	jmp loop_sub
		
end:			
	ret 
