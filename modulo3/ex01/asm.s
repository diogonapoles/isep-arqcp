.section .data
.global ptr1
.equ SEVEN, 55

.section .text
.global seven_count

seven_count:

	movq ptr1(%rip), %rdi		# moves ptr1 (pointer to str address) to rdi

	xor %eax,%eax		# clears eax

	
string_loop:	
	movb (%rdi), %cl	# moves char pointed by rdi to cl 
	cmpb $0, %cl		# end of string
	je end				# jumps to end
	
	cmpb $SEVEN, %cl	# compares cl with SEVEN
	jne increments 		# jumps to increments if cmpb is not equal
	
	incl %eax			# increments the number of 7s to eax
	
increments:
	incq %rdi			# increments 1 to rdi
	jmp string_loop		# jumps to string_loop
	
end:
	ret
