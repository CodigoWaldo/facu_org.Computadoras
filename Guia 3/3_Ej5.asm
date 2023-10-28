.data
dato1: .word 87
dato2: .word 13
res: .space 4 #reserva 4 bytes , 4x8 bits = 32 bits de capacidad
mod: .space 4

.text
lw t1, dato1
lw t2, dato2
and a0,zero,zero
and a1,zero,zero

if:  beq t2,zero,endif
also:div a0,t1,t2
     rem a1,t1,t2 #calcular el residuo (resto) de la división entre los valores en los registros rs1 y rs2 y luego almacenar el resultado en el registro rd
        
endif: sw a0,res,t0 #guarda el valor de a0 en res usando t0 como temporal
       sw a1,mod, t0
       
nop

#a) La comparación que se está realizando es: (t2 == zero ) => endsi para evitar div por 0
#b) 87 se almacena en 0x10010000 y 13 en 0x10010004 
#c) en res se guarda el valor de a0 y en mod el valor de a1 




      
       
       