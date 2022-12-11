.section .data

.section .text
.global return_unionB_b

return_unionB_b:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body
	
	movslq	%esi, %rsi
	movslq	%edx, %rdx

	salq	$5, %rdx				# multiplicar por 32 par a proxima coluna (32 é o tamanho de dados guardados)
	addq	(%rdi,%rsi,8), %rdx
	movzbl	24(%rdx), %eax			# offset para aceber a ub.b

end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

