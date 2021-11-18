; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

 

 

 

ASSUME CS:CODE,DS:DATA

 


DATA SEGMENT

 

A DB 04H

 

B DB 03H

 

SUM DB 00H

 

CARRY DB 00H

 


DATA ENDS

 

 

CODE SEGMENT

 

START:

 

MOV AX,DATA

 

MOV DS, AX

 

 

MOV AH, 01H

 

INT 21H

 

ADD AL, 0H

 

AAA

 


MOV BL, AL

 

 

MOV AH, 01H

 

INT 21H

 

ADD AL, 0H

 

AAA

 

ROR AL, 04H

 

ADD AL, BL

 

 

MOV AH, 00H

 

INT 21H

 

END START

 

CODE ENDS

 

 

END

 


RET