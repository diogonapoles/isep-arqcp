.section .data
.global op1
.global op2
	
.section .text 
.global sum
.global subtr
.global multi
.global divide
.global modulus
.global power2
.global power3

sum:
	movl op1(%rip),%eax	#stores op1
	addl op2(%rip),%eax	#adds op2 to eax
	
	jmp end
subtr:
	movl op1(%rip),%eax	#stores op1
	subl op2(%rip),%eax	#subtrai op2 to eax
	
	jmp end
	
multi:
	movl op1(%rip),%eax	#stores op1
	movl op2(%rip),%ecx	#moves op2 to ecx
	imul %ecx		#muls ecx by eax
	
	jmp end
	
divide:
	movl op1(%rip),	%eax	#stores op1
	movl op2(%rip),	%ecx	#moves op2 to ecx to use in division
	cdq						#clear
	idivl %ecx				#divs ecx by edx:eax
	
	jmp end
	
modulus:
	movl op1(%rip),%eax
	movl op2(%rip),%ecx
	movl $0,%edx	#clear
	idivl %ecx		#divs ecx by edx:eax
	movl %edx,%eax
	
	jmp end
	
power2:
	movl op1(%rip),%eax	
	movl op1(%rip),%ecx
	imull %ecx		#muls ecx by eax
	
	jmp end
	
power3:
	movl op1(%rip),%eax	
	movl op1(%rip),%ecx
	imull %ecx		#muls ecx by eax
	imull %ecx		#muls ecx by eax
	
	jmp end

end:
	ret
