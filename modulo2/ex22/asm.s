.section .data
.global i
.global j

.section .text

.global f
.global f2
.global f3
.global f4

# =========================================================	

f:
	movl i(%rip),%eax
	movl j(%rip),%ecx

	cmp %ecx,%eax
	je equalf

	addl %ecx,%eax			# h = i + j
	subl $1,%eax        	# h = (i + j) - 1

	jmp end
	
equalf:
	subl %ecx,%eax			# h = i - j		
	addl $1,%eax			# h = (i - j) + 1

	jmp end

# =========================================================	

f2:
	movl i(%rip),%eax
	movl j(%rip),%ecx

	cmp %ecx,%eax
	jg biggeri

	addl $1,%ecx			# j = j + 1;
	imull %ecx,%eax			# %eax = %ecx * %eax

	jmp end
	
biggeri:
	subl $1,%eax			# i = i - 1	
	imull %ecx,%eax			# %eax = %ecx * %eax

	jmp end
	
# =========================================================	

f3:
	movl i(%rip),%eax
	movl j(%rip),%ecx

	cmp %ecx,%eax
	jge bigorequali

	addl %ecx,%eax			# h = i + j
	movl $0, %ecx
	movl %eax, %ecx			# g = i + j
	addl $2, %ecx			# g = i + j + 2

	# ecx = h, eax = g

	cdq
	idivl %ecx

	jmp end
	
bigorequali:
	imull %eax,%ecx			# %ecx = %eax * %ecx (h = i * j)
	addl $1,%eax	

	# ecx = h, eax = g

	cdq
	idivl %ecx

	jmp end

# =========================================================	

f4:	
	movl i(%rip),%eax
	movl j(%rip),%ecx
	movl $10,%edx
	addl %ecx,%eax			# eax = i + j

	cmp %edx,%eax
	jl less10

	movl j(%rip),%eax 
	movl $3,%ecx
	imull %eax,%eax

	movl $0, %edx
	cltd
	idivl %ecx
	
	jmp end
	
less10:
	movl i(%rip),%eax
	imull %eax,%eax
	imull $4,%eax

	jmp end

end:	
	ret 
