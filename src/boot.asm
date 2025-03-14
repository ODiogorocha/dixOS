[BITS 16]
[ORG 0x7C00]

;funcaos

call helloword
call jumpline
call pointerstring
call printstring

;variaveis
hello db "hello word !",13,10,0

;corpo das funcaos

helloword:

jumpline:
    mov ah, 0eh
    mov al, 0ah ;funciona como enter
    int 10h
    mov al, odh ;funciona como enter
    int 10h
    ret 

pointerstring
    mov si hello
    ret

printstring:
    mov ah, 0eh
    mov al, [si]

    ;looping de repeticao
    print:
        int 10h
        inc si ;inc = incrementar
        mov al, [si]
        cmp al, 0
        jmp print
    ret


; Preenche o espaço restante até 510 bytes
times 510 - ($ - $$) db 0
; O código do carregador de inicialização do sistema operacional
dw 0xAA55   ; Sinal de finalização de MBR (Master Boot Record)
