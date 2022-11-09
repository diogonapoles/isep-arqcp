.section .data
	.global ptr1
	.global ptr2

.section .text
	.global str_copy_porto
	
	str_copy_porto:
		movq ptr1(%rip), %rdx
		movq ptr2(%rip), %rax

	loop:
		movb (%rdx), %cl 		# get char pointed in %rdx
		cmpb $0, %cl 			# end of a string?
		je end 					# return
		cmpb $111, %cl			# check if %cl is "o"
		je changevalues
		movb %cl, (%rax)		# move character to %rax
		incq %rdx				# increment %rdx
		incq %rax				# increment %rax
		jmp loop

	changevalues:
		movb $117, %cl			# move "u" to %cl
		movb %cl, (%rax)		# move %cl to %rax
		incq %rdx				# increment %rdx
		incq %rax				# increment %rax
		jmp loop
	
	end:
		movb %cl, (%rax)
		ret
		

	
