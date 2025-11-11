.global _start
.intel_syntax noprefix

_start: # entrypoint
    mov rax, 1 # load sys_write into register rax
    mov rdi, 1 # load sys_write into register rdi
    lea rsi, [howdy] # load our string identified as bark into register rsi
    mov rdx, 7 # set length of the string, plus 2 for carriage return
    syscall

    mov rax, 60 # load sys_exit call into register rax
    mov rdi, 69 # load exit coad into register rdi
    syscall 

howdy: 
    .asciz "howdy\n"
