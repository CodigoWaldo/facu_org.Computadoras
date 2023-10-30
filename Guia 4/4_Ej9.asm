.data
V: .word 100 200 300 400 500 600 250 800 900

.text
    add t1,zero,zero   #contador vector en 0
    addi t2,zero,36     #max contador vector 
    la t3, V           #direccion de V en t3
    add a0,zero,zero   #contador de cant de valores > 400
    li a2,400    
for:  
       bge t1,t2,end      #contador >= max ->end
       add t4,t3,t1       #posiciona el puntero t4 apuntando a t3 en la pos t1
       lw t5,(t4)         #guarda el contenido del puntero t4 en t5             
       bge t5,a2,verif2   #compara si t5>=a2 (400), si es T -> va a verif2   
       addi t1,t1,4       #aumenta el contador       
       jal for     
verif2:       
       beq t5,a2,igual   
       jal mayor       
mayor:       
       addi a0,a0,1   # a0++ 
       addi t1,t1,4   # aumenta el contador  
       jal for  
igual:       
       addi t1,t1,4   # aumenta el contador  
       jal for      
end:       
    nop
    
    
    
    
