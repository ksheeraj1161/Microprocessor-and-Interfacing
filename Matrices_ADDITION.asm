
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



ASSUME CS:CODE, DS:DATA    

                  
    
DATA SEGMENT
    
    MAT1 DB 01H, 02H, 03H, 07H, 02H, 06H, 04H, 02H, 05H  ;3X3 1X9
    
    MAT2 DB 05H, 07H, 08H, 02H, 02H, 04H, 03H, 01H, 06H  ;3X3 1X9
    
    DIM EQU 09H    
    
    MATR DW 09H DUP (?)
    
DATA ENDS    





CODE SEGMENT 
    

    
    START:
    
    MOV AX, DATA      ; get the segment address of DATA segment in DS register
    
    MOV DS, AX 
    
    
    
    MOV CX, DIM     ; COUNT is the number of data has to be added
    
    MOV SI, OFFSET MAT1    ; get the offset address of NUMLIST    
    
    MOV DI, OFFSET MAT2  
    
    MOV BX, OFFSET MATR  
    
    MOV AX, 0000H
    
    
    
LP: MOV AL, [SI] 

    MOV DL, [DI]
    
    ADD AL, DL
    
    MOV WORD PTR [BX], AX    ; mov [bx], al
    
    INC DI
    
    INC SI 
    
    ADD BX, 0002H       ;  inc bx   ; mov [bx], ax bx=5000,;; al- 5000, ah-5001
    
    DEC CX
    
    JNZ LP
    
    MOV AH, 00H
    
    INT 21H 
    

    
    CODE ENDS

    END START
   

ret




