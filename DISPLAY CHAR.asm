;interrupt service routine prog  

;to display data

ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    
    INPUT DB 47H
  
DATA ENDS  
         
         
CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    
    MOV DS, AX
    
    MOV DL, INPUT         ;store 47 input in memory
    
    MOV AH, 02H          
                          ;01 for input 02 for output
    INT 21H              
    
  
    
    MOV AH, 00H
    
    INT 21H
    
CODE ENDS

END START

ret

