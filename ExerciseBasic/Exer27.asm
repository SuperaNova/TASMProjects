; Filename: EXER27.ASM
; Programmer Name: JARED SHEOHN L. ACEBES
; Date: SEPTEMBER 28, 2024
; Description: This assembly language program will ask the user to input two integers,
; subtract the two integers, and display the result of the two integers.

.model small                    
.stack 100h                       
.data                             
    prompt1         db 'Enter minuend: $'        
    prompt2         db 13, 10,'Enter subtrahend: $' 
    result_msg      db 13, 10, 10,'Result: $'              

    buffer          db 6,?,6 dup('$')          
    num1            dw ?                      
    num2            dw ?                       
    res             dw ?      
    negative        db "-$"                

.code                             

main proc                  
    mov ax, @data                 ; Data Setup
    mov ds, ax                    

    lea dx, prompt1               
    mov ah, 09h                    
    int 21h                       

    call read_number             
    mov num1, ax                 

    lea dx, prompt2              
    mov ah, 09h                   
    int 21h                       

    call read_number             
    mov num2, ax       

    lea dx, result_msg    
    mov ah, 09h                
    int 21h            

    mov ax, num1
    mov bx, num2
    cmp ax, bx
    jl lesser

    mov ax, num1                 
    sub ax, num2              
    mov res, ax  
    jmp result

lesser:
    mov ax, num2                 
    sub ax, num1              
    mov res, ax  

    lea dx, negative
    mov ah, 09h
    int 21h

result:
    mov ax, res                  
    call print_number          

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