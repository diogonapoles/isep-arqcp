.section .data
# typedef struct {
#	short number;		*2 bytes*
#	char age;			*1 byte*
#	int grades[5];		*20 bytes*
#	char name[60];		*60 bytes*
#	char address[100];	*100 bytes*
# } Student;

.section .text
    .global locate_greater

locate_greater:
   # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP
    
# -----------------------------------------------------------------------
# int locate_greater(Student *s (%rdi), int minimum (%esi), int *greater_grades (%rdx));

	leaq	4(%rdi), %rax		# grades pointer in %rax
	xorl	%r8d, %r8d			# clear %r8d
	addq	$24, %rdi			# go to the end of grades
locate:
	movl	(%rax), %ecx		# grade in ecx	
	cmpl	%esi, %ecx			# compare with minimum value
	jle	not_greater
	
	movslq	%r8d, %r9
	incl 	%r8d				# incrementation
	movl	%ecx, (%rdx,%r9,4)	# save in %rdx (greater_grades)

not_greater:
	addq	$4, %rax			# next grade in grades
	cmpq	%rdi, %rax			# check if already reached the end
	jne	locate
	
# -----------------------------------------------------------------------
end:
	movl %r8d, %eax

    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret
