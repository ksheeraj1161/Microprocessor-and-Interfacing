
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

#start=Traffic_Lights.exe#

 

name "traffic"

 


mov ax, all_red
out 4, ax

 


mov si, offset situation

 


next:
mov ax, [si]
out 4, ax

 

 

add si, 2 ; next situation
cmp si, sit_end   ;reset
jb  next
mov si, offset situation
jmp next

 


;                        FEDC_BA98_7654_3210
situation        dw      0000_0010_0100_1100b   
s1               dw      0000_0010_0101_1010b
s2               dw      0000_0010_0110_0001b  
s3               dw      0000_0010_1101_0001b 
s4               dw      0000_0011_0000_1001b         
s5               dw      0000_0110_1000_1001b
s6               dw      0000_1000_0100_1001b 
s7               dw      0000_0100_0100_1011b                                                                                                  
sit_end = $

 


all_red          equ     0000_0010_0100_1001b