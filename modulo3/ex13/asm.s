.section .data

.global ptrvec
.global num


.section .text
.global keep_positives



keep_positives:
	
	movq ptrvec(%rip),%rsi
	movw $0,%cx
	movw num(%rip),%dx
		
loop:
	
	cmpw %cx,%dx			#end os array
	jz end
	movw (%rsi), %ax		
	cmpw $0,%ax				#if %ax is negative
	jl negative
	addq $2, %rsi			#short array
	incw %cx
	jmp loop
	
negative:	
	movw %cx,(%rsi)
	addq $2, %rsi
	incw %cx
	jmp loop
	
end:			
	ret 
