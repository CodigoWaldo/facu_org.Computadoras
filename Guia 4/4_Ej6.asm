.data
V: .word 1 2 3 4 5 6 7 8 9 10 

.text
la a1,V          #carga direccion de V en a1
li t0,8          #t2 factor de multiplicacion (8)
add t1,zero,zero #contador en 0
addi t4,zero,40  #max contador

for: 
     beq t1,t4,end#si el contador es = al max => end
     add t2,a1,t1 #posiciona puntero 
     lw t3,(t2)   #copia valor de t2 en t3
     mul t3,t3,t0 #t3 = t3 * t0
     sw t3,(t2)   #guarda el valor de t3 en t2
     addi t1,t1,4 #aumenta contador en 4 para saltar a la sig palabra.
     jal for
end: nop

