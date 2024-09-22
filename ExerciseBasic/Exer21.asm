; Filename: EXER21.ASM
; Programmer Name: JARED SHEOHN ACEBES
; Date: 9/20/24
; Description: Create a program that asks for your first name, middle name, and family name.

.model small
.stack 100h
.data

    form1 db "REGISTRATION FORM$"

    enterFirst db "Enter First Name: $"
    enterMiddle db "Enter Middle Name: $"
    enterLast db "Enter Last Name: $"

    nextline db 13, 10, "$"

    FirstName db 20 dup('$')
    MiddleName db 20 dup('$')
    LastName db 20 dup('$')

    outputName db "Hello, $"

.code
main PROC
    mov ax, @data ; db setup
    mov ds, ax

    mov ah, 09h
    lea dx, form1
    int 21h

    call newline

    mov ah, 09h
    lea dx, enterFirst ;input time
    int 21h

    mov ah, 0ah
    lea dx, FirstName
    int 21h

    call newline

    mov ah, 09h
    lea dx, enterMiddle
    int 21h

    mov ah, 0ah
    lea dx, MiddleName
    int 21h

    call newline

    mov ah, 09h
    lea dx, enterLast
    int 21h

    mov ah, 0ah
    lea dx, LastName
    int 21h

    call newline ; output time

    mov ah, 09h
    lea dx, outputName  
    int 21h

    lea si, FirstName
    call print

    mov ah, 02h
    mov dl, ' '
    int 21h

    lea si, MiddleName
    call print

    mov ah, 02h
    mov dl, ' '
    int 21h

    lea si, LastName
    call print

    mov ah, 02h
    mov dl, '!'
    int 21h
   
    
    mov ax, 4c00h
    int 21h 
main ENDP

newline PROC ; newline
    mov ah, 09h
    lea dx, nextline
    int 21h
    mov ah, 09h
    lea dx, nextline
    int 21h
   ret 
newline ENDP

print PROC ;to output on same line
    xor ax, ax
    inc si    

    mov al, [si]
    inc si    
    mov cx, ax

printloop:
    mov ah, 02h
    mov dl, [si]
    int 21h

    inc si
loop printloop

    ret
print ENDP
end main

comment *
  xor bx, bx
  mov bl, buffer[1]
  mov buffer[bx+2], '$'
  mov dx, offset buffer + 2
  mov ah, 9
  int 21h
*