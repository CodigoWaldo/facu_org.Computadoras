#int a, b, c, d, e;
li t0, 1
li t1, 2
li t2, 3
li t3, 4
li t4, 5
#a) a = b;
#mv t0, t1  #copia el contenido de t1 en t0

#b) a = b + c;
#add t0, t1,t2

#c) a = a + 1;
#addi t0,t0,1

#d) a = c + 2;
#addi t0, t3, 2

#e) a = b + c + d + e;
#add t0, t3, t4
#add t0, t0, t2
#add t0, t0, t1

#f) a = b - c;
#sub t0, t1, t2

#g) a = c + (b - d);
#sub t0, t1, t3
#add t0, t2, t0

#h) a = (b + c) - (d + e);
#add t0,t3,t4
#add t5, t1,t2
#sub t0,t5,t0

#i) a = b * c;
#mul t0, t2, t3

#j) a = b / c;
#div t0, t2, t3

#k) a = 3 * e;
#addi t0,zero,3
#mul t0, t0 , t4

#l) a = (b - c) * (d - e);
#sub t0, t3,t4
#sub t5, t1,t3
#mul t0,t0,t5

#m) a = b * c * d;
#mul t0, t4,t3
#mul t0, t0, t1

#n) a = (b + c) * (d / e);
#div t0, t4,t3
#add t5,t1,t2
#mul t0,t0,t5
