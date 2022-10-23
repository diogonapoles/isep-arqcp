.section .data
	.global length1
	.global length2
	.global height
.section .text
	.global getArea #int getArea(void)
	
	getArea:
		movl length1(%rip), %eax	
		addl length2(%rip), %eax	#sum lengths
		movl height(%rip), %ecx		
		imull %ecx					#mult #eax with #ecx
		sar %eax					#shift right (the same as divide by 2 in binary)
		ret
		

	
