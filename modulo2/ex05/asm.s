.section .data
    .global s

.section .text
    .global swapBytes
    swapBytes:
    movw s(%rip), %cx    	# cx = s
	movb %cl, %dh			# colocar o bit menos signficativo de cx em dh

	movb $2, %al			# colocar 2 em al para fazer a multiplicacao
    mulb %ch				# al = 2 * ch

	movb %al,%dl			# colocar al em dl (bit mais significativo de cx, multiplicado por 2)
	movw %dx, %ax

    ret