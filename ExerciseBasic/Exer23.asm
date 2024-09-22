; Filename: EXER23.ASM
; Programmer Name: JARED SHEOHN ACEBES
; Date: 9/21/24
; Description: Create an Automated Teller Machine (ATM) main menu screen.

.model small
.stack 100h

.data
    menu db 'Cebu Institute of Technology - University', 13, 10
    db 'Automated Teller Machine', 13, 10, 13, 10
    db 'Main Menu', 13, 10
    db '1. Balance Inquiry', 13, 10
    db '2. Withdrawal', 13, 10
    db '3. Deposit', 13, 10
    db '4. Transfer', 13, 10
    db '5. Bills Payment', 13, 10
    db '6. Change Pin', 13, 10
    db '7. Exit', 13, 10, 13, 10
    db 'Enter number of your choice: $'

    newline db 13, 10, '$'

    choice db ?

    balanceMsg db 'You have chosen 1 Balance Inquiry.', 13, 10, '$'
    withdrawalMsg db 'You have chosen 2 Withdrawal.', 13, 10, '$'
    depositMsg db 'You have chosen 3 Deposit.', 13, 10, '$'
    transferMsg db 'You have chosen 4 Transfer.', 13, 10, '$'
    billsMsg db 'You have chosen 5 Bills Payment.', 13, 10, '$'
    changePinMsg db 'You have chosen 6 Change Pin.', 13, 10, '$'
    exitMsg db 'You have chosen 7 Exit.', 13, 10, '$'
    invalidMsg db 'Invalid choice. Please try again.', 13, 10, '$'
    thankYou db 'Thank you for banking with us!', 13, 10, '$'
    copyright db 'Copyright 2024', 13, 10, '$'
    programmer db 'Programmer: JARED SHEOHN L. ACEBES', 13, 10, '$'

.code


main proc
    mov ax, @data ; db setup
    mov ds, ax

    ; Display ATM menu
    mov ah, 09h
    lea dx, menu
    int 21h

    ; Take user input
    mov ah, 01h
    int 21h
    mov choice, al

    ; Display user's choice
    lea dx, newline
    mov ah, 09h
    int 21h

    mov ah, 09h
    lea dx, newline
    int 21h

    ; Check the user's choice and display the corresponding message
    cmp choice, '1'
    je balance
    cmp choice, '2'
    je withdrawal
    cmp choice, '3'
    je deposit
    cmp choice, '4'
    je transfer
    cmp choice, '5'
    je bills
    cmp choice, '6'
    je changePin
    cmp choice, '7'
    je exit
    jmp invalid

balance:
    lea dx, balanceMsg
    jmp printMsg

withdrawal:
    lea dx, withdrawalMsg
    jmp printMsg

deposit:
    lea dx, depositMsg
    jmp printMsg

transfer:
    lea dx, transferMsg
    jmp printMsg

bills:
    lea dx, billsMsg
    jmp printMsg

changePin:
    lea dx, changePinMsg
    jmp printMsg

exit:
    lea dx, exitMsg
    jmp printMsg

invalid:
    lea dx, invalidMsg

printMsg:
    mov ah, 09h
    int 21h

    lea dx, newline
    mov ah, 09h
    int 21h

    ; Display Thank You message
    lea dx, thankYou
    mov ah, 09h
    int 21h

    ; Display copyright
    lea dx, copyright
    mov ah, 09h
    int 21h

    ; Display programmer info
    lea dx, programmer
    mov ah, 09h
    int 21h

    ; Terminate program
    mov ax, 4C00h
    int 21h

main endp
end main
