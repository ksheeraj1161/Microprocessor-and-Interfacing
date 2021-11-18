
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt





ASSUME CS:CODE,DS:DATA 


DATA SEGMENT

A DB 0FFH

B DB 0FFH

SUM DB 00H

CARRY DB 00H 


DATA ENDS



CODE SEGMENT

START:

MOV AX,DATA

MOV DS, AX
           
           
           
MOV AL, A  

MOV BL, B

ADD AL, BL

JNC GO

MOV CARRY, 01H

GO: MOV SUM, AL 


MOV AH, 00H

INT 21H 

END START

CODE ENDS  



END


RET
