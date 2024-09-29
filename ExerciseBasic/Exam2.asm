; Filename: EXAM2.ASM
; Programmer Name: JARED SHEOHN L. ACEBES
; Date: 9/28/24
; Description: CS243 Lab Hands-on Exam No. 2

.model small
.stack 100h
.data
nextline db 13, 10, "$"

menu    db "THE CALCULATOR", 13, 10
        db "Created by: Jared Sheohn L. Acebes", 13, 10
        db "Date: September 28, 2024", 13, 10, 10
        db "Main Menu", 13, 10, "$"
PickA   db "a - Addition$"
PickS   db "s - Subtraction$"
PickM   db "m - Multiplication$"
PickD   db "d - Division$"
PickE   db "e - exit$"
Input   db "Enter your choice: $"

choice  db ?
EnterX  db ?
EnterY  db ?

titadd  db "Addition$" ; 8
AddX    db "Enter first addend: $"
AddY    db "Enter second addend: $"
AddOutX db "First addend is: $"
AddOutY db "Second addend is: $"

titsub  db "Subtraction$" ; 11
SubX    db "Enter minuend: $"
SubY    db "Enter subtrahend: $"
SubOutX db "Minuend is: $"
SubOutY db "Subtrahend is: $"

titMul  db "Multiplication$" ; 14
MulX    db "Enter multiplicand: $"
MulY    db "Enter multiplier: $"
MulOutX db "Multiplicand is: $"
MulOutY db "Multiplier is: $"

titDiv  db "Division$" ; 8
DivX    db "Enter dividend: $"
DivY    db "Enter divisor: $"
DivOutX db "Dividend is: $"
DivOutY db "Divisor is: $"

OutEnd  db "Exit Program$"
Invalid db "INVALID CHOICE!$"
Thank   db "Thank you.$"

.code
;Main func
main PROC
    mov ax, @data ; db setup
	mov ds, ax

    mov ax, 03h
    int 10h

    mov ah, 09h
	mov dx, offset menu
	int 21h

    mov ah, 09h
    mov bl, 12h
    mov cx, 12 ; number of characters to apply color
    int 10h
    mov ah, 09h
	mov dx, offset PickA
	int 21h

    call spacer
    mov ah, 09h
    mov bl, 34h
    mov cx, 15 ; number of characters to apply color
    int 10h
    mov ah, 09h
	mov dx, offset PickS
	int 21h

    call spacer
    mov ah, 09h
    mov bl, 56h
    mov cx, 18 ; number of characters to apply color
    int 10h
    mov ah, 09h
	mov dx, offset PickM
	int 21h

    call spacer
    mov ah, 09h
    mov bl, 78h
    mov cx, 12 ; number of characters to apply color
    int 10h
    mov ah, 09h
	mov dx, offset PickD
	int 21h

    call spacer
    mov ah, 09h
    mov bl, 62h
    mov cx, 8 ; number of characters to apply color
    int 10h
    mov ah, 09h
	mov dx, offset PickE
	int 21h

    call spacer
    mov ah, 09h
    mov dx, offset Input
    int 21h

    mov ah, 01h
    int 21h
    mov choice, al

    call spacer
    call spacer

    cmp choice, 'a'
    je addin
    cmp choice, 's'
    je minus
    cmp choice, 'm'
    je multi
    cmp choice, 'd'
    je divis
    cmp choice, 'e'
    je ender
    jmp inval

addin: ; finisheda
    mov ah, 09h
    mov bl, 12h
    mov cx, 8 ; number of characters to apply color
    int 10h
    mov ah, 09h
	mov dx, offset titadd
	int 21h
    call spacer
    call addinproc
    jmp exitin
minus:
    mov ah, 09h
    mov bl, 34h
    mov cx, 11 ; number of characters to apply color
    int 10h
    mov ah, 09h
	mov dx, offset titsub
	int 21h
    call spacer
    call subtract
    jmp exitin
