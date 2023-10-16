#Caso 1
#.data
#valor: .word 0x805216C9
#.text
#la s0, valor
#lhu a1, 0(s0)
#lhu a2, 2(s0)
#Caso 2
.data
valor: .word 0x805216C9
.text
la s0, valor
lh a1, 0(s0)
lh a2, 2(s0)

#a)
#En ambas versiones de codigo, los registros que intervinieron donde
#se guardaron valores fueron x11 y x12 (a1 y a2)

#b)caso 1: 
#valor a1 y a2 respectivamente: 0x000016c9 & 0x00008052
#caso 2: 
#valor a1 y a2 respectivamente: 0x000016c9 & 0xffff8052 .El valor de a2 difiere por
#la instruccion lh que relena el resto de bits con el signo a diferencia de lhu que lo hace con 0s.
#esto puede afectar si el valor tiene signo negativo.