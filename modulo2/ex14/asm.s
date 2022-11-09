.section .data
length1:
	.int 3
	.global length1
length2:
	.int 5
	.global length2
height:
	.int 7
	.global height

.section .text
	.global getArea
	
	getArea:
		movl length1(%rip), %eax
		addl length2(%rip), %eax
		movl height(%rip), %ecx
		imull %ecx
		sar %eax
		ret
		

	
