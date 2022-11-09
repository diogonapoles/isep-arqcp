.section .data
    .global ptrsrc
    .global num
    .global ptrdest

.section .text
    .global sort_without_reps

sort_without_reps:
    call array_sort

    movq ptrsrc(%rip), %r8
    movq ptrdest(%rip), %r9
    movl num(%rip), %edx     
    movl $0, %eax               # clean eax      

first_verification:
    cmpl $0, %edx
    jle end

first_step:
    movw (%r8), %cx
    movw %cx, (%r9)

    incl %eax

increment:
    addq $2, %r8
    decl %edx

verification:
    cmpl $0, %edx
    jle end

step:
    movw (%r8), %cx
    movw (%r9), %di

    cmpw %cx, %di
    je increment

    incl %eax
    addq $2, %r9 
    movw %cx, (%r9)
    jmp increment
    
end:
    ret

    