.model small
.stack 100h
.data
    BoxCen      db 196, "$"
    BoxTopR     db 191, "$"
    BoxBotL     db 192, "$"
    BoxBotR     db 217, "$"
    BoxTopL     db 218, "$"
    BoxVert     db 179, "$"
    
    nextline    db 13, 10, "$"

    Banner       db "Online Grocery Order Form", 13, 10
                db "Programmer: Jared Sheohn L. Acebes", 13, 10
                db "Date: October 11, 2024", 13, 10
                db "$"

    InputPrompt db "Please enter your 5 grocery items:$"
    ItInput1    db "Item No. 1: $" ; length = 10+2 = 12  ; 41-12 = 29
    ItInput2    db "Item No. 2: $"
    ItInput3    db "Item No. 3: $"
    ItInput4    db "Item No. 4: $"
    ItInput5    db "Item No. 5: $"
    Item1       db 20, ?, 20 dup(' ')
    Item2       db 20, ?, 20 dup(' ')
    Item3       db 20, ?, 20 dup(' ')
    Item4       db 20, ?, 20 dup(' ')
    Item5       db 20, ?, 20 dup(' ')
    

    Order       db "               ORDER SUMMARY                $"  ; length 15+13+15 = 43-2 = 41

    Thanks      db "Thank you for shopping!$"
    EndMsg      db "Order again soon.$"                             ; length = 17
.code
main PROC
    mov ax, @data                 ; Data Setup
    mov ds, ax      

    lea dx, Banner
    mov ah, 09h
    int 21h

    call ItemIn
    call ItemOut






    mov ax, 4c00h
    int 21h

main ENDP

;description
ItemOut PROC
    mov ah, 09h
    mov bl, 45h 
    mov cx, 43 
    int 10h

    lea dx, BoxTopL
    mov ah, 09h
    int 21h

mov cx, 41
TableLoopTop:
    lea dx, BoxCen
    mov ah, 09h
    int 21h
    loop TableLoopTop

    lea dx, BoxTopR
    mov ah, 09h
    int 21h

    call newline

    lea dx, BoxVert
    mov ah, 09h
    int 21h

    lea dx, ItInput1
    mov ah, 09h
    int 21h
    call spacebar
    call spacebar
    xor bx, bx
    mov bl, Item1[1]     
    mov Item1[bx+2], '$' 
    lea dx, Item1 + 2    
    mov ah, 09h
    int 21h

    

    ret
ItemOut ENDP
ItemIn PROC
    call newline
    lea dx, InputPrompt
    mov ah, 09h
    int 21h

    call newline
    lea dx, ItInput1
    mov ah, 09h
    int 21h
    lea dx, Item1
    mov ah, 0ah
    int 21h

    call newline
    lea dx, ItInput2
    mov ah, 09h
    int 21h
    lea dx, Item2
    mov ah, 0ah
    int 21h

    call newline
    lea dx, ItInput3
    mov ah, 09h
    int 21h
    lea dx, Item3
    mov ah, 0ah
    int 21h

    call newline
    lea dx, ItInput4
    mov ah, 09h
    int 21h
    lea dx, Item4
    mov ah, 0ah
    int 21h

    call newline
    lea dx, ItInput5
    mov ah, 09h
    int 21h
    lea dx, Item5
    mov ah, 0ah
    int 21h

    ret
ItemIn ENDP
newline PROC
    lea dx, nextline
    mov ah, 09h
    int 21h
    ret
newline ENDP
;description
spacebar PROC
    mov dl, ' '
    mov ah, 02h
    int 21h
    ret
spacebar ENDP
end main





COMMENT *
 color text mov bh, 0ceh
    ; input
  lea dx, buffer
  mov ah, 0ah
  int 21h

    ; store
    BUFFER DB 10, ?, 10 dup(' ')
    ; output
  xor bx, bx
  mov bl, buffer[1]     ; gets length
  mov buffer[bx+2], '$' ; length + 2 = end of string, add $
  lea dx, buffer + 2    ; print from start of actual string
  mov ah, 09h
  int 21h
*