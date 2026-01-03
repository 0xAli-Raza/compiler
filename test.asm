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
    STR1: db "=== TEST 1: Variables ===", 10, "", 0
    STR2: db "a = 10, b = 20", 10, "", 0
    STR3: db "", 10, "=== TEST 2: Arithmetic ===", 10, "", 0
    STR4: db "10 + 20 = 30", 10, "", 0
    STR5: db "20 - 10 = 10", 10, "", 0
    STR6: db "10 * 20 = 200", 10, "", 0
    STR7: db "20 / 10 = 2", 10, "", 0
    STR8: db "20 %% 10 = 0", 10, "", 0
    STR9: db "", 10, "=== TEST 3: Compound Assignment ===", 10, "", 0
    STR10: db "10 += 5 = 15", 10, "", 0
    STR11: db "15 -= 3 = 12", 10, "", 0
    STR12: db "12 *= 2 = 24", 10, "", 0
    STR13: db "24 /= 4 = 6", 10, "", 0
    STR14: db "", 10, "=== TEST 4: Comparisons ===", 10, "", 0
    STR15: db "5 < 10: TRUE", 10, "", 0
    STR16: db "10 > 5: TRUE", 10, "", 0
    STR17: db "5 <= 5: TRUE", 10, "", 0
    STR18: db "10 >= 10: TRUE", 10, "", 0
    STR19: db "5 == 5: TRUE", 10, "", 0
    STR20: db "5 != 10: TRUE", 10, "", 0
    STR21: db "", 10, "=== TEST 5: Logical Operators ===", 10, "", 0
    STR22: db "AND: (5>3 && 10>5) = TRUE", 10, "", 0
    STR23: db "OR: (5<3 || 10>5) = TRUE", 10, "", 0
    STR24: db "NOT: !0 = TRUE", 10, "", 0
    STR25: db "", 10, "=== TEST 6: If-Else ===", 10, "", 0
    STR26: db "Grade: A", 10, "", 0
    STR27: db "Grade: B (score=85)", 10, "", 0
    STR28: db "Grade: C", 10, "", 0
    STR29: db "Grade: F", 10, "", 0
    STR30: db "", 10, "=== TEST 7: While Loop ===", 10, "", 0
    STR31: db "Sum 1-5 (while): 15", 10, "", 0
    STR32: db "", 10, "=== TEST 8: For Loop ===", 10, "", 0
    STR33: db "Sum 1-10 (for): 50", 10, "", 0
    STR34: db "", 10, "=== TEST 9: Nested Loops ===", 10, "", 0
    STR35: db "3x4 grid count: 12", 10, "", 0
    STR36: db "", 10, "=== TEST 10: Break ===", 10, "", 0
    STR37: db "Sum with break at 5: 15", 10, "", 0
    STR38: db "", 10, "=== TEST 11: Continue ===", 10, "", 0
    STR39: db "Sum 1-10 skip 5: 50", 10, "", 0
    STR40: db "", 10, "=== TEST 12: Functions ===", 10, "", 0
    STR41: db "add(15, 25) = 40", 10, "", 0
    STR42: db "subtract(100, 37) = 63", 10, "", 0
    STR43: db "max(42, 17) = 42", 10, "", 0
    STR44: db "min(42, 17) = 17", 10, "", 0
    STR45: db "", 10, "=== TEST 13: Loops in Functions ===", 10, "", 0
    STR46: db "factorial(5) = 120", 10, "", 0
    STR47: db "sum_to_n(10) = 55", 10, "", 0
    STR48: db "", 10, "=== TEST 14: Recursion ===", 10, "", 0
    STR49: db "fib(10) = 55", 10, "", 0
    STR50: db "", 10, "=== TEST 15: Break in Function ===", 10, "", 0
    STR51: db "First divisible by 7 (1-20): 7", 10, "", 0
    STR52: db "", 10, "=== TEST 16: Continue in Function ===", 10, "", 0
    STR53: db "Sum 1-20 skip multiples of 5: 170", 10, "", 0
    STR54: db "", 10, "=== TEST 17: Precedence ===", 10, "", 0
    STR55: db "2 + 3 * 4 = 14", 10, "", 0
    STR56: db "(2 + 3) * 4 = 20", 10, "", 0
    STR57: db "20 - 4 * 3 + 2 = 10", 10, "", 0
    STR58: db "", 10, "=== TEST 18: Complex Expressions ===", 10, "", 0
    STR59: db "(5+3)*2 - 5/1 = 11", 10, "", 0
    STR60: db "5*3 + 2*5 - 3 = 22", 10, "", 0
    STR61: db "", 10, "=== TEST 19: Multiple Conditions ===", 10, "", 0
    STR62: db "Can drive: YES", 10, "", 0
    STR63: db "Day off: YES", 10, "", 0
    STR64: db "", 10, "=== TEST 20: Nested If in Loop ===", 10, "", 0
    STR65: db "Even sum (2+4+6+8+10): 30", 10, "", 0
    STR66: db "Odd sum (1+3+5+7+9): 25", 10, "", 0
    STR67: db "", 10, "========================================", 10, "", 0
    STR68: db "ALL TESTS COMPLETED SUCCESSFULLY!", 10, "", 0
    STR69: db "========================================", 10, "", 0

