.model small
.stack 100h

.code

start:

    mov ax, 4c00h
    int 21h
    int 27h ; terminate
    
end start ; end program

COMMENT *

; ah = read character from standard input
; 02h = write character to standard output
; cl = cursor bottom line
; dl = character to write/print/display
; int 21h = read character in standard input


; this is for displaying space
   mov ah,02h
   mov dl,20h ; 20h is space or ' ' 
   int 21h

; this is for displaying new line
   mov ah, 02h
   mov dl, 0ah     
   int 21h 

; this is for changing foreground and background colors
   mov ah, 09h
   mov bl, 3Eh ; 3 = aqua(background), E = light yellow(foreground)
   mov cx, 1 ; number of characters to apply color
   int 10h

; for 1st row blue color, 8 spaces
; this is for changing foreground and background colors
   mov ah,09h
   mov bl,11h ; 1 = blue(background), 1 = blue(foreground)
   mov cx,8 ; number of characters to apply color
   int 10h
   
   ; tasm procedures (functions basically)
   procedureName proc
   ; code in proc
   ret ; return to caller
   procedureName endp
   
   inc x; increment x (register)
   dec x; decrement x (register)
   
   ; =====================================LOOPS===========================================
    ; tasm looping (basic)
    mov cx, x ; x being the loop counter value
loop_flag: ; name for the loop start flag
    ; code in loop
    loop loop_flag ; decrement cx register by 1 and jump to loop_flag if cx != 0
    
    
    ; tasm looping - using jumps
loop_flag: ; name for the loop start flag
    ; code in loop
    dec cx ; counter decrement
    jnz loop_flag; jump to loop_flag if CX != 0
    
    
    ; different jump methods
    jmp label ; default jmp always to flag ( Uncondition Jump )
    
    jnz label ; jump if CX != 0
    
    ; register flags
    ; Carry Flag (CF) = Carry or Borrow = 1 (carries and borrows unsigned)
    ; Parity Flag (PF) = Even = 1
    ; Zero Flag (ZF) = result was zero = 1
    ; Sign Flag (SF) = Result is negative = 1
    ; Overflow Flag (OF) = overflow occured = 1 (add or subt cant be represented w/ bits signed)
    ; there other flags but idgaf
    
    cmp al, x ; compare value x with al register
    ; jumps relying on Zero Flag (ZF) which is the bool set for the result of the last operation
    je/jz label   ; jump if equal or jump if zero (ZF = 1) 
    jne/jnz label ; jump if not equal / jump if not zero (ZF = 0)
    ; jump relying on the cmp result itself
        ; unsigned comparison  
    ja/jnbe label ; jump if above / jump if not below or equal (CF = 0) [al > x]
    jb/jnae label ; jump if lesser / jump if not above or equal (CF = 1) [al < x]
    jbe/jna label ; jump if below or equal / jump if not above [al <= 5]
    jae/jnb label ; jump if above or equal . jump if not below [al >= 5]
        ;   signed comparison  (basically the same but signed value)
    jg/jnle label ; jump if greater / jump if not less or equal (SF = OF) [al > x]
    jl/jnge label ; jump if less / jump if not greater or equal (SF != OF) [al < x]
    ; CF=1
    jc/jnc label ; jump if carry / jump if no carry
    ; OF=1
    jo/jno label ; jump if overflow / jump if no overflow
    
    
    ; =====================================LOOPS END======================================
    
    ; ===================================REGISTERS========================================
    
    ; GENERAL PURPOSE REGISTERS - use for anything but usually used for:
    ax ;  Accumulator Register - often used for arithmetic operations
        al; upper 8
        ah; lower 8
    bx ;  Base Register - used for base addressing
        bl
        bh
    cx ;  Count Register - commonly used for loops and string operations
        cl
        ch
    dx ;  Data Register - used for I/O operations and to extend the accumulator register
        dl
        dh
       
    ; SEGMENT REGISTER (i dont know what they mean lmao)
    cs ;  Code Segment - points to the segment where the code is located.
    ds ;  Data Segment - points to the data segment
    es ;  Extra Segment - used for extra data segment operations
    ss ;  Stack Segment - points to the stack segment
        
    ; POINTER AND INDEX REGISTER
    sp ; Stack Pointer - manage the stack
    bp ; Base Pointer - manage the stack
    si ; source index - string and array operations
    di ; destination index - string and array operations
    
    ; FLAG REGISTER
     ;  not writing allat idgaf
     
    ; EXTENDED REGISTER USAGE 32-Bit extensions
     ;  registers but with e before them (eax, ebx, ecx...)
    
    ; ==================================REGISTERS END=====================================
    
    ; ending program (return 0 way)
    mov ax, 4c00h
    int 21h
   
*
