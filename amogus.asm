; Tester asm file always changeable

.model small
.stack 200h

.code

main proc
    
    ; manually typing each individual character cuz idk how to do it more efficiently
    
    ; just make bg white black for no reason
    mov ah, 00
    mov al, 03
    int 10h
    
    mov ah, 09
    mov bh, 00
    mov al, 20h
    mov cx, 800h
    mov bl, 70h
    int 10h
    
    ; move down
    call newline
    call newline

    ; line 1    
    mov cx, 4
prespace1:
    call space
    loop prespace1
   
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 6
    int 10h
    
    call newline
    
    ; line 2
    mov cx, 3
prespace2:
    call space
    loop prespace2
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 2
    int 10h
    
    call smiley
    call smiley
    
    mov ah, 09h
    mov bl, 44h     ; red
    mov cx, 5
    int 10h
    
    mov cx, 5
smiley3:
    call smiley
    loop smiley3
   
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call newline

    ; line 3
    mov cx, 3
prespace4:
    call space
    loop prespace4
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 2
    int 10h
    
    call smiley
    call smiley
    
    mov ah, 09h
    mov bl, 44h     ; red
    mov cx, 5
    int 10h
    
    mov cx, 3
smiley5:
    call smiley
    loop smiley5
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 4
    int 10h
    
    mov cx, 3
smiley6:
    call smiley
    loop smiley6

    call newline
    
    ; line 4
    call space
    call space

    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 2
    int 10h
    
    call smiley
    call smiley
    
    mov ah, 09h
    mov bl, 44h     ; red
    mov cx, 3
    int 10h
    
    mov cx, 3
smiley7:
    call smiley
    loop smiley7
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 11h     ; blue
    mov cx, 2
    int 10h
    
    call smiley
    call smiley
    
    mov ah, 09h
    mov bl, 99h     ; light blue
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    call newline
    
    ; line 5
    call space
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 3
    int 10h
    
    mov cx, 3
smiley8:
    call smiley
    loop smiley8
    
    mov ah, 09h
    mov bl, 44h     ; red
    mov cx, 3
    int 10h
    
    mov cx, 3
smiley9:
    call smiley
    loop smiley9
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 11h     ; blue
    mov cx, 3
    int 10h
    
    mov cx, 3
smiley10:
    call smiley
    loop smiley10
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    call newline
    
    ; line 6
    call space
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 44h     ; red
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 44h     ; red
    mov cx, 4
    int 10h
    
    mov cx, 4
smiley11:
    call smiley
    loop smiley11
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 3
    int 10h
    
    mov cx, 3
smiley12:
    call smiley
    loop smiley12
    
    call newline
    
    ; line 7
    call space
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 44h     ; red
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 44h     ; red
    mov cx, 6
    int 10h
    
    mov cx, 6
smiley13:
    call smiley
    loop smiley13
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    call newline
    
    ; line 8
    call space
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 44h     ; red
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 44h     ; red
    mov cx, 6
    int 10h
    
    mov cx, 6
smiley14:
    call smiley
    loop smiley14
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    call newline
    
    ; line 9
    call space
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 3
    int 10h
    
    mov cx, 3
smiley15:
    call smiley
    loop smiley15
    
    mov ah, 09h
    mov bl, 44h     ; red
    mov cx, 6
    int 10h
    
    mov cx, 6
smiley16:
    call smiley
    loop smiley16
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    call newline
    
    ; line 10
    mov cx, 3
prespace17:
    call space
    loop prespace17
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 44h     ; red
    mov cx, 3
    int 10h
    
    mov cx, 3
smiley18:
    call smiley
    loop smiley18

    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    mov ah, 09h
    mov bl, 44h     ; red
    mov cx, 2
    int 10h
    
    call smiley
    call smiley
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 1
    int 10h
    
    call smiley
    
    call newline
    
    
    ; line 11
    mov cx, 3
prespace19:
    call space
    loop prespace19
  
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 4
    int 10h
    
    mov cx, 4
smiley20:
    call smiley
    loop smiley20
    
    call space
    
    mov ah, 09h
    mov bl, 00h     ; black
    mov cx, 3
    int 10h
    
    mov cx, 3
smiley21:
    call smiley
    loop smiley21
    
    mov ax, 4C00h       ; end program return 0
    int 21h   

    main endp
    
    
    ; SPACE
    space proc
    
    mov ah, 02h
    mov dl, 20h     
    int 21h
    
    ret
    space endp
    ; smiley
    smiley proc
    
    mov ah, 2
    mov dl, 02h
    int 21h
    
    ret
    smiley endp
    ; newline
    newline proc
    
    mov ah, 02h
    mov dl, 0ah     
    int 21h 
    
    ret
    newline endp
    
end main
    