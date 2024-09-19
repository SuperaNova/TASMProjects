; Filename: Exam1.asm
; Multiplication Table
; JARED SHEOHN L. ACEBES
; Date: August 30, 2024

.model small
.stack 100h

.data
	msg1 db "MULTIPLICATION TABLE$"
	msg2 db "Created by: Jared Sheohn L. Acebes$"
	msg3 db "Date: 2024 September 6$"
	
	bordleft db 195, "$"
	bordcen db 196, "$"
	bordright db 180, "$"
	bordtop db "________________________________________________________$"
	
	row0 db 179, "  X |  1 |  2 |  3 |  4 |  5 |  6 |  7 |  8 |  9 |  10 ", 179, "$"
	row1 db 179, "  1 |  1 |  2 |  3 |  4 |  5 |  6 |  7 |  8 |  9 |  10 ", 179, "$"
	row2 db 179, "  2 |  2 |  4 |  6 |  8 | 10 | 12 | 14 | 16 | 18 |  20 ", 179, "$"
	row3 db 179, "  3 |  3 |  6 |  9 | 12 | 15 | 18 | 21 | 24 | 27 |  30 ", 179, "$"
	row4 db 179, "  4 |  4 |  8 | 12 | 16 | 20 | 24 | 28 | 32 | 36 |  40 ", 179, "$"
	row5 db 179, "  5 |  5 | 10 | 15 | 20 | 25 | 30 | 35 | 40 | 45 |  50 ", 179, "$"
	row6 db 179, "  6 |  6 | 12 | 18 | 24 | 30 | 36 | 42 | 48 | 54 |  60 ", 179, "$"
	row7 db 179, "  7 |  7 | 14 | 21 | 28 | 35 | 42 | 49 | 56 | 63 |  70 ", 179, "$"
	row8 db 179, "  8 |  8 | 16 | 24 | 32 | 40 | 48 | 56 | 64 | 72 |  80 ", 179, "$"
	row9 db 179, "  9 |  9 | 18 | 27 | 36 | 45 | 54 | 63 | 72 | 81 |  90 ", 179, "$"
	row10 db 179, " 10 | 10 | 20 | 30 | 40 | 50 | 60 | 70 | 80 | 90 | 100 ", 179, "$"
	
.code

main proc
	
	; data
	mov ax, @data
	mov ds, ax
	
	mov ah, 09h
	mov dx, offset msg1
	int 21h
	
	call newline
	
	mov ah, 09h
	mov dx, offset msg2
	int 21h
	
	call newline
	
	mov ah, 09h
	mov dx, offset msg3
	int 21h
	
	call newline
	
	mov ah, 09h
    mov bl, 47h     ; row red
    mov cx, 57
    int 10h
	
	mov ah, 09h
	mov dx, offset row0
	int 21h
	
	call newline
	mov ah, 09h
    mov bl, 47h     ; row red
    mov cx, 57
    int 10h
	
	mov ah, 09h
	mov dx, offset bordleft
	int 21h
	
	mov cx, 55
toploop:
	mov ah, 09h
	mov dx, offset bordcen
	int 21h
	
	loop toploop
	
	mov ah, 09h
	mov dx, offset bordright
	int 21h
	
	call newline
	call color
	
	mov ah, 09h
	mov dx, offset row1
	int 21h
	
	call border
	
	mov ah, 09h
	mov dx, offset row2
	int 21h
	
	call border
	
	mov ah, 09h
	mov dx, offset row3
	int 21h
	
	call border
	
	mov ah, 09h
	mov dx, offset row4
	int 21h
	
	call border
	
	mov ah, 09h
	mov dx, offset row5
	int 21h
	
	call border
	
	mov ah, 09h
	mov dx, offset row6
	int 21h
	
	call border
	
	mov ah, 09h
	mov dx, offset row7
	int 21h
	
	call border
	
	mov ah, 09h
	mov dx, offset row8
	int 21h
	
	call border
	
	mov ah, 09h
	mov dx, offset row9
	int 21h
	
	call border
	
	mov ah, 09h
	mov dx, offset row10
	int 21h

	mov ax, 4c00h
	int 21h

main endp

newline proc

	mov ah, 02h
	mov dl, 0ah  ;newline
	int 21h

	ret
newline endp

color proc
	
	mov ah, 09h
    mov bl, 47h     ; red
    mov cx, 6
    int 10h

	ret
color endp

border proc
	
	call newline
	call color
	
	mov ah, 09h
	mov dx, offset bordleft
	int 21h
	
	mov cx, 55
looper:
	mov ah, 09h
	mov dx, offset bordcen
	int 21h
	
	loop looper
	
	mov ah, 09h
	mov dx, offset bordright
	int 21h
	
	call newline
	call color
	
	ret
border endp

end main