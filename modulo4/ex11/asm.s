.section .data

.section .text
.global proc

proc:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body
 	movl %edi, %eax
        addl %edx, %eax

	movl %edi, %eax
    addl %edx, %eax			#sum x1 and x2

    movl %eax, (%rsi)       #place on pointer

    movl %edx, %eax
    subl %edi, %eax			#sub x2 - x1

    movl %eax, (%rcx)       #place on pointer
        
    movswl %r8w, %eax       
    addl %edx, %eax			#sum x3 and x2

    movl %eax, (%r9)        #place on pointer
        
    movq 16(%rbp), %rax
    movb $3, %dl
    imulb %dl               #multiply x4 for 3                 

    movq 24(%rbp), %rdx
    movb %al, (%rdx)
end:
	
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

