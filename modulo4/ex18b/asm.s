.section .text
    .global changes

changes:
	movl (%rdi), %eax       # move pointer to %eax
	movl %eax, %edx     

	sarl $8, %edx           
	andl $0b11110000, %edx  # extracts second byte from pointer 
    cmpl $15, %edx          # check if %edx is less than 15
	jl end

	xorl $0xFF0000, %eax    # inverts bits in third byte
	movl %eax, (%rdi)
end:
	ret
