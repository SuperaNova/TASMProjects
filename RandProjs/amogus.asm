.model small
.stack 200h

.code

start:
	
	; manually typing each individual character cuz idk how to do it more efficiently
	
	; just make bg white black for no reason
	mov ah, 00
	mov al, 03
	int 10h
	
	mov ah, 09
	mov bh, 00
	mov al, 20h
	mov cx, 800h
	mov bl, 70h
	int 10h
	
	; spacer
	mov ah, 02h
	mov cl, 0ah 	; newline
	mov dl, cl
	int 21h 
	mov ah, 02h
	mov cl, 0ah 	; newline
	mov dl, cl
	int 21h 
	
	; line 1
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 6
	int 10h
	
	mov ah, 02h
	mov cl, 0ah 	; newline
	mov dl, cl
	int 21h 
	
	; line 2
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 2
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 44h		; red
	mov cx, 5
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 02h
	mov cl, 0ah 	; newline
	mov dl, cl
	int 21h 

	; line 3
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 2
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 44h		; red
	mov cx, 5
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 4
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 02h
	mov cl, 0ah 	; newline
	mov dl, cl
	int 21h 
	
	; line 4
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 2
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 44h		; red
	mov cx, 3
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 11h		; blue
	mov cx, 2
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 99h		; light blue
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 02h
	mov cl, 0ah 	; newline
	mov dl, cl
	int 21h 
	
	; line 5
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 3
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 44h		; red
	mov cx, 3
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 11h		; blue
	mov cx, 3
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 02h
	mov cl, 0ah 	; newline
	mov dl, cl
	int 21h 
	
	; line 6
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 44h		; red
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 44h		; red
	mov cx, 4
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 3
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 02h
	mov cl, 0ah 	; newline
	mov dl, cl
	int 21h 
	
	; line 7
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 44h		; red
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 44h		; red
	mov cx, 6
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 02h
	mov cl, 0ah 	; newline
	mov dl, cl
	int 21h 
	
	; line 8
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 44h		; red
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 44h		; red
	mov cx, 6
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 02h
	mov cl, 0ah 	; newline
	mov dl, cl
	int 21h 
	
	; line 9
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 3
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 44h		; red
	mov cx, 6
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 02h
	mov cl, 0ah 	; newline
	mov dl, cl
	int 21h 
	
	; line 10
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 44h		; red
	mov cx, 3
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 44h		; red
	mov cx, 2
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 1
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 02h
	mov cl, 0ah 	; newline
	mov dl, cl
	int 21h 
	
	
	; line 11
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 4
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 02h
	mov cl, 20h		; SPACE
	mov dl, cl
	int 21h
	
	mov ah, 09h
	mov bl, 00h		; black
	mov cx, 3
	int 10h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ah, 2
	mov dl, 02h		; smiley
	int 21h
	
	mov ax, 4C00h		; function to terminate the program
    int 21h   
	
end start