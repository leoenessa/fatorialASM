SAIDA EQU 1
STD_OUT_HANDLE EQU -11
extern _ExitProcess
extern _WriteFile
extern _GetStdHandle

global inicio

section .data
num1 dw 4

section .text

inicio:
    movsx eax, word [num1]
    push eax
    mov eax,1
    call fatorial

    ; l1:
    ;     loop l1

    push 0
    call _ExitProcess

fatorial:
    push ebp
    mov ebp,esp
    
    mov ebx,[ebp+8]
    cmp ebx,1
    je fim
    mul ebx
    dec ebx
    push ebx
    call fatorial
    fim:
        pop ebp
        ret
