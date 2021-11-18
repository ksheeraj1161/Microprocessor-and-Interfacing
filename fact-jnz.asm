org 100h



mov al, 01h  





mov bl, 03h        ;without loop


fact: mul bl


dec bl


jnz fact        ;jump not zero- if result of previous is not zero
                ;jumped to labeled mentioned
                    
;jz--pre inst o/p is zero

;jnz-- per inst o/p is not zero


ret                
                   
                    

                  