.section .text
    .global reset_bit

reset_bit:
	movl	(%rdi), %eax		# move value pointed by %rdi to %eax
	movl	%eax, %edx
	btrl	%esi, %edx			# bit test and reset, stores the value of the bit in the carry flag
	cmpl	%eax, %edx			# compares new value to old
	movl	%edx, (%rdi)
	setne	%al					# sets the byte in %al if not equal
	movzbl	%al, %eax
	ret
