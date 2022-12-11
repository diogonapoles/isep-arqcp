    # ------------------------- #
    #	char c[3] 	*3 bytes*   #
    #	short w[3]  *6 bytes*   #
    #	int j		*4 bytes*   #
    # ------------------------- #
    #   total_size  *16 bytes*  #
    # ------------------------- #
.section .text
    .global fill_s2
    # ----------------------------------------------------- #
    # void fill_s2(s2 *s, short vw[3], int vj, char vc[3]); #
    # ----------------------------------------------------- #
fill_s2:
    # prologue
    pushq %rbp              # save the original value of RBP
    movq %rsp, %rbp         # copy the current stack pointer to RBP
    
# -----------------------------------------------------------------------
# %rdi = s; %rsi = vw; %rdx = vj; %rcx = vc

chars:
	movzbl	(%rcx), %eax		
	movb	%al, (%rdi)     # save firt char
	movzbl	1(%rcx), %eax
	movb	%al, 1(%rdi)    # save second char
	movzbl	2(%rcx), %eax
	movb	%al, 2(%rdi)    # save third char

shorts:
	movzwl	(%rsi), %eax
	movw	%ax, 4(%rdi)    # save firt short
	movzwl	2(%rsi), %eax
	movw	%ax, 6(%rdi)    # save second short
	movzwl	4(%rsi), %eax
	movw	%ax, 8(%rdi)    # save third short

integer:
	movl	%edx, 12(%rdi)  # save integer
	
# -----------------------------------------------------------------------

end:
    # epilogue
	movq %rbp, %rsp         # retrieve the original RSP value 
    popq %rbp               # restore the original RBP value 

    ret
