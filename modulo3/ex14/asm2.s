.section .data
    .global ptrvec                      # pointer
    .global x

.section .text
    .global vec_diff

vec_diff:	
	movq $0, %rax				

    movq ptrvec(%rip),%r8
	movl num(%rip),%ecx			

loop:
	cmpl $0, %ecx                       # check if end
	je end

	movl (%r8), %edx
	movl %edx, x(%rip)

	pushq %rax
	pushq %rcx
	pushq %r8

	call exists
	cmpl $0, %eax

	popq %r8
	popq %rcx
	popq %rax
	je incrementation
	addq $4, %r8

	decl %ecx
	jmp loop
	
incrementation:
	incl %eax
	addq $4, %r8

	cmpl $1, %ecx
	je end

	decl %ecx
	jmp loop

end:
    ret
