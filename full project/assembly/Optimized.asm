end_timer:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r0, [r11, #-4]
        bl      clock
        str     r0, [sp, #8]
        ldr     r0, [sp, #8]
        ldr     r1, [r11, #-4]
        sub     r0, r0, r1
        str     r0, [sp, #4]
        ldr     r1, [sp, #4]
        ldr     r0, .LCPI0_0
.LPC0_0:
        add     r0, pc, r0
        bl      printf
        mov     sp, r11
        pop     {r11, lr}
        bx      lr
.LCPI0_0:
        .long   .L.str-(.LPC0_0+8)
main:
        push    {r4, r5, r11, lr}
        add     r11, sp, #8
        sub     sp, sp, #864
        mov     r0, #0
        str     r0, [sp, #68]                   @ 4-byte Spill
        str     r0, [r11, #-12]
        bl      clock
        mov     r1, r0
        ldr     r0, [sp, #68]                   @ 4-byte Reload
        str     r1, [r11, #-16]
        str     r0, [r11, #-24]
        str     r0, [r11, #-28]
        ldr     r1, .LCPI1_0
.LPC1_0:
        add     r1, pc, r1
        add     r0, sp, #76
        mov     r2, #256
        bl      memcpy
        ldr     r0, [sp, #68]                   @ 4-byte Reload
        str     r0, [r11, #-24]
        b       .LBB1_1
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
        ldr     r0, [r11, #-24]
        cmp     r0, #7
        bgt     .LBB1_4
        b       .LBB1_2
.LBB1_2:                                @   in Loop: Header=BB1_1 Depth=1
        ldr     r3, [r11, #-24]
        add     r0, sp, #76
        str     r0, [sp, #56]                   @ 4-byte Spill
        ldr     r2, [r0, r3, lsl #5]
        add     r1, sp, #332
        str     r1, [sp, #60]                   @ 4-byte Spill
        str     r2, [r1, r3, lsl #6]
        ldr     r3, [r11, #-24]
        add     r2, r0, r3, lsl #5
        ldr     r2, [r2, #4]
        add     r3, r1, r3, lsl #6
        str     r2, [r3, #4]
        ldr     r3, [r11, #-24]
        add     r2, r0, r3, lsl #5
        ldr     r2, [r2, #8]
        add     r3, r1, r3, lsl #6
        str     r2, [r3, #8]
        ldr     r3, [r11, #-24]
        add     r2, r0, r3, lsl #5
        ldr     r2, [r2, #12]
        add     r3, r1, r3, lsl #6
        str     r2, [r3, #12]
        ldr     r3, [r11, #-24]
        add     r2, r0, r3, lsl #5
        ldr     r2, [r2, #16]
        add     r3, r1, r3, lsl #6
        str     r2, [r3, #16]
        ldr     r3, [r11, #-24]
        add     r2, r0, r3, lsl #5
        ldr     r2, [r2, #20]
        add     r3, r1, r3, lsl #6
        str     r2, [r3, #20]
        ldr     r3, [r11, #-24]
        add     r2, r0, r3, lsl #5
        ldr     r2, [r2, #24]
        add     r3, r1, r3, lsl #6
        str     r2, [r3, #24]
        ldr     r2, [r11, #-24]
        add     r0, r0, r2, lsl #5
        ldr     r0, [r0, #28]
        add     r2, r1, r2, lsl #6
        str     r0, [r2, #28]
        ldr     r0, [r11, #-24]
        add     r2, r1, r0, lsl #6
        mov     r0, #0
        str     r0, [sp, #64]                   @ 4-byte Spill
        str     r0, [r2, #32]
        ldr     r2, [r11, #-24]
        add     r2, r1, r2, lsl #6
        str     r0, [r2, #36]
        ldr     r2, [r11, #-24]
        add     r2, r1, r2, lsl #6
        str     r0, [r2, #40]
        ldr     r2, [r11, #-24]
        add     r2, r1, r2, lsl #6
        str     r0, [r2, #44]
        ldr     r2, [r11, #-24]
        add     r2, r1, r2, lsl #6
        str     r0, [r2, #48]
        ldr     r2, [r11, #-24]
        add     r2, r1, r2, lsl #6
        str     r0, [r2, #52]
        ldr     r2, [r11, #-24]
        add     r2, r1, r2, lsl #6
        str     r0, [r2, #56]
        ldr     r2, [r11, #-24]
        add     r1, r1, r2, lsl #6
        str     r0, [r1, #60]
        b       .LBB1_3
.LBB1_3:                                @   in Loop: Header=BB1_1 Depth=1
        ldr     r0, [r11, #-24]
        add     r0, r0, #1
        str     r0, [r11, #-24]
        b       .LBB1_1
.LBB1_4:
        mov     r0, #1
        str     r0, [sp, #52]                   @ 4-byte Spill
        str     r0, [sp, #364]
        str     r0, [sp, #432]
        str     r0, [sp, #500]
        str     r0, [sp, #568]
        str     r0, [sp, #636]
        str     r0, [sp, #704]
        str     r0, [sp, #772]
        str     r0, [sp, #840]
        mov     r0, #0
        str     r0, [r11, #-28]
        b       .LBB1_5
.LBB1_5:                                @ =>This Loop Header: Depth=1
        ldr     r0, [r11, #-28]
        cmp     r0, #7
        bgt     .LBB1_14
        b       .LBB1_6
.LBB1_6:                                @   in Loop: Header=BB1_5 Depth=1
        ldr     r1, [r11, #-28]
        add     r0, sp, #332
        add     r0, r0, r1, lsl #6
        ldr     r0, [r0, r1, lsl #2]
        strh    r0, [r11, #-18]
        mov     r0, #0
        str     r0, [r11, #-24]
        b       .LBB1_7
.LBB1_7:                                @   Parent Loop BB1_5 Depth=1
        ldr     r0, [r11, #-24]
        cmp     r0, #7
        bgt     .LBB1_12
        b       .LBB1_8
.LBB1_8:                                @   in Loop: Header=BB1_7 Depth=2
        ldr     r1, [r11, #-24]
        add     r0, sp, #332
        add     r0, r0, r1, lsl #6
        ldr     r1, [r11, #-28]
        ldr     r0, [r0, r1, lsl #2]
        strh    r0, [r11, #-20]
        ldr     r0, [r11, #-24]
        ldr     r1, [r11, #-28]
        cmp     r0, r1
        beq     .LBB1_10
        b       .LBB1_9
.LBB1_9:                                @   in Loop: Header=BB1_7 Depth=2
        ldrsh   r3, [r11, #-18]
        ldr     r1, [r11, #-24]
        add     r2, sp, #332
        str     r2, [sp, #48]                   @ 4-byte Spill
        ldr     r12, [r2, r1, lsl #6]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        ldr     lr, [r2, r3, lsl #6]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r2, r1, lsl #6]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #4]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #4]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #4]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #8]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #8]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #8]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #12]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #12]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #12]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #16]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #16]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #16]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #20]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #20]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #20]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #24]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #24]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #24]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #28]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #28]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #28]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #32]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #32]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #32]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #36]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #36]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #36]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #40]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #40]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #40]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #44]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #44]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #44]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #48]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #48]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #48]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #52]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #52]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #52]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #56]
        mul     r0, r3, r12
        ldrsh   r12, [r11, #-20]
        ldr     r3, [r11, #-28]
        add     r3, r2, r3, lsl #6
        ldr     lr, [r3, #56]
        mul     r3, r12, lr
        sub     r0, r0, r3
        str     r0, [r1, #56]
        ldrsh   r3, [r11, #-18]
        ldr     r0, [r11, #-24]
        add     r1, r2, r0, lsl #6
        ldr     r12, [r1, #60]
        mul     r0, r3, r12
        ldrsh   r3, [r11, #-20]
        ldr     r12, [r11, #-28]
        add     r2, r2, r12, lsl #6
        ldr     r12, [r2, #60]
        mul     r2, r3, r12
        sub     r0, r0, r2
        str     r0, [r1, #60]
        b       .LBB1_10
.LBB1_10:                               @   in Loop: Header=BB1_7 Depth=2
        b       .LBB1_11
.LBB1_11:                               @   in Loop: Header=BB1_7 Depth=2
        ldr     r0, [r11, #-24]
        add     r0, r0, #1
        str     r0, [r11, #-24]
        b       .LBB1_7
.LBB1_12:                               @   in Loop: Header=BB1_5 Depth=1
        b       .LBB1_13
.LBB1_13:                               @   in Loop: Header=BB1_5 Depth=1
        ldr     r0, [r11, #-28]
        add     r0, r0, #1
        str     r0, [r11, #-28]
        b       .LBB1_5
.LBB1_14:
        mov     r0, #0
        str     r0, [r11, #-24]
        b       .LBB1_15
.LBB1_15:                               @ =>This Inner Loop Header: Depth=1
        ldr     r0, [r11, #-24]
        cmp     r0, #7
        bgt     .LBB1_18
        b       .LBB1_16
.LBB1_16:                               @   in Loop: Header=BB1_15 Depth=1
        ldr     r2, [r11, #-24]
        add     r0, sp, #332
        str     r0, [sp, #40]                   @ 4-byte Spill
        add     r1, r0, r2, lsl #6
        str     r1, [sp, #12]                   @ 4-byte Spill
        ldr     r0, [r1, #32]
        lsl     r0, r0, #4
        ldr     r1, [r1, r2, lsl #2]
        bl      __aeabi_idiv
        ldr     r2, [sp, #12]                   @ 4-byte Reload
        mov     r1, r0
        ldr     r0, [sp, #40]                   @ 4-byte Reload
        str     r1, [r2, #32]
        ldr     r2, [r11, #-24]
        add     r1, r0, r2, lsl #6
        str     r1, [sp, #16]                   @ 4-byte Spill
        ldr     r0, [r1, #36]
        lsl     r0, r0, #4
        ldr     r1, [r1, r2, lsl #2]
        bl      __aeabi_idiv
        ldr     r2, [sp, #16]                   @ 4-byte Reload
        mov     r1, r0
        ldr     r0, [sp, #40]                   @ 4-byte Reload
        str     r1, [r2, #36]
        ldr     r2, [r11, #-24]
        add     r1, r0, r2, lsl #6
        str     r1, [sp, #20]                   @ 4-byte Spill
        ldr     r0, [r1, #40]
        lsl     r0, r0, #4
        ldr     r1, [r1, r2, lsl #2]
        bl      __aeabi_idiv
        ldr     r2, [sp, #20]                   @ 4-byte Reload
        mov     r1, r0
        ldr     r0, [sp, #40]                   @ 4-byte Reload
        str     r1, [r2, #40]
        ldr     r2, [r11, #-24]
        add     r1, r0, r2, lsl #6
        str     r1, [sp, #24]                   @ 4-byte Spill
        ldr     r0, [r1, #44]
        lsl     r0, r0, #4
        ldr     r1, [r1, r2, lsl #2]
        bl      __aeabi_idiv
        ldr     r2, [sp, #24]                   @ 4-byte Reload
        mov     r1, r0
        ldr     r0, [sp, #40]                   @ 4-byte Reload
        str     r1, [r2, #44]
        ldr     r2, [r11, #-24]
        add     r1, r0, r2, lsl #6
        str     r1, [sp, #28]                   @ 4-byte Spill
        ldr     r0, [r1, #48]
        lsl     r0, r0, #4
        ldr     r1, [r1, r2, lsl #2]
        bl      __aeabi_idiv
        ldr     r2, [sp, #28]                   @ 4-byte Reload
        mov     r1, r0
        ldr     r0, [sp, #40]                   @ 4-byte Reload
        str     r1, [r2, #48]
        ldr     r2, [r11, #-24]
        add     r1, r0, r2, lsl #6
        str     r1, [sp, #32]                   @ 4-byte Spill
        ldr     r0, [r1, #52]
        lsl     r0, r0, #4
        ldr     r1, [r1, r2, lsl #2]
        bl      __aeabi_idiv
        ldr     r2, [sp, #32]                   @ 4-byte Reload
        mov     r1, r0
        ldr     r0, [sp, #40]                   @ 4-byte Reload
        str     r1, [r2, #52]
        ldr     r2, [r11, #-24]
        add     r1, r0, r2, lsl #6
        str     r1, [sp, #36]                   @ 4-byte Spill
        ldr     r0, [r1, #56]
        lsl     r0, r0, #4
        ldr     r1, [r1, r2, lsl #2]
        bl      __aeabi_idiv
        ldr     r2, [sp, #36]                   @ 4-byte Reload
        mov     r1, r0
        ldr     r0, [sp, #40]                   @ 4-byte Reload
        str     r1, [r2, #56]
        ldr     r2, [r11, #-24]
        add     r1, r0, r2, lsl #6
        str     r1, [sp, #44]                   @ 4-byte Spill
        ldr     r0, [r1, #60]
        lsl     r0, r0, #4
        ldr     r1, [r1, r2, lsl #2]
        bl      __aeabi_idiv
        ldr     r1, [sp, #44]                   @ 4-byte Reload
        str     r0, [r1, #60]
        b       .LBB1_17
.LBB1_17:                               @   in Loop: Header=BB1_15 Depth=1
        ldr     r0, [r11, #-24]
        add     r0, r0, #1
        str     r0, [r11, #-24]
        b       .LBB1_15
.LBB1_18:
        ldr     r0, .LCPI1_1
.LPC1_1:
        add     r0, pc, r0
        bl      printf
        mov     r1, #1073741824
        mov     r2, #0
        str     r2, [sp, #8]                    @ 4-byte Spill
        mov     r3, #1048576
        orr     r3, r3, #1073741824
        mov     r0, r2
        bl      pow
        mov     r2, r0
        ldr     r0, [sp, #8]                    @ 4-byte Reload
        mov     r3, r1
        mov     r1, #267386880
        orr     r1, r1, #805306368
        bl      __aeabi_ddiv
        bl      __aeabi_d2f
        mov     r1, r0
        ldr     r0, [sp, #8]                    @ 4-byte Reload
        str     r1, [sp, #72]
        str     r0, [r11, #-24]
        b       .LBB1_19
.LBB1_19:                               @ =>This Inner Loop Header: Depth=1
        ldr     r0, [r11, #-24]
        cmp     r0, #7
        bgt     .LBB1_22
        b       .LBB1_20
.LBB1_20:                               @   in Loop: Header=BB1_19 Depth=1
        ldr     r1, [r11, #-24]
        add     r0, sp, #332
        str     r0, [sp]                        @ 4-byte Spill
        add     r0, r0, r1, lsl #6
        ldr     r0, [r0, #32]
        bl      __aeabi_i2f
        ldr     r1, [sp, #72]
        bl      __aeabi_fmul
        bl      __aeabi_f2d
        mov     r2, r0
        mov     r3, r1
        ldr     r0, .LCPI1_2
.LPC1_2:
        add     r0, pc, r0
        str     r0, [sp, #4]                    @ 4-byte Spill
        bl      printf
        ldr     r0, [sp]                        @ 4-byte Reload
        ldr     r1, [r11, #-24]
        add     r0, r0, r1, lsl #6
        ldr     r0, [r0, #36]
        bl      __aeabi_i2f
        ldr     r1, [sp, #72]
        bl      __aeabi_fmul
        bl      __aeabi_f2d
        mov     r2, r0
        ldr     r0, [sp, #4]                    @ 4-byte Reload
        mov     r3, r1
        bl      printf
        ldr     r0, [sp]                        @ 4-byte Reload
        ldr     r1, [r11, #-24]
        add     r0, r0, r1, lsl #6
        ldr     r0, [r0, #40]
        bl      __aeabi_i2f
        ldr     r1, [sp, #72]
        bl      __aeabi_fmul
        bl      __aeabi_f2d
        mov     r2, r0
        ldr     r0, [sp, #4]                    @ 4-byte Reload
        mov     r3, r1
        bl      printf
        ldr     r0, [sp]                        @ 4-byte Reload
        ldr     r1, [r11, #-24]
        add     r0, r0, r1, lsl #6
        ldr     r0, [r0, #44]
        bl      __aeabi_i2f
        ldr     r1, [sp, #72]
        bl      __aeabi_fmul
        bl      __aeabi_f2d
        mov     r2, r0
        ldr     r0, [sp, #4]                    @ 4-byte Reload
        mov     r3, r1
        bl      printf
        ldr     r0, [sp]                        @ 4-byte Reload
        ldr     r1, [r11, #-24]
        add     r0, r0, r1, lsl #6
        ldr     r0, [r0, #48]
        bl      __aeabi_i2f
        ldr     r1, [sp, #72]
        bl      __aeabi_fmul
        bl      __aeabi_f2d
        mov     r2, r0
        ldr     r0, [sp, #4]                    @ 4-byte Reload
        mov     r3, r1
        bl      printf
        ldr     r0, [sp]                        @ 4-byte Reload
        ldr     r1, [r11, #-24]
        add     r0, r0, r1, lsl #6
        ldr     r0, [r0, #52]
        bl      __aeabi_i2f
        ldr     r1, [sp, #72]
        bl      __aeabi_fmul
        bl      __aeabi_f2d
        mov     r2, r0
        ldr     r0, [sp, #4]                    @ 4-byte Reload
        mov     r3, r1
        bl      printf
        ldr     r0, [sp]                        @ 4-byte Reload
        ldr     r1, [r11, #-24]
        add     r0, r0, r1, lsl #6
        ldr     r0, [r0, #56]
        bl      __aeabi_i2f
        ldr     r1, [sp, #72]
        bl      __aeabi_fmul
        bl      __aeabi_f2d
        mov     r2, r0
        ldr     r0, [sp, #4]                    @ 4-byte Reload
        mov     r3, r1
        bl      printf
        ldr     r0, [sp]                        @ 4-byte Reload
        ldr     r1, [r11, #-24]
        add     r0, r0, r1, lsl #6
        ldr     r0, [r0, #60]
        bl      __aeabi_i2f
        ldr     r1, [sp, #72]
        bl      __aeabi_fmul
        bl      __aeabi_f2d
        mov     r2, r0
        ldr     r0, [sp, #4]                    @ 4-byte Reload
        mov     r3, r1
        bl      printf
        ldr     r0, .LCPI1_3
.LPC1_3:
        add     r0, pc, r0
        bl      printf
        b       .LBB1_21
.LBB1_21:                               @   in Loop: Header=BB1_19 Depth=1
        ldr     r0, [r11, #-24]
        add     r0, r0, #1
        str     r0, [r11, #-24]
        b       .LBB1_19
.LBB1_22:
        ldr     r0, .LCPI1_4
.LPC1_4:
        add     r0, pc, r0
        bl      printf
        ldr     r0, [r11, #-16]
        bl      end_timer
        ldr     r0, [r11, #-12]
        sub     sp, r11, #8
        pop     {r4, r5, r11, lr}
        bx      lr
.LCPI1_0:
        .long   .L__const.main.matrix-(.LPC1_0+8)
.LCPI1_1:
        .long   .L.str.1-(.LPC1_1+8)
.LCPI1_2:
        .long   .L.str.2-(.LPC1_2+8)
.LCPI1_3:
        .long   .L.str.3-(.LPC1_3+8)
.LCPI1_4:
        .long   .L.str.3-(.LPC1_4+8)
.L.str:
        .asciz  "%d clock cycles to execute\n"

.L__const.main.matrix:
        .long   1                               @ 0x1
        .long   2                               @ 0x2
        .long   8                               @ 0x8
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   8                               @ 0x8
        .long   2                               @ 0x2
        .long   2                               @ 0x2
        .long   0                               @ 0x0
        .long   1                               @ 0x1
        .long   0                               @ 0x0
        .long   7                               @ 0x7
        .long   7                               @ 0x7
        .long   0                               @ 0x0
        .long   2                               @ 0x2
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   1                               @ 0x1
        .long   9                               @ 0x9
        .long   9                               @ 0x9
        .long   2                               @ 0x2
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   1                               @ 0x1
        .long   2                               @ 0x2
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   2                               @ 0x2
        .long   1                               @ 0x1
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   2                               @ 0x2
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   1                               @ 0x1
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   2                               @ 0x2
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   1                               @ 0x1
        .long   0                               @ 0x0
        .long   2                               @ 0x2
        .long   0                               @ 0x0
        .long   0                               @ 0x0
        .long   4                               @ 0x4
        .long   4                               @ 0x4
        .long   4                               @ 0x4
        .long   3                               @ 0x3
        .long   1                               @ 0x1

.L.str.1:
        .asciz  "solution: \n"

.L.str.2:
        .asciz  "[%f]"

.L.str.3:
        .asciz  "\n"