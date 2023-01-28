.section .data
.global current
.global desired
.equ decrease,4
.equ increase,3
.equ seconds,60
	
.section .text 
.global needed_time


needed_time:

	movb current(%rip), %ah	#mov para registo
	movb desired(%rip), %ch	#mov para registo
	
	cmp %ah, %ch	#desired-current
	jl descidaTemp	#salta de houver descida
	je noDiff		#se forem temp iguais
	
	
	movsbl %ah, %edx		#converte para 32 bits
	movsbl %ch, %eax		#converte para 32 bits
	subl %edx, %eax			#diferença de temperatura
	imull $increase, %eax	#tempo para igualar a temperatura
	
	calculos:
		imull $seconds, %eax	#tempo para segundos

	jmp end
	
	descidaTemp:
		movsbl %ah, %eax		#converte para 32 bits
		movsbl %ch, %edx		#converte para 32 bits
		subl %edx, %eax			#diferença de temperatura
		imull $decrease, %eax	#tempo para igualar a temperatura 
		jmp calculos
		
	noDiff:
		movl $0, %eax			 #nao houve diff de tempos
	
	end:
		ret 

