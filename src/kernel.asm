[BITS 16]
[ORG 0000H]

jmp OSMain

BackWidth db 0
BackHeigt db 0
Pagination db 0

OSMain:
	call ConfigSegment
	call ConfigStack
	call TEXT.SetVideoMode
	
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
	