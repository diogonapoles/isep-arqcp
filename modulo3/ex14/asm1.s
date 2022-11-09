.section .data
    .global x                   # int x
    .global ptrvec              # int array pointer
    .global num                 # int num
.section .text
    .global exists
#  the function should return 1 if int x has duplicates or 0 if not.
exists:
    pushq %r8
    pushq %r9
    
    movq ptrvec(%rip), %r8      # pointer in %r8
    movl num(%rip), %r9d        # num in %r9d
    movl $0, %edx               # counter
    movl $0, %eax

test_exists:
    cmpl $0, %r9d               # check if array reached the end
    jle check_res

    movl (%r8), %ecx                 
    cmpl %ecx, x(%rip)          # check x
    je counterinc

    addq $4, %r8                # next int in array
    decl %r9d
    jmp test_exists

counterinc:
    incl %edx
    addq $4, %r8
    decl %r9d
    jmp test_exists

check_res:
    popq %r8
    popq %r9

    cmpl $1, %edx
    jg end

    ret

end:
    movl $1, %eax
    ret
