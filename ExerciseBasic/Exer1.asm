; Exercise No. 1 
; Displaying single characters
; Jared Sheohn L. Acebes
; Experiment: replace 41h with different ASCII number

.model small
.stack 100h

.code

start:

    ; Lower Case Letters
    mov ah, 02h
    mov cl, 61h ; a
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 62h ; b
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 63h ; c
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 64h ; d
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 65h ; e
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 66h ; f
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 67h ; g
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 68h ; h
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 69h ; i
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 6ah ; j
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 6bh ; k
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 6ch ; l
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 6dh ; m
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 6eh ; n
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 6fh ; o
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 70h ; p
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 71h ; q
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 72h ; r
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 73h ; s
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 74h ; t
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 75h ; u
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 76h ; v
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 77h ; w
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 78h ; x
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 79h ; y
    mov dl, cl
    int 21h
    
    mov ah, 02h
    mov cl, 7ah ; z
    mov dl, cl
    int 21h
    
    
    ; Spacer / New Line
    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h
    
    ; Upper Case Letters
    mov ah, 02h
    mov cl, 41h ; A
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 42h ; B
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 43h ; C
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 44h ; D
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 45h ; E
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 46h ; F
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 47h ; G
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 48h ; H
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 49h ; I
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 4ah ; J
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 4bh ; K
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 4ch ; L
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 4dh ; M
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 4eh ; N
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 4fh ; O
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 50h ; P
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 51h ; Q
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 52h ; R
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 53h ; S
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 54h ; T
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 55h ; U
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 56h ; V
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 57h ; W
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 58h ; X
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 59h ; Y
    mov dl, cl
    int 21h
    
    mov ah,02h
    mov cl,20h ; space
    mov dl,cl
    int 21h
    
    mov ah, 02h
    mov cl, 5ah ; Z
    mov dl, cl
    int 21h
   
    int 27h
   
end start


; ah = read character from standard input
; 02h = write character to standard output
; cl = cursor bottom line
; dl = character to write/print/display
; int 21h = read character in standard input