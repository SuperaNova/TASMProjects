; Filename: PRELIM.ASM
; CS243 Lab Prelim Exam First Semester SY 2024 - 2025
; Student name: JARED SHEOHN L. ACEBES
; Date Finished: SEPTEMBER 13, 2024

.model small
.stack 100h
.data
menu    db '                                                                         ', 13, 10
        db '                   Cebu Institute of Technology - University               ', 13, 10
        db '                       VEHICLE STICKER APPLICATION FORM                   ', 13, 10
        db '                        Please fill out the form below.                    ', 13, 10, 10
        db '   Personnel Type:           _______ V     Vehicle Sticker Type:  _________ V ', 13, 10
        db '   Name of Applicant/Driver: __________    ID Number:             ____________', 13, 10
        db '   Mobile Number:            __________    Address:               ____________ ', 13, 10
        db '   Vehicle Make(s)/Brand:    __________    Plate Number:          ____________ ', 13, 10
        db '   Vehicle Color:            _______ V     Vehicle Type:          _________ V ', 13, 10, 10, 10
        db '                                    SUBMIT                      ', 13, 10, 10
        db '                       Copyright 2024 JARED SHEOHN ACEBES       ', 13, 10, 10, 10
        db '                                  Thank You!            ', 13, 10, '$'
 
.code
main proc
    
    mov ax, @data ; db setup
    mov ds, ax
   
    mov ax, 03h   ; display setup
    int 10h
    
    xor al, al
    
    ; Grey BG
    mov ah, 06h
    mov ch, 1 ; row start
    mov cl, 2 ; col start
    mov dh, 15  ; row end
    mov dl, 78  ; col end
    mov bh, 70h ; grey bg with black text
    int 10h
 
    
    ; header red bg
    mov ah, 06h
    mov ch, 1
    mov cl, 3
    mov dh, 3   
    mov dl, 77  
    mov bh, 4fh ; red bg with white text
    int 10h
    ; header yellow blink line
    mov ah, 06h
    mov ch, 3
    mov cl, 3
    mov dh, 3   
    mov dl, 77  
    mov bh, 0ceh ; red bg with yellow blinking text
    int 10h
    

    ; black bg left
    mov ah, 06h
    mov ch, 5
    mov cl, 29
    mov dh, 9
    mov dl, 38
    mov bh, 0fh ; black bg with white text
    int 10h
    ; black bg right
    mov ah, 06h
    mov ch, 5
    mov cl, 66
    mov dh, 9
    mov dl, 77
    mov bh, 0fh ; black bg with white text
    int 10h
   
    
    ; Upper Left V
    mov ah, 06h
    mov ch, 5
    mov cl, 36
    mov dh, 5
    mov dl, 38
    mov bh, 4fh ; red bg with white text
    int 10h
    ; Upper Right V
    mov ah, 06h
    mov ch, 5
    mov cl, 75
    mov dh, 5
    mov dl, 77
    mov bh, 4fh ; red bg with white text
    int 10h
    ; Lower Right V
    mov ah, 06h
    mov ch, 9
    mov cl, 36
    mov dh, 9
    mov dl, 38
    mov bh, 4fh ; red bg with white text
    int 10h
    ; Lower Left V
    mov ah, 06h
    mov ch, 9
    mov cl, 75
    mov dh, 9
    mov dl, 77
    mov bh, 4fh ; red bg with white text
    int 10h

    
    ; Red BG Submit Button
    mov ah, 06h
    mov ch, 12
    mov cl, 35 
    mov dh, 12
    mov dl, 42
    mov bh, 4eh ; red bg with yellow text
    int 10h
    
    ; Blinking Yellow thankyou
    mov ah, 06h
    mov ch, 17
    mov cl, 0
    mov dh, 17 
    mov dl, 78
    mov bh, 8eh
    int 10h
    
    ; print
    mov ah, 09h
    mov dx, offset menu
    int 21h
    
    mov ax, 4C00h ; return 0
    int 21h  
    
    main endp
end main