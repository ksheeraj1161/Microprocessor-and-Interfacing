org 100h

;ncp npr assignment

;4!=4*3*2*1=4

mov al, 01h  


;;;;;;;;;;;;;loop;;;;;;;;;;;;;;


mov cl, 04h        ; also cx can be taken


fact: mul cl


loop fact     
                   ; loop automatically decrements

ret
                   
                    


