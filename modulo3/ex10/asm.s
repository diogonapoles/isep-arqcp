.section .data
	.global ptr3                    # pointer	
	.global ptr1                    # pointer	
    .global ptr2                    # pointer	
.section .text
	.global str_cat			        # int str_cat(void)

str_cat:
    movq ptr3(%rip), %rax
    movq ptr1(%rip), %r8            # move pointer address
    movq ptr2(%rip), %r9            # move pointer address

first:
    movq $0, %rcx
    
    movb (%r8), %cl                 # move char to %cl

    cmpb $0, %cl                    # end of a string?
    je second

    movb %cl, (%rax)                # move char to %rax
    incq %r8				        # increment %rdx
	incq %rax				        # increment %rax
    jmp first

second:
    movq $0, %rcx

    movb (%r9), %cl                 # move char to %cl
    cmpb $0, %cl                    # end of a string?
    je end

    movb %cl, (%rax)                # move char to %rax
    incq %r9				        # increment %rdx
	incq %rax				        # increment %rax
    jmp second

end:
    ret
    
