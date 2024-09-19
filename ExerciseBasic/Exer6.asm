; Filename: Exer6.asm
; display emojis and blinking characters (blinking red heart)
; JARED SHEOHN L. ACEBES
; Date: August 30, 2024

.model small
.stack 100h

.code

start:

	mov ah, 09h
	mov bl, 0eh ; color yellow
	mov cx, 1
	int 10h
	
	mov ah, 02h
	mov dl, 49h
	int 21h

	mov ah, 02h
	mov dl, 20h
	int 21h

	mov ah, 09h
	mov bl, 11h ; color red
	mov cx, 1
	int 10h
	
	mov ah, 09h
	mov bl, 84h ; blink
	mov cx, 1
	int 10h
	
	mov ah, 02h
	mov dl, 03h ; heart
	int 21h

	mov ah, 02h
	mov dl, 20h
	int 21h

	mov ah, 09h
	mov bl, 0eh ; color yellow
	mov cx, 1
	int 10h
	
	mov ah, 02h
	mov dl, 55h
	int 21h

int 27h
end start