#nasm 64bit
section .text

global greet

greet:
    mov eax, hello
    ret

section .data
    hello:  db  "Hello World!"
