; controlling external device with 8086 microprocessor.
; realistic test for c:\emu8086\devices\Traffic_Lights.exe

 

#start=Thermometer.exe#

 

name "Thermo"

 


mov ax, off
out 127, ax

 


repeat:

 

nexton:
mov ax, on
out 127, ax

 

in al, 125
mov bl, al
cmp bl, tup
ja nextoff
jmp nexton

 

nextoff:
mov ax, off
out 127, ax

 

in al, 125
mov bl, al
cmp bl, tlow
jb nexton
jmp nextoff

 

 

jmp repeat

 

 

 

on          equ     0000_0001b
off         equ     0000_0000b

 

tup         equ     80
tlow        equ     75