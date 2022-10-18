.section .data 
    .global op1 
    .global op2 
    .global op3 

.section .text 
    .global sum3ints	
    sum3ints: 	
        movl op1(%rip), %ebx 			# place op1 in ebx
        movl op2(%rip), %eax			# place op2 in eax
        addl %ebx, %eax			        # add ebx to eax. Result is in eax
        movl op3(%rip), %ecx            # place op3 in ecx
        addl %ecx, %eax                 # add ecx to eax. Result is in eax
	    ret
