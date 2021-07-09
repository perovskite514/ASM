    .globl fact
    .align 2
fact:
    # ここに関数の中身を書く
    li a1, 1
label1:
    beqz a0, label2
    mul a1, a1, a0
    addi a0, a0, -1
    j label1
label2:
    mv a0, a1
    # 関数の終了処理
    ret
       bgtz a4, label1
    ret
label1:
    sd a2, 0(a1)
    sd a3, 0(a0)
    ret
    
    li a5, 1
    beq a4, a5, label
    sd a2, 0(a1)
    sd a3, 0(a0)
    ret
label:
    ret
    