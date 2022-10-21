.section .data
	.global length1
	.global length2
	.global height
.section .text
	.global getArea #int getArea(void)
	
	getArea:
		movl length1(%rip), %eax
		addl length2(%rip), %eax
		movl height(%rip), %ecx
		imull %ecx
		sar %eax
		ret
		

	
