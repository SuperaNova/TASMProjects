; Filename: EXER20.ASM
; Programmer Name: JARED SHEOHN ACEBES
; Date: 9/20/24
; Description: Create a program that asks user to input a character. Determine if
; character is letter A and display message

.model small
.stack 100h

.data
    output db "Enter a character: $" 
    Ainput db "Yes, you have entered letter A. $"
    WInput db "No you have not entered letter A. You entered character $"

    nextline db 10, 13, "$"

    input db ?
.code

main PROC
    mov ax, @data
    mov ds, ax ; db setup

    mov ah, 09h
    lea dx, output
    int 21h

    mov ah, 01h ; read a char
    int 21h
    mov input, al ; store char

    call newline

    cmp input, 'A'
    jz isA
    jnz isNotA

    isA:
    mov ah, 09h
    lea dx, Ainput
    int 21h
    jmp ending

    isNotA:
    mov ah, 09h
    lea dx, WInput
    int 21h
    mov ah, 02h
    mov dl, input
    int 21h
    mov ah, 02h
    mov dl, '.'
    int 21h
    jmp ending

    ending:
    mov ax, 4c00h
    int 21h 
main ENDP

;newline
newline PROC

    mov ah, 09h
    lea dx, nextline
    int 21h
    mov ah, 09h
    lea dx, nextline
    int 21h

   ret 
newline ENDP
end main