section .bss
    complex1: resq 1
    sub_result: resq 1
    for_sum: resq 1
    add_result: resq 1
    age: resq 1
    test_result: resq 1
    pi: resq 1
    is_weekend: resq 1
    result: resq 1
    count: resq 1
    fact_result: resq 1
    j: resq 1
    n: resq 1
    row: resq 1
    q: resq 1
    zero: resq 1
    break_sum: resq 1
    col: resq 1
    complex2: resq 1
    cont_sum: resq 1
    checksum: resq 1
    diff: resq 1
    a: resq 1
    fib_result: resq 1
    score: resq 1
    min_result: resq 1
    first_div: resq 1
    m: resq 1
    is_holiday: resq 1
    mod: resq 1
    prod: resq 1
    skip_result: resq 1
    has_license: resq 1
    i: resq 1
    limit: resq 1
    even_sum: resq 1
    odd_sum: resq 1
    max_result: resq 1
    b: resq 1
    sum: resq 1
    prec2: resq 1
    prec1: resq 1
    r: resq 1
    prec3: resq 1
    quot: resq 1
    p: resq 1
    k: resq 1
    while_sum: resq 1
    sum_result: resq 1
    divisor: resq 1
    x: resq 1

section .text
global main

add:
    push rbp
    mov rbp, rsp
    sub rsp, 256
    mov rax, qword [a]
    add rax, qword [b]
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    mov rsp, rbp
    pop rbp
    ret
    mov rsp, rbp
    pop rbp
    ret

subtract:
    push rbp
    mov rbp, rsp
    sub rsp, 256
    mov rax, qword [a]
    sub rax, qword [b]
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    mov qword [result], rax
    mov rax, qword [result]
    mov rsp, rbp
    pop rbp
    ret
    mov rsp, rbp
    pop rbp
    ret

max:
    push rbp
    mov rbp, rsp
    sub rsp, 256
    mov rax, qword [a]
    cmp rax, qword [b]
    setg al
    movzx rax, al
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    test rax, rax
    jz ELSE1
    mov rax, qword [a]
    mov rsp, rbp
    pop rbp
    ret
    jmp ENDIF2
ELSE1:
    mov rax, qword [b]
    mov rsp, rbp
    pop rbp
    ret
ENDIF2:
    mov rax, 0
    mov rsp, rbp
    pop rbp
    ret
    mov rsp, rbp
    pop rbp
    ret

min:
    push rbp
    mov rbp, rsp
    sub rsp, 256
    mov rax, qword [a]
    cmp rax, qword [b]
    setl al
    movzx rax, al
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    test rax, rax
    jz ENDIF4
    mov rax, qword [a]
    mov rsp, rbp
    pop rbp
    ret
ENDIF4:
    mov rax, qword [b]
    mov rsp, rbp
    pop rbp
    ret
    mov rsp, rbp
    pop rbp
    ret

factorial:
    push rbp
    mov rbp, rsp
    sub rsp, 256
    mov rax, 1
    mov qword [result], rax
    mov rax, 1
    mov qword [i], rax
WHILE_START5:
    mov rax, qword [i]
    cmp rax, qword [n]
    setle al
    movzx rax, al
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    test rax, rax
    jz WHILE_END6
    mov rax, qword [result]
    imul rax, qword [i]
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    mov qword [result], rax
    mov rax, qword [i]
    add rax, 1
    mov qword [rbp-16], rax
    mov rax, qword [rbp-16]
    mov qword [i], rax
    jmp WHILE_START5
WHILE_END6:
    mov rax, qword [result]
    mov rsp, rbp
    pop rbp
    ret
    mov rsp, rbp
    pop rbp
    ret

sum_to_n:
    push rbp
    mov rbp, rsp
    sub rsp, 256
    mov rax, 0
    mov qword [sum], rax
    mov rax, 1
    mov qword [i], rax
FOR_START7:
    mov rax, qword [i]
    cmp rax, qword [n]
    setle al
    movzx rax, al
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    test rax, rax
    jz FOR_END9
    mov rax, qword [sum]
    add rax, qword [i]
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    mov qword [sum], rax
FOR_UPDATE8:
    mov rax, qword [i]
    add rax, 1
    mov qword [rbp-16], rax
    mov rax, qword [rbp-16]
    mov qword [i], rax
    jmp FOR_START7
