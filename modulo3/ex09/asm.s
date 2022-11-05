.section .data

.global ptrvec
.global num
.global x

.section .text
.global vec_search

vec_search:
	
	movq ptrvec(%rip), %rsi
	movl $0,%ecx
	movw x(%rip),%dx
	movl $0,%eax

ciclo:
	cmpl %ecx,num(%rip)
	je end 
	cmpw (%rsi),%dx
	je copyadress
	incl %ecx
	addq $2,%rsi 
	jmp ciclo


copyadress:
	movq %rsi, %rax
	
end:				
	ret 

