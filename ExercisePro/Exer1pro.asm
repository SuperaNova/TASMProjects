.model small
.stack 100h

.code
main proc

    mov bl, 'a'
    
LowerAZ_loop:
    ; Print the char in BL
    mov ah, 02h
    mov dl, bl   
    int 21h   

    ; Move to the next character
    inc bl         

    ; Check if reached Z
    cmp bl, 'z' + 1  ; Compare BL with Z + 1
    jb LowerAZ_loop    ; If BL < Z + 1, continue
    
    mov ah, 02h
    mov dl, 0ah     ; newline
    int 21h 
    
    ; Set to A
    mov bl, 'A'
    
UpperAZ_loop:
    ; Print the char in BL
    mov ah, 02h
    mov dl, bl   
    int 21h   

    ; Move to the next character
    inc bl         
    
    ; space
    mov ah, 02h
    mov dl, ' '
    int 21h
    
    ; Check if reached Z
    cmp bl, 'Z' + 1  ; Compare BL with 'Z' + 1
    jb UpperAZ_loop    ; If BL < 'Z' + 1, continue
    
    ; Terminate the program
    mov ax, 4C00h
    int 21h

main endp
end main