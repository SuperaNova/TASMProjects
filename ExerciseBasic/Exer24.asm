; Filename: EXER24.ASM
; Programmer Name: JARED SHEOHN ACEBES
; Date: 9/22/24
; Description: Edit your Laboratory Prelim Hands-on Exam.

.model small
.stack 100h
.data
menu    db 10
        db "                   Cebu Institute of Technology - University                   ", 13, 10
        db "                        VEHICLE STICKER APPLICATION FORM                       ", 13, 10
        db "                          Please fill out form below.                          ", 13, 10, 10
        db "   Personnel Type:                   V    Vehicle Sticker Type:            V   ", 13, 10, 10
        db "   Name of Applicant/Driver:              ID Number:                           ", 13, 10, 10
        db "   Mobile Number:                         Address:                             ", 13, 10, 10
        db "   Vehicle Make(s)/Brand:                 Plate Number:                        ", 13, 10, 10
        db "   Vehicle Color:                    V    Vehicle Type:                    V   ", 13, 10, 10
        db "                                  ", 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 13, 10
        db "                                    SUBMIT                                     ", 13, 10
        db "                                  ", 223, 223, 223, 223, 223, 223, 223, 223, 223, 223, 13, 10
        db "                       Copyright 2024 JARED SHEOHN ACEBES                      ", 13, 10, 10, 10
        db "                                  Thank You!                                   ", 13, 10
        db "$"

endmsg_1 db ', your mobile number is: $'
endmsg_2 db ' with car $'

personnelType db 7, 0, 7 dup('$')
applicantName db 9, 0, 9 dup('$')
mobileNumber db 9, 0, 9 dup('$')
carMake db 9, 0, 9 dup('$')
carColor db 7, 0, 7 dup('$')
stickerType db 7, 0, 7 dup('$')
idNum db 9, 0, 9 dup('$')
address db 9, 0, 9 dup('$')
plateNumber db 9, 0, 9 dup('$')
carType db 7, 0, 7 dup('$')

.code
;Main func
main PROC
    mov ax, @data ; db setup
	mov ds, ax

    mov ax, 03h   ; display setup
    int 10h
    xor al, al
    
    ; Grey BG
    mov ah, 06h
    mov ch, 1 ; row start
    mov cl, 1 ; col start
    mov dh, 19  ; row end
    mov dl, 78  ; col end
    mov bh, 70h ; grey bg with black text
    int 10h

    call header
    call field
    call button

    mov ah, 09h
	mov dx, offset menu
	int 21h

    call userInput

    ; carType
    mov ah, 02h          ; Function to set cursor position
    mov bh, 0            ; Page number (0 for standard screen)
    mov dh, 24           ; Row (0-based)
    mov dl, 0            ; Column (0-based)
    int 10h              ; Call BIOS interrupt

    mov ax, 4c00h ; return 0
	int 21h
main ENDP
;Red Header
header PROC
    ; Red Header
    mov ah, 06h
    mov ch, 1 
    mov cl, 3 
    mov dh, 3  
    mov dl, 76  
    mov bh, 4fh ; red bg white text
    int 10h
    ; header yellow blink line
    mov ah, 06h
    mov ch, 3
    mov dh, 3   
    mov bh, 0ceh ; red bg with yellow blinking text
    int 10h
    ; header yellow blink line
    mov ah, 06h
    mov ch, 21
    mov dh, 21   
    mov bh, 8eh ; black bg blink yellow text
    int 10h

    ret
header ENDP
;Black BG Fields
field PROC
    mov cl, 29  ; Black Field Left
    mov dl, 38 

    mov ch, 5 
    mov dh, 5   
    mov ah, 06h    
    mov bh, 07h ; black bg white text
    int 10h

    mov ch, 7 
    mov dh, 7  
    mov ah, 06h 
    mov bh, 07h ; black bg white text
    int 10h

    mov ch, 9 
    mov dh, 9    
    mov ah, 06h
    mov bh, 07h ; black bg white text
    int 10h

    mov ch, 11 
    mov dh, 11   
    mov ah, 06h
    mov bh, 07h ; black bg white text
    int 10h

    mov ch, 13 
    mov dh, 13  
    mov ah, 06h
    mov bh, 07h ; black bg white text
    int 10h

    mov cl, 67  ; Black Field Right
    mov dl, 76 

    mov ch, 5 
    mov dh, 5  
    mov ah, 06h
    mov bh, 07h ; black bg white text
    int 10h

    mov ch, 7  
    mov dh, 7   
    mov ah, 06h
    mov bh, 07h ; black bg white text
    int 10h

    mov ch, 9 
    mov dh, 9  
    mov ah, 06h
    mov bh, 07h ; black bg white text
    int 10h

    mov ch, 11 
    mov dh, 11 
    mov ah, 06h
    mov bh, 07h ; black bg white text
    int 10h

    mov ch, 13 
    mov dh, 13  
    mov ah, 06h 
    mov bh, 07h ; black bg white text
    int 10h

    ret