FOR_END9:
    mov rax, qword [sum]
    mov rsp, rbp
    pop rbp
    ret
    mov rsp, rbp
    pop rbp
    ret

fib:
    push rbp
    mov rbp, rsp
    sub rsp, 256
    mov rax, qword [n]
    cmp rax, 1
    setle al
    movzx rax, al
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    test rax, rax
    jz ENDIF11
    mov rax, qword [n]
    mov rsp, rbp
    pop rbp
    ret
ENDIF11:
    mov rax, qword [n]
    sub rax, 1
    mov qword [rbp-8], rax
    mov rdi, qword [rbp-8]
    xor rax, rax
    call fib
    mov qword [rbp-16], rax
    mov rax, qword [n]
    sub rax, 2
    mov qword [rbp-8], rax
    mov rdi, qword [rbp-8]
    xor rax, rax
    call fib
    mov qword [rbp-16], rax
    mov rax, qword [rbp-16]
    add rax, qword [rbp-16]
    mov qword [rbp-24], rax
    mov rax, qword [rbp-24]
    mov rsp, rbp
    pop rbp
    ret
    mov rsp, rbp
    pop rbp
    ret

find_first_divisible:
    push rbp
    mov rbp, rsp
    sub rsp, 256
    mov rax, 0
    mov qword [result], rax
    mov rax, 1
    mov qword [i], rax
FOR_START12:
    mov rax, qword [i]
    cmp rax, qword [limit]
    setle al
    movzx rax, al
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    test rax, rax
    jz FOR_END14
    mov rax, qword [i]
    cqo
    mov rbx, qword [divisor]
    idiv rbx
    mov qword [rbp-8], rdx
    mov rax, qword [rbp-8]
    cmp rax, 0
    sete al
    movzx rax, al
    mov qword [rbp-16], rax
    mov rax, qword [rbp-16]
    test rax, rax
    jz ENDIF16
    mov rax, qword [i]
    mov qword [result], rax
    jmp FOR_END14
ENDIF16:
FOR_UPDATE13:
    mov rax, qword [i]
    add rax, 1
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    mov qword [i], rax
    jmp FOR_START12
FOR_END14:
    mov rax, qword [result]
    mov rsp, rbp
    pop rbp
    ret
    mov rsp, rbp
    pop rbp
    ret

sum_skip_fives:
    push rbp
    mov rbp, rsp
    sub rsp, 256
    mov rax, 0
    mov qword [sum], rax
    mov rax, 1
    mov qword [i], rax
FOR_START17:
    mov rax, qword [i]
    cmp rax, qword [n]
    setle al
    movzx rax, al
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    test rax, rax
    jz FOR_END19
    mov rax, qword [i]
    cqo
    mov rbx, 5
    idiv rbx
    mov qword [rbp-8], rdx
    mov rax, qword [rbp-8]
    cmp rax, 0
    sete al
    movzx rax, al
    mov qword [rbp-16], rax
    mov rax, qword [rbp-16]
    test rax, rax
    jz ENDIF21
    jmp FOR_UPDATE18
ENDIF21:
    mov rax, qword [sum]
    add rax, qword [i]
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    mov qword [sum], rax
FOR_UPDATE18:
    mov rax, qword [i]
    add rax, 1
    mov qword [rbp-16], rax
    mov rax, qword [rbp-16]
    mov qword [i], rax
    jmp FOR_START17
FOR_END19:
    mov rax, qword [sum]
    mov rsp, rbp
    pop rbp
    ret
    mov rsp, rbp
    pop rbp
    ret

