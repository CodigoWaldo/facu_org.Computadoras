.text
	li t1,4
	li t2,7
	li t3,6
	li t4,10
	li t5,
	li t6,30
	
	#a)t1<5
	slti t4,t1,5
	#-------------------
	
	#b)t1==5 && t2==t3
	beq t1,t6,segunda
	j finF
	
	segunda:
	beq t2,t3,finV
	j finF
	
	finF:#lo que sea que pase si es falso
	ecall
	finV:#lo que sea que pase si es verdadero
	j bla
	#-------------------
	
	#c)t1!=t2 || t1!=t3
	bne t1,t6,finV
	j segunda
	
	segunda:
	bne t2,t3,finV

	#lo que sea que pase si es falso
	ecall
	
	finV:#lo que sea que pase si es verdadero
	j bla
	#-------------------
							
	#d) t1 > 6
	bgt t1,t3,bla	
	#-------------------
	
	#e) t1 > 10 && t1 < 30		
	bgt t1,t4,siguiente	
	j bla
	
	siguiente:
	blt t1,t5,expresionTrue	
	
		
	#-------------------			
	bla:
	expresionTrue:
	ecall
	
	