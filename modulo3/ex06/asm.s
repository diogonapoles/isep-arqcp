.section .data
	.global ptr1	
	
.section .text
	.global encrypt				# int encrypt(void)
	
encrypt:
	movq ptr1(%rip), %r8			
	movl $0, %eax		

loop:
	movb (%r8), %cl 		# get char pointed in %r8
	cmpb $0, %cl 			# end of a string?
	je end 					# return

	cmpb $32, %cl			# checks if %cl equals a space
	je inc

	cmpb $97, %cl			# checks if %cl equals "a"
	je inc

	addb $3, %cl			# add "3" to %cl
	movb %cl, (%r8)			# move %cl to %r8
	incl %eax				# counter ++

inc:
	incq %r8
	jmp loop

end:
	ret
	
	

	