main:
    push rbp
    mov rbp, rsp
    sub rsp, 256
    lea rdi, [STR1]
    xor rax, rax
    call printf
    mov qword [rbp-8], rax
    mov rax, 10
    mov qword [a], rax
    mov rax, 20
    mov qword [b], rax
    mov rax, 3.14
    mov qword [pi], rax
    mov rax, 0
    mov qword [zero], rax
    lea rdi, [STR2]
    xor rax, rax
    call printf
    mov qword [rbp-8], rax
    lea rdi, [STR3]
    xor rax, rax
    call printf
    mov qword [rbp-16], rax
    mov rax, qword [a]
    add rax, qword [b]
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    mov qword [sum], rax
    mov rax, qword [b]
    sub rax, qword [a]
    mov qword [rbp-16], rax
    mov rax, qword [rbp-16]
    mov qword [diff], rax
    mov rax, qword [a]
    imul rax, qword [b]
    mov qword [rbp-24], rax
    mov rax, qword [rbp-24]
    mov qword [prod], rax
    mov rax, qword [b]
    cqo
    mov rbx, qword [a]
    idiv rbx
    mov qword [rbp-8], rax
    mov rax, qword [rbp-8]
    mov qword [quot], rax
    mov rax, qword [b]
    cqo
    mov rbx, qword [a]
    idiv rbx
    mov qword [rbp-16], rdx
    mov rax, qword [rbp-16]
    mov qword [mod], rax
    lea rdi, [STR4]
    xor rax, rax
    call printf
    mov qword [rbp-24], rax
    lea rdi, [STR5]
    xor rax, rax
    call printf
    mov qword [rbp-32], rax
    lea rdi, [STR6]
    xor rax, rax
    call printf
    mov qword [rbp-40], rax
    lea rdi, [STR7]
    xor rax, rax
    call printf
    mov qword [rbp-48], rax
    lea rdi, [STR8]
    xor rax, rax
    call printf
    mov qword [rbp-56], rax
    lea rdi, [STR9]
    xor rax, rax
    call printf
    mov qword [rbp-64], rax
    mov rax, 10
    mov qword [x], rax
    mov rax, qword [x]
    add rax, 5
    mov qword [rbp-72], rax
    mov rax, qword [rbp-72]
    mov qword [x], rax
    lea rdi, [STR10]
    xor rax, rax
    call printf
    mov qword [rbp-80], rax
    mov rax, qword [x]
    sub rax, 3
    mov qword [rbp-88], rax
    mov rax, qword [rbp-88]
    mov qword [x], rax
    lea rdi, [STR11]
    xor rax, rax
    call printf
    mov qword [rbp-96], rax
    mov rax, qword [x]
    add rax, qword [x]
    mov qword [rbp-104], rax
    mov rax, qword [rbp-104]
    mov qword [x], rax
    lea rdi, [STR12]
    xor rax, rax
    call printf
    mov qword [rbp-112], rax
    mov rax, qword [x]
    cqo
    mov rbx, 4
    idiv rbx
    mov qword [rbp-120], rax
    mov rax, qword [rbp-120]
    mov qword [x], rax
    lea rdi, [STR13]
    xor rax, rax
    call printf
    mov qword [rbp-128], rax
    lea rdi, [STR14]
    xor rax, rax
    call printf
    mov qword [rbp-136], rax
    mov rax, 0
    mov qword [rbp-144], rax
    mov rax, 5
    cmp rax, 10
    setl al
    movzx rax, al
    mov qword [rbp-152], rax
    mov rax, qword [rbp-152]
    test rax, rax
    jz ENDIF23
    lea rdi, [STR15]
    xor rax, rax
    call printf
    mov qword [rbp-160], rax
    mov rax, qword [rbp-144]
    add rax, 1
    mov qword [rbp-168], rax
    mov rax, qword [rbp-168]
    mov qword [rbp-144], rax
ENDIF23:
    mov rax, 10
    cmp rax, 5
    setg al
    movzx rax, al
    mov qword [rbp-176], rax
    mov rax, qword [rbp-176]
    test rax, rax
    jz ENDIF25
    lea rdi, [STR16]
    xor rax, rax
    call printf
    mov qword [rbp-184], rax
    mov rax, qword [rbp-144]
    add rax, 1
    mov qword [rbp-192], rax
    mov rax, qword [rbp-192]
    mov qword [rbp-144], rax
ENDIF25:
    mov rax, 5
    cmp rax, 5
    setle al
    movzx rax, al
    mov qword [rbp-200], rax
    mov rax, qword [rbp-200]
    test rax, rax
    jz ENDIF27
    lea rdi, [STR17]
    xor rax, rax
    call printf
    mov qword [rbp-208], rax
    mov rax, qword [rbp-144]
    add rax, 1
    mov qword [rbp-216], rax
    mov rax, qword [rbp-216]
    mov qword [rbp-144], rax
ENDIF27:
    mov rax, 10
    cmp rax, 10
    setge al
    movzx rax, al
    mov qword [rbp-224], rax
    mov rax, qword [rbp-224]
    test rax, rax
    jz ENDIF29
    lea rdi, [STR18]
    xor rax, rax
    call printf
    mov qword [rbp-232], rax
    mov rax, qword [rbp-144]
    add rax, 1
    mov qword [rbp-240], rax
    mov rax, qword [rbp-240]
    mov qword [rbp-144], rax
ENDIF29:
    mov rax, 5
    cmp rax, 5
    sete al
    movzx rax, al
    mov qword [rbp-248], rax
    mov rax, qword [rbp-248]
    test rax, rax
    jz ENDIF31
    lea rdi, [STR19]
    xor rax, rax
    call printf
    mov qword [rbp-256], rax
    mov rax, qword [rbp-144]
    add rax, 1
    mov qword [rbp-264], rax
    mov rax, qword [rbp-264]
    mov qword [rbp-144], rax
