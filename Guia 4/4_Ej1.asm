.text
li a0, 314
li t2, 2 #se usa para luego dividir entre 2

#comprobar si es par o no
rem t1,a0,t2 
beqz t1,par #si el resto de dividir por 2 es cero => es par

impar:
li s1,20
jal fin

par: 
li s1,10
jal fin

fin:
nop
