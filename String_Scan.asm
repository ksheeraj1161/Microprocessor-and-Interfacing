
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   
 
;;;;;;;;;;;;;;;storing string ;;;;;;;;;;;           
           
mov bx, 5000h  

mov ds, bx

mov si, 2000h

mov [si], 63h

inc si

mov [si], 61h

inc si

mov [si], 74h 

;;;;;;;;;;;;;;;storing string ;;;;;;;;;;;


mov ax, 5000h

mov es, ax

mov di, 2000h

mov cx, 03h

mov al, 74h

cld                 ; if found zf=1, not found zf=0 

repne scasb   



ret



    


      
