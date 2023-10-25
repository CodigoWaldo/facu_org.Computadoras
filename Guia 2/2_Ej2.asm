.text
#------------ psudo asm - li es lui y addi
li a0,0x111117FF  
li a1,0x11111CAB 

#------------ uso de lui y ori (no sirve para negativos)
lui a2,0x11111
ori a2,a2,0x7FF
lui a3,0x11112
ori a3,a3,-0x355

#------------
#esta forma realiza los mismos pasos que si utilizara li
lui a4,0x11112
addi a4,a4,0x7FF

lui a5,0x11112
addi a5,a5,-0x355

#a)Se generan codigos similares ya que las instrucciones son las mismas pero cambian
#los datos y el registro en el que se guarda.

#b)
#lui y ori : 0xfffff000 -> 0xfffffcab
#lui y addi: 0x11111000 -> 0x11111cab

#c)

#d)
