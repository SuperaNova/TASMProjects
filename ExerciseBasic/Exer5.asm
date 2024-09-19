; Filename: Exer5.asm
; display colored patterns (big cross) using just spaces Red Cross with blue background – 5 rows X 8 columns
; JARED SHEOHN L. ACEBES
; Date: August 30, 2024

.model small
.stack 100h

.code

start:

	; row 1
	mov ah, 09h
    mov bl, 11h ; COLOR BLUE
    mov cx, 8 
    int 10h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 0ah  ;newline
	int 21h

	; row 2
	mov ah, 09h
    mov bl, 11h ; COLOR BLUE
    mov cx, 3 
    int 10h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 09h
    mov bl, 44h ; COLOR RED
    mov cx, 2 
    int 10h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 09h
    mov bl, 11h ; COLOR BLUE
    mov cx, 3 
    int 10h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 0ah  ;newline
	int 21h

	; row 3
	mov ah, 09h
    mov bl, 11h ; COLOR BLUE
    mov cx, 1
    int 10h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 09h
    mov bl, 44h ; COLOR RED
    mov cx, 6 
    int 10h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 09h
    mov bl, 11h ; COLOR BLUE
    mov cx, 1
    int 10h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 0ah  ;newline
	int 21h

	; row 4
	mov ah, 09h
    mov bl, 11h ; COLOR BLUE
    mov cx, 3 
    int 10h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 09h
    mov bl, 44h ; COLOR RED
    mov cx, 2 
    int 10h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 09h
    mov bl, 11h ; COLOR BLUE
    mov cx, 3 
    int 10h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 0ah  ;newline
	int 21h

	; row 5
	mov ah, 09h
    mov bl, 11h ; COLOR BLUE
    mov cx, 8 
    int 10h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h
	
	mov ah, 02h
	mov dl, 20h  ;space
	int 21h

	; row 6
	mov ah, 02h
	mov dl, 0ah  ;newline
	int 21h
	
int 27h
end start