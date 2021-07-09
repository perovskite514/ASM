    .globl maxof2
    .align 2
maxof2:
    # ここに関数の中身を書く
    ble a0, a1, label1
    ret
label1:
    mv a0, a1
    # 関数の終了処理
    ret
    