ENDIF31:
    mov rax, 5
    cmp rax, 10
    setne al
    movzx rax, al
    mov qword [rbp-272], rax
    mov rax, qword [rbp-272]
    test rax, rax
    jz ENDIF33
    lea rdi, [STR20]
    xor rax, rax
    call printf
    mov qword [rbp-280], rax
    mov rax, qword [rbp-144]
    add rax, 1
    mov qword [rbp-288], rax
    mov rax, qword [rbp-288]
    mov qword [rbp-144], rax
ENDIF33:
    lea rdi, [STR21]
    xor rax, rax
    call printf
    mov qword [rbp-296], rax
    mov rax, 5
    cmp rax, 3
    setg al
    movzx rax, al
    mov qword [rbp-304], rax
    mov rax, 10
    cmp rax, 5
    setg al
    movzx rax, al
    mov qword [rbp-312], rax
    mov rax, qword [rbp-304]
    and rax, qword [rbp-312]
    mov qword [rbp-320], rax
    mov rax, qword [rbp-320]
    test rax, rax
    jz ENDIF35
    lea rdi, [STR22]
    xor rax, rax
    call printf
    mov qword [rbp-328], rax
ENDIF35:
    mov rax, 5
    cmp rax, 3
    setl al
    movzx rax, al
    mov qword [rbp-336], rax
    mov rax, 10
    cmp rax, 5
    setg al
    movzx rax, al
    mov qword [rbp-344], rax
    mov rax, qword [rbp-336]
    or rax, qword [rbp-344]
    mov qword [rbp-352], rax
    mov rax, qword [rbp-352]
    test rax, rax
    jz ENDIF37
    lea rdi, [STR23]
    xor rax, rax
    call printf
    mov qword [rbp-360], rax
ENDIF37:
    mov rax, qword [zero]
    test rax, rax
    sete al
    movzx rax, al
    mov qword [rbp-368], rax
    mov rax, qword [rbp-368]
    test rax, rax
    jz ENDIF39
    lea rdi, [STR24]
    xor rax, rax
    call printf
    mov qword [rbp-376], rax
ENDIF39:
    lea rdi, [STR25]
    xor rax, rax
    call printf
    mov qword [rbp-384], rax
    mov rax, 85
    mov qword [score], rax
    mov rax, qword [score]
    cmp rax, 90
    setge al
    movzx rax, al
    mov qword [rbp-392], rax
    mov rax, qword [rbp-392]
    test rax, rax
    jz ELSE40
    lea rdi, [STR26]
    xor rax, rax
    call printf
    mov qword [rbp-400], rax
    jmp ENDIF41
ELSE40:
    mov rax, qword [score]
    cmp rax, 80
    setge al
    movzx rax, al
    mov qword [rbp-408], rax
    mov rax, qword [rbp-408]
    test rax, rax
    jz ELSE42
    lea rdi, [STR27]
    xor rax, rax
    call printf
    mov qword [rbp-416], rax
    jmp ENDIF43
ELSE42:
    mov rax, qword [score]
    cmp rax, 70
    setge al
    movzx rax, al
    mov qword [rbp-424], rax
    mov rax, qword [rbp-424]
    test rax, rax
    jz ELSE44
    lea rdi, [STR28]
    xor rax, rax
    call printf
    mov qword [rbp-432], rax
    jmp ENDIF45
ELSE44:
    lea rdi, [STR29]
    xor rax, rax
    call printf
    mov qword [rbp-440], rax
ENDIF45:
ENDIF43:
ENDIF41:
    lea rdi, [STR30]
    xor rax, rax
    call printf
    mov qword [rbp-448], rax
    mov rax, 0
    mov qword [while_sum], rax
    mov rax, 1
    mov qword [i], rax
WHILE_START46:
    mov rax, qword [i]
    cmp rax, 5
    setle al
    movzx rax, al
    mov qword [rbp-456], rax
    mov rax, qword [rbp-456]
    test rax, rax
    jz WHILE_END47
    mov rax, qword [while_sum]
    add rax, qword [i]
    mov qword [rbp-464], rax
    mov rax, qword [rbp-464]
    mov qword [while_sum], rax
    mov rax, qword [i]
    add rax, 1
    mov qword [rbp-472], rax
    mov rax, qword [rbp-472]
    mov qword [i], rax
    jmp WHILE_START46
WHILE_END47:
    lea rdi, [STR31]
    xor rax, rax
    call printf
    mov qword [rbp-480], rax
    lea rdi, [STR32]
    xor rax, rax
    call printf
    mov qword [rbp-488], rax
    mov rax, 0
    mov qword [for_sum], rax
    mov rax, 1
    mov qword [j], rax
