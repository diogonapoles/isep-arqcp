.section .text 
    .global vec_count_bits_one # vector of shorts

vec_count_bits_one:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP

# -----------------------------------------------------------------------

	movl $0, %r8d					# inicia o contador auxiliar de bits ativos a 0

my_loop:
	cmpl $0, %esi					# verifica se já percorremos o array todo
	je end							# salta para o fim se sim
	
	pushq %rdi
	pushq %rsi						# salvaguarda o contador de iteração do array
	
	movzwl (%rdi), %edi
	call count_bits_one			# chamada da função para contagem de bits inativos
	
	popq %rsi						# restaura o valor de ecx
	popq %rdi

	addl %eax, %r8d					# adiciona o valor de retorno da função a r8d (temporariamente)
	decl %esi						# decrementa o ecx (número restante de elementos a percorrer)
	addq $2, %rdi					# avança para o próximo elemento no array
	jmp my_loop						# salta para a próxima iteração

# -----------------------------------------------------------------------

end:
	movl %r8d, %eax
	
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret






