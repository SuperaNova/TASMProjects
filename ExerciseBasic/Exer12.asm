; Filename: EXER12.ASM
; Programmer Name: JARED SHEOHN ACEBES
; Date: 9/20/24
; Description: This assembly language program will display multiple
;string variables on a single line.
.MODEL small
.STACK 200h
.DATA
String1 DB 'Line1','$' ; DB = Define Byte String1 variable and
;assign ‘Line1’ value.
String2 DB 'Line2','$'
String3 DB 'Line3','$'
.CODE
ProgramStart:
 mov ax,@data
 mov ds,ax
 mov ah,9 ; DOS print string function
 mov dx,OFFSET String1 ; 1st string to print
 int 21h ; invoke DOS to print string
 mov dx,OFFSET String2 ; 2nd string to print
 int 21h ; invoke DOS to print string
 mov dx,OFFSET String3 ; 3rd string to print
 int 21h ; invoke DOS to print string
 mov ah,4ch ; DOS terminate program function
 int 21h ; invoke DOS to end program
END ProgramStart
