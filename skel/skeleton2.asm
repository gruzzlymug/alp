segment data
    ;
    ; initialized data
    ;
string: db 'Hello, nasm', 0Ah   ; output string
length: equ 13                  ; length of string

segment bss
    ;
    ; uninitialized data
    ;
segment text
    global _func
_func:
    push ebp
    mov ebp, esp
    sub esp, 0  ; subtract the number of bytes for locals

    push eax    ; save registers
    push ebx    ; save registers

    ;
    ; body of the function
    ;
    mov eax, 4
    mov ebx, 1
    mov ecx, string
    mov edx, length
    int 80h

    pop ebx     ; restore registers
    pop eax

    mov eax, 0  ; return value
    mov esp, ebp
    pop ebp
    ret

    global _start
_start:
    call _func

    mov eax, 1  ; sys exit
    mov ebx, 0  ; exit code
    int 80h
