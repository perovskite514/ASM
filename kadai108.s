    .globl maxof3
    .align 2
maxof3:
    addi sp, sp, -16
    sd ra, 8(sp)
    sd a2, 0(sp)
    jal maxof2
    ld a2, 0(sp)
    mv a1, a2
    sd a2, 0(sp)
    jal maxof2
    ld ra, 8(sp)
    ld a2, 0(sp)
    addi sp, sp, 16
    ret

maxof2:
    ble a0, a1, label1
    ret
label1:
    mv a0, a1
    ret
