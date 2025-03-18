[BITS 16]
[ORG 0000H]

jmp OSMain

;diretivas e inclusoes





 
;start sistem

OSMain:
	call ConfigSegment
	call ConfigStack


;funcoes de kernel
ConfigSegment:
	mov ax, es
	mov ds, ax
ret

ConfigStack:
	mov ax, 7D00h
	mov ss, ax ;enderco de pilha 7D00h:03FEh
	mov sp, 03FEh
ret

END:
	int 19h


PrintString:
	mov ah, 09h ; a funcao 09 pode definir quantas vezes o caractere aparece na tela e a cor de fundo mas nao move o cursor altomatico igual ao 0E
	mov bh, [Pagination]
	mov bl, 40
	mov cx, 1
	mov al, [si]
	
	print:
		int 10h 
		inc si
		mov ah, 09h
		mov al, [si]
		call MoveCursor
		cmp al, 0
		jmp print
ret

MoveCursor:
	mov ah, 02h
	mov dh, [Pagination]
	inc dl
	int 10h
ret

