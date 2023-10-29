.data
a: .word 4
b: .word 3
c: .word 5

.text 
lw t0,a
lw t1,b
lw t2,c

add s0, zero, t0	# s0 = a
slt t3, t1, s0          # (t1 < s0) => t3 = 1
beqz t3, verif2		# si (t3 = 1) => t1 es menor a s0, else t1=0 -> verif2
add s0, zero, t1	# s0 ehora es t1
verif2: 
slt t3, t2, s0          # (t2 < s0 ) => t3 = 1 ,else t3=0
beqz t3, end		# si t3 = 0 => a es el menor => fin comprobaciones
add s0, zero, t2	# s0 = t2

end:
la a0, c        #guardamos la direccion de c que es el ultimo valor
sw s0, 4(a0)	# guardamos el menor en la pos siguiente de memoria (+4 bytes)

nop