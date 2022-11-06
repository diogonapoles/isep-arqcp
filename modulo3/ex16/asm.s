.section .data
	.global ptr1            # pointer
	.global ptr2            # pointer
	.global num             # num
	
.section .text
	.global swap
	
swap:
	pushq %r8
	pushq %r9

	movl $0, %r8d            # counter

	movq ptr1(%rip), %rcx    # store pointer
	movq ptr2(%rip), %rdx    # store pointer

loop:
	cmpl %r8d, num(%rip)
	je end
	
	movb (%rcx), %al
	movb (%rdx), %r9b
	movb %r9b, (%rcx)
	movb %al, (%rdx)
	
	incq %rcx
	incq %rdx
	incl %r8d
	jmp loop
	
end:
	popq %r8
	popq %r9
	
	ret