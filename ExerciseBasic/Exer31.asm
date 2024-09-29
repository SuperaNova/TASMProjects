; Filename: EXER31.ASM
; Programmer Name: JARED SHEOHN L. ACEBES
; Date: SEPTEMBER 29, 2024
; Description: loop from one to integer displayed

.model small                    
.stack 100h                       
.data                             
    prompt          db 'Enter an integer: $'                     
    buffer          db 6,?,6 dup('$')    
    cur             dw ?                         
    limit           dw ?    
    nextline        db 13, 10, '$'                 
.code                             
main proc                  
    mov ax, @data                 ; Data Setup
    mov ds, ax                    

    lea dx, prompt               
    mov ah, 09h                    
    int 21h                       

    call read_number    
    mov limit, ax

    mov cx, limit    

    mov ax, 1
    mov cur, ax                 ; push cur to stack

upLoop:
    xor ax, ax

    lea dx, nextline   
    mov ah, 09h                
    int 21h 

    push cx ; saving counter

    mov ax, cur
    call print_number

    pop cx ; getting back the counter
    
    mov ax, cur
    inc ax
    mov cur, ax
    
    loop upLoop

    mov ax, 4c00h                   
    int 21h
main endp

read_number proc                  ; read a number
    ; Read string input
    mov ah, 0ah                   ; buffered input
    lea dx, buffer             
    int 21h                   

    ; Convert string to number
    xor ax, ax                    
    xor cx, cx                 
    mov cl, [buffer+1]            ; Get length of input from buffer
    lea si, buffer+2              ; Point SI to the start of the string

    mov bx, 10                    ; Set BX to 10 for base 10 conversion
convert_loop:                     ; conversion loop
    mul bx                        ; AX = AX * 10 (shift left by one decimal)
    mov dl, [si]                  ; Get next character from string
    sub dl, '0'                   ; Convert ASCII char
    add ax, dx                  
    inc si                        ; next char
    loop convert_loop            

    ret                           
read_number endp                

print_number proc                 ; print a number
    ; Convert number to string
    mov cx, 0                     
    mov bx, 10                    ; Set BX to 10 for division

divide_loop:                      
    xor dx, dx                    
    div bx                        ; Divide AX by 10 (result in AX, remainder in DX)
    push dx                       ; Push onto stack
    inc cx                        
    test ax, ax                   
    jnz divide_loop               ; if != 0, continue.

print_loop:                       
    pop dx                        ; Pop from stack
    add dl, '0'                   ; Convert digit
    mov ah, 02h                   
    int 21h                       
    loop print_loop               
    ret                           
print_number endp                 
end main                        