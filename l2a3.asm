lw x19, f
lw x20, g
lw x21, h
lw x22, i
lw x23, j

beq x22, x23, SOMA

# vou testar com numeros random pra ver 3 casos
sub x19, x20, x21
jal x0, FIM

SOMA:
add x19, x20, x21

FIM:
sw x19, f
halt
#resultado neg
f: .word 0x0
g: .word 0x5
h: .word 0xa
i: .word 0x1
j: .word 0x2
