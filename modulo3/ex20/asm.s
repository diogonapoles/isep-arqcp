.section .data
    .global ptrvec              # pointer
    .global num
.section .text
    .global count_max
count_max:
    movl $0, %eax               # counter_true

    movl num(%rip), %ecx        
    subl $2, %ecx               # store number of possible interactions in ecx

    movq ptrvec(%rip), %rdx

verification:
    cmpl $0, %ecx               # check possible interactions
    jle end

variables:
    movl (%rdx), %r8d
    addq $4, %rdx
    movl (%rdx), %edi
    addq $4, %rdx
    movl (%rdx), %r9d

    subq $4, %rdx               # go one step back
    decl %ecx                   # remove one possible interaction

left_compare:
    cmpl %r8d, %edi
    jg right_compare
    jmp verification

right_compare:
    cmpl %r9d, %edi
    jg incrementation
    jmp verification

incrementation:
    incl %eax
    jmp verification

end:
    ret


