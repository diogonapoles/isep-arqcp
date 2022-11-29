.section .data

.section .text
.global call_proc

call_proc:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body
	subq $16, %rsp          

    movl %edi, -4(%rbp)     #x1=a
    movl %esi, -8(%rbp)     #x2=b
    movw %dx, -12(%rbp)     #x3=c
    movb %cl, -13(%rbp)     #x4=d

                                #valor de x1(a), já se encontra em rdi
        leaq -4(%rbp), %rsi     #*p1 como 2 argumento

    leaq -4(%rbp), %rsi     #&
    movl -8(%rbp), %edx     #b
    leaq -8(%rbp), %rcx     #&b
    movw -12(%rbp), %r8w    #c
    leaq -12(%rbp), %r9     #&c

    leaq -13(%rbp), %rax
    pushq %rax              #&d 8ª
    movsbq -13(%rbp), %rax  
    pushq %rax              #d  7ª

    call proc
        
    addq $16,%rsp           #clear stack

    movl -4(%rbp), %eax
    movl -8(%rbp), %edx     
    addl %edx, %eax         

    movw -12(%rbp), %cx
    movsbw -13(%rbp), %dx
    subw %dx, %cx           

    movswl %cx,%edx

    imull %edx,%eax         #result


end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

