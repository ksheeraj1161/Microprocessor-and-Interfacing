
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



ASSUME CS:CODE, DS:DATA    

                  
    
DATA SEGMENT
    
    NUMLIST DB 01H, 02H, 03H, 03H, 02H  
    
    COUNT EQU 05H    
    
    RESULT DW 01H DUP (?)
    
DATA ENDS    





CODE SEGMENT 
    

    
    START:
    
    MOV AX, DATA      ; get the segment address of DATA segment in DS register
    
    MOV DS, AX           
    
    
    
    MOV CX, COUNT     ; COUNT is the number of data has to be added
    
    MOV SI, OFFSET NUMLIST    ; get the offset address of NUMLIST
    
    MOV AX, 0000H
    
    MOV BX, 0000H
    
LP: MOV BL, [SI] 
    
    ADD AX, BX
    
    INC SI
    
    DEC CX
    
    JNZ LP
    
    MOV DI, OFFSET RESULT   ; get the offset address of RESULT in DI register 
     
    MOV [DI], AX
     
   ; MOV RESULT, AX
    
    MOV AH, 00H
    
    INT 21H 
    

    
    CODE ENDS

    END START
   

ret




