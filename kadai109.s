    .globl mystrcat
    .align 2
mystrcat:
    addi sp, sp, -24
    sd ra, 16(sp)
    sd a0, 8(sp)
    sd a1, 0(sp)
    li a4, 0
    jal mystrlen
    ld a1, 0(sp)
    ld a2, 8(sp)
    ld ra, 16(sp)
    add a0, a0, a2
    mv a2, a0
    ld a0, 8(sp)
    j label
label:
    lb a3, 0(a1)
    beqz a3, label1
    sb a3, 0(a2)
    addi a1, a1, 1
    addi a2, a2, 1
    j label
label1:
    sb a3, 0(a2)
    addi sp, sp, 24
    ret
mystrlen:
    lb a3, 0(a0)
    beqz a3, label2
    addi a0, a0, 1
    addi a4, a4, 1
    j mystrlen
    ret
label2:
    mv a0, a4
    ret

    