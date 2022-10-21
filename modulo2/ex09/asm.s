.section .data
	.global A
	.global B
	.global C
	.global D
.section .text
	.global sum_and_subtract #long sum_and_subtract(void)
	
	sum_and_subtract:
		movb C(%rip), %al  #mover C para 8 
		movsbq %al, %rax   #converter C para 64 
		movl A(%rip), %ecx #mover A para 32
		movslq %ecx , %rcx #converter A para 64
		addq %rcx, %rax    #result = A + C
		movq $0, %rcx 	   #rec a zero
		movb D(%rip), %cl  #mover D para 8
		movsbq %cl, %rcx   #converter D para 64 
		subq %rcx, %rax     #result = result -D
		movw B(%rip), %dx  #mover B para 16 
		movswq %dx, %rdx   #converter B para 64 
		addq %rdx, %rax    #result + B
		
		ret

	

