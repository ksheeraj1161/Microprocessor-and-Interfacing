org 100h 


;Variance of 10 numbers 


mov bx , 5000h 


mov [bx] , 1h 


inc bx 


mov [bx] , 6h



inc bx 


mov [bx] , 8h


inc bx 

                  
                 
mov [bx] , 0Eh


inc bx 


mov [bx] , 4h


inc bx 


mov [bx] , 5h


inc bx 


mov [bx] , 7h


inc bx 


mov [bx] , 2h


inc bx 


mov [bx] , 0Ah


inc bx 


mov [bx] , 3h 




mov al , 0h 


mov cx , 0Ah 

                                     ;60
sum: add al, [bx] 


dec bx 


loop sum


mov dl , 0Ah


div dl                               ;6


;;;;;;;;; Average operation completed, variance operarations starts


mov bx, 500Ah


mov [bx] , al 


dec bx 


mov cx , 0Ah


mov dl , 0h 

                                   
var: mov al , [bx] 

                                  
                                   
sub al , [500Ah]                   ; -5 0 2 8 -2 -1 1 -4 4 -3

                                   ; 140
mul al 



add dl , al 



dec bx 


loop var 


mov ax , dx 



mov bl , 0Ah

                                  ;140/10=14       
div bl 


ret