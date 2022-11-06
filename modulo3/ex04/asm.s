.section .data
	.global num
	.global ptrvec

.section .text
	.global vec_add_two
	
	vec_add_two:

	movl $0, %eax	
	movl $0, %edx 		
	movq ptrvec(%rip), %rax

	loop:

	cmp num(%rip), %edx
	je end

	movl (%rax), %ecx 		# get int pointed in %rax
	addl $2, %ecx
	movl %ecx, (%rax) 
	addq $4, %rax

	incl %edx

	jmp loop

	end:
	ret

	
