;interrupt service routine prog  

;get value from keyboard

ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    
    RES DB 01 DUP<?>
  
DATA ENDS  
         
         
CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    
    MOV DS, AX
    
    MOV AH, 01H          
    
    INT 21H              ; take input from keyboad store in AH  ;ascii char g-67 h-68 1-31
    
    MOV RES, AL
    
    MOV AH, 00H
    
    INT 21H
    
CODE ENDS

END START

ret

