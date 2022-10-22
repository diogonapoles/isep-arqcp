.section .data
A:
	.int 20
	
B:
	.int 5
	
total:
	.int 0
	
i:
	.int 1
	
.global n	

.section .text 
	.global ciclo	

ciclo:
	movl i(%rip),%eax
	imull %eax,%eax			# eax = i*i

	movl A(%rip), %ecx
	imull %ecx, %ecx		# ecx = A*A

	imull %ecx, %eax		# eax = ecx * eax (i*i + A*A)

	movl $0, %ecx 			# limpar ecx
	movl B(%rip),%ecx
	cqto
	idivl %ecx				# dividir eax(i*i + A*A) por ecx(B)

	# fim de um ciclo
	# o resultado deste ciclo encontra se em eax

	addl %eax, total(%rip)	# adicionar eax ao total

	movl $0, %ecx 			# limpar ecx
	movl $0, %edx 			# limpar edx	

	movl n(%rip),%ecx		# mover n para ecx
	movl i(%rip), %edx		# mover i para edx

	incl i(%rip)			# incrementar (i+)
	
	cmp %edx,%ecx			# compares index with IT number
	jne ciclo				# if i < number of iterations repeats cycle (jump not equal)
	jmp end

end:
	movl total(%rip), %eax
	ret 	
