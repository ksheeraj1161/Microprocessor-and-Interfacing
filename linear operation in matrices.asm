
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



ASSUME CS:CODE, DS:DATA    

                  
    
DATA SEGMENT
    
    MAT1 DB 09H, 08H, 07H, 06H ;
    
    MAT2 DB 01H, 01H, 01H, 01H ;   
    
    MAT3 DB 01H, 03H, 04H, 02H ;
    
    DIM EQU 04H    
    
    MATR DW 04H DUP (?) 
    
    
DATA ENDS    





CODE SEGMENT 
    

    
    START:
    
    MOV AX, DATA     
    
    MOV DS, AX 
    
    
    
    MOV CX, DIM    
    
    MOV SI, OFFSET MAT1      
    
    MOV DI, OFFSET MAT2  
    
    MOV BX, OFFSET MATR  
    
    MOV AX, 0000H
    
    
    
LP: MOV AL, 06H

    MUL [DI]
    
    MOV DL, AL 

    MOV AL, [SI] 
    
    SUB AL, DL
    
    MOV WORD PTR [BX], AX    
    
    INC DI
    
    INC SI 
    
    ADD BX, 02H      
    
    DEC CX
    
    JNZ LP 

    
    SUB BX, 08H 

    
    MOV CX, DIM     
    
    MOV SI, OFFSET MAT3    
    
    MOV AX, 0000H
    
    
     
        
     
LP2: MOV AL, [SI] 

    MOV DL, [BX]
    
    ADD AL, DL
    
    MOV WORD PTR [BX], AX    
    
    
    INC SI 
    
    ADD BX, 02H      
    
    DEC CX
    
    JNZ LP2
     
    MOV AH, 00H
    
    INT 21H 
    

    
    CODE ENDS

    END START
   

ret




