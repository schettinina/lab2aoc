init:
    addi x11, x0, 1      
    addi x12, x0, 1028    
    addi x10, x0, 1
    sb   x10, 0(x12)       

loop:
    lb   x10, 1026(x0)     
    andi x10, x10, 1      
    beq  x10, x0, loop   

aguarda_soltar:
    lb   x10, 1026(x0)    
    andi x10, x10, 1
    bne  x10, x0, aguarda_soltar   

    sb   x0,  0(x12)  
    slli x11, x11, 1      
    addi x12, x12, 1        
    addi x10, x0, 1
    sb   x10, 0(x12)    

    addi x9, x0, 32       
    beq  x11, x9, halt   

    jal  x0, loop

halt:
    jal  x0, halt          
