; c:\emu8086\devices\led_display.exe

 

#start=led_display.exe#

 


#make_bin#

 

name "led"

 

mov ax, 1234
out 199, ax

 

mov ax, -5678
out 199, ax

 


mov     cx, 008Ch    ;    004C4B40h = 5,000,000
mov     dx, 4B40h
mov     ah, 86h
int     15h

 

mov ax, 0
x1:
  out 199, ax  
  inc ax
jmp x1

 

hlt

 


;7                                                                           