FOR_START48:
    mov rax, qword [j]
    cmp rax, 10
    setle al
    movzx rax, al
    mov qword [rbp-496], rax
    mov rax, qword [rbp-496]
    test rax, rax
    jz FOR_END50
    mov rax, qword [for_sum]
    add rax, qword [j]
    mov qword [rbp-504], rax
    mov rax, qword [rbp-504]
    mov qword [for_sum], rax
FOR_UPDATE49:
    mov rax, qword [j]
    add rax, 1
    mov qword [rbp-512], rax
    mov rax, qword [rbp-512]
    mov qword [j], rax
    jmp FOR_START48
FOR_END50:
    lea rdi, [STR33]
    xor rax, rax
    call printf
    mov qword [rbp-520], rax
    lea rdi, [STR34]
    xor rax, rax
    call printf
    mov qword [rbp-528], rax
    mov rax, 0
    mov qword [count], rax
    mov rax, 0
    mov qword [row], rax
FOR_START51:
    mov rax, qword [row]
    cmp rax, 3
    setl al
    movzx rax, al
    mov qword [rbp-536], rax
    mov rax, qword [rbp-536]
    test rax, rax
    jz FOR_END53
    mov rax, 0
    mov qword [col], rax
FOR_START54:
    mov rax, qword [col]
    cmp rax, 4
    setl al
    movzx rax, al
    mov qword [rbp-544], rax
    mov rax, qword [rbp-544]
    test rax, rax
    jz FOR_END56
    mov rax, qword [count]
    add rax, 1
    mov qword [rbp-552], rax
    mov rax, qword [rbp-552]
    mov qword [count], rax
FOR_UPDATE55:
    mov rax, qword [col]
    add rax, 1
    mov qword [rbp-560], rax
    mov rax, qword [rbp-560]
    mov qword [col], rax
    jmp FOR_START54
FOR_END56:
FOR_UPDATE52:
    mov rax, qword [row]
    add rax, 1
    mov qword [rbp-568], rax
    mov rax, qword [rbp-568]
    mov qword [row], rax
    jmp FOR_START51
FOR_END53:
    lea rdi, [STR35]
    xor rax, rax
    call printf
    mov qword [rbp-576], rax
    lea rdi, [STR36]
    xor rax, rax
    call printf
    mov qword [rbp-584], rax
    mov rax, 0
    mov qword [break_sum], rax
    mov rax, 1
    mov qword [k], rax
FOR_START57:
    mov rax, qword [k]
    cmp rax, 100
    setle al
    movzx rax, al
    mov qword [rbp-592], rax
    mov rax, qword [rbp-592]
    test rax, rax
    jz FOR_END59
    mov rax, qword [k]
    cmp rax, 5
    setg al
    movzx rax, al
    mov qword [rbp-600], rax
    mov rax, qword [rbp-600]
    test rax, rax
    jz ENDIF61
    jmp FOR_END59
ENDIF61:
    mov rax, qword [break_sum]
    add rax, qword [k]
    mov qword [rbp-608], rax
    mov rax, qword [rbp-608]
    mov qword [break_sum], rax
FOR_UPDATE58:
    mov rax, qword [k]
    add rax, 1
    mov qword [rbp-616], rax
    mov rax, qword [rbp-616]
    mov qword [k], rax
    jmp FOR_START57
FOR_END59:
    lea rdi, [STR37]
    xor rax, rax
    call printf
    mov qword [rbp-624], rax
    lea rdi, [STR38]
    xor rax, rax
    call printf
    mov qword [rbp-632], rax
    mov rax, 0
    mov qword [cont_sum], rax
    mov rax, 1
    mov qword [m], rax
FOR_START62:
    mov rax, qword [m]
    cmp rax, 10
    setle al
    movzx rax, al
    mov qword [rbp-640], rax
    mov rax, qword [rbp-640]
    test rax, rax
    jz FOR_END64
    mov rax, qword [m]
    cmp rax, 5
    sete al
    movzx rax, al
    mov qword [rbp-648], rax
    mov rax, qword [rbp-648]
    test rax, rax
    jz ENDIF66
    jmp FOR_UPDATE63
ENDIF66:
    mov rax, qword [cont_sum]
    add rax, qword [m]
    mov qword [rbp-656], rax
    mov rax, qword [rbp-656]
    mov qword [cont_sum], rax
FOR_UPDATE63:
    mov rax, qword [m]
    add rax, 1
    mov qword [rbp-664], rax
    mov rax, qword [rbp-664]
    mov qword [m], rax
    jmp FOR_START62
