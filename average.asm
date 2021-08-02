org 100h

mov bx, 5000h

mov [bx], 20h

inc bx

mov [bx], 42h

inc bx

mov [bx], 30h

mov al, 0h

add al, [bx] ;bx=5002

dec bx

add al, [bx] ;bx-5001

dec bx

add al, [bx] ;bx 500

mov bl, 3h

div bl

ret
