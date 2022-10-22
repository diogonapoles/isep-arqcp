.section .data
    .global s
    .global byte1
    .global byte2

.section .text
    .global swapBytes
    .global concatBytes

    concatBytes:
    movb byte1(%rip), %al     # o byte 1 torna-se o byte menos significativo
    movb byte2(%rip), %ah     # o byte 2 torna-se o byte mais significativo

    ret
