.global _start

.section .text
_start:
    
    lea testStr, %r12
    sub %r12, testStr_end
    xor %cx,%cx
    inc %cx

    cmpw $1000, %cx
    jne loop
    jmp exit

    loop:
    

    inc %cx
    cmpw $1000, %cx
    jne loop


exit: 
    mov $0, %rdi
    mov $60, %rax
    syscall

.section .data
testStr:
    .string "Hallo Welt"
testStr_end:
