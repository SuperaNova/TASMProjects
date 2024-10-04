.model small
.stack 200h
.data

    formTitle       db "Voter's REGISTRATION FORM", 13, 10, '$'
    myName          db "Created by: SYDNEY BAJAO GALORIO", 13, 10, '$'
    dateToday       db "Date: October 3, 2024", 13, 10, '$'
    beg             db 13, 10, "Please enter the following data: ", 13, 10, 10, '$'

    askFName        db "First Name: $"
    askMName        db 13, 10, "Middle Name: $"
    askLName        db 13, 10, "Last Name: $"
    askGender       db 13, 10, "Gender: $"
    askBdayM        db 13, 10, "Birthday", 13, 10
                    db "    Month: $"
    askBdayD        db 13, 10, "    Day: $"
    askBdayY        db 13, 10, "    Year: $"
    askAddHN        db 13, 10, "Address"
                    db 13, 10, "    House Number: $"
    askAddS         db 13, 10, "    Street: $"
    askAddB         db 13, 10, "    Barangay: $"
    askAddC         db 13, 10, "    City: $"
    askAddP         db 13, 10, "    Province: $"
    askEducBE       db 13, 10, "Educational Background"
                    db 13, 10, "    Elementary"
                    db 13, 10, "        Name of School: $"
    askEY           db 13, 10, "        Year Graduated: $"
    askJHS          db 13, 10, "    Junior High School"
                    db 13, 10, "        Name of School: $"
    askJHSY         db 13, 10, "        Year Graduated: $"
    askSHS          db 13, 10, "    Senior High School"
                    db 13, 10, "        Name of School: $"
    askSHSY         db 13, 10, "        Year Graduated: $"
    askCo           db 13, 10, "    College"
                    db 13, 10, "        Name of School: $"
    askCoC          db 13, 10, "        Course: $"
    askCoY          db 13, 10, "        Year Graduated: $"

    fName           db 50 dup ('$')
    mName           db 50 dup ('$')
    lName           db 50 dup ('$')
    gender          db 20 dup ('$')
    bdayM           db 20 dup ('$')
    bdayD           db 2  dup ('$')
    bdayY           db 4  dup ('$')
    addHN           db 10 dup ('$')
    addS            db 50 dup ('$')
    addB            db 50 dup ('$')
    addC            db 50 dup ('$')
    addP            db 50 dup ('$')
    elemSchool      db 50 dup ('$')
    elemGrad        db 4  dup ('$')
    jhsSchool       db 50 dup ('$')
    jhsGrad         db 4  dup ('$')
    shsSchool       db 50 dup ('$')
    shsGrad         db 4  dup ('$')
    coSchool        db 50 dup ('$')
    coCourse        db 10 dup ('$')
    coGrad          db 10 dup ('$')

    summary         db 13, 10, 10, "SUMMARY OF INFORMATION"
                    db 13, 10, "Please verify if all entries are correct.", 13, 10, 10, '$'
    ending          db "Vote wisely!"
                    db 13, 10, "Thank you for registering.$"

