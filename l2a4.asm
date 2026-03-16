
add x14, x0, x0
loop:
lb x10, 24(x14) 
addi x14, x14, 1
sb x10, 1024(x0)
beq x0, x0, loop
halt

str1: .string "Hello World"

