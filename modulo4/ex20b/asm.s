.section .text
    .global sum_multiples_x

sum_multiples_x:
    xorl	%r8d, %r8d      # clears %r8d

	movsbl	(%rdi), %ecx    # sign extend byte to int
	sarl	$8, %esi        # shifts 1 byte to the right, to retrieve the second byte of the variable x

	testb	%cl, %cl        # sets the zero flag (ZF), if the result of the AND operation is zero
	je	end                 # tests the zero flag and jumps if the flag is set

	movsbl	%sil, %esi      # sign extend byte to int

while: # ecx has the int from vec, %esi has the dividend
	movl	%ecx, %eax      # to perform the division
	addl	%r8d, %ecx     

	cltd
	idivl	%esi
	testl	%edx, %edx      # check the remainder: sets the zero flag (ZF), if the result of the AND operation is zero
	cmove	%ecx, %r8d      # moves if the zero flag is set

	addq	$1, %rdi        # next byte
    movsbl	(%rdi), %ecx    # sign extend byte to int

	testb	%cl, %cl        # sets the zero flag (ZF), if the result of the AND operation is zero
	jne	while               # tests the zero flag and jumps if the flag is not set

	movl	%r8d, %eax
	ret

end:
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	ret
