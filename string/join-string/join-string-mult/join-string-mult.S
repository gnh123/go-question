main.main STEXT size=832 args=0x0 locals=0x1b8 funcid=0x0 align=0x0
	0x0000 00000 (join-string-mult.go:3)	TEXT	main.main(SB), ABIInternal, $448-0
	0x0000 00000 (join-string-mult.go:3)	MOVD	16(g), R16
	0x0004 00004 (join-string-mult.go:3)	PCDATA	$0, $-2
	0x0004 00004 (join-string-mult.go:3)	SUB	$320, RSP, R17
	0x0008 00008 (join-string-mult.go:3)	CMP	R16, R17
	0x000c 00012 (join-string-mult.go:3)	BLS	816
	0x0010 00016 (join-string-mult.go:3)	PCDATA	$0, $-1
	0x0010 00016 (join-string-mult.go:3)	SUB	$448, RSP, R20
	0x0014 00020 (join-string-mult.go:3)	STP	(R29, R30), -8(R20)
	0x0018 00024 (join-string-mult.go:3)	PCDATA	$0, $-2
	0x0018 00024 (join-string-mult.go:3)	MOVD	R20, RSP
	0x001c 00028 (join-string-mult.go:3)	PCDATA	$0, $-1
	0x001c 00028 (join-string-mult.go:3)	SUB	$8, RSP, R29
	0x0020 00032 (join-string-mult.go:3)	FUNCDATA	ZR, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0020 00032 (join-string-mult.go:3)	FUNCDATA	$1, gclocals·PmhFZ55s0RaLOi0nGEVEEQ==(SB)
	0x0020 00032 (join-string-mult.go:3)	FUNCDATA	$2, main.main.stkobj(SB)
	0x0020 00032 (join-string-mult.go:4)	MOVD	$go.string."111111111111111111"(SB), R4
	0x0028 00040 (join-string-mult.go:4)	MOVD	R4, main.a0-200(SP)
	0x002c 00044 (join-string-mult.go:4)	MOVD	$18, R4
	0x0030 00048 (join-string-mult.go:4)	MOVD	R4, main.a0-192(SP)
	0x0034 00052 (join-string-mult.go:5)	MOVD	$go.string."222222222222222222"(SB), R5
	0x003c 00060 (join-string-mult.go:5)	MOVD	R5, main.a1-216(SP)
	0x0040 00064 (join-string-mult.go:5)	MOVD	R4, main.a1-208(SP)
	0x0044 00068 (join-string-mult.go:6)	MOVD	$go.string."3333333333333333333"(SB), R4
	0x004c 00076 (join-string-mult.go:6)	MOVD	R4, main.a2-232(SP)
	0x0050 00080 (join-string-mult.go:6)	MOVD	$19, R4
	0x0054 00084 (join-string-mult.go:6)	MOVD	R4, main.a2-224(SP)
	0x0058 00088 (join-string-mult.go:7)	MOVD	$go.string."4444444444444444444"(SB), R5
	0x0060 00096 (join-string-mult.go:7)	MOVD	R5, main.a3-248(SP)
	0x0064 00100 (join-string-mult.go:7)	MOVD	R4, main.a3-240(SP)
	0x0068 00104 (join-string-mult.go:8)	MOVD	$go.string."5555555555555555555"(SB), R5
	0x0070 00112 (join-string-mult.go:8)	MOVD	R5, main.a4-264(SP)
	0x0074 00116 (join-string-mult.go:8)	MOVD	R4, main.a4-256(SP)
	0x0078 00120 (join-string-mult.go:9)	MOVD	$go.string."6666666666666666666"(SB), R5
	0x0080 00128 (join-string-mult.go:9)	MOVD	R5, main.a5-280(SP)
	0x0084 00132 (join-string-mult.go:9)	MOVD	R4, main.a5-272(SP)
	0x0088 00136 (join-string-mult.go:10)	MOVD	$go.string."777777777777777777777"(SB), R5
	0x0090 00144 (join-string-mult.go:10)	MOVD	R5, main.a6-296(SP)
	0x0094 00148 (join-string-mult.go:10)	MOVD	$21, R5
	0x0098 00152 (join-string-mult.go:10)	MOVD	R5, main.a6-288(SP)
	0x009c 00156 (join-string-mult.go:11)	MOVD	$go.string."88888888888888888888"(SB), R5
	0x00a4 00164 (join-string-mult.go:11)	MOVD	R5, main.a7-312(SP)
	0x00a8 00168 (join-string-mult.go:11)	MOVD	$20, R5
	0x00ac 00172 (join-string-mult.go:11)	MOVD	R5, main.a7-304(SP)
	0x00b0 00176 (join-string-mult.go:12)	MOVD	$go.string."9999999999999999999"(SB), R6
	0x00b8 00184 (join-string-mult.go:12)	MOVD	R6, main.a8-328(SP)
	0x00bc 00188 (join-string-mult.go:12)	MOVD	R4, main.a8-320(SP)
	0x00c0 00192 (join-string-mult.go:13)	MOVD	$go.string."10101010101010101010"(SB), R4
	0x00c8 00200 (join-string-mult.go:13)	MOVD	R4, main.a9-344(SP)
	0x00cc 00204 (join-string-mult.go:13)	MOVD	R5, main.a9-336(SP)
	0x00d0 00208 (join-string-mult.go:15)	MOVD	$main..autotmp_11-160(SP), R16
	0x00d4 00212 (join-string-mult.go:15)	MOVD	$main..autotmp_11-16(SP), R4
	0x00d8 00216 (join-string-mult.go:15)	STP.P	(ZR, ZR), 16(R16)
	0x00dc 00220 (join-string-mult.go:15)	CMP	R4, R16
	0x00e0 00224 (join-string-mult.go:15)	BLE	216
	0x00e4 00228 (join-string-mult.go:15)	MOVD	$main..autotmp_11-160(SP), R4
	0x00e8 00232 (join-string-mult.go:15)	MOVD	R4, main..autotmp_14-368(SP)
	0x00ec 00236 (join-string-mult.go:15)	PCDATA	$0, $-2
	0x00ec 00236 (join-string-mult.go:15)	MOVB	(R4), R27
	0x00f0 00240 (join-string-mult.go:15)	PCDATA	$0, $-1
	0x00f0 00240 (join-string-mult.go:15)	MOVD	main.a0-200(SP), R5
	0x00f4 00244 (join-string-mult.go:15)	MOVD	main.a0-192(SP), R6
	0x00f8 00248 (join-string-mult.go:15)	MOVD	R6, main..autotmp_11-152(SP)
	0x00fc 00252 (join-string-mult.go:15)	MOVD	R5, main..autotmp_11-160(SP)
	0x0100 00256 (join-string-mult.go:15)	PCDATA	$0, $-2
	0x0100 00256 (join-string-mult.go:15)	MOVB	(R4), R27
	0x0104 00260 (join-string-mult.go:15)	PCDATA	$0, $-1
	0x0104 00260 (join-string-mult.go:15)	MOVD	main.a1-216(SP), R4
	0x0108 00264 (join-string-mult.go:15)	MOVD	main.a1-208(SP), R5
	0x010c 00268 (join-string-mult.go:15)	MOVD	R5, main..autotmp_11-136(SP)
	0x0110 00272 (join-string-mult.go:15)	MOVD	R4, main..autotmp_11-144(SP)
	0x0114 00276 (join-string-mult.go:15)	MOVD	main..autotmp_14-368(SP), R4
	0x0118 00280 (join-string-mult.go:15)	PCDATA	$0, $-2
	0x0118 00280 (join-string-mult.go:15)	MOVB	(R4), R27
	0x011c 00284 (join-string-mult.go:15)	PCDATA	$0, $-1
	0x011c 00284 (join-string-mult.go:15)	MOVD	main.a2-232(SP), R3
	0x0120 00288 (join-string-mult.go:15)	MOVD	main.a2-224(SP), R5
	0x0124 00292 (join-string-mult.go:15)	MOVD	R5, 40(R4)
	0x0128 00296 (join-string-mult.go:15)	ADD	$32, R4, R2
	0x012c 00300 (join-string-mult.go:15)	PCDATA	ZR, $-2
	0x012c 00300 (join-string-mult.go:15)	MOVWU	runtime.writeBarrier(SB), R5
	0x0138 00312 (join-string-mult.go:15)	CBZW	R5, 320
	0x013c 00316 (join-string-mult.go:15)	JMP	328
	0x0140 00320 (join-string-mult.go:15)	MOVD	R3, 32(R4)
	0x0144 00324 (join-string-mult.go:15)	JMP	336
	0x0148 00328 (join-string-mult.go:15)	CALL	runtime.gcWriteBarrier(SB)
	0x014c 00332 (join-string-mult.go:15)	JMP	336
	0x0150 00336 (join-string-mult.go:15)	PCDATA	ZR, $-1
	0x0150 00336 (join-string-mult.go:15)	MOVD	main..autotmp_14-368(SP), R4
	0x0154 00340 (join-string-mult.go:15)	PCDATA	$0, $-2
	0x0154 00340 (join-string-mult.go:15)	MOVB	(R4), R27
	0x0158 00344 (join-string-mult.go:15)	PCDATA	$0, $-1
	0x0158 00344 (join-string-mult.go:15)	MOVD	main.a3-248(SP), R3
	0x015c 00348 (join-string-mult.go:15)	MOVD	main.a3-240(SP), R5
	0x0160 00352 (join-string-mult.go:15)	MOVD	R5, 56(R4)
	0x0164 00356 (join-string-mult.go:15)	ADD	$48, R4, R2
	0x0168 00360 (join-string-mult.go:15)	PCDATA	ZR, $-2
	0x0168 00360 (join-string-mult.go:15)	MOVWU	runtime.writeBarrier(SB), R5
	0x0174 00372 (join-string-mult.go:15)	CBZW	R5, 380
	0x0178 00376 (join-string-mult.go:15)	JMP	388
	0x017c 00380 (join-string-mult.go:15)	MOVD	R3, 48(R4)
	0x0180 00384 (join-string-mult.go:15)	JMP	396
	0x0184 00388 (join-string-mult.go:15)	CALL	runtime.gcWriteBarrier(SB)
	0x0188 00392 (join-string-mult.go:15)	JMP	396
	0x018c 00396 (join-string-mult.go:15)	PCDATA	ZR, $-1
	0x018c 00396 (join-string-mult.go:15)	MOVD	main..autotmp_14-368(SP), R4
	0x0190 00400 (join-string-mult.go:15)	PCDATA	$0, $-2
	0x0190 00400 (join-string-mult.go:15)	MOVB	(R4), R27
	0x0194 00404 (join-string-mult.go:15)	PCDATA	$0, $-1
	0x0194 00404 (join-string-mult.go:15)	MOVD	main.a4-264(SP), R3
	0x0198 00408 (join-string-mult.go:15)	MOVD	main.a4-256(SP), R5
	0x019c 00412 (join-string-mult.go:15)	MOVD	R5, 72(R4)
	0x01a0 00416 (join-string-mult.go:15)	ADD	$64, R4, R2
	0x01a4 00420 (join-string-mult.go:15)	PCDATA	ZR, $-2
	0x01a4 00420 (join-string-mult.go:15)	MOVWU	runtime.writeBarrier(SB), R5
	0x01b0 00432 (join-string-mult.go:15)	CBZW	R5, 440
	0x01b4 00436 (join-string-mult.go:15)	JMP	448
	0x01b8 00440 (join-string-mult.go:15)	MOVD	R3, 64(R4)
	0x01bc 00444 (join-string-mult.go:15)	JMP	456
	0x01c0 00448 (join-string-mult.go:15)	CALL	runtime.gcWriteBarrier(SB)
	0x01c4 00452 (join-string-mult.go:15)	JMP	456
	0x01c8 00456 (join-string-mult.go:15)	PCDATA	ZR, $-1
	0x01c8 00456 (join-string-mult.go:15)	MOVD	main..autotmp_14-368(SP), R4
	0x01cc 00460 (join-string-mult.go:15)	PCDATA	$0, $-2
	0x01cc 00460 (join-string-mult.go:15)	MOVB	(R4), R27
	0x01d0 00464 (join-string-mult.go:15)	PCDATA	$0, $-1
	0x01d0 00464 (join-string-mult.go:15)	MOVD	main.a5-280(SP), R3
	0x01d4 00468 (join-string-mult.go:15)	MOVD	main.a5-272(SP), R5
	0x01d8 00472 (join-string-mult.go:15)	MOVD	R5, 88(R4)
	0x01dc 00476 (join-string-mult.go:15)	ADD	$80, R4, R2
	0x01e0 00480 (join-string-mult.go:15)	PCDATA	ZR, $-2
	0x01e0 00480 (join-string-mult.go:15)	MOVWU	runtime.writeBarrier(SB), R5
	0x01ec 00492 (join-string-mult.go:15)	CBZW	R5, 500
	0x01f0 00496 (join-string-mult.go:15)	JMP	508
	0x01f4 00500 (join-string-mult.go:15)	MOVD	R3, 80(R4)
	0x01f8 00504 (join-string-mult.go:15)	JMP	516
	0x01fc 00508 (join-string-mult.go:15)	CALL	runtime.gcWriteBarrier(SB)
	0x0200 00512 (join-string-mult.go:15)	JMP	516
	0x0204 00516 (join-string-mult.go:15)	PCDATA	ZR, $-1
	0x0204 00516 (join-string-mult.go:15)	MOVD	main..autotmp_14-368(SP), R4
	0x0208 00520 (join-string-mult.go:15)	PCDATA	$0, $-2
	0x0208 00520 (join-string-mult.go:15)	MOVB	(R4), R27
	0x020c 00524 (join-string-mult.go:15)	PCDATA	$0, $-1
	0x020c 00524 (join-string-mult.go:15)	MOVD	main.a6-296(SP), R3
	0x0210 00528 (join-string-mult.go:15)	MOVD	main.a6-288(SP), R5
	0x0214 00532 (join-string-mult.go:15)	MOVD	R5, 104(R4)
	0x0218 00536 (join-string-mult.go:15)	ADD	$96, R4, R2
	0x021c 00540 (join-string-mult.go:15)	PCDATA	ZR, $-2
	0x021c 00540 (join-string-mult.go:15)	MOVWU	runtime.writeBarrier(SB), R5
	0x0228 00552 (join-string-mult.go:15)	CBZW	R5, 560
	0x022c 00556 (join-string-mult.go:15)	JMP	568
	0x0230 00560 (join-string-mult.go:15)	MOVD	R3, 96(R4)
	0x0234 00564 (join-string-mult.go:15)	JMP	576
	0x0238 00568 (join-string-mult.go:15)	CALL	runtime.gcWriteBarrier(SB)
	0x023c 00572 (join-string-mult.go:15)	JMP	576
	0x0240 00576 (join-string-mult.go:15)	PCDATA	ZR, $-1
	0x0240 00576 (join-string-mult.go:15)	MOVD	main..autotmp_14-368(SP), R4
	0x0244 00580 (join-string-mult.go:15)	PCDATA	$0, $-2
	0x0244 00580 (join-string-mult.go:15)	MOVB	(R4), R27
	0x0248 00584 (join-string-mult.go:15)	PCDATA	$0, $-1
	0x0248 00584 (join-string-mult.go:15)	MOVD	main.a7-312(SP), R3
	0x024c 00588 (join-string-mult.go:15)	MOVD	main.a7-304(SP), R5
	0x0250 00592 (join-string-mult.go:15)	MOVD	R5, 120(R4)
	0x0254 00596 (join-string-mult.go:15)	ADD	$112, R4, R2
	0x0258 00600 (join-string-mult.go:15)	PCDATA	ZR, $-2
	0x0258 00600 (join-string-mult.go:15)	MOVWU	runtime.writeBarrier(SB), R5
	0x0264 00612 (join-string-mult.go:15)	CBZW	R5, 620
	0x0268 00616 (join-string-mult.go:15)	JMP	628
	0x026c 00620 (join-string-mult.go:15)	MOVD	R3, 112(R4)
	0x0270 00624 (join-string-mult.go:15)	JMP	636
	0x0274 00628 (join-string-mult.go:15)	CALL	runtime.gcWriteBarrier(SB)
	0x0278 00632 (join-string-mult.go:15)	JMP	636
	0x027c 00636 (join-string-mult.go:15)	PCDATA	ZR, $-1
	0x027c 00636 (join-string-mult.go:15)	MOVD	main..autotmp_14-368(SP), R4
	0x0280 00640 (join-string-mult.go:15)	PCDATA	$0, $-2
	0x0280 00640 (join-string-mult.go:15)	MOVB	(R4), R27
	0x0284 00644 (join-string-mult.go:15)	PCDATA	$0, $-1
	0x0284 00644 (join-string-mult.go:15)	MOVD	main.a8-328(SP), R3
	0x0288 00648 (join-string-mult.go:15)	MOVD	main.a8-320(SP), R5
	0x028c 00652 (join-string-mult.go:15)	MOVD	R5, 136(R4)
	0x0290 00656 (join-string-mult.go:15)	ADD	$128, R4, R2
	0x0294 00660 (join-string-mult.go:15)	PCDATA	ZR, $-2
	0x0294 00660 (join-string-mult.go:15)	MOVWU	runtime.writeBarrier(SB), R5
	0x02a0 00672 (join-string-mult.go:15)	CBZW	R5, 680
	0x02a4 00676 (join-string-mult.go:15)	JMP	688
	0x02a8 00680 (join-string-mult.go:15)	MOVD	R3, 128(R4)
	0x02ac 00684 (join-string-mult.go:15)	JMP	696
	0x02b0 00688 (join-string-mult.go:15)	CALL	runtime.gcWriteBarrier(SB)
	0x02b4 00692 (join-string-mult.go:15)	JMP	696
	0x02b8 00696 (join-string-mult.go:15)	PCDATA	ZR, $-1
	0x02b8 00696 (join-string-mult.go:15)	MOVD	main..autotmp_14-368(SP), R4
	0x02bc 00700 (join-string-mult.go:15)	PCDATA	$0, $-2
	0x02bc 00700 (join-string-mult.go:15)	MOVB	(R4), R27
	0x02c0 00704 (join-string-mult.go:15)	PCDATA	$0, $-1
	0x02c0 00704 (join-string-mult.go:15)	MOVD	main.a9-344(SP), R3
	0x02c4 00708 (join-string-mult.go:15)	MOVD	main.a9-336(SP), R5
	0x02c8 00712 (join-string-mult.go:15)	MOVD	R5, 152(R4)
	0x02cc 00716 (join-string-mult.go:15)	ADD	$144, R4, R2
	0x02d0 00720 (join-string-mult.go:15)	PCDATA	ZR, $-2
	0x02d0 00720 (join-string-mult.go:15)	MOVWU	runtime.writeBarrier(SB), R5
	0x02dc 00732 (join-string-mult.go:15)	CBZW	R5, 740
	0x02e0 00736 (join-string-mult.go:15)	JMP	748
	0x02e4 00740 (join-string-mult.go:15)	MOVD	R3, 144(R4)
	0x02e8 00744 (join-string-mult.go:15)	JMP	756
	0x02ec 00748 (join-string-mult.go:15)	CALL	runtime.gcWriteBarrier(SB)
	0x02f0 00752 (join-string-mult.go:15)	JMP	756
	0x02f4 00756 (join-string-mult.go:15)	PCDATA	ZR, $-1
	0x02f4 00756 (join-string-mult.go:15)	MOVD	main..autotmp_14-368(SP), R1
	0x02f8 00760 (join-string-mult.go:15)	PCDATA	$0, $-2
	0x02f8 00760 (join-string-mult.go:15)	MOVB	(R1), R27
	0x02fc 00764 (join-string-mult.go:15)	PCDATA	$0, $-1
	0x02fc 00764 (join-string-mult.go:15)	JMP	768
	0x0300 00768 (join-string-mult.go:15)	MOVD	R1, main..autotmp_13-184(SP)
	0x0304 00772 (join-string-mult.go:15)	MOVD	$10, R3
	0x0308 00776 (join-string-mult.go:15)	MOVD	R3, main..autotmp_13-176(SP)
	0x030c 00780 (join-string-mult.go:15)	MOVD	R3, main..autotmp_13-168(SP)
	0x0310 00784 (join-string-mult.go:15)	MOVD	$main..autotmp_12-400(SP), R0
	0x0314 00788 (join-string-mult.go:15)	MOVD	R3, R2
	0x0318 00792 (join-string-mult.go:15)	PCDATA	$1, ZR
	0x0318 00792 (join-string-mult.go:15)	CALL	runtime.concatstrings(SB)
	0x031c 00796 (join-string-mult.go:15)	MOVD	R0, main.b-360(SP)
	0x0320 00800 (join-string-mult.go:15)	MOVD	R1, main.b-352(SP)
	0x0324 00804 (join-string-mult.go:17)	LDP	-8(RSP), (R29, R30)
	0x0328 00808 (join-string-mult.go:17)	ADD	$448, RSP
	0x032c 00812 (join-string-mult.go:17)	RET	(R30)
	0x0330 00816 (join-string-mult.go:17)	NOP
	0x0330 00816 (join-string-mult.go:3)	PCDATA	$1, $-1
	0x0330 00816 (join-string-mult.go:3)	PCDATA	$0, $-2
	0x0330 00816 (join-string-mult.go:3)	MOVD	R30, R3
	0x0334 00820 (join-string-mult.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x0338 00824 (join-string-mult.go:3)	PCDATA	$0, $-1
	0x0338 00824 (join-string-mult.go:3)	JMP	0
	0x0000 90 0b 40 f9 f1 03 05 d1 3f 02 10 eb 29 19 00 54  ..@.....?...)..T
	0x0010 f4 03 07 d1 9d fa 3f a9 9f 02 00 91 fd 23 00 d1  ......?......#..
	0x0020 04 00 00 90 84 00 00 91 e4 7b 00 f9 44 02 80 d2  .........{..D...
	0x0030 e4 7f 00 f9 05 00 00 90 a5 00 00 91 e5 73 00 f9  .............s..
	0x0040 e4 77 00 f9 04 00 00 90 84 00 00 91 e4 6b 00 f9  .w...........k..
	0x0050 64 02 80 d2 e4 6f 00 f9 05 00 00 90 a5 00 00 91  d....o..........
	0x0060 e5 63 00 f9 e4 67 00 f9 05 00 00 90 a5 00 00 91  .c...g..........
	0x0070 e5 5b 00 f9 e4 5f 00 f9 05 00 00 90 a5 00 00 91  .[..._..........
	0x0080 e5 53 00 f9 e4 57 00 f9 05 00 00 90 a5 00 00 91  .S...W..........
	0x0090 e5 4b 00 f9 a5 02 80 d2 e5 4f 00 f9 05 00 00 90  .K.......O......
	0x00a0 a5 00 00 91 e5 43 00 f9 85 02 80 d2 e5 47 00 f9  .....C.......G..
	0x00b0 06 00 00 90 c6 00 00 91 e6 3b 00 f9 e4 3f 00 f9  .........;...?..
	0x00c0 04 00 00 90 84 00 00 91 e4 33 00 f9 e5 37 00 f9  .........3...7..
	0x00d0 f0 63 04 91 e4 a3 06 91 1f 7e 81 a8 1f 02 04 eb  .c.......~......
	0x00e0 cd ff ff 54 e4 63 04 91 e4 27 00 f9 9b 00 80 39  ...T.c...'.....9
	0x00f0 e5 7b 40 f9 e6 7f 40 f9 e6 93 00 f9 e5 8f 00 f9  .{@...@.........
	0x0100 9b 00 80 39 e4 73 40 f9 e5 77 40 f9 e5 9b 00 f9  ...9.s@..w@.....
	0x0110 e4 97 00 f9 e4 27 40 f9 9b 00 80 39 e3 6b 40 f9  .....'@....9.k@.
	0x0120 e5 6f 40 f9 85 14 00 f9 82 80 00 91 1b 00 00 90  .o@.............
	0x0130 7b 03 00 91 65 03 40 b9 45 00 00 34 03 00 00 14  {...e.@.E..4....
	0x0140 83 10 00 f9 03 00 00 14 00 00 00 94 01 00 00 14  ................
	0x0150 e4 27 40 f9 9b 00 80 39 e3 63 40 f9 e5 67 40 f9  .'@....9.c@..g@.
	0x0160 85 1c 00 f9 82 c0 00 91 1b 00 00 90 7b 03 00 91  ............{...
	0x0170 65 03 40 b9 45 00 00 34 03 00 00 14 83 18 00 f9  e.@.E..4........
	0x0180 03 00 00 14 00 00 00 94 01 00 00 14 e4 27 40 f9  .............'@.
	0x0190 9b 00 80 39 e3 5b 40 f9 e5 5f 40 f9 85 24 00 f9  ...9.[@.._@..$..
	0x01a0 82 00 01 91 1b 00 00 90 7b 03 00 91 65 03 40 b9  ........{...e.@.
	0x01b0 45 00 00 34 03 00 00 14 83 20 00 f9 03 00 00 14  E..4..... ......
	0x01c0 00 00 00 94 01 00 00 14 e4 27 40 f9 9b 00 80 39  .........'@....9
	0x01d0 e3 53 40 f9 e5 57 40 f9 85 2c 00 f9 82 40 01 91  .S@..W@..,...@..
	0x01e0 1b 00 00 90 7b 03 00 91 65 03 40 b9 45 00 00 34  ....{...e.@.E..4
	0x01f0 03 00 00 14 83 28 00 f9 03 00 00 14 00 00 00 94  .....(..........
	0x0200 01 00 00 14 e4 27 40 f9 9b 00 80 39 e3 4b 40 f9  .....'@....9.K@.
	0x0210 e5 4f 40 f9 85 34 00 f9 82 80 01 91 1b 00 00 90  .O@..4..........
	0x0220 7b 03 00 91 65 03 40 b9 45 00 00 34 03 00 00 14  {...e.@.E..4....
	0x0230 83 30 00 f9 03 00 00 14 00 00 00 94 01 00 00 14  .0..............
	0x0240 e4 27 40 f9 9b 00 80 39 e3 43 40 f9 e5 47 40 f9  .'@....9.C@..G@.
	0x0250 85 3c 00 f9 82 c0 01 91 1b 00 00 90 7b 03 00 91  .<..........{...
	0x0260 65 03 40 b9 45 00 00 34 03 00 00 14 83 38 00 f9  e.@.E..4.....8..
	0x0270 03 00 00 14 00 00 00 94 01 00 00 14 e4 27 40 f9  .............'@.
	0x0280 9b 00 80 39 e3 3b 40 f9 e5 3f 40 f9 85 44 00 f9  ...9.;@..?@..D..
	0x0290 82 00 02 91 1b 00 00 90 7b 03 00 91 65 03 40 b9  ........{...e.@.
	0x02a0 45 00 00 34 03 00 00 14 83 40 00 f9 03 00 00 14  E..4.....@......
	0x02b0 00 00 00 94 01 00 00 14 e4 27 40 f9 9b 00 80 39  .........'@....9
	0x02c0 e3 33 40 f9 e5 37 40 f9 85 4c 00 f9 82 40 02 91  .3@..7@..L...@..
	0x02d0 1b 00 00 90 7b 03 00 91 65 03 40 b9 45 00 00 34  ....{...e.@.E..4
	0x02e0 03 00 00 14 83 48 00 f9 03 00 00 14 00 00 00 94  .....H..........
	0x02f0 01 00 00 14 e1 27 40 f9 3b 00 80 39 01 00 00 14  .....'@.;..9....
	0x0300 e1 83 00 f9 43 01 80 d2 e3 87 00 f9 e3 8b 00 f9  ....C...........
	0x0310 e0 a3 00 91 e2 03 03 aa 00 00 00 94 e0 2b 00 f9  .............+..
	0x0320 e1 2f 00 f9 fd fb 7f a9 ff 03 07 91 c0 03 5f d6  ./............_.
	0x0330 e3 03 1e aa 00 00 00 94 32 ff ff 17 00 00 00 00  ........2.......
	rel 32+8 t=3 go.string."111111111111111111"+0
	rel 52+8 t=3 go.string."222222222222222222"+0
	rel 68+8 t=3 go.string."3333333333333333333"+0
	rel 88+8 t=3 go.string."4444444444444444444"+0
	rel 104+8 t=3 go.string."5555555555555555555"+0
	rel 120+8 t=3 go.string."6666666666666666666"+0
	rel 136+8 t=3 go.string."777777777777777777777"+0
	rel 156+8 t=3 go.string."88888888888888888888"+0
	rel 176+8 t=3 go.string."9999999999999999999"+0
	rel 192+8 t=3 go.string."10101010101010101010"+0
	rel 300+8 t=3 runtime.writeBarrier+0
	rel 328+4 t=9 runtime.gcWriteBarrier+0
	rel 360+8 t=3 runtime.writeBarrier+0
	rel 388+4 t=9 runtime.gcWriteBarrier+0
	rel 420+8 t=3 runtime.writeBarrier+0
	rel 448+4 t=9 runtime.gcWriteBarrier+0
	rel 480+8 t=3 runtime.writeBarrier+0
	rel 508+4 t=9 runtime.gcWriteBarrier+0
	rel 540+8 t=3 runtime.writeBarrier+0
	rel 568+4 t=9 runtime.gcWriteBarrier+0
	rel 600+8 t=3 runtime.writeBarrier+0
	rel 628+4 t=9 runtime.gcWriteBarrier+0
	rel 660+8 t=3 runtime.writeBarrier+0
	rel 688+4 t=9 runtime.gcWriteBarrier+0
	rel 720+8 t=3 runtime.writeBarrier+0
	rel 748+4 t=9 runtime.gcWriteBarrier+0
	rel 792+4 t=9 runtime.concatstrings+0
	rel 820+4 t=9 runtime.morestack_noctxt+0
type..eq.[10]string STEXT dupok size=544 args=0x10 locals=0x58 funcid=0x0 align=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq.[10]string(SB), DUPOK|ABIInternal, $96-16
	0x0000 00000 (<autogenerated>:1)	MOVD	16(g), R16
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	CMP	R16, RSP
	0x0008 00008 (<autogenerated>:1)	BLS	508
	0x000c 00012 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000c 00012 (<autogenerated>:1)	MOVD.W	R30, -96(RSP)
	0x0010 00016 (<autogenerated>:1)	MOVD	R29, -8(RSP)
	0x0014 00020 (<autogenerated>:1)	SUB	$8, RSP, R29
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	ZR, gclocals·TjPuuCwdlCpTaRQGRKTrYw==(SB)
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$1, gclocals·AzW08EQV0LVfnDEAZer1Nw==(SB)
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$5, type..eq.[10]string.arginfo1(SB)
	0x0018 00024 (<autogenerated>:1)	MOVD	R0, main.p(FP)
	0x001c 00028 (<autogenerated>:1)	MOVD	R1, main.q+8(FP)
	0x0020 00032 (<autogenerated>:1)	MOVB	ZR, main.r-50(SP)
	0x0024 00036 (<autogenerated>:1)	MOVD	ZR, main..autotmp_3-24(SP)
	0x0028 00040 (<autogenerated>:1)	JMP	44
	0x002c 00044 (<autogenerated>:1)	MOVD	main..autotmp_3-24(SP), R3
	0x0030 00048 (<autogenerated>:1)	CMP	$9, R3
	0x0034 00052 (<autogenerated>:1)	BLT	60
	0x0038 00056 (<autogenerated>:1)	JMP	288
	0x003c 00060 (<autogenerated>:1)	MOVD	main..autotmp_3-24(SP), R3
	0x0040 00064 (<autogenerated>:1)	MOVD	main.p(FP), R4
	0x0044 00068 (<autogenerated>:1)	ADD	R3<<4, R4, R3
	0x0048 00072 (<autogenerated>:1)	MOVD	8(R3), R3
	0x004c 00076 (<autogenerated>:1)	MOVD	R3, main..autotmp_5-40(SP)
	0x0050 00080 (<autogenerated>:1)	MOVD	main..autotmp_3-24(SP), R3
	0x0054 00084 (<autogenerated>:1)	MOVD	main.q+8(FP), R4
	0x0058 00088 (<autogenerated>:1)	ADD	R3<<4, R4, R3
	0x005c 00092 (<autogenerated>:1)	MOVD	8(R3), R3
	0x0060 00096 (<autogenerated>:1)	MOVD	R3, main..autotmp_6-48(SP)
	0x0064 00100 (<autogenerated>:1)	MOVD	main..autotmp_5-40(SP), R4
	0x0068 00104 (<autogenerated>:1)	CMP	R4, R3
	0x006c 00108 (<autogenerated>:1)	BEQ	116
	0x0070 00112 (<autogenerated>:1)	JMP	284
	0x0074 00116 (<autogenerated>:1)	JMP	120
	0x0078 00120 (<autogenerated>:1)	MOVD	main..autotmp_3-24(SP), R3
	0x007c 00124 (<autogenerated>:1)	ADD	$1, R3, R3
	0x0080 00128 (<autogenerated>:1)	MOVD	R3, main..autotmp_3-24(SP)
	0x0084 00132 (<autogenerated>:1)	MOVD	main.p(FP), R4
	0x0088 00136 (<autogenerated>:1)	ADD	R3<<4, R4, R3
	0x008c 00140 (<autogenerated>:1)	MOVD	8(R3), R3
	0x0090 00144 (<autogenerated>:1)	MOVD	R3, main..autotmp_6-48(SP)
	0x0094 00148 (<autogenerated>:1)	MOVD	main..autotmp_3-24(SP), R3
	0x0098 00152 (<autogenerated>:1)	MOVD	main.q+8(FP), R4
	0x009c 00156 (<autogenerated>:1)	ADD	R3<<4, R4, R3
	0x00a0 00160 (<autogenerated>:1)	MOVD	8(R3), R3
	0x00a4 00164 (<autogenerated>:1)	MOVD	R3, main..autotmp_5-40(SP)
	0x00a8 00168 (<autogenerated>:1)	MOVD	main..autotmp_6-48(SP), R4
	0x00ac 00172 (<autogenerated>:1)	CMP	R4, R3
	0x00b0 00176 (<autogenerated>:1)	BEQ	184
	0x00b4 00180 (<autogenerated>:1)	JMP	280
	0x00b8 00184 (<autogenerated>:1)	JMP	188
	0x00bc 00188 (<autogenerated>:1)	MOVD	main..autotmp_3-24(SP), R3
	0x00c0 00192 (<autogenerated>:1)	ADD	$1, R3, R3
	0x00c4 00196 (<autogenerated>:1)	MOVD	R3, main..autotmp_3-24(SP)
	0x00c8 00200 (<autogenerated>:1)	MOVD	main.p(FP), R4
	0x00cc 00204 (<autogenerated>:1)	ADD	R3<<4, R4, R3
	0x00d0 00208 (<autogenerated>:1)	MOVD	8(R3), R3
	0x00d4 00212 (<autogenerated>:1)	MOVD	R3, main..autotmp_5-40(SP)
	0x00d8 00216 (<autogenerated>:1)	MOVD	main..autotmp_3-24(SP), R3
	0x00dc 00220 (<autogenerated>:1)	MOVD	main.q+8(FP), R4
	0x00e0 00224 (<autogenerated>:1)	ADD	R3<<4, R4, R3
	0x00e4 00228 (<autogenerated>:1)	MOVD	8(R3), R3
	0x00e8 00232 (<autogenerated>:1)	MOVD	R3, main..autotmp_6-48(SP)
	0x00ec 00236 (<autogenerated>:1)	MOVD	main..autotmp_5-40(SP), R4
	0x00f0 00240 (<autogenerated>:1)	CMP	R4, R3
	0x00f4 00244 (<autogenerated>:1)	BEQ	252
	0x00f8 00248 (<autogenerated>:1)	JMP	276
	0x00fc 00252 (<autogenerated>:1)	JMP	256
	0x0100 00256 (<autogenerated>:1)	MOVD	main..autotmp_3-24(SP), R3
	0x0104 00260 (<autogenerated>:1)	ADD	$1, R3, R3
	0x0108 00264 (<autogenerated>:1)	MOVD	R3, main..autotmp_3-24(SP)
	0x010c 00268 (<autogenerated>:1)	JMP	272
	0x0110 00272 (<autogenerated>:1)	JMP	44
	0x0114 00276 (<autogenerated>:1)	JMP	344
	0x0118 00280 (<autogenerated>:1)	JMP	344
	0x011c 00284 (<autogenerated>:1)	JMP	344
	0x0120 00288 (<autogenerated>:1)	MOVD	main.p(FP), R3
	0x0124 00292 (<autogenerated>:1)	MOVD	152(R3), R3
	0x0128 00296 (<autogenerated>:1)	MOVD	R3, main..autotmp_6-48(SP)
	0x012c 00300 (<autogenerated>:1)	MOVD	main.q+8(FP), R3
	0x0130 00304 (<autogenerated>:1)	MOVD	152(R3), R3
	0x0134 00308 (<autogenerated>:1)	MOVD	R3, main..autotmp_5-40(SP)
	0x0138 00312 (<autogenerated>:1)	MOVD	main..autotmp_6-48(SP), R4
	0x013c 00316 (<autogenerated>:1)	CMP	R4, R3
	0x0140 00320 (<autogenerated>:1)	BEQ	328
	0x0144 00324 (<autogenerated>:1)	JMP	340
	0x0148 00328 (<autogenerated>:1)	JMP	332
	0x014c 00332 (<autogenerated>:1)	MOVD	ZR, main..autotmp_4-32(SP)
	0x0150 00336 (<autogenerated>:1)	JMP	368
	0x0154 00340 (<autogenerated>:1)	JMP	344
	0x0158 00344 (<autogenerated>:1)	MOVB	ZR, main.r-50(SP)
	0x015c 00348 (<autogenerated>:1)	JMP	352
	0x0160 00352 (<autogenerated>:1)	MOVBU	main.r-50(SP), R0
	0x0164 00356 (<autogenerated>:1)	LDP	-8(RSP), (R29, R30)
	0x0168 00360 (<autogenerated>:1)	ADD	$96, RSP
	0x016c 00364 (<autogenerated>:1)	RET	(R30)
	0x0170 00368 (<autogenerated>:1)	MOVD	main..autotmp_4-32(SP), R3
	0x0174 00372 (<autogenerated>:1)	CMP	$10, R3
	0x0178 00376 (<autogenerated>:1)	BLT	384
	0x017c 00380 (<autogenerated>:1)	JMP	496
	0x0180 00384 (<autogenerated>:1)	MOVD	main..autotmp_4-32(SP), R3
	0x0184 00388 (<autogenerated>:1)	MOVD	main.p(FP), R4
	0x0188 00392 (<autogenerated>:1)	ADD	R3<<4, R4, R3
	0x018c 00396 (<autogenerated>:1)	MOVD	8(R3), R3
	0x0190 00400 (<autogenerated>:1)	MOVD	R3, main..autotmp_5-40(SP)
	0x0194 00404 (<autogenerated>:1)	MOVD	main..autotmp_4-32(SP), R3
	0x0198 00408 (<autogenerated>:1)	MOVD	main.p(FP), R4
	0x019c 00412 (<autogenerated>:1)	LSL	$4, R3, R3
	0x01a0 00416 (<autogenerated>:1)	MOVD	(R4)(R3), R3
	0x01a4 00420 (<autogenerated>:1)	MOVD	R3, main..autotmp_8-8(SP)
	0x01a8 00424 (<autogenerated>:1)	MOVD	main..autotmp_4-32(SP), R3
	0x01ac 00428 (<autogenerated>:1)	MOVD	main.q+8(FP), R4
	0x01b0 00432 (<autogenerated>:1)	LSL	$4, R3, R3
	0x01b4 00436 (<autogenerated>:1)	MOVD	(R4)(R3), R1
	0x01b8 00440 (<autogenerated>:1)	MOVD	R1, main..autotmp_9-16(SP)
	0x01bc 00444 (<autogenerated>:1)	MOVD	main..autotmp_5-40(SP), R2
	0x01c0 00448 (<autogenerated>:1)	MOVD	main..autotmp_8-8(SP), R0
	0x01c4 00452 (<autogenerated>:1)	PCDATA	$1, ZR
	0x01c4 00452 (<autogenerated>:1)	CALL	runtime.memequal(SB)
	0x01c8 00456 (<autogenerated>:1)	MOVB	R0, main..autotmp_7-49(SP)
	0x01cc 00460 (<autogenerated>:1)	TBNZ	ZR, R0, 468
	0x01d0 00464 (<autogenerated>:1)	JMP	492
	0x01d4 00468 (<autogenerated>:1)	PCDATA	$1, $-1
	0x01d4 00468 (<autogenerated>:1)	JMP	472
	0x01d8 00472 (<autogenerated>:1)	MOVD	main..autotmp_4-32(SP), R3
	0x01dc 00476 (<autogenerated>:1)	ADD	$1, R3, R3
	0x01e0 00480 (<autogenerated>:1)	MOVD	R3, main..autotmp_4-32(SP)
	0x01e4 00484 (<autogenerated>:1)	JMP	488
	0x01e8 00488 (<autogenerated>:1)	JMP	368
	0x01ec 00492 (<autogenerated>:1)	JMP	344
	0x01f0 00496 (<autogenerated>:1)	MOVD	$1, R1
	0x01f4 00500 (<autogenerated>:1)	MOVB	R1, main.r-50(SP)
	0x01f8 00504 (<autogenerated>:1)	JMP	352
	0x01fc 00508 (<autogenerated>:1)	NOP
	0x01fc 00508 (<autogenerated>:1)	PCDATA	$1, $-1
	0x01fc 00508 (<autogenerated>:1)	PCDATA	$0, $-2
	0x01fc 00508 (<autogenerated>:1)	MOVD	R0, 8(RSP)
	0x0200 00512 (<autogenerated>:1)	MOVD	R1, 16(RSP)
	0x0204 00516 (<autogenerated>:1)	MOVD	R30, R3
	0x0208 00520 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x020c 00524 (<autogenerated>:1)	MOVD	8(RSP), R0
	0x0210 00528 (<autogenerated>:1)	MOVD	16(RSP), R1
	0x0214 00532 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0214 00532 (<autogenerated>:1)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb a9 0f 00 54 fe 0f 1a f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 e0 37 00 f9 e1 3b 00 f9  .....#...7...;..
	0x0020 ff 9b 00 39 ff 23 00 f9 01 00 00 14 e3 23 40 f9  ...9.#.......#@.
	0x0030 7f 24 00 f1 4b 00 00 54 3a 00 00 14 e3 23 40 f9  .$..K..T:....#@.
	0x0040 e4 37 40 f9 83 10 03 8b 63 04 40 f9 e3 1b 00 f9  .7@.....c.@.....
	0x0050 e3 23 40 f9 e4 3b 40 f9 83 10 03 8b 63 04 40 f9  .#@..;@.....c.@.
	0x0060 e3 17 00 f9 e4 1b 40 f9 7f 00 04 eb 40 00 00 54  ......@.....@..T
	0x0070 2b 00 00 14 01 00 00 14 e3 23 40 f9 63 04 00 91  +........#@.c...
	0x0080 e3 23 00 f9 e4 37 40 f9 83 10 03 8b 63 04 40 f9  .#...7@.....c.@.
	0x0090 e3 17 00 f9 e3 23 40 f9 e4 3b 40 f9 83 10 03 8b  .....#@..;@.....
	0x00a0 63 04 40 f9 e3 1b 00 f9 e4 17 40 f9 7f 00 04 eb  c.@.......@.....
	0x00b0 40 00 00 54 19 00 00 14 01 00 00 14 e3 23 40 f9  @..T.........#@.
	0x00c0 63 04 00 91 e3 23 00 f9 e4 37 40 f9 83 10 03 8b  c....#...7@.....
	0x00d0 63 04 40 f9 e3 1b 00 f9 e3 23 40 f9 e4 3b 40 f9  c.@......#@..;@.
	0x00e0 83 10 03 8b 63 04 40 f9 e3 17 00 f9 e4 1b 40 f9  ....c.@.......@.
	0x00f0 7f 00 04 eb 40 00 00 54 07 00 00 14 01 00 00 14  ....@..T........
	0x0100 e3 23 40 f9 63 04 00 91 e3 23 00 f9 01 00 00 14  .#@.c....#......
	0x0110 c7 ff ff 17 11 00 00 14 10 00 00 14 0f 00 00 14  ................
	0x0120 e3 37 40 f9 63 4c 40 f9 e3 17 00 f9 e3 3b 40 f9  .7@.cL@......;@.
	0x0130 63 4c 40 f9 e3 1b 00 f9 e4 17 40 f9 7f 00 04 eb  cL@.......@.....
	0x0140 40 00 00 54 04 00 00 14 01 00 00 14 ff 1f 00 f9  @..T............
	0x0150 08 00 00 14 01 00 00 14 ff 9b 00 39 01 00 00 14  ...........9....
	0x0160 e0 9b 40 39 fd fb 7f a9 ff 83 01 91 c0 03 5f d6  ..@9.........._.
	0x0170 e3 1f 40 f9 7f 28 00 f1 4b 00 00 54 1d 00 00 14  ..@..(..K..T....
	0x0180 e3 1f 40 f9 e4 37 40 f9 83 10 03 8b 63 04 40 f9  ..@..7@.....c.@.
	0x0190 e3 1b 00 f9 e3 1f 40 f9 e4 37 40 f9 63 ec 7c d3  ......@..7@.c.|.
	0x01a0 83 68 63 f8 e3 2b 00 f9 e3 1f 40 f9 e4 3b 40 f9  .hc..+....@..;@.
	0x01b0 63 ec 7c d3 81 68 63 f8 e1 27 00 f9 e2 1b 40 f9  c.|..hc..'....@.
	0x01c0 e0 2b 40 f9 00 00 00 94 e0 9f 00 39 40 00 00 37  .+@........9@..7
	0x01d0 07 00 00 14 01 00 00 14 e3 1f 40 f9 63 04 00 91  ..........@.c...
	0x01e0 e3 1f 00 f9 01 00 00 14 e2 ff ff 17 db ff ff 17  ................
	0x01f0 e1 03 40 b2 e1 9b 00 39 da ff ff 17 e0 07 00 f9  ..@....9........
	0x0200 e1 0b 00 f9 e3 03 1e aa 00 00 00 94 e0 07 40 f9  ..............@.
	0x0210 e1 0b 40 f9 7b ff ff 17 00 00 00 00 00 00 00 00  ..@.{...........
	rel 452+4 t=9 runtime.memequal+0
	rel 520+4 t=9 runtime.morestack_noctxt+0
go.cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go.cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
go.string."111111111111111111" SRODATA dupok size=18
	0x0000 31 31 31 31 31 31 31 31 31 31 31 31 31 31 31 31  1111111111111111
	0x0010 31 31                                            11
go.string."222222222222222222" SRODATA dupok size=18
	0x0000 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32  2222222222222222
	0x0010 32 32                                            22
go.string."3333333333333333333" SRODATA dupok size=19
	0x0000 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33  3333333333333333
	0x0010 33 33 33                                         333
go.string."4444444444444444444" SRODATA dupok size=19
	0x0000 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34  4444444444444444
	0x0010 34 34 34                                         444
go.string."5555555555555555555" SRODATA dupok size=19
	0x0000 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35  5555555555555555
	0x0010 35 35 35                                         555
go.string."6666666666666666666" SRODATA dupok size=19
	0x0000 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36  6666666666666666
	0x0010 36 36 36                                         666
go.string."777777777777777777777" SRODATA dupok size=21
	0x0000 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37  7777777777777777
	0x0010 37 37 37 37 37                                   77777
go.string."88888888888888888888" SRODATA dupok size=20
	0x0000 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38  8888888888888888
	0x0010 38 38 38 38                                      8888
go.string."9999999999999999999" SRODATA dupok size=19
	0x0000 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39  9999999999999999
	0x0010 39 39 39                                         999
go.string."10101010101010101010" SRODATA dupok size=20
	0x0000 31 30 31 30 31 30 31 30 31 30 31 30 31 30 31 30  1010101010101010
	0x0010 31 30 31 30                                      1010
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*[]string- SRODATA dupok size=11
	0x0000 00 09 2a 5b 5d 73 74 72 69 6e 67                 ..*[]string
type.*[]string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 76 be 68 d5 08 08 08 36 00 00 00 00 00 00 00 00  v.h....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]string-+0
	rel 48+8 t=1 type.[]string+0
type.[]string SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 b5 0e fe e8 02 08 08 17 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]string-+0
	rel 44+4 t=-32763 type.*[]string+0
	rel 48+8 t=1 type.string+0
type..eqfunc.[10]string SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq.[10]string+0
runtime.gcbits.555505 SRODATA dupok size=3
	0x0000 55 55 05                                         UU.
type..namedata.*[10]string- SRODATA dupok size=13
	0x0000 00 0b 2a 5b 31 30 5d 73 74 72 69 6e 67           ..*[10]string
type.[10]string SRODATA dupok size=72
	0x0000 a0 00 00 00 00 00 00 00 98 00 00 00 00 00 00 00  ................
	0x0010 ef 65 3c 67 02 08 08 11 00 00 00 00 00 00 00 00  .e<g............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 0a 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..eqfunc.[10]string+0
	rel 32+8 t=1 runtime.gcbits.555505+0
	rel 40+4 t=5 type..namedata.*[10]string-+0
	rel 44+4 t=-32763 type.*[10]string+0
	rel 48+8 t=1 type.string+0
	rel 56+8 t=1 type.[]string+0
type.*[10]string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 e4 1d d9 46 08 08 08 36 00 00 00 00 00 00 00 00  ...F...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[10]string-+0
	rel 48+8 t=1 type.[10]string+0
type..namedata.*[]uint8- SRODATA dupok size=10
	0x0000 00 08 2a 5b 5d 75 69 6e 74 38                    ..*[]uint8
type.*[]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 1f bb cf 43 08 08 08 36 00 00 00 00 00 00 00 00  ...C...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]uint8-+0
	rel 48+8 t=1 type.[]uint8+0
type.[]uint8 SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 65 40 04 81 02 08 08 17 00 00 00 00 00 00 00 00  e@..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]uint8-+0
	rel 44+4 t=-32763 type.*[]uint8+0
	rel 48+8 t=1 type.uint8+0
type..eqfunc32 SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  ........ .......
	rel 0+8 t=1 runtime.memequal_varlen+0
type..namedata.*[32]uint8- SRODATA dupok size=12
	0x0000 00 0a 2a 5b 33 32 5d 75 69 6e 74 38              ..*[32]uint8
type.*[32]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 26 0d b3 9e 08 08 08 36 00 00 00 00 00 00 00 00  &......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[32]uint8-+0
	rel 48+8 t=1 type.[32]uint8+0
runtime.gcbits. SRODATA dupok size=0
type.[32]uint8 SRODATA dupok size=72
	0x0000 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ...............
	0x0010 aa ab 93 92 0a 01 01 11 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 20 00 00 00 00 00 00 00                           .......
	rel 24+8 t=1 type..eqfunc32+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[32]uint8-+0
	rel 44+4 t=-32763 type.*[32]uint8+0
	rel 48+8 t=1 type.uint8+0
	rel 56+8 t=1 type.[]uint8+0
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·PmhFZ55s0RaLOi0nGEVEEQ== SRODATA dupok size=14
	0x0000 01 00 00 00 2e 00 00 00 00 00 00 00 00 00        ..............
main.main.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 60 ff ff ff a0 00 00 00  ........`.......
	0x0010 98 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.555505+0
gclocals·TjPuuCwdlCpTaRQGRKTrYw== SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
gclocals·AzW08EQV0LVfnDEAZer1Nw== SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 00 00                    ..........
type..eq.[10]string.arginfo1 SRODATA static dupok size=3
	0x0000 08 08 ff                                         ...
