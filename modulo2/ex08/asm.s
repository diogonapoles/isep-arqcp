.section .data
	s1:
		.short 33	
	.global s1
	s2:						
		.short 22
	.global s2

.section .text
	.global  crossSumBytes
	
crossSumBytes:
	
	movw s1(%rip), %ax    
	movw s2(%rip), %cx    
	
	addb %ch, %al         # mais sig. s2 + menos sig. s1
	addb %cl, %ah         # mais sig. s1 + menos sig. s2

	ret