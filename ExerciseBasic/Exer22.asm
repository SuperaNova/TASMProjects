; Filename: EXER22.ASM
; Programmer Name: JARED SHEOHN ACEBES
; Date: 9/20/24
; Description: Create a College Enrollment Form.

.model small
.stack 200h
.data
    intro db "Cebu Institute of Technology - University", 13, 10
          db "STUDENT ENROLLMENT FORM", 13, 10, 10
          db "Please enter the following information:$"
    
    Input_ID db "Student ID Number: $"
    Input_First db "First Name: $"
    Input_Middle db "Middle Name: $"
    Input_Last  db "Last Name: $"
    Input_Adr db "Address: $"
    Input_Course db "Course: $"
    Input_Yr db "Year: $"
    Input_bday_M db "Birthday Month: $"
    Input_bday_D db "Birthday Day: $"
    Input_bday_Y db "Birthday Year: $"
    Input_email db "Email Address: $"

    Output_Summary db 13, 10, "SUMMARY", 13, 10 
                   db "Please Check if all information are correct.", 13, 10, 10, '$'

    Output_ID db 100 dup('$')
    Output_First db 100 dup('$')
    Output_Middle db 100 dup('$')
    Output_Last  db 100 dup('$')
    Output_Adr db 10000 dup('$')
    Output_Course db 100 dup('$')
    Output_Yr db 100 dup('$')
    Output_bday_M db 100 dup('$')
    Output_bday_D db 100 dup('$')
    Output_bday_Y db 100 dup('$')
    Output_email db 100 dup('$')

    nextline db 13, 10, "$"

    summary_id db "ID Number: $"
    summary_name db "Full Name: $"
    summary_adr db "Address: $"
    summary_cryr db "Course & Year: $"
    summary_bday db "Birthday: $"
    summary_email db "Email Address: $"

    exit_message db "Thank you for enrolling at CIT-U", 13, 10
                 db "Copyright 2024", 13, 10
                 db "Programmer: JARED SHEOHN L. ACEBES$"

.code
main PROC
    mov ax, @data ; db setup
    mov ds, ax

    mov ah, 09h
    lea dx, intro
    int 21h

    call newline

    ; input
    mov ah, 09h
    lea dx, Input_ID ; id number
    int 21h
    mov ah, 0ah
    lea dx, Output_ID
    int 21h

    call newline

    mov ah, 09h
    lea dx, Input_First ; first name
    int 21h
    mov ah, 0ah
    lea dx, Output_First
    int 21h

    call newline

    mov ah, 09h
    lea dx, Input_Middle ; middle name
    int 21h
    mov ah, 0ah
    lea dx, Output_Middle
    int 21h

    call newline

    mov ah, 09h
    lea dx, Input_Last ; last name
    int 21h
    mov ah, 0ah
    lea dx, Output_Last
    int 21h
    
    call newline

    mov ah, 09h
    lea dx, Input_Adr ; address
    int 21h
    mov ah, 0ah
    lea dx, Output_Adr
    int 21h

    call newline

    mov ah, 09h
    lea dx, Input_Course ; Course
    int 21h
    mov ah, 0ah
    lea dx, Output_Course
    int 21h

    call newline
    
    mov ah, 09h
    lea dx, Input_Yr ; Year
    int 21h
    mov ah, 0ah
    lea dx, Output_Yr
    int 21h

    call newline
    
    mov ah, 09h
    lea dx, Input_bday_M ; bday month
    int 21h
    mov ah, 0ah
    lea dx, Output_bday_M
    int 21h

    call newline
    
    mov ah, 09h
    lea dx, Input_bday_D ; bday day
    int 21h
    mov ah, 0ah
    lea dx, Output_bday_D
    int 21h

    call newline
    
    mov ah, 09h
    lea dx, Input_bday_Y ; bday year
    int 21h
    mov ah, 0ah
    lea dx, Output_bday_Y
    int 21h

    call newline
    
    mov ah, 09h
    lea dx, Input_email ; email
    int 21h
    mov ah, 0ah
    lea dx, Output_email 
    int 21h

    ;output
    call newline

    mov ah, 09h
    lea dx, Output_Summary ; please check
    int 21h

    mov ah, 09h
    lea dx, summary_id ; id number
    int 21h

    lea si, Output_ID
    call print 

    call newline

    mov ah, 09h
    lea dx, summary_name ; full name
    int 21h

    lea si, Output_Last 
    call print

    mov ah, 02h
    mov dl, ','
    int 21h
    mov ah, 02h
    mov dl, ' '
    int 21h

    lea si, Output_First
    call print

    mov ah, 02h
    mov dl, ' '
    int 21h

    lea si, Output_Last
    call print

    call newline

    mov ah, 09h
    lea dx, summary_adr ; adress
    int 21h
    
    lea si, Output_Adr
    call print

    call newline

    mov ah, 09h
    lea dx, summary_cryr ; course and year
    int 21h

    lea si, Output_Course
    call print

    mov ah, 02h
    mov dl, ' '
    int 21h

    lea si, Output_Yr
    call print 

    call newline

    mov ah, 09h
    lea dx, summary_bday ; birthday
    int 21h

    lea si, Output_bday_M
    call print 

    mov ah, 02h
    mov dl, ' '
    int 21h

    lea si, Output_bday_D
    call print 

    mov ah, 02h
    mov dl, ','
    int 21h
    mov ah, 02h
    mov dl, ' '
    int 21h

    lea si, Output_bday_Y
    call print 

    call newline

    mov ah, 09h
    lea dx, summary_email ; email
    int 21h
    
    lea si, Output_email
    call print

    call newline ; closing message
    call newline

    mov ah, 09h
    lea dx, exit_message
    int 21h

    mov ax, 4c00h
    int 21h 
main ENDP

newline PROC ; newline
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