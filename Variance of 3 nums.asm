org 100h

 

mov ax, 05h

 

mov bx, 09h

 

add ax, bx

 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 

mov bx, 5000h

 


mov [bx], 20h

 

inc bx

 

mov [bx], 42h

 

inc bx

 

mov [bx], 30h

 

 

mov bx, 5000h

 

mov al, 0h

 


add al, [bx] ;bx=5000

 

inc bx

 

add al, [bx] ;bx=5001

 

inc bx

 


add al, [bx]  ;bx= 5002

 


mov al, 04h

 

mov bl, 02h

 

div  bl

 

; div bl --- 8-bit, nu=al, de=bl   out -- q=al, r=ah

 

; div bx --- 16-bit, nu=ax, de=bx  out -- q=ax, r=dx

 


; loop operation

 

mov ax, 09h
 

mov cx, 04h 

            
             
begin: dec ax

 
loop begin          ; cx will be decremeneted as count will be stored


 
                     ; comes to this statement after cx becomes 0 
mov ax, 00h

 

mov bx, 5000h

 


mov cx, 03h

 

next: add al, [bx]

 

inc bx

 

loop next

; mul bl ---> al*bl=ax(16-bit result stored here)  ----- 8-bit         

; mul bx ---> ax*bx=<dx,ax> (lower part of 32bit result in ax)  --- 16-bit


mul al

 


ret