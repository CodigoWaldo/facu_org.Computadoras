.data
valor: .word 0x805215C9
.text
la s0,valor
lbu a1, 0(s0)
lbu a2, 1(s0)
lbu a3, 2(s0)
lbu a4, 3(s0)
