
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt





ASSUME CS:CODE,DS:DATA 


DATA SEGMENT

A DW 05H

C DW 03H            

STORE DW 01H DUP (?)

RESULT DW 01H DUP (?)


DATA ENDS



CODE SEGMENT

START:

MOV AX,DATA

MOV DS, AX
           


MOV AX, 01H

MOV BX, C

MOV CX, A

LP1: MUL CX
    
    DEC CX
    
    JNZ LP1

    
    MOV SI, OFFSET STORE   
     
    MOV [SI], AX            ;n!
     
;;;;;;;;;;;;;;;;;


MOV AX, 01H

MOV CX, C

LP2: MUL CX
    
    DEC CX
    
    JNZ LP2

    
    INC SI  
     
    MOV [SI], AX              ;r!
     
;;;;;;;;;;;;;;;;;;;;;;

 
MOV AX, A

MOV CX, C  

SUB AX, CX

MOV BX, AX 

MOV AX, 01H

LP3: MUL BX
    
    DEC BX
    
    JNZ LP3

    
    INC SI  
     
    MOV [SI], AX              ;n-r!
    
;;;;;;;;;;;;;;;;;;;;
    
DEC SI

DEC SI

MOV AX, [SI]                   ; div bl --- 8-bit, nu=al, de=bl   out -- q=al, r=ah

INC SI

MOV BX, [SI]                   ; div bx --- 16-bit, nu=ax, de=bx  out -- q=ax, r=dx

DIV BX     

INC SI

MOV BX, [SI]

DIV BX                        ;ncr

;;;;;;;;;;;;;;;;;;;;;;;;

    MOV DI, OFFSET RESULT  
     
    MOV [DI], AX                 ;MOV RESULT, AX

    
MOV AH, 00H

INT 21H 

END START

CODE ENDS  



END


RET
 

 

