
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;Calculating nPr
;The value of n=5
;The value of r=3
mov bx , 5000h  


;Calculating n!= 5!
mov al , 01h
mov cx , 05h
lab: mul cl
loop lab
   
   
mov [bx] , al; Storing n!=5! in 5000h memory location
 
 
;Calculating (n-r)
mov al , 05h
sub al , 03h


;Calculating (n-r)!
mov cx , ax
mov al , 01h
lab1: mul cl
loop lab1
inc bx


mov [bx] , al;Storing (n-r)!=2! in 5001h memory location


dec bx
mov al , [bx]
inc bx
div [bx]; Finding nPr
; The value we get is 3C which is the hexadecimal for 60=nPr
        
         
ret




