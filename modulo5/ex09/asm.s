.section .data

.section .text
.global fun1,fun2,fun3,fun4

# prologue
pushq %rbp      	# save previous stack frame pointer
movq %rsp, %rbp  	# the stack frame pointer for sum function
	

fun1:
	movzwl	4(%rdi), %eax
	jmp end

fun2:
	movzwl	20(%rdi), %eax
	jmp end

fun3:
	leaq	20(%rdi), %rax
	jmp end

fun4:
	movq	8(%rdi), %rax
	movzwl	4(%rax), %eax
	jmp end

end:
	
# epilogue
movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
popq %rbp     		# restore the previous stack frame pointer
ret
	

