; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

#start=stepper_motor.exe#
       
name "motorc"

 
START: MOV BX, offset datcw

       MOV SI, 0

NEXT_STEP:

WAIT: IN AL,07H

    TEST AL,10000000b

    JZ WAIT

    MOV AL, [BX][SI]

    OUT 7, AL   
    
    INC SI
    
    CMP SI, 4
    
    JC NEXT_STEP

    MOV SI, 0 
    
    JMP NEXT_STEP
    


;        7654 3210
datcw db 0000_0110b

      db 0000_1100b 
      
      db 0000_1001b

      db 0000_0011b 