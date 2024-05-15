

org 100h

jmp main

meassage: DB 'Hello World!', 0

print_char:
    int 10h
    jmp ._loop

print:
    
    mov ah, 0eh

._loop:
    lodsb
    cmp al, 0
    je .done

    call print_char

.done:
    ret

main:
    mov si, meassage
    call print
    ret
