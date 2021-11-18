org 100h



mov al, 01h  


;;;;;;;;;;;;;loop;;;;;;;;;;;;;;


mov cx, 09h        ; also cx can be taken


fact: mul cx        ;8! is max computed   without overflow


loop fact     
                   ;ax= c4 c0 dx=02 

ret                ;last 16 stored in ax, remaining in dx
                   
                    

                   ;wrong answer as partial multiplication