.code
start:

    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov bl, 60h
    mov cx, 25
    int 10h

    lea dx, formTitle           ; FORM TITLE
    mov ah, 09h
    int 21h

    mov ah, 09h
    mov bl, 20h
    mov cx, 32
    int 10h

    lea dx, myName              ; PROGRAMMER
    mov ah, 09h
    int 21h

    mov ah, 09h
    mov bl, 30h
    mov cx, 21
    int 10h

    lea dx, dateToday           ; DATE
    mov ah, 09h
    int 21h

    lea dx, beg                 ; SUB
    mov ah, 09h
    int 21h

    ; TAKE THE INPUTS

    lea dx, askFName            ; Ask First Name
    mov ah, 09h
    int 21h

    lea dx, fName
    mov ah, 0ah
    int 21h

    lea dx, askMName            ; Ask Middle Name
    mov ah, 09h
    int 21h

    lea dx, mName
    mov ah, 0ah
    int 21h

    lea dx, askLName            ; Ask First Name
    mov ah, 09h
    int 21h

    lea dx, lName
    mov ah, 0ah
    int 21h

    lea dx, askGender            ; Ask Gender
    mov ah, 09h
    int 21h

    lea dx, gender
    mov ah, 0ah
    int 21h

    lea dx, askBdayM            ; Ask Birthday Month
    mov ah, 09h
    int 21h

    lea dx, bdayM
    mov ah, 0ah
    int 21h

    lea dx, askBdayD            ; Ask Birthday Day
    mov ah, 09h
    int 21h

    lea dx, bdayD
    mov ah, 0ah
    int 21h

    lea dx, askBdayY            ; Ask Birthday Year
    mov ah, 09h
    int 21h

    lea dx, bdayY
    mov ah, 0ah
    int 21h

    lea dx, askAddHN            ; Ask Address House Number
    mov ah, 09h
    int 21h

    lea dx, addHN
    mov ah, 0ah
    int 21h

    lea dx, askAddS             ; Ask Address Street
    mov ah, 09h
    int 21h

    lea dx, addS
    mov ah, 0ah
    int 21h

    lea dx, askAddB            ; Ask Address Barangay
    mov ah, 09h
    int 21h

    lea dx, addB
    mov ah, 0ah
    int 21h

    lea dx, askAddC            ; Ask Address City
    mov ah, 09h
    int 21h

    lea dx, addC
    mov ah, 0ah
    int 21h

    lea dx, askAddP            ; Ask Address Province
    mov ah, 09h
    int 21h

    lea dx, addP
    mov ah, 0ah
    int 21h

    lea dx, askEducBE          ; Ask Elementary School
    mov ah, 09h
    int 21h

    lea dx, elemSchool
    mov ah, 0ah
    int 21h

    lea dx, askEY              ; Ask Elementary Year Graduated
    mov ah, 09h
    int 21h

    lea dx, elemGrad
    mov ah, 0ah
    int 21h

    lea dx, askJHS              ; Ask Junior High School
    mov ah, 09h
    int 21h

    lea dx, jhsSchool
    mov ah, 0ah
    int 21h

    lea dx, askJHSY              ; Ask Junior High School Year Graduated
    mov ah, 09h
    int 21h

    lea dx, jhsGrad
    mov ah, 0ah
    int 21h

    lea dx, askSHS              ; Ask Senior High School
    mov ah, 09h
    int 21h

    lea dx, shsSchool
    mov ah, 0ah
    int 21h

    lea dx, askSHSY              ; Ask Senior High School Year Graduated
    mov ah, 09h
    int 21h

    lea dx, shsGrad
    mov ah, 0ah
    int 21h

    lea dx, askCo             ; Ask College 
    mov ah, 09h
    int 21h

    lea dx, coSchool
    mov ah, 0ah
    int 21h

    lea dx, askCoC             ; Ask College Course
    mov ah, 09h
    int 21h

    lea dx, coCourse
    mov ah, 0ah
    int 21h

    lea dx, askCoY             ; Ask College Year Graduated
    mov ah, 09h
    int 21h

    lea dx, coGrad
    mov ah, 0ah
    int 21h

    ; DISPLAY INFORMATION

    lea dx, summary             ; Summarize details
    mov ah, 09h
    int 21h

    lea dx, askFName            ; First Name
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, fName[1]
    mov fName[bx+2], '$'
    lea dx, fName + 2
    mov ah, 09h
    int 21h

    lea dx, askMName            ; Middle Name
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, mName[1]
    mov mName[bx+2], '$'
    lea dx, mName + 2
    mov ah, 09h
    int 21h

    lea dx, askLName            ; First Name
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, lName[1]
    mov lName[bx+2], '$'
    lea dx, lName + 2
    mov ah, 09h
    int 21h

    lea dx, askGender            ; Gender
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, gender[1]
    mov gender[bx+2], '$'
    lea dx, gender + 2
    mov ah, 09h
    int 21h
    
    lea dx, askBdayM            ; Birthday Month
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, bdayM[1]
    mov bdayM[bx+2], '$'
    lea dx, bdayM + 2
    mov ah, 09h
    int 21h

    lea dx, askBdayD            ; Birthday Day
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, bdayD[1]
    mov bdayD[bx+2], '$'
    lea dx, bdayD + 2
    mov ah, 09h
    int 21h

    lea dx, askBdayY            ; Birthday Year
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, bdayY[1]
    mov bdayY[bx+2], '$'
    lea dx, bdayY + 2
    mov ah, 09h
    int 21h

    lea dx, askAddHN            ; Address House Number
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, addHN[1]
    mov addHN[bx+2], '$'
    lea dx, addHN + 2
    mov ah, 09h
    int 21h

    lea dx, askAddS             ; Address Street
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, addS[1]
    mov addS[bx+2], '$'
    lea dx, addS + 2
    mov ah, 09h
    int 21h

    lea dx, askAddB            ; Address Barangay
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, addB[1]
    mov addB[bx+2], '$'
    lea dx, addB + 2
    mov ah, 09h
    int 21h

    lea dx, askAddC            ; Address City
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, addC[1]
    mov addC[bx+2], '$'
    lea dx, addC + 2
    mov ah, 09h
    int 21h

    lea dx, askAddP            ; Address Province
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, addP[1]
    mov addP[bx+2], '$'
    lea dx, addP + 2
    mov ah, 09h
    int 21h

    lea dx, askEducBE          ; Elementary School
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, elemSchool[1]
    mov elemSchool[bx+2], '$'
    lea dx, elemSchool + 2
    mov ah, 09h
    int 21h

    lea dx, askEY              ; Elementary Year Graduated
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, elemGrad[1]
    mov elemGrad[bx+2], '$'
    lea dx, elemGrad
    mov ah, 09h
    int 21h

    lea dx, askJHS              ; Junior High School
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, jhsSchool[1]
    mov jhsSchool[bx+2], '$'
    lea dx, jhsSchool
    mov ah, 09h
    int 21h

    lea dx, askJHSY              ; Junior High School Year Graduated
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, jhsGrad[1]
    mov jhsGrad[bx+2], '$'
    lea dx, jhsGrad + 2
    mov ah, 09h
    int 21h

    lea dx, askSHS              ; Senior High School
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, shsSchool[1]
    mov shsSchool[bx+2], '$'
    lea dx, shsSchool + 2
    mov ah, 09h
    int 21h

    lea dx, askSHSY              ; enior High School Year Graduated
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, shsGrad[1]
    mov shsGrad[bx+2], '$'
    lea dx, shsGrad + 2
    mov ah, 09h
    int 21h

    lea dx, askCo             ; College 
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, coSchool[1]
    mov coSchool[bx+2], '$'
    lea dx, coSchool + 2
    mov ah, 09h
    int 21h

    lea dx, askCoC             ; College Course
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, coCourse[1]
    mov coCourse[bx+2], '$'
    lea dx, coCourse + 2
    mov ah, 09h
    int 21h

    lea dx, askCoY             ; College Year Graduated
    mov ah, 09h
    int 21h

    xor bx, bx
    mov bl, coGrad[1]
    mov coGrad[bx+2], '$'
    lea dx, coGrad + 2
    mov ah, 09h
    int 21h

    mov dl, 0Ah
    mov ah, 02h
    int 21h

    mov dl, 0Ah
    mov ah, 02h
    int 21h

    mov ah, 09h
    mov bl, 0CEh
    mov cx, 12
    int 10h

    lea dx, ending             ; Vote Wisely
    mov ah, 09h
    int 21h

    mov ah, 4ch                 ; End Program
    int 21h
end start