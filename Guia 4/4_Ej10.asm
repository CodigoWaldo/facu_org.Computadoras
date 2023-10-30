.data
V: .word 1 2 3 4 5 6 7 8 9 10 11 100 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

.text
	la a1, V              #carga la direccion de v en a1
	add a0, zero, zero    #contador a0 = 0
	addi t0, zero, 0x100  #t0 =0x00000100
	addi t1, zero, 0x200  #t1 =0x00000200
	
for:	lw t2, 0(a1)  
	beqz t2, end
	bgt t2, t1, nopert    #t2>t1 => no pertenece
	blt t2, t0, nopert    #t2<t1 => no pertenece
	addi a0, a0, 1
nopert:	addi a1, a1, 4
	j for
end:	nop