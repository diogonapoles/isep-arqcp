.section .data
.equ o, 111
.equ O, 79	
.equ u, 117	
.equ U, 85									
 
.section .text
.global ptr1
.global ptr2
.global str_copy_porto2

str_copy_porto2:	
	
	movq ptr1(%rip),%rdx 
	movq ptr2(%rip),%rcx
		
loop_1:
	
	movb (%rdx),%al			#move index 0 element to al
	cmpb $0,%al				#end of string
	je end
	
	cmpb $o, %al
	je switch_o_u			#jumps if some char equals to "o" or "O"
	cmpb $O, %al
	je switch_O_U
	
	movb %al,(%rcx)			#mov char to str2
	incq %rcx				#increments index
	incq %rdx
	jmp loop_1
	
	
switch_o_u:
		
	movb $u,(%rcx)
	incq %rcx
	incq %rdx	
	jmp loop_1
	
switch_O_U:
		
	movb $U,(%rcx)
	incq %rcx
	incq %rdx	
	jmp loop_1
		
end:
	movb $0,(%rcx)
				
	ret
	
