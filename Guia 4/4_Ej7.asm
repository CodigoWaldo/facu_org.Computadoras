.data
cadena: .asciz "ORGANIZACION DE LAS COMPUTADORAS CON RISC V"
        .align 2
cant: .byte -1  #asigna a cant un espacio de un byte con valor -1
      .align 2
caract: .ascii "A"

.text
	la a0, cadena           #carga la dirección de cadena en a0
	lb t1, caract           #carga el byte de caracter en t1
	ori a1, zero, 0		# a1=0
ini:	lb t0, 0(a0)		# carga la letra 0 de la cadena en t0
	bne t0, t1, distin	# if t0!=t1 -> distin
	addi a1, a1, 1		# else a1++
distin:	beq t0, zero, fin	# t0==0	-> fin
	addi a0, a0, 1		# incremento solamente 1 byte t0++
	j ini
fin:	sw a1, cant, t6		# guardo la cantidad contada a1 en cant

	la a0, cadena		# carga la direccion de cadena en a0
	li a7, 4		# carga 4 en a7 (no se para que)
	ecall			# comunicacion con el sistema (?
	ori a7, zero, 10	# carga 10 en a7 (no se para que)
	ecall			# comunicacion con el sistema (?

#a) guarda la cantidad de caracteres A contados. direccion 0x10010032

#b) la finalidad es contar y almacenar la cantidad de veces que se repite caract en cadena

#c) comentado en codigo

#d)
# La funcion de .align x es alinear el dato subsiguiente en posiciones de
# memoria multiplo de x
# Si quitamos la directiva, los datos cant y caract quedan uno seguido
# del otro, por lo que al almacenar la cantidad pisamos "caract"
# Entiendo que "alinear" memoria significa establecer una cantidad de bytes
# en los que los datos se van a almacenar

#e)la cadena de texto se almacena como un vector de bytes.


