.data
valor: .word 0 #indica que valor es una palabra (4 bytes)
.text
lui x5, 0x00012345 #antes lui t0, 0x12345
lui t1, 0x345
lui t2, 0x5
sw t0, valor,t6
la a7, valor
sw t1, 4(a7)
sw t2, 8(a7)

#a)En source se escriben tal cual se hizo en el codigo, mientras que en
#basic el destino de almacenamiento se representa con su posicion y el valor
#que contiene en hexadecimal con formato little-endian.

#b)
# sw t0, valor, t6
# Store word
# t0: registro destino
# valor: direccion base (0)
# t6: puntero al offset

#d)
#antes:0x00000000 luego: 0x1001000c 

#e)
#En el data segment, los valores (value) y (address) son respectivamente:
# 0x12345000 en 0x10010000
# 0x00345000 en 0x10010004
# 0x00005000 en 0x10010008

#f) el funcionamiento es el mismo.

