; Filename: EXER19.ASM
; Programmer Name: JARED SHEOHN ACEBES
; Date: 9/20/24
; Description: Create a program that asks the user to input 3 characters

.model small
.stack 100h

.data
    enter1 db "Enter first character: $" 
    enter2 db "Enter second character: $"
    enter3 db "Enter third character: $"

    nextline db 10, 13, "$"

    input1 db ?
    input2 db ?
    input3 db ?

    output1 db "The first character is $"
    output2 db "The second character is $"
    output3 db "The third character is $"

.code

main PROC
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, enter1
    int 21h

    mov ah, 01h ; read a char
    int 21h
    mov input1, al ; store char

    call newline

    mov ah, 09h
    lea dx, enter2
    int 21h

    mov ah, 01h ; read a char
    int 21h
    mov input2, al ; store char

    call newline

    mov ah, 09h
    lea dx, enter3
    int 21h

    mov ah, 01h ; read a char
    int 21h
    mov input3, al ; store char

    call newline

    mov ah, 09h
    lea dx, output1
    int 21h
    mov ah, 02h
    mov dl, input1
    int 21h
    mov ah, 02h
    mov dl, '.'
    int 21h

    call newline

    mov ah, 09h
    lea dx, output2
    int 21h
    mov ah, 02h
    mov dl, input2
    int 21h
    mov ah, 02h
    mov dl, '.'
    int 21h

    call newline
    mov ah, 09h
    lea dx, output3
    int 21h
    mov ah, 02h
    mov dl, input3
    int 21h
    mov ah, 02h
    mov dl, '.'
    int 21h

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