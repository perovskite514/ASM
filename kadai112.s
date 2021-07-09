    .globl dot
    .align 2
dot:
    fld fa2, 0(a1)
    fld fa3, 0(a2)
    fmul.d fa2, fa2, fa3
    fmv.d fa4, fa2
    addi a0, a0, -1
    addi a1, a1, 8
    addi a2, a2, 8
loop:
    beqz a0, label
    fld fa2, 0(a1)
    fld fa3, 0(a2)
    fmul.d fa5, fa2, fa3
    fadd.d fa4, fa4, fa5
    addi a0, a0, -1
    addi a1, a1, 8
    addi a2, a2, 8
    j loop
label:
    fmv.d fa0, fa4
    ret



