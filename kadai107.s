    .globl mystrcmp
    .align 2
mystrcmp:
    lb a2, 0(a0)
    lb a3, 0(a1)
    
    beqz a3, label2
    bgt a2, a3, label2
    bgt a3, a2, label
    addi a0, a0, 1
    addi a1, a1, 1
    j mystrcmp
label1:
    li a0, -1
    ret
label2:
    li a0, 1
    ret
label3:
    beqz a3, label4
    j label1
label4:
    li a0, 0
    ret
