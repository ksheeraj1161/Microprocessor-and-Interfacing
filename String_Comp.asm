
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.org 100h


;;;;;;;;;;;;;;;storing string 1;;;;;;;;;;;

mov ax, 5000h  

mov ds, ax

mov si, 1000h

mov [si], 63h

inc si

mov [si], 61h

inc si

mov [si], 74h 


;;;;;;;;;;;;;;;storing string 1;;;;;;;;;;;


;;;;;;;;;;;;;;;storing string 2;;;;;;;;;;;



mov ax, 6000h   

mov ds, ax 

mov di, 2000h   


mov [di], 63h

inc di

mov [di], 61h

inc di

mov [di], 74h 

;;;;;;;;;;;;;;;storing string 2;;;;;;;;;;;


;;;;;;;;;;;;;;;comparing string ;;;;;;;;;;;


mov ax, 5000h       ; setting string 1 address

mov ds, ax

mov si, 1000h 

mov ax, 6000h       ; setting string 2 address

mov es, ax 

mov di, 2000h   

mov cx, 03h

cld
                    ; if same zf=1& CX=0, different zf=0 & CX!=0 
repe cmpsb
  
;;;;;;;;;;;;;;;comparing string ;;;;;;;;;;;

ret




