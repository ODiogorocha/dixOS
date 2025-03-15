[BITS 16]
[ORG 0000H]

jmp OSMain

BackWidth db 0
BackHeigt db 0
Pagination db 0
Welcome db "Bem-vindo ao DixOS !",0

OSMain:
	call ConfigSegment
	call ConfigStack
	call TEXT.SetVideoMode
	call BackColor
	jmp ShowString


ShowString:
	mov dh, 3
	mov dl, 2
	call MoveCursor
	mov si, Welcome
	call PrintString
	mov ah, 00
	int 16h
	jmp END
	
ConfigSegment:
	mov ax, es
	mov ds, ax
ret

ConfigStack:
	mov ax, 7D00h
	mov ss, ax ;enderco de pilha 7D00h:03FEh
	mov sp, 03FEh
ret

TEXT.SetVideoMode:
	mov ah, 00h
	mov al, 03h
	int 10h
	mov BYTE[BackWidth], 80 ;80 linhas tela
	mov BYTE[BackHeigt], 20 ;20 colunas tela
ret

BackColor:
	mov ah, 06h
	mov al, 0
	mov bh, 0001_1111b
	mov ch, 0
	mov cl, 0
	mov dh, 5
	mov dl, 80
	int 10h
ret



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

END:
	int 19h
