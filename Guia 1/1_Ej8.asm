#Forma 1: Guarda directamente en data
#.data
#valor: .word  0xABCD0000
#valor2: .word  0x12340000

#Forma 2: Hace uso de registros
.text
lui t0, 0x10010  #Establece la direccion del primer dato en el data segment

lui t1, 0xABCD0 #carga los datos en t1 y t2
lui t2, 0x12340

sw t1, 0(t0) #guarda los datos t1 y t2 en t0 desplazado 0 y 4 bytes
sw t2, 4(t0)