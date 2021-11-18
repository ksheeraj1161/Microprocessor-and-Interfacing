;interrupt service routine prog  

;display message

ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    
    MESSAGE DB 0DH, 0AH, "DISPLAY MESSAGE", 0DH, 0AH, "$"   ; format, like an array 
    
    MESSAGE1 DB 0DH, 0AH, "DISPLAY MESSAGE_1", 0DH, 0AH, "$"        
    
DATA ENDS  
         
         
CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    
    MOV DS, AX
    
    MOV DX, OFFSET MESSAGE_1      
    
    MOV AH, 09H         
                          
    INT 21H              
    
  
    
    MOV AH, 00H
    
    INT 21H
    
CODE ENDS

END START

ret

