.text
li a0,10 #set valor s0 en 10
li a1,0 #inicializo a1 con cero
li t1,0 #contador del multiplicador
li t2,17 #factor de multiplicacion

#con uso de bucles
multiplicar: #bandera
add a1,a1,a0 #suma a a1 el valor de a0
addi t1,t1,1 #aumenta en 1 el contador
bne t1,t2,multiplicar #si el contador es distinto al valor de t2, sigue el bucle

#con uso de desplazamiento hacia izq
sll a1,a0,4  #desplazar 4 bits a la izquierda => multiplicar por 2^4=16
add a1,a1,a0 #suma una vez mas para llegar al resultado de multiplcar por 17






