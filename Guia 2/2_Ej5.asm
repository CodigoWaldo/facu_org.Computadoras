.text
addi t0, x0, 0x234 #suma x0 y 0x234 y lo guarda en t0

lui t1, 0x10010 #escribe el valor corrido a la izq y lo completa con 0

sw t0, 0(t1) #almacena los cuatro bytes menos significativos del t0 en la
#memoria indicada 0 offset de t1