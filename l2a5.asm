loop:
lb x10, 1025(x0)      

addi x11, x0, 42      # ASCII de *

beq x10, x11, fim     # se for * termina

sb x10, 1024(x0)      # escreve no vídeo

jal x0, loop

fim:
halt
