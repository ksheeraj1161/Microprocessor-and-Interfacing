;interrupt service routine prog  

;display message

ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    
    MESSAGE DB 0DH, 0AH, "DISPLAY MESSAGE", 0DH, 0AH, "$"   ; format, like an array
  
DATA ENDS  
         
         
CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    
    MOV DS, AX
    
    MOV DX, OFFSET MESSAGE      ;adress of msg,can be multiple msgs... should be pointed by dx register
    
    MOV AH, 09H         
                          
    INT 21H              
    
  
    
    MOV AH, 00H
    
    INT 21H
    
CODE ENDS

END START

ret

