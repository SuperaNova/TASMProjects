; Filename: Exer3.asm
; Displaying display 20 special symbols with space in between
; JARED SHEOHN L. ACEBES
; Date: August 30, 2024

.model small
.stack 100h

.code

start:

	mov ah, 02h
	mov dl, 30h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 31h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 32h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 33h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 34h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 35h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 36h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 37h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 38h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 39h
	int 21h

	mov ah, 02h
	mov dl, 0ah  ;newline
	int 21h

	mov ah, 02h
	mov dl, 21h
	int 21h

	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
		
	mov ah, 02h
	mov dl, 22h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 23h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 24h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 25h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 26h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 27h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 28h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 29h
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 3eh
	int 21h
	
	mov ah, 02h
	mov dl, 0ah  ;newline
	int 21h
	
	mov ah, 02h
	mov dl, 2ah
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 2bh
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 2ch
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 2dh
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 2eh
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 2fh
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 3ah
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 3bh
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 3ch
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 3dh
	int 21h

int 27h
end start