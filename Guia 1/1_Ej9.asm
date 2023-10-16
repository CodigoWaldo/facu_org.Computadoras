.text
lui t0, 0x10010  
lui t1, 0xABCD0 
lui t2, 0x12340
sw t1, 0(t0) 
sw t2, 4(t0)

#intercambiar valores en memoria
lw t1, 0(t0) #copiamos los valores del data segmente en los registros
lw t2, 4(t0) 
sw t1, 4(t0) #intercambiamos los valores de escritura
sw t2, 0(t0)
