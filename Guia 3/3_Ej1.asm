.text 	# Comienza la sección de código.

ori t0,zero, 0x476 #hace una comparacioon or con los dos valores de la der y lo guarda en t0
ori t1,zero, 0x552 
ori t2,zero, 0x22

#slt pregunta si t1 es MENOR a t0 y guarda el resultado en t6
slt t6,	t1,t0 #t1 es mayor a t0 por lo tanto se guarda "falso" en t6
#beq es un "if", pregunta si t6 es igual a zero en este caso, si es true => no1
beq t6,zero,no1  #t6 es mayor que zero por lo tanto salta a no1 


#bge t1,t0,no1 #inciso c


slt t6,	t2,t0
beq t6, zero, no2
or  a0,	zero, t0 #se usa or en vez de ori por que hay variables (t0)
j fin #j es un "goto", en este caso salta a fin

no2: or a0, zero,t2
j fin

no1: slt t6,t2,t1
beq t6,zero,no2
or a0,zero,t1
fin:

ori a7,x0,10
ecall #end del .text