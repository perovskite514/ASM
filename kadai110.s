    .globl fact
    .align 2
fact:
    addi sp, sp, -8
    sw ra, 4(sp)
    sw a0, 0(sp)
    li a2, 0
    ble a0, a2, label1
    li a2, 2
    ble a2, a0, label2
    li a1, 1
    addi sp, sp, 8
    ret
label1:
    li a0, 1
    addi sp, sp, 8
    ret
label2:
    addi a0, a0, -1
    jal fact
    lw a0, 0(sp)
    lw ra, 4(sp)
    addi sp, sp, 8
    mul a1, a1, a0
    mv a0, a1
    ret
    