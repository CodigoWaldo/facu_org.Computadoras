.text #define el inicio de las instrucciones
lui t0, 0x12345 #en t0 guarda 0x12345
sw t0, (sp) #guarda el contenido t0 en la direccion guardada en sp (0x7fffeffc) 
lui a1, 0x10010 #en a1 guarda 0x10010
lw t1, (sp) #lee el contenido de sp y lo guarda en t1
sw t1, (a1) #guarda el contenido t1 en la direccion guardada en a1 (0x10010000)
li a7,10 #guarda 0x0000000a en a7
ecall #hace una llamada al sistema , termina el programa

#b)
#El valor de t0 se almacena en la dirección indicada por sp, luego se lee y guarda
#en t1, luego lo lee y lo guarda en a1 (0x10010000)

#c)
#Se le asigna 0x1001 a1 por que es la direccion de memoria donde se guardará
#t0

#d)
#Observando el data segment, antes habia almacenado 0 y luego el valor de t0 (0x12345000)

#e)
#El valor que toma t1 es el de contenido de la direccion indicada por sp

#f)
#El valor de t1 se almacenaen la direción indicada por a1 (0x10010000)




