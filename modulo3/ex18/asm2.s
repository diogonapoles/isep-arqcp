.section .data
	.global ptrsrc
	.global num    


.section .text
	.global array_sort 

array_sort:
	
	pushq %rbx
	
	movq $0, %rcx  			# rcx will be i
	movq $0, %rbx  			# rbx will be j
	movq $0, %rdx 			# rdx will be j+1 
	movq $0, %rax

	movl num(%rip), %ecx  	# check if empty array
	movslq %ecx, %rcx
	cmpq $0, %rcx
	je end

	movq ptrsrc(%rip), %rax # doing num-1 for the loops

	decq %rcx

	first_loop:
		cmpq $0, %rcx
		je end
		movq $0, %rbx		# j = 0
		movq $1, %rdx		# j = 1
		pushq %rcx
		second_loop:

			leaq (%rax, %rbx, 2), %rdi		# arr[j] in rdi
			movw (%rdi), %r8w
			leaq (%rax, %rdx, 2), %rsi		# arr[j+1] in rsi
			movw (%rsi), %r9w
	
			cmpw %r9w, %r8w					# if arr[j+1] > arr[j]
			jl no_switch
			
			pushq %rcx
			movw %r8w, %cx				
			movw %r9w, (%rax, %rbx, 2)		# switch places
			movw %cx, (%rax, %rdx, 2)
			popq %rcx

			no_switch:
				incq %rbx          # (j) +1
				incq %rdx		   # (j+1) +1

				decq %rcx
				cmp $0, %rcx

			jne second_loop
		
		popq %rcx
		decq %rcx
		jmp first_loop

	end:
		
		popq %rbx
		ret
		
