.section .data
.global ptrvec
.global num

.section .text
.global vec_sum
.global vec_avg


vec_sum:
	movl $0, %eax
	movl $0, %ecx	
	movq ptrvec(%rip),%rsi
	
loop:
	cmpl num(%rip),%ecx			#stops at the end of the array	
	je end
	incl %ecx
	addq (%rsi), %rax			
	addq $8, %rsi				#long array
	jmp loop		

vec_avg:
	call vec_sum
	
media:
	
	xor %rcx, %rcx
	xor %rdx, %rdx
	movq num(%rip), %rcx
	cmp $0, %rcx 			#if divisor is 0
	je division_by_zero
	cmp $0, %rax
	jl negative
	idivq %rcx
	jmp end
	
negative:
	neg %rax
	idivq %rcx
	neg %rax
	jmp end
	
division_by_zero:
	xor %rax, %rax 
		
end:		
	ret 
	
