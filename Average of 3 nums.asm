
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 05h

mov bx, 06h

mov cx, ax

add ax, cx

;;;;;;;;;;;;;;;;;;;;;;

mov bx, 5000h

mov [bx], 20h

inc bx

mov [bx], 42h

inc bx

mov [bx], 30h



mov bx, 5000h

mov al, 0h 


add al, [bx] ; bx=5000

inc bx

add al, [bx] ; bx=5001

inc bx

add al, [bx] ;bx=5002 

mov bx, 3h   

div bx

ret




