
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.org 100h

;;;;;;;;;;;;;;;storing string ;;;;;;;;;;;

mov ax, 5000h  

mov ds, ax

mov si, 1000h

mov [si], 63h

inc si

mov [si], 61h

inc si

mov [si], 74h 


;;;;;;;;;;;;;;;storing string ;;;;;;;;;;;  


mov ax, 5000h  ; define source address

mov ds, ax

mov si, 1000h 


mov ax, 6000h   ; define destination address

mov es, ax 

mov di, 2000h 

mov cx, 03h

cld

rep movsb

;;;;;;;;;;;;;;;Viewing string ;;;;;;;;;;;

mov ax, 6000h   

mov ds, ax 

mov di, 2000h

mov al, [di]  

inc di

mov al, [di]        

inc di

mov al, [di] 

;;;;;;;;;;;;;;;Viewing string ;;;;;;;;;;; 

ret




