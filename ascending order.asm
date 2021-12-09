ASSUME DS:DATA CS:CODE
 
DATA SEGMENT  
    
LIST DB 08H,0EH,06H,09H,0CH,05H,0AH,0DH,07H,0BH 
 
LEN DW 0AH    
 
DATA ENDS    

CODE SEGMENT  
    
START:  

MOV AX,DATA 

MOV DS,AX 

MOV CX,LEN-1

MAIN: LEA SI, LIST
 
       MOV BX, 00H  
       
COMP: INC BX
 
       MOV AL,LIST[SI]
        
       INC SI
 
       CMP AL,LIST[SI]
 
       JB SAME 
 
       XCHG AL,LIST[SI]
 
       MOV LIST[SI-1],AL 

SAME:  CMP BX,CX

       JL COMP

LOOP MAIN 
 
MOV AH,00H
 
INT 21H

END START

CODE ENDS

END