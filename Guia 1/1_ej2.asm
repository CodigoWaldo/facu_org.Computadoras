.text
lui a1, 0x10010 #Set a1 con 0x10010 y resto 0
lw t0, 0(a1) #Set t0 con el valor 0 (posicion 1 de data segment) de a1.
lw t1, 4(a1)
lw t2, 8(a1)

#a) Para cargar manualmente se realiza a travez de la edici�n manual del data segment.

#b) La funci�n es de cargar el registro a1 con el valor 0x1001000

#c) La instrucci�n lw t1, 4(a1) carga la palabra almacenada en a1 y le suma 4 
#dando como resultado 0x1001004
#t1   = registro de destino.
#4    = desplazamiento offset en bytes.
#(a1) = registro de donde obtener el dato.

# Si a1 fuera 0x1001004 no obtendriamos el mismo resultado de hacer 0(a1) ya que
# la direcci�n base est� desplazada 4 bits y se leeria 
