.data #Segmento de datos inicializado
elemento: .word 0x4E1C532D
.text 
lw t1, elemento

#a)
#Se generan: auipc t1, 0x0000fc10  &&   lw t1, 0(t1)

#b)
#En este caso solo el registro t1

#c)
#La etiqueta elemento es reemplazada por la direccion de memoria 0x10010000

#d)
#La ventaja es que el compilador asigna automáticamente la memoria, en caso de escribir
#nuevo codigo no hay que volver a calcularlo a mano


