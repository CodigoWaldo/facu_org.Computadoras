.data
factor1: .word 2
factor2: .word 61

.text
lw t1,factor1 #valor a multiplicar
lw t2,factor2

#con ciclos
#----------------------------
addi a0,zero,0
addi t0,zero,0  #contador en 0

while: blt t0,t2,do #si contador es menor a t2, sumar
jal end

do:
add a0,a0,t1 #suma t1 a a0
addi t0,t0,1 #contador ++
jal while #vuelve a comprobar

end: nop

#con desplazamiento
#----------------------------
slli a0, t1, 6		# a0 = t1*64 (2exp6 = 2*2*2*2*2*2 = 64)
sub a0, a0, t1		# a0 -= t1
sub a0, a0, t1		# a0 -= t1
sub a0, a0, t1		# a0 -= t1