FOR_END64:
    lea rdi, [STR39]
    xor rax, rax
    call printf
    mov qword [rbp-672], rax
    lea rdi, [STR40]
    xor rax, rax
    call printf
    mov qword [rbp-680], rax
    mov rdi, 15
    mov rsi, 25
    xor rax, rax
    call add
    mov qword [rbp-688], rax
    mov rax, qword [rbp-688]
    mov qword [add_result], rax
    lea rdi, [STR41]
    xor rax, rax
    call printf
    mov qword [rbp-696], rax
    mov rdi, 100
    mov rsi, 37
    xor rax, rax
    call subtract
    mov qword [rbp-704], rax
    mov rax, qword [rbp-704]
    mov qword [sub_result], rax
    lea rdi, [STR42]
    xor rax, rax
    call printf
    mov qword [rbp-712], rax
    mov rdi, 42
    mov rsi, 17
    xor rax, rax
    call max
    mov qword [rbp-720], rax
    mov rax, qword [rbp-720]
    mov qword [max_result], rax
    lea rdi, [STR43]
    xor rax, rax
    call printf
    mov qword [rbp-728], rax
    mov rdi, 42
    mov rsi, 17
    xor rax, rax
    call min
    mov qword [rbp-736], rax
    mov rax, qword [rbp-736]
    mov qword [min_result], rax
    lea rdi, [STR44]
    xor rax, rax
    call printf
    mov qword [rbp-744], rax
    lea rdi, [STR45]
    xor rax, rax
    call printf
    mov qword [rbp-752], rax
    mov rdi, 5
    xor rax, rax
    call factorial
    mov qword [rbp-760], rax
    mov rax, qword [rbp-760]
    mov qword [fact_result], rax
    lea rdi, [STR46]
    xor rax, rax
    call printf
    mov qword [rbp-768], rax
    mov rdi, 10
    xor rax, rax
    call sum_to_n
    mov qword [rbp-776], rax
    mov rax, qword [rbp-776]
    mov qword [sum_result], rax
    lea rdi, [STR47]
    xor rax, rax
    call printf
    mov qword [rbp-784], rax
    lea rdi, [STR48]
    xor rax, rax
    call printf
    mov qword [rbp-792], rax
    mov rdi, 10
    xor rax, rax
    call fib
    mov qword [rbp-800], rax
    mov rax, qword [rbp-800]
    mov qword [fib_result], rax
    lea rdi, [STR49]
    xor rax, rax
    call printf
    mov qword [rbp-808], rax
    lea rdi, [STR50]
    xor rax, rax
    call printf
    mov qword [rbp-816], rax
    mov rdi, 20
    mov rsi, 7
    xor rax, rax
    call find_first_divisible
    mov qword [rbp-824], rax
    mov rax, qword [rbp-824]
    mov qword [first_div], rax
    lea rdi, [STR51]
    xor rax, rax
    call printf
    mov qword [rbp-832], rax
    lea rdi, [STR52]
    xor rax, rax
    call printf
    mov qword [rbp-840], rax
    mov rdi, 20
    xor rax, rax
    call sum_skip_fives
    mov qword [rbp-848], rax
    mov rax, qword [rbp-848]
    mov qword [skip_result], rax
    lea rdi, [STR53]
    xor rax, rax
    call printf
    mov qword [rbp-856], rax
    lea rdi, [STR54]
    xor rax, rax
    call printf
    mov qword [rbp-864], rax
    mov rax, 12
    mov qword [rbp-872], rax
    mov rax, 2
    add rax, qword [rbp-872]
    mov qword [rbp-880], rax
    mov rax, qword [rbp-880]
    mov qword [prec1], rax
    lea rdi, [STR55]
    xor rax, rax
    call printf
    mov qword [rbp-888], rax
    mov rax, 5
    mov qword [rbp-896], rax
    mov rax, qword [rbp-896]
    imul rax, 4
    mov qword [rbp-904], rax
    mov rax, qword [rbp-904]
    mov qword [prec2], rax
    lea rdi, [STR56]
    xor rax, rax
    call printf
    mov qword [rbp-912], rax
    mov rax, 12
    mov qword [rbp-920], rax
    mov rax, 20
    sub rax, qword [rbp-920]
    mov qword [rbp-928], rax
    mov rax, qword [rbp-928]
    add rax, 2
    mov qword [rbp-936], rax
    mov rax, qword [rbp-936]
    mov qword [prec3], rax
    lea rdi, [STR57]
    xor rax, rax
    call printf
    mov qword [rbp-944], rax
    lea rdi, [STR58]
    xor rax, rax
    call printf
    mov qword [rbp-952], rax
    mov rax, 5
    mov qword [p], rax
    mov rax, 3
    mov qword [q], rax
    mov rax, 2
    mov qword [r], rax
    mov rax, qword [p]
    add rax, qword [q]
    mov qword [rbp-960], rax
    mov rax, qword [rbp-960]
    imul rax, qword [r]
    mov qword [rbp-968], rax
    mov rax, qword [p]
    cqo
    mov rbx, 1
    idiv rbx
    mov qword [rbp-976], rax
    mov rax, qword [rbp-968]
    sub rax, qword [rbp-976]
    mov qword [rbp-984], rax
    mov rax, qword [rbp-984]
    mov qword [complex1], rax
    lea rdi, [STR59]
    xor rax, rax
    call printf
    mov qword [rbp-992], rax
    mov rax, qword [p]
    imul rax, qword [q]
    mov qword [rbp-1000], rax
    mov rax, qword [r]
    imul rax, qword [p]
    mov qword [rbp-1008], rax
    mov rax, qword [rbp-1000]
    add rax, qword [rbp-1008]
    mov qword [rbp-1016], rax
    mov rax, qword [rbp-1016]
    sub rax, qword [q]
    mov qword [rbp-1024], rax
    mov rax, qword [rbp-1024]
    mov qword [complex2], rax
    lea rdi, [STR60]
    xor rax, rax
    call printf
    mov qword [rbp-1032], rax
    lea rdi, [STR61]
    xor rax, rax
    call printf
    mov qword [rbp-1040], rax
    mov rax, 25
    mov qword [age], rax
    mov rax, 1
    mov qword [has_license], rax
    mov rax, qword [age]
    cmp rax, 18
    setge al
    movzx rax, al
    mov qword [rbp-1048], rax
    mov rax, qword [rbp-1048]
    and rax, qword [has_license]
    mov qword [rbp-1056], rax
    mov rax, qword [rbp-1056]
    test rax, rax
    jz ENDIF68
    lea rdi, [STR62]
    xor rax, rax
    call printf
    mov qword [rbp-1064], rax
