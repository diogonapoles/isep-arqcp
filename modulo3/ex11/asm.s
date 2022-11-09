.section .data

.global ptrvec
.global num
.equ CONST, 10
										
.section .text
.global vec_greater10


vec_greater10:

	movl $0, %eax
	movq ptrvec(%rip), %rsi		# moves ptrvec to rsi
	movl num(%rip), %ecx
	cmpl $0, %ecx			# compares ecx to 0 (ecx - 0), vec is empty
	je end	
	
loop_array:
	
	cmpl $CONST, (%rsi)		# compares 10
	jle skip				
							
	incl %eax				# increments eax

skip:
	addq $4, %rsi			# increment 4
	loop loop_array			# jumps to loop while ecx is higher than 0
	
end:
	ret
