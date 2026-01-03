; Generated x86-64 Assembly (NASM syntax)
; Compile: nasm -f elf64 output.asm -o output.o
; Link: gcc output.o -o output -no-pie

bits 64
default rel

extern printf
extern scanf
extern exit

section .data
    fmt_int: db "%d", 10, 0
    fmt_str: db "%s", 10, 0
    STR1: db "Wow It is 10", 0
    STR2: db "It is not 10", 0
    STR3: db "", 10, "", 0
    STR4: db "%d", 0
    STR5: db "", 10, "", 0

section .bss
    x: resq 1
    i: resq 1

section .text
global main

main:
    push rbp
    mov rbp, rsp
    sub rsp, 256
    mov rax, 10
    mov qword [x], rax
    mov rax, qword [x]
    cmp rax, 10
    sete al
    movzx rax, al
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    test rax, rax
    jz ELSE1
    lea rdi, [STR1]
    xor rax, rax
    call printf
    mov qword [rbp-16], rax
    jmp ENDIF2
ELSE1:
    lea rdi, [STR2]
    xor rax, rax
    call printf
    mov qword [rbp-24], rax
ENDIF2:
    lea rdi, [STR3]
    xor rax, rax
    call printf
    mov qword [rbp-32], rax
    mov rax, 0
    mov qword [i], rax
FOR_START3:
    mov rax, qword [i]
    cmp rax, 10
    setl al
    movzx rax, al
    mov qword [rbp-40], rax
    mov rax, qword [rbp-40]
    test rax, rax
    jz FOR_END5
    lea rdi, [STR4]
    mov rsi, qword [i]
    xor rax, rax
    call printf
    mov qword [rbp-48], rax
    lea rdi, [STR5]
    xor rax, rax
    call printf
    mov qword [rbp-56], rax
FOR_UPDATE4:
    mov rax, qword [i]
    add rax, 1
    mov qword [rbp-64], rax
    mov rax, qword [rbp-64]
    mov qword [i], rax
    jmp FOR_START3
FOR_END5:
    mov rax, 0
    mov rsp, rbp
    pop rbp
    ret
    mov rsp, rbp
    pop rbp
    ret
