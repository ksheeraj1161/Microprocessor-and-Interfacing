org 100h

mov ax, 05h

mov bx, 05h

mov [bx], 01h      

inc bx

mov [bx], 02h      

inc bx

mov [bx], 03h    

inc bx

mov [bx], 04h   

inc bx

mov [bx], 05h   

inc bx

mov [bx], 06h   

inc bx

mov [bx], 07h   

inc bx

mov [bx], 08h   

inc bx

mov [bx], 09h   

inc bx

mov [bx], 10h     

mov bx, 05h      

mov al, 0h 

add al, [bx] 

inc bx

add al, [bx] 

inc bx

add al, [bx]  

mov bx, 10h   

div bx             
 
ret




