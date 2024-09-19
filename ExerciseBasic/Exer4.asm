; Filename: Exer4.asm
; Displaying display 20 special symbols with space in between
; JARED SHEOHN L. ACEBES
; Date: August 30, 2024

.model small
.stack 100h

.code

start:

	; CCS
	mov ah, 09h
    mov bl, 12h ; COLOR
    mov cx, 7 
    int 10h
	
	mov ah, 02h
	mov dl, 43h
	int 21h
	
	mov ah, 02h
	mov dl, 6fh
	int 21h
	
	mov ah, 02h
	mov dl, 6ch
	int 21h
	
	mov ah, 02h
	mov dl, 6ch
	int 21h
	
	mov ah, 02h
	mov dl, 65h
	int 21h
	
	mov ah, 02h
	mov dl, 67h
	int 21h
	
	mov ah, 02h
	mov dl, 65h
	int 21h
	
	mov ah, 02h
	mov dl, 0ah  ;newline
	int 21h
	
	mov ah, 09h
    mov bl, 34h ; COLOR
    mov cx, 2 
    int 10h
	
	mov ah, 02h
	mov dl, 6fh
	int 21h
	
	mov ah, 02h
	mov dl, 66h
	int 21h
	
	mov ah, 02h
	mov dl, 0ah  ;newline
	int 21h
	
	mov ah, 09h
    mov bl, 56h ; COLOR
    mov cx, 8 
    int 10h
	
	mov ah, 02h
	mov dl, 43h
	int 21h
	
	mov ah, 02h
	mov dl, 6fh
	int 21h
	
	mov ah, 02h
	mov dl, 6dh
	int 21h
	
	mov ah, 02h
	mov dl, 70h
	int 21h
	
	mov ah, 02h
	mov dl, 75h
	int 21h
	
	mov ah, 02h
	mov dl, 74h
	int 21h
	
	mov ah, 02h
	mov dl, 65h
	int 21h
	
	mov ah, 02h
	mov dl, 72h
	int 21h
	
	mov ah, 02h
	mov dl, 0ah  ;newline
	int 21h
	
	mov ah, 09h
    mov bl, 78h ; COLOR
    mov cx, 7 
    int 10h
	
	mov ah, 02h
	mov dl, 53h
	int 21h
	
	mov ah, 02h
	mov dl, 74h
	int 21h
	
	mov ah, 02h
	mov dl, 75h
	int 21h
	
	mov ah, 02h
	mov dl, 64h
	int 21h
	
	mov ah, 02h
	mov dl, 69h
	int 21h
	
	mov ah, 02h
	mov dl, 65h
	int 21h
	
	mov ah, 02h
	mov dl, 73h
	int 21h

int 27h
end start