lw x10, a
lw x11, b

add x12, x10, x0      # m = a

blt x11, x12, SOMA    # se b < m vai somar
jal x0, FIM

SOMA:
add x12, x10, x11     # m = a + b

FIM:
sw x12, m
halt

a: .word 0x19
b: .word 0xc
m: .word 0x0
