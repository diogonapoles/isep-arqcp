.section .data
.global num

 
.section .text
.global check_num


check_num:
							
	movl $0,%ecx
	movb $1,%cl

	movl $0,%edx
	movl num(%rip),%eax


	cmpl %edx,%eax		
	je zero
	jg positive				# check if %eax is > $0
	jmp negative
	
positive:
	shrl %cl,%eax			# para o numero odd, o ultimo bit significativo tem que ser 1
	jc oddp					# mandamos o ultimo bit para a CF e fazemos a verificacao
	movl $6,%eax
	jmp end
	
negative:
	shrl %cl,%eax
	jc oddn
	movl $4,%eax
	jmp end
	
oddp:
	movl $7,%eax
	jmp end
	
oddn:
	movl $5,%eax
	jmp end

zero:
	movl $6,%eax
	jmp end

end:
	ret 