field ENDP
; Buttons
button PROC
    ; Submit Button
    mov cl, 34
    mov dl, 43 

    mov ah, 06h
    mov ch, 15 
    mov dh, 17  
    mov bh, 74h ; grey bg yellow text
    int 10h
    
    mov ah, 06h
    mov ch, 16 
    mov dh, 16    
    mov bh, 4eh ; red bg yellow text
    int 10h

    mov cl, 36 
    mov dl, 38
    ;Upper Left V
    mov ah, 06h
    mov ch, 5 
    mov dh, 5   
    mov bh, 4fh ; red bg white text
    int 10h
    ;Lower Left V
    mov ah, 06h
    mov ch, 13  
    mov dh, 13   
    mov bh, 4fh ; red bg white text
    int 10h

    mov cl, 74
    mov dl, 76
    ;Upper Right V
    mov ah, 06h
    mov ch, 5 
    mov dh, 5   
    mov bh, 4fh ; red bg white text
    int 10h
    ;Lower Right V
    mov ah, 06h
    mov ch, 13 
    mov dh, 13   
    mov bh, 4fh ; red bg white text
    int 10h

    ret
button ENDP

;description
userInput PROC

    ; personnelType 
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 5          ; Row (0-based)
    mov dl, 029          ; Column (0-based)
    int 10h              ; Call BIOS interrupt

    lea dx, personnelType
    mov ah, 0Ah
    int 21h

    ; applicantName
    mov ah, 02h          
    mov bh, 00h          
    mov dh, 7          
    mov dl, 029         
    int 10h             

    lea dx, applicantName
    mov ah, 0Ah
    int 21h

    ; mobileNumber
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 9            ; Row (0-based)
    mov dl, 029          ; Column (0-based)
    int 10h              ; Call BIOS interrupt

    lea dx, mobileNumber
    mov ah, 0Ah
    int 21h

    ; carMake
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 11           ; Row (0-based)
    mov dl, 029          ; Column (0-based)
    int 10h              ; Call BIOS interrupt

    lea dx, carMake
    mov ah, 0Ah
    int 21h

    ; carColor
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 13           ; Row (0-based)
    mov dl, 029          ; Column (0-based)
    int 10h              ; Call BIOS interrupt

    lea dx, carColor
    mov ah, 0Ah
    int 21h

    ; stickerType
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 5            ; Row (0-based)
    mov dl, 067          ; Column (0-based)
    int 10h              ; Call BIOS interrupt

    lea dx, stickerType
    mov ah, 0Ah
    int 21h

    ; idNum
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 7            ; Row (0-based)
    mov dl, 067          ; Column (0-based)
    int 10h              ; Call BIOS interrupt

    lea dx, idNum
    mov ah, 0Ah
    int 21h

    ; address
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 9            ; Row (0-based)
    mov dl, 067          ; Column (0-based)
    int 10h              ; Call BIOS interrupt

    lea dx, address
    mov ah, 0Ah
    int 21h

    ; plateNumber
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 11           ; Row (0-based)
    mov dl, 067          ; Column (0-based)
    int 10h              ; Call BIOS interrupt

    lea dx, plateNumber
    mov ah, 0Ah
    int 21h

    ; carType
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 13           ; Row (0-based)
    mov dl, 067          ; Column (0-based)
    int 10h              ; Call BIOS interrupt

    lea dx, carType
    mov ah, 0Ah
    int 21h

    ret
userInput ENDP
print proc
    xor ax, ax

    inc si
    
    ; Load the number of characters to print from the second byte
    mov al, [si]     ; load the second byte (number of characters)
    inc si           ; move past the second byte (point to the first char)
    
    mov cx, ax       ; store the character count in CX for loop control

printLoop:
    mov ah, 02h      ; BIOS function to print character
    mov dl, [si]     ; Load the character from DS:SI into DL
    int 21h          ; Call BIOS to print DL
    inc si           ; Move to the next character
    loop printLoop   ; Repeat until CX (number of chars) is 0

    ret              ; return from the function

print endp
end main