    .globl add128
    .align 2
add128:
    ld a3, 0(a0)
    ld a4, 0(a1)
    li a7, 0
    add a3, a3, a4
    sltiu a5, a4, 0 
    sltu a6, a3, a4 
    bne a5, a6, overflow
label:
    sd a3, 0(a2)
    ld a3, 8(a0)
    ld a4, 8(a1)
    add a3, a3, a7
    add a3, a3, a4
    sd a3, 8(a2)
    ret
overflow:
    li a7, 1
    j label
