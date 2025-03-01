section .data
    num1 dd 10       ; Primer número (10)
    num2 dd 20       ; Segundo número (20)
    result dd 0      ; Variable para almacenar el resultado

section .text
    global _start

_start:
    ; Cargar el primer número en el registro EAX
    mov eax, [num1]

    ; Sumar el segundo número al registro EAX
    add eax, [num2]

    ; Almacenar el resultado en la variable 'result'
    mov [result], eax

    ; Salir del programa
    mov eax, 1       ; Código de la syscall para salir (1)
    xor ebx, ebx     ; Código de retorno 0
    int 0x80         ; Llamada al kernel
