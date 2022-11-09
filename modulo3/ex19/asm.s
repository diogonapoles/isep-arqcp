.section .data

.global ptrgrades
.global ptrfreq
.global num



.section .text
.global frequencies


frequencies:
	
	movq ptrgrades(%rip), %rsi
	movl num(%rip), %ecx
	movq $0, %rdx
	movq ptrfreq(%rip), %rax
	
	reset:
		movl $0, (%rax)					#clear ptrfreq
		addq $4, %rax
		incq %rdx
		cmp $21, %rdx 					#end of ptrfreq
		jl reset
		
		
	cmpq $0, num(%rip)
	je end
	
	movq ptrfreq(%rip), %rax
	
	add_freq:
	movsbq (%rsi), %rdi
	leaq (%rax,%rdi,4), %rdx			#int element
	addq $1, (%rdx)						#char type
	
	addq $1, %rsi
	
	loop add_freq
	
end:		
	ret 
	
