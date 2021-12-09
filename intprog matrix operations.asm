
ASSUME CS:CODE, DS:DATA

 

DATA SEGMENT

 

    INPUT1 DB 01H,02H,03H,04H

 

    INPUT2 DB 05H,06H,07H,08H
 


    RESULT DB 02 DUP (00)

 

DATA ENDS

 

CODE SEGMENT

 

START:

 

    MOV AX, CODE

 

    MOV DS, AX

 

    MOV DX, OFFSET COMP

 

    MOV AL, 51H

 

    MOV AH, 25H

 

    INT 21H


 

    MOV BH,112H

 

    INT 51H

 

    MOV AH, 00H

 

    INT 21H

 


    COMP PROC
 
        
        MOV AX, DATA
 
       
        MOV DS, AX 
 
 
        MOV AL, INPUT1
 
        
        MOV CL, INPUT2 
 
 
        CMP BH,00
 
    
        JE ADD1
 
 
 
        CMP BH,01
 
 
        JE SUB2
 
 
 
        CMP BH,02
 
    
        JE MUL3
 
 
 
        CMP BH,03
 
 
        JE Det4 
 
 
 
    ADD1:
 
    
    ADD AL,CL
 
 
    JMP GO

 
 
    SUB2:
 
 
    SUB AL,CL
 
 
    JMP GO 
 
    
    
    MUL3:
 
 
    MUL CL
 
 
    JMP GO
 
 
 
    Det4: 
    
    
    ;;;;;;;;;
 
    JMP GO 
 
 
 GO: 

    MOV SI,OFFSET RESULT
    
    
    MOV [SI],AL 
    
    
    NOP 
 
 
 IRET
 
 
 COMP ENDP
 
 
 CODE ENDS


END START


Ret