ENDIF68:
    mov rax, 0
    mov qword [is_weekend], rax
    mov rax, 1
    mov qword [is_holiday], rax
    mov rax, qword [is_weekend]
    or rax, qword [is_holiday]
    mov qword [rbp-1072], rax
    mov rax, qword [rbp-1072]
    test rax, rax
    jz ENDIF70
    lea rdi, [STR63]
    xor rax, rax
    call printf
    mov qword [rbp-1080], rax
ENDIF70:
    lea rdi, [STR64]
    xor rax, rax
    call printf
    mov qword [rbp-1088], rax
    mov rax, 0
    mov qword [even_sum], rax
    mov rax, 0
    mov qword [odd_sum], rax
    mov rax, 1
    mov qword [n], rax
FOR_START71:
    mov rax, qword [n]
    cmp rax, 10
    setle al
    movzx rax, al
    mov qword [rbp-1096], rax
    mov rax, qword [rbp-1096]
    test rax, rax
    jz FOR_END73
    mov rax, qword [n]
    cqo
    mov rbx, 2
    idiv rbx
    mov qword [rbp-1104], rdx
    mov rax, qword [rbp-1104]
    cmp rax, 0
    sete al
    movzx rax, al
    mov qword [rbp-1112], rax
    mov rax, qword [rbp-1112]
    test rax, rax
    jz ELSE74
    mov rax, qword [even_sum]
    add rax, qword [n]
    mov qword [rbp-1120], rax
    mov rax, qword [rbp-1120]
    mov qword [even_sum], rax
    jmp ENDIF75
ELSE74:
    mov rax, qword [odd_sum]
    add rax, qword [n]
    mov qword [rbp-1128], rax
    mov rax, qword [rbp-1128]
    mov qword [odd_sum], rax
ENDIF75:
FOR_UPDATE72:
    mov rax, qword [n]
    add rax, 1
    mov qword [rbp-1136], rax
    mov rax, qword [rbp-1136]
    mov qword [n], rax
    jmp FOR_START71
FOR_END73:
    lea rdi, [STR65]
    xor rax, rax
    call printf
    mov qword [rbp-1144], rax
    lea rdi, [STR66]
    xor rax, rax
    call printf
    mov qword [rbp-1152], rax
    lea rdi, [STR67]
    xor rax, rax
    call printf
    mov qword [rbp-1160], rax
    lea rdi, [STR68]
    xor rax, rax
    call printf
    mov qword [rbp-1168], rax
    lea rdi, [STR69]
    xor rax, rax
    call printf
    mov qword [rbp-1176], rax
    mov rax, qword [add_result]
    add rax, qword [sub_result]
    mov qword [rbp-1184], rax
    mov rax, qword [rbp-1184]
    add rax, qword [max_result]
    mov qword [rbp-1192], rax
    mov rax, qword [rbp-1192]
    add rax, qword [min_result]
    mov qword [rbp-1200], rax
    mov rax, qword [rbp-1200]
    mov qword [checksum], rax
    mov rax, qword [checksum]
    mov rsp, rbp
    pop rbp
    ret
    mov rsp, rbp
    pop rbp
    ret
