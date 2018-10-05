section .text
        global _start
_start:
        mov eax, 4          ; system call ID: sys_write
        mov ebx, 1          ; file desc for std out
        mov ecx, string     ; string address
        mov edx, length     ; string length
        int 80h             ; system call
        mov eax, 1          ; system call ID: sys_exit
        mov ebx, 1          ; exit code 0: no error
        int 80h             ; system call

section .data
string: db 'Hello, nasm', 0Ah   ; output string
length: equ 13                  ; length of string
