; Filename: EXER18.ASM
; Programmer Name: JARED SHEOHN ACEBES
; Date: 9/20/24
; Description: This assembly language program will get string input and
; display the reverse of the string.

.model large
.stack 200h
.data

MAXIMUM_STRING_LENGTH EQU 1000
StringToReverse db MAXIMUM_STRING_LENGTH dup(?)
ReverseString db MAXIMUM_STRING_LENGTH dup(?)

.code
ProgramStart:
    mov ax, @data
    mov ds, ax

    mov ah, 3fh
    mov bx, 0
    mov cx, MAXIMUM_STRING_LENGTH

    mov dx, offset StringToReverse
    int 21h
    and ax, ax
    jz Done
    mov cx, ax

    push cx
    mov bx, offset StringToReverse
    mov si, offset ReverseString
    add si, cx
    dec si

ReverseLoop:
    mov al, [bx]
    mov [si], al
    inc bx
    dec si

    loop ReverseLoop
    pop cx

    mov ah, 40h 
    mov bx, 1
    mov dx, offset ReverseString
    int 21h
Done:
    mov ax, 4c00h
    int 21h

end ProgramStart