multi:
    mov ah, 09h
    mov bl, 56h
    mov cx, 14 ; number of characters to apply color
    int 10h
    mov ah, 09h
	mov dx, offset titMul
	int 21h
    call spacer
    call multiplic
    jmp exitin
divis:
    mov ah, 09h
    mov bl, 78h
    mov cx, 8 ; number of characters to apply color
    int 10h
    mov ah, 09h
	mov dx, offset titDiv
	int 21h
    call spacer
    call divin
    jmp exitin
inval:
    mov ah, 09h
    mov bl, 0ceh
    mov cx, 15 ; number of characters to apply color
    int 10h
    mov ah, 09h
    lea dx, Invalid
    int 21h
    jmp exitin
ender:
    mov ah, 09h
    mov bl, 62h
    mov cx, 12 ; number of characters to apply color
    int 10h
    mov ah, 09h
    mov dx, offset OutEnd
    int 21h
exitin:
    call spacer
    call spacer
    mov ah, 09h
    mov dx, offset Thank
    int 21h
    mov ax, 4c00h ; return 0
	int 21h
main ENDP
;description
spacer PROC
    mov ah, 09h
	mov dx, offset nextline
	int 21h

    ret
spacer ENDP

;description
addinproc PROC
    mov ah, 09h
    mov dx, offset AddX
    int 21h
    mov ah, 01h
    int 21h
    mov EnterX, al
    call spacer
    mov ah, 09h
    mov dx, offset AddY
    int 21h
    mov ah, 01h
    int 21h
    mov EnterY, al

    call spacer
    mov ah, 09h
    mov dx, offset AddOutX
    int 21h
    mov ah, 02h
    mov dl, EnterX
    int 21h
    mov EnterX, al
    call spacer
    mov ah, 09h
    mov dx, offset AddOutY
    int 21h
    mov ah, 02h
    mov dl, EnterY
    int 21h

    ret
addinproc ENDP

;description
subtract PROC
    mov ah, 09h
    mov dx, offset SubX
    int 21h
    mov ah, 01h
    int 21h
    mov EnterX, al
    call spacer
    mov ah, 09h
    mov dx, offset SubY
    int 21h
    mov ah, 01h
    int 21h
    mov EnterY, al

    call spacer
    mov ah, 09h
    mov dx, offset SubOutX
    int 21h
    mov ah, 02h
    mov dl, EnterX
    int 21h
    mov EnterX, al
    call spacer
    mov ah, 09h
    mov dx, offset SubOutY
    int 21h
    mov ah, 02h
    mov dl, EnterY
    int 21h

    ret
subtract ENDP
;description
multiplic PROC
    mov ah, 09h
    mov dx, offset MulX
    int 21h
    mov ah, 01h
    int 21h
    mov EnterX, al
    call spacer
    mov ah, 09h
    mov dx, offset MulY
    int 21h
    mov ah, 01h
    int 21h
    mov EnterY, al

    call spacer
    mov ah, 09h
    mov dx, offset MulOutX
    int 21h
    mov ah, 02h
    mov dl, EnterX
    int 21h
    mov EnterX, al
    call spacer
    mov ah, 09h
    mov dx, offset MulOutY
    int 21h
    mov ah, 02h
    mov dl, EnterY
    int 21h

    ret
multiplic ENDP
;description
divin PROC
    mov ah, 09h
    mov dx, offset DivX
    int 21h
    mov ah, 01h
    int 21h
    mov EnterX, al
    call spacer
    mov ah, 09h
    mov dx, offset DivY
    int 21h
    mov ah, 01h
    int 21h
    mov EnterY, al

    call spacer
    mov ah, 09h
    mov dx, offset DivOutX
    int 21h
    mov ah, 02h
    mov dl, EnterX
    int 21h
    mov EnterX, al
    call spacer
    mov ah, 09h
    mov dx, offset DivOutY
    int 21h
    mov ah, 02h
    mov dl, EnterY
    int 21h
    
    ret
divin ENDP
end main