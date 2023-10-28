.text
	li t0,0x3
	li t1,0x2
	beq t0,t1,bla #a)
	ble t0,t1,bla #b)
	bge t0,t1,bla #c)
	bne t0,t1,bla #d)
	blt t0,t1,bla #e)
	bgt t0,t1,bla #f)
	ecall
	bla:
	or t3,t0,t1
	ecall