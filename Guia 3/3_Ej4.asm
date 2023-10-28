.data
dato1: .word 30
dato2: .word 10
res: .space 4   #space reserva un espacio de 4 bits

.text
	lw s8, dato1		# carga en s8 el valor de dato1
	lw s9, dato2		# carga en s9 el valor de dato2
	and t0, t0, zero	# guarda 0 en t0
	and t1, t1, zero	# guarda 0 en t1
	bge s8, s9, salto	# if s8>=s9 -> salto
	ori t1, t1, 1		# else t1=1
	
salto:	or t0, t0, t1		# t0 = t0 or t1
	sw t0, res, t6		# guarda t0 en la memoria de res
	nop
	nop
#1)
#En el primer caso donde dato1 = 20 y dato2 = -40, t0 >t1 por lo que salta y el or t0 y t1 da como resultado 0
#por lo que en res se almacena 0

#2)1 
#3)0
#4)0
#5) bge s8, s9, salto : compara si s8>s9 o si s8=s9



