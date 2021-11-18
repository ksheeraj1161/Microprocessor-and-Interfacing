ASSUME CS:CODE, DS:DATA

 

DATA SEGMENT

 

INPUT1 DB 04H

 

INPUT2 DB 02H

 


RESULT DB 02 DUP (00)

 

DATA ENDS

 

CODE SEGMENT

 

START:

 

MOV AX, CODE

 

MOV DS, AX

 

MOV DX, OFFSET COMP

 

MOV AL, 41H

 

MOV AH, 25H

 

INT 21H
;;;;;;;;;;;;;;;

 

MOV BH,00H

 

INT 41H

 

MOV AH, 00H

 

INT 21H

 


COMP PROC

 

MOV AX, DATA

 

MOV DS, AX

 

MOV AL, INPUT1

 

MOV CL, INPUT2

 

RCR BH, 01

 

JC LAB

 

ADD AL, CL

 

JMP GO

 

LAB: SUB AL, CL

 

GO:  NOP

 

IRET

 

COMP ENDP

 

CODE ENDS

 

END START

 


ret