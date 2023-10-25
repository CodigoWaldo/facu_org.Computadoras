.text
ori t0, zero, 476 #or inmediato en t0 con zero y 476 . value: 0x000001dc (476 en hexadecimal)
ori t1, zero, 0xFF #value:0x000000FF
lui t2, 1 #guarda 1 en t2. #value:0x00001000 
ori t3, zero, 4 #value: 0x00000004
lui t4 0xC3010 #value: 0xc3010000
slli, s0,t0, 16 #desplazamiento inmediato 16 bits. value s0: 0x01dc0000
srai s1, t1, 1 #desplazamiento inmediato 1 bit hacia derecha. value s1: 0x0000007f (su valor decimal se divide en 2)
srl s2, t4, t3 
sra s3, t4, t3
slli s4, t3, 1 #desplazamiento 1 bit hacia izquierda. value s1: 0x0000007f (su valor decimal se multiplica por 2)
add s4, s4, t3 #suma s4+t3
sll s5, t0, s4 