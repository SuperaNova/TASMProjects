.model small
.stack 100h

.data
    msg1 db "Jared Sheohn Legaspi Acebes", 13, 10, "$"
    msg2 db "Bachelor of Science in Computer Science 2nd Year", 13, 10, "$"
    msg3 db "College of Computer Studies", 13, 10, "$"
    msg4 db "Cebu Institute of Technology-University", 13, 10, "$"
    
.code

main proc

    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset msg1
    int 21h
    
    mov ah, 09h
    mov dx, offset msg2
    int 21h

    mov ah, 09h
    mov dx, offset msg3
    int 21h

    mov ah, 09h
    mov dx, offset msg4
    int 21h

    mov ax, 4c00h
    int 21h

main endp

end main