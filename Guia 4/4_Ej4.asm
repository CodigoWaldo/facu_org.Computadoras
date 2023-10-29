.data
V: .space 60 #(15 palabras * 4 bytes que pesa c/u)
A: .space 60 #vector donde se copia

.text
addi t0,zero,60  #establece t0 con valor 60 (contador)

la a0,V #load addres. carga la dirección de v en a0
la a1,A 
add t0,zero,zero #posicion en zero
for: add t4,a0,t0  # puntero a vector V en la pos i = *v[i]
     lw t2,(t4)    #t2 = v[i] guarda el valor  en t2
     jal comprobarImpar
     esImpar:
     add t4,a1,t0  #*A[i] t4 apunta ahora en la misma pos en vector A
     sw t2,(t4)    #guarda el valor de t2 en t4
     esPar:
     addi t0,t0,4  #i++ (aumenta contador en 4)
     blt t0, t3, for  #mientras t0<t3 => continua bucle, else end    
end: nop   


comprobarImpar:
li t6, 2 
rem t1,t2,t6 #guarda el resto de dividir t2/2
beqz t1,esPar #si el resto de dividir por 2 es cero => es par
jal esImpar #else es impar


