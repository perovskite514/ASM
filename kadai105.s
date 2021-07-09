    .globl swap_gt
    .align 2
swap_gt:
    lw a2, 0(a0)
    lw a3, 0(a1)
    ble a2, a3, label
    sw a2, 0(a1)
    sw a3, 0(a0)
    ret
label:
    ret
