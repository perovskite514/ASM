    .globl mystrlen
    .align 2
mystrcat:
    addi sp, sp, -80
    lb a2, 0(a0)
    lb a3, 0(a1)
    sd ra, 72(sp)
    sd a0, 64(sp)
    sd a1, 56(sp)
    sd a2, 48(sp)
    sd a3, 42(sp)
    li a2, 0
    jal mystrlen
    ld a4, 64(sp)
    addi a0, a0, a4
    mv a4, a0
    
    ld a2, 0(sp)
    mv a1, a2
    sd a2, 0(sp)
    ld ra, 8(sp)
    ld a2, 0(sp)
    addi sp, sp, 16
    ret
mystrlen:
    lb a1, 0(a0)
    beqz a1, label
    addi a2, a2, 1
    j mystrlen
label:
    mv a0, a2
    ret
