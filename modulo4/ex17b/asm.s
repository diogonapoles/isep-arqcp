.section .data

.section .text
.global greater_date

greater_date:

# prologue
	pushq %rbp      	# save previous stack frame pointer
	movq %rsp, %rbp  	# the stack frame pointer for sum function
	
# body

	movl	%edi, %ecx
	movl	%esi, %edx
	movl	%edi, %eax
	shrl	$8, %ecx		
	shrl	$8, %edx		#discard both months
	cmpw	%dx, %cx		# compare years
	jb	year1_earlier			# if year1 < year2
	ja	year1_later
	cmpb	%sil, %dil		# compare months
	jb	year1_earlier			# if month1 < month2
	ja	year1_later
	movl	%edi, %r8d		
	movl	%esi, %edi
	shrl	$24, %r8d		# discard both months and years
	shrl	$24, %edi
	cmpb	%dil, %r8b		# compara days
	jb	year1_earlier			# if day1 < day2
	ja	year1_later
	jmp year1_later

year1_later:
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret
year1_earlier:
	movl	%esi, %eax
	# epilogue
	movq %rbp, %rsp  	# restore the previous stack pointer ("clear" the stack)
	popq %rbp     		# restore the previous stack frame pointer
	ret

	
