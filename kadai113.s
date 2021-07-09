    .globl itoa10
    .align 2
itoa10:
    beqz a0, label5
    li a2, 0
    mv a6, a1
    ble a2, a0, label1
label:
    li a2, -1
    li a3, 45
    sb a3, 0(a1)
    addi a1, a1, 1
    mul a0, a0, a2
label1:
    mv a2, a0
    li a3, 0
    li a4, 10
label2:
    beqz a2, label3
    div a2, a2, a4
    addi a3, a3, 1
    addi a1, a1, 1
    j label2
label3:
    beqz a3, label4
    rem a5, a0, a4
    addi a5, a5, 48
    addi a1, a1, -1
    addi a3, a3, -1
    sb a5, 0(a1)
    div a0, a0, a4
    j label3
label4:
    mv a0, a6
    ret
label5:
    addi a0, a0, 48
    sb a0, 0(a1)
    mv a0, a1
    ret


