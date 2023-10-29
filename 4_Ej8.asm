.data
cadena: .asciz "ORGANIZACION DE LAS COMPUTADORAS CON RISC V"
        .align 2
cant: .byte -1  #asigna a cant un espacio de un byte con valor -1
      .align 2
caract: .ascii "A"
       .align 2
nuevo: .ascii "X"              # modificación del ej 8

.text
	la a0, cadena           
	lb t1, caract          # modificación del ej 8
	ori a1, zero, 0		
	
ini:	lb t0, 0(a0)		 
	bne t0, t1, distin	 
	sb t2, 0(a0)	        # modificación del ej 8
	addi a1, a1, 1		
distin:	beq t0, zero, fin	
	addi a0, a0, 1		
	j ini
fin:	sw a1, cant, t6		

	
	