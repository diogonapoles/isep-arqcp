.section .data

.global ptrvec
.global num


.section .text
.global sum_first_byte



sum_first_byte:

	movq ptrvec(%rip),%rsi
	movl $0, %ecx
	movl $0, %eax
	movl num(%rip),%edi
	cmp $0, %edi 			#lenght array 0
	je end
	subl $1,%edi
	
	movb (%rsi), %al
	movsbl %al, %eax
	
	cmp $0, %rdi			#end
	jne loop
	
	
	jmp end
	
loop:
	addq $8, %rsi			#long array
	movb (%rsi), %dl
	movsbl %dl, %edx
	addl %edx, %eax			
	incl %ecx
	cmpl %ecx,%edi			#end 
	jz end
	jmp loop
	
	

	
end:		
	#movsbq %al, %rax
	ret 
