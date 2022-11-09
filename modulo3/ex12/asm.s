.section .data
    .global num                     # pointer
    .global ptrvec                  # pointer
.section .text
    .global vec_zero                # function

vec_zero:
    pushq %r8
    pushq %r9
    movq $0, %rax                   # clear %rax

    movq ptrvec(%rip), %r8          # move pointer address
    movl num(%rip), %r9d            # move int to %r9d

check_num:
    cmpl $0, %r9d
    jle end

    movl (%r8), %ecx                # get int pointed in %r8
    cmpl $100, %ecx
    jl increment

    movl $0, %ecx
	movl %ecx, (%r8) 
    incb %al
    
increment:
    addq $4, %r8
    decl %r9d
    jmp check_num

end:
    popq %r8
    popq %r9
    ret
