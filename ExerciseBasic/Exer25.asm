; Filename: EXER25.ASM
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

    ; carType
    mov ah, 02h          ; Function to set cursor position
    mov bh, 0            ; Page number (0 for standard screen)
    mov dh, 24           ; Row (0-based)
    mov dl, 0            ; Column (0-based)
    int 10h              ; Call BIOS interrupt

    mov ax, 4c00h ; return 0
	int 21h
main ENDP