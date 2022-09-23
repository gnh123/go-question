main.main STEXT size=560 args=0x0 locals=0xa8 funcid=0x0 align=0x0
	0x0000 00000 (append-slice.go:3)	TEXT	main.main(SB), ABIInternal, $176-0
	0x0000 00000 (append-slice.go:3)	MOVD	16(g), R16
	0x0004 00004 (append-slice.go:3)	PCDATA	$0, $-2
	0x0004 00004 (append-slice.go:3)	SUB	$48, RSP, R17
	0x0008 00008 (append-slice.go:3)	CMP	R16, R17
	0x000c 00012 (append-slice.go:3)	BLS	540
	0x0010 00016 (append-slice.go:3)	PCDATA	$0, $-1
	0x0010 00016 (append-slice.go:3)	MOVD.W	R30, -176(RSP)
	0x0014 00020 (append-slice.go:3)	MOVD	R29, -8(RSP)
	0x0018 00024 (append-slice.go:3)	SUB	$8, RSP, R29
	0x001c 00028 (append-slice.go:3)	FUNCDATA	ZR, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x001c 00028 (append-slice.go:3)	FUNCDATA	$1, gclocals·4iTf8S0Y91DPquMauNb0/Q==(SB)
	0x001c 00028 (append-slice.go:3)	FUNCDATA	$2, main.main.stkobj(SB)
	0x001c 00028 (append-slice.go:5)	STP	(ZR, ZR), main..autotmp_3-32(SP)
	0x0020 00032 (append-slice.go:5)	STP	(ZR, ZR), main..autotmp_3-16(SP)
	0x0024 00036 (append-slice.go:5)	MOVD	$main..autotmp_3-32(SP), R1
	0x0028 00040 (append-slice.go:5)	PCDATA	$0, $-2
	0x0028 00040 (append-slice.go:5)	MOVB	(R1), R27
	0x002c 00044 (append-slice.go:5)	PCDATA	$0, $-1
	0x002c 00044 (append-slice.go:5)	JMP	48
	0x0030 00048 (append-slice.go:5)	JMP	52
	0x0034 00052 (append-slice.go:5)	MOVD	R1, main.old-56(SP)
	0x0038 00056 (append-slice.go:5)	MOVD	ZR, main.old-48(SP)
	0x003c 00060 (append-slice.go:5)	MOVD	$2, R3
	0x0040 00064 (append-slice.go:5)	MOVD	R3, main.old-40(SP)
	0x0044 00068 (append-slice.go:6)	JMP	72
	0x0048 00072 (append-slice.go:6)	MOVD	$type.string(SB), R0
	0x0050 00080 (append-slice.go:6)	MOVD	ZR, R2
	0x0054 00084 (append-slice.go:6)	MOVD	$5, R4
	0x0058 00088 (append-slice.go:6)	PCDATA	$1, ZR
	0x0058 00088 (append-slice.go:6)	CALL	runtime.growslice(SB)
	0x005c 00092 (append-slice.go:6)	ADD	$5, R1, R5
	0x0060 00096 (append-slice.go:6)	JMP	100
	0x0064 00100 (append-slice.go:6)	MOVD	$5, R1
	0x0068 00104 (append-slice.go:6)	MOVD	R1, 8(R0)
	0x006c 00108 (append-slice.go:6)	ADD	$16, R0, R4
	0x0070 00112 (append-slice.go:6)	ADD	$32, R0, R6
	0x0074 00116 (append-slice.go:6)	ADD	$48, R0, R7
	0x0078 00120 (append-slice.go:6)	ADD	$64, R0, R8
	0x007c 00124 (append-slice.go:6)	PCDATA	ZR, $-2
	0x007c 00124 (append-slice.go:6)	MOVWU	runtime.writeBarrier(SB), R9
	0x0088 00136 (append-slice.go:6)	CBZW	R9, 144
	0x008c 00140 (append-slice.go:6)	JMP	160
	0x0090 00144 (append-slice.go:6)	MOVD	$go.string."hello"(SB), R9
	0x0098 00152 (append-slice.go:6)	MOVD	R9, (R0)
	0x009c 00156 (append-slice.go:6)	JMP	188
	0x00a0 00160 (append-slice.go:6)	MOVD	$go.string."hello"(SB), R3
	0x00a8 00168 (append-slice.go:6)	MOVD	R2, R9
	0x00ac 00172 (append-slice.go:6)	MOVD	R0, R2
	0x00b0 00176 (append-slice.go:6)	CALL	runtime.gcWriteBarrier(SB)
	0x00b4 00180 (append-slice.go:6)	MOVD	R9, R2
	0x00b8 00184 (append-slice.go:6)	JMP	188
	0x00bc 00188 (append-slice.go:6)	PCDATA	ZR, $-1
	0x00bc 00188 (append-slice.go:6)	MOVD	R1, 24(R0)
	0x00c0 00192 (append-slice.go:6)	PCDATA	ZR, $-2
	0x00c0 00192 (append-slice.go:6)	MOVWU	runtime.writeBarrier(SB), R9
	0x00cc 00204 (append-slice.go:6)	CBZW	R9, 212
	0x00d0 00208 (append-slice.go:6)	JMP	228
	0x00d4 00212 (append-slice.go:6)	MOVD	$go.string."world"(SB), R4
	0x00dc 00220 (append-slice.go:6)	MOVD	R4, 16(R0)
	0x00e0 00224 (append-slice.go:6)	JMP	256
	0x00e4 00228 (append-slice.go:6)	MOVD	$go.string."world"(SB), R3
	0x00ec 00236 (append-slice.go:6)	MOVD	R2, R9
	0x00f0 00240 (append-slice.go:6)	MOVD	R4, R2
	0x00f4 00244 (append-slice.go:6)	CALL	runtime.gcWriteBarrier(SB)
	0x00f8 00248 (append-slice.go:6)	MOVD	R9, R2
	0x00fc 00252 (append-slice.go:6)	JMP	256
	0x0100 00256 (append-slice.go:6)	PCDATA	ZR, $-1
	0x0100 00256 (append-slice.go:6)	MOVD	R1, 40(R0)
	0x0104 00260 (append-slice.go:6)	PCDATA	ZR, $-2
	0x0104 00260 (append-slice.go:6)	MOVWU	runtime.writeBarrier(SB), R1
	0x0110 00272 (append-slice.go:6)	CBZW	R1, 280
	0x0114 00276 (append-slice.go:6)	JMP	296
	0x0118 00280 (append-slice.go:6)	MOVD	$go.string."12345"(SB), R1
	0x0120 00288 (append-slice.go:6)	MOVD	R1, 32(R0)
	0x0124 00292 (append-slice.go:6)	JMP	324
	0x0128 00296 (append-slice.go:6)	MOVD	$go.string."12345"(SB), R3
	0x0130 00304 (append-slice.go:6)	MOVD	R2, R1
	0x0134 00308 (append-slice.go:6)	MOVD	R6, R2
	0x0138 00312 (append-slice.go:6)	CALL	runtime.gcWriteBarrier(SB)
	0x013c 00316 (append-slice.go:6)	MOVD	R1, R2
	0x0140 00320 (append-slice.go:6)	JMP	324
	0x0144 00324 (append-slice.go:6)	PCDATA	ZR, $-1
	0x0144 00324 (append-slice.go:6)	MOVD	$6, R1
	0x0148 00328 (append-slice.go:6)	MOVD	R1, 56(R0)
	0x014c 00332 (append-slice.go:6)	PCDATA	ZR, $-2
	0x014c 00332 (append-slice.go:6)	MOVWU	runtime.writeBarrier(SB), R4
	0x0158 00344 (append-slice.go:6)	CBZW	R4, 352
	0x015c 00348 (append-slice.go:6)	JMP	368
	0x0160 00352 (append-slice.go:6)	MOVD	$go.string."abcdef"(SB), R4
	0x0168 00360 (append-slice.go:6)	MOVD	R4, 48(R0)
	0x016c 00364 (append-slice.go:6)	JMP	396
	0x0170 00368 (append-slice.go:6)	MOVD	$go.string."abcdef"(SB), R3
	0x0178 00376 (append-slice.go:6)	MOVD	R2, R4
	0x017c 00380 (append-slice.go:6)	MOVD	R7, R2
	0x0180 00384 (append-slice.go:6)	CALL	runtime.gcWriteBarrier(SB)
	0x0184 00388 (append-slice.go:6)	MOVD	R4, R2
	0x0188 00392 (append-slice.go:6)	JMP	396
	0x018c 00396 (append-slice.go:6)	PCDATA	ZR, $-1
	0x018c 00396 (append-slice.go:6)	MOVD	R1, 72(R0)
	0x0190 00400 (append-slice.go:6)	PCDATA	ZR, $-2
	0x0190 00400 (append-slice.go:6)	MOVWU	runtime.writeBarrier(SB), R1
	0x019c 00412 (append-slice.go:6)	CBZW	R1, 420
	0x01a0 00416 (append-slice.go:6)	JMP	436
	0x01a4 00420 (append-slice.go:6)	MOVD	$go.string."123456"(SB), R1
	0x01ac 00428 (append-slice.go:6)	MOVD	R1, 64(R0)
	0x01b0 00432 (append-slice.go:6)	JMP	464
	0x01b4 00436 (append-slice.go:6)	MOVD	$go.string."123456"(SB), R3
	0x01bc 00444 (append-slice.go:6)	MOVD	R2, R1
	0x01c0 00448 (append-slice.go:6)	MOVD	R8, R2
	0x01c4 00452 (append-slice.go:6)	CALL	runtime.gcWriteBarrier(SB)
	0x01c8 00456 (append-slice.go:6)	MOVD	R1, R2
	0x01cc 00460 (append-slice.go:6)	JMP	464
	0x01d0 00464 (append-slice.go:6)	PCDATA	ZR, $-1
	0x01d0 00464 (append-slice.go:6)	MOVD	R0, main.s-80(SP)
	0x01d4 00468 (append-slice.go:6)	MOVD	R5, main.s-72(SP)
	0x01d8 00472 (append-slice.go:6)	MOVD	R2, main.s-64(SP)
	0x01dc 00476 (append-slice.go:10)	MOVD	R5, main..autotmp_2-88(SP)
	0x01e0 00480 (append-slice.go:10)	PCDATA	$1, $1
	0x01e0 00480 (append-slice.go:10)	CALL	runtime.printlock(SB)
	0x01e4 00484 (append-slice.go:10)	MOVD	main..autotmp_2-88(SP), R0
	0x01e8 00488 (append-slice.go:10)	CALL	runtime.printint(SB)
	0x01ec 00492 (append-slice.go:10)	CALL	runtime.printnl(SB)
	0x01f0 00496 (append-slice.go:10)	CALL	runtime.printunlock(SB)
	0x01f4 00500 (append-slice.go:11)	MOVD	main.s-64(SP), R0
	0x01f8 00504 (append-slice.go:11)	MOVD	R0, main..autotmp_2-88(SP)
	0x01fc 00508 (append-slice.go:11)	PCDATA	$1, ZR
	0x01fc 00508 (append-slice.go:11)	CALL	runtime.printlock(SB)
	0x0200 00512 (append-slice.go:11)	MOVD	main..autotmp_2-88(SP), R0
	0x0204 00516 (append-slice.go:11)	CALL	runtime.printint(SB)
	0x0208 00520 (append-slice.go:11)	CALL	runtime.printnl(SB)
	0x020c 00524 (append-slice.go:11)	CALL	runtime.printunlock(SB)
	0x0210 00528 (append-slice.go:12)	LDP	-8(RSP), (R29, R30)
	0x0214 00532 (append-slice.go:12)	ADD	$176, RSP
	0x0218 00536 (append-slice.go:12)	RET	(R30)
	0x021c 00540 (append-slice.go:12)	NOP
	0x021c 00540 (append-slice.go:3)	PCDATA	$1, $-1
	0x021c 00540 (append-slice.go:3)	PCDATA	$0, $-2
	0x021c 00540 (append-slice.go:3)	MOVD	R30, R3
	0x0220 00544 (append-slice.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x0224 00548 (append-slice.go:3)	PCDATA	$0, $-1
	0x0224 00548 (append-slice.go:3)	JMP	0
	0x0000 90 0b 40 f9 f1 c3 00 d1 3f 02 10 eb 89 10 00 54  ..@.....?......T
	0x0010 fe 0f 15 f8 fd 83 1f f8 fd 23 00 d1 ff ff 08 a9  .........#......
	0x0020 ff ff 09 a9 e1 23 02 91 3b 00 80 39 01 00 00 14  .....#..;..9....
	0x0030 01 00 00 14 e1 3b 00 f9 ff 3f 00 f9 e3 03 7f b2  .....;...?......
	0x0040 e3 43 00 f9 01 00 00 14 00 00 00 90 00 00 00 91  .C..............
	0x0050 02 00 80 d2 a4 00 80 d2 00 00 00 94 25 14 00 91  ............%...
	0x0060 01 00 00 14 a1 00 80 d2 01 04 00 f9 04 40 00 91  .............@..
	0x0070 06 80 00 91 07 c0 00 91 08 00 01 91 1b 00 00 90  ................
	0x0080 7b 03 00 91 69 03 40 b9 49 00 00 34 05 00 00 14  {...i.@.I..4....
	0x0090 09 00 00 90 29 01 00 91 09 00 00 f9 08 00 00 14  ....)...........
	0x00a0 03 00 00 90 63 00 00 91 e9 03 02 aa e2 03 00 aa  ....c...........
	0x00b0 00 00 00 94 e2 03 09 aa 01 00 00 14 01 0c 00 f9  ................
	0x00c0 1b 00 00 90 7b 03 00 91 69 03 40 b9 49 00 00 34  ....{...i.@.I..4
	0x00d0 05 00 00 14 04 00 00 90 84 00 00 91 04 08 00 f9  ................
	0x00e0 08 00 00 14 03 00 00 90 63 00 00 91 e9 03 02 aa  ........c.......
	0x00f0 e2 03 04 aa 00 00 00 94 e2 03 09 aa 01 00 00 14  ................
	0x0100 01 14 00 f9 1b 00 00 90 7b 03 00 91 61 03 40 b9  ........{...a.@.
	0x0110 41 00 00 34 05 00 00 14 01 00 00 90 21 00 00 91  A..4........!...
	0x0120 01 10 00 f9 08 00 00 14 03 00 00 90 63 00 00 91  ............c...
	0x0130 e1 03 02 aa e2 03 06 aa 00 00 00 94 e2 03 01 aa  ................
	0x0140 01 00 00 14 e1 07 7f b2 01 1c 00 f9 1b 00 00 90  ................
	0x0150 7b 03 00 91 64 03 40 b9 44 00 00 34 05 00 00 14  {...d.@.D..4....
	0x0160 04 00 00 90 84 00 00 91 04 18 00 f9 08 00 00 14  ................
	0x0170 03 00 00 90 63 00 00 91 e4 03 02 aa e2 03 07 aa  ....c...........
	0x0180 00 00 00 94 e2 03 04 aa 01 00 00 14 01 24 00 f9  .............$..
	0x0190 1b 00 00 90 7b 03 00 91 61 03 40 b9 41 00 00 34  ....{...a.@.A..4
	0x01a0 05 00 00 14 01 00 00 90 21 00 00 91 01 20 00 f9  ........!.... ..
	0x01b0 08 00 00 14 03 00 00 90 63 00 00 91 e1 03 02 aa  ........c.......
	0x01c0 e2 03 08 aa 00 00 00 94 e2 03 01 aa 01 00 00 14  ................
	0x01d0 e0 2f 00 f9 e5 33 00 f9 e2 37 00 f9 e5 2b 00 f9  ./...3...7...+..
	0x01e0 00 00 00 94 e0 2b 40 f9 00 00 00 94 00 00 00 94  .....+@.........
	0x01f0 00 00 00 94 e0 37 40 f9 e0 2b 00 f9 00 00 00 94  .....7@..+......
	0x0200 e0 2b 40 f9 00 00 00 94 00 00 00 94 00 00 00 94  .+@.............
	0x0210 fd fb 7f a9 ff c3 02 91 c0 03 5f d6 e3 03 1e aa  .........._.....
	0x0220 00 00 00 94 77 ff ff 17 00 00 00 00 00 00 00 00  ....w...........
	rel 72+8 t=3 type.string+0
	rel 88+4 t=9 runtime.growslice+0
	rel 124+8 t=3 runtime.writeBarrier+0
	rel 144+8 t=3 go.string."hello"+0
	rel 160+8 t=3 go.string."hello"+0
	rel 176+4 t=9 runtime.gcWriteBarrier+0
	rel 192+8 t=3 runtime.writeBarrier+0
	rel 212+8 t=3 go.string."world"+0
	rel 228+8 t=3 go.string."world"+0
	rel 244+4 t=9 runtime.gcWriteBarrier+0
	rel 260+8 t=3 runtime.writeBarrier+0
	rel 280+8 t=3 go.string."12345"+0
	rel 296+8 t=3 go.string."12345"+0
	rel 312+4 t=9 runtime.gcWriteBarrier+0
	rel 332+8 t=3 runtime.writeBarrier+0
	rel 352+8 t=3 go.string."abcdef"+0
	rel 368+8 t=3 go.string."abcdef"+0
	rel 384+4 t=9 runtime.gcWriteBarrier+0
	rel 400+8 t=3 runtime.writeBarrier+0
	rel 420+8 t=3 go.string."123456"+0
	rel 436+8 t=3 go.string."123456"+0
	rel 452+4 t=9 runtime.gcWriteBarrier+0
	rel 480+4 t=9 runtime.printlock+0
	rel 488+4 t=9 runtime.printint+0
	rel 492+4 t=9 runtime.printnl+0
	rel 496+4 t=9 runtime.printunlock+0
	rel 508+4 t=9 runtime.printlock+0
	rel 516+4 t=9 runtime.printint+0
	rel 520+4 t=9 runtime.printnl+0
	rel 524+4 t=9 runtime.printunlock+0
	rel 544+4 t=9 runtime.morestack_noctxt+0
type..eq.[2]string STEXT dupok size=336 args=0x10 locals=0x58 funcid=0x0 align=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq.[2]string(SB), DUPOK|ABIInternal, $96-16
	0x0000 00000 (<autogenerated>:1)	MOVD	16(g), R16
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	CMP	R16, RSP
	0x0008 00008 (<autogenerated>:1)	BLS	304
	0x000c 00012 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000c 00012 (<autogenerated>:1)	MOVD.W	R30, -96(RSP)
	0x0010 00016 (<autogenerated>:1)	MOVD	R29, -8(RSP)
	0x0014 00020 (<autogenerated>:1)	SUB	$8, RSP, R29
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	ZR, gclocals·TjPuuCwdlCpTaRQGRKTrYw==(SB)
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$1, gclocals·AzW08EQV0LVfnDEAZer1Nw==(SB)
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$5, type..eq.[2]string.arginfo1(SB)
	0x0018 00024 (<autogenerated>:1)	MOVD	R0, main.p(FP)
	0x001c 00028 (<autogenerated>:1)	MOVD	R1, main.q+8(FP)
	0x0020 00032 (<autogenerated>:1)	MOVB	ZR, main.r-42(SP)
	0x0024 00036 (<autogenerated>:1)	MOVD	main.p(FP), R3
	0x0028 00040 (<autogenerated>:1)	MOVD	8(R3), R3
	0x002c 00044 (<autogenerated>:1)	MOVD	R3, main..autotmp_4-32(SP)
	0x0030 00048 (<autogenerated>:1)	MOVD	main.q+8(FP), R3
	0x0034 00052 (<autogenerated>:1)	MOVD	8(R3), R3
	0x0038 00056 (<autogenerated>:1)	MOVD	R3, main..autotmp_5-40(SP)
	0x003c 00060 (<autogenerated>:1)	MOVD	main..autotmp_4-32(SP), R4
	0x0040 00064 (<autogenerated>:1)	CMP	R4, R3
	0x0044 00068 (<autogenerated>:1)	BEQ	76
	0x0048 00072 (<autogenerated>:1)	JMP	136
	0x004c 00076 (<autogenerated>:1)	JMP	80
	0x0050 00080 (<autogenerated>:1)	MOVD	main.p(FP), R3
	0x0054 00084 (<autogenerated>:1)	MOVD	24(R3), R3
	0x0058 00088 (<autogenerated>:1)	MOVD	R3, main..autotmp_5-40(SP)
	0x005c 00092 (<autogenerated>:1)	MOVD	main.q+8(FP), R3
	0x0060 00096 (<autogenerated>:1)	MOVD	24(R3), R3
	0x0064 00100 (<autogenerated>:1)	MOVD	R3, main..autotmp_4-32(SP)
	0x0068 00104 (<autogenerated>:1)	MOVD	main..autotmp_5-40(SP), R4
	0x006c 00108 (<autogenerated>:1)	CMP	R4, R3
	0x0070 00112 (<autogenerated>:1)	BEQ	120
	0x0074 00116 (<autogenerated>:1)	JMP	132
	0x0078 00120 (<autogenerated>:1)	JMP	124
	0x007c 00124 (<autogenerated>:1)	MOVD	ZR, main..autotmp_3-24(SP)
	0x0080 00128 (<autogenerated>:1)	JMP	164
	0x0084 00132 (<autogenerated>:1)	JMP	140
	0x0088 00136 (<autogenerated>:1)	JMP	140
	0x008c 00140 (<autogenerated>:1)	MOVB	ZR, main.r-42(SP)
	0x0090 00144 (<autogenerated>:1)	JMP	148
	0x0094 00148 (<autogenerated>:1)	MOVBU	main.r-42(SP), R0
	0x0098 00152 (<autogenerated>:1)	LDP	-8(RSP), (R29, R30)
	0x009c 00156 (<autogenerated>:1)	ADD	$96, RSP
	0x00a0 00160 (<autogenerated>:1)	RET	(R30)
	0x00a4 00164 (<autogenerated>:1)	MOVD	main..autotmp_3-24(SP), R3
	0x00a8 00168 (<autogenerated>:1)	CMP	$2, R3
	0x00ac 00172 (<autogenerated>:1)	BLT	180
	0x00b0 00176 (<autogenerated>:1)	JMP	292
	0x00b4 00180 (<autogenerated>:1)	MOVD	main..autotmp_3-24(SP), R3
	0x00b8 00184 (<autogenerated>:1)	MOVD	main.p(FP), R4
	0x00bc 00188 (<autogenerated>:1)	ADD	R3<<4, R4, R3
	0x00c0 00192 (<autogenerated>:1)	MOVD	8(R3), R3
	0x00c4 00196 (<autogenerated>:1)	MOVD	R3, main..autotmp_4-32(SP)
	0x00c8 00200 (<autogenerated>:1)	MOVD	main..autotmp_3-24(SP), R3
	0x00cc 00204 (<autogenerated>:1)	MOVD	main.p(FP), R4
	0x00d0 00208 (<autogenerated>:1)	LSL	$4, R3, R3
	0x00d4 00212 (<autogenerated>:1)	MOVD	(R4)(R3), R3
	0x00d8 00216 (<autogenerated>:1)	MOVD	R3, main..autotmp_7-8(SP)
	0x00dc 00220 (<autogenerated>:1)	MOVD	main..autotmp_3-24(SP), R3
	0x00e0 00224 (<autogenerated>:1)	MOVD	main.q+8(FP), R4
	0x00e4 00228 (<autogenerated>:1)	LSL	$4, R3, R3
	0x00e8 00232 (<autogenerated>:1)	MOVD	(R4)(R3), R1
	0x00ec 00236 (<autogenerated>:1)	MOVD	R1, main..autotmp_8-16(SP)
	0x00f0 00240 (<autogenerated>:1)	MOVD	main..autotmp_4-32(SP), R2
	0x00f4 00244 (<autogenerated>:1)	MOVD	main..autotmp_7-8(SP), R0
	0x00f8 00248 (<autogenerated>:1)	PCDATA	$1, ZR
	0x00f8 00248 (<autogenerated>:1)	CALL	runtime.memequal(SB)
	0x00fc 00252 (<autogenerated>:1)	MOVB	R0, main..autotmp_6-41(SP)
	0x0100 00256 (<autogenerated>:1)	TBNZ	ZR, R0, 264
	0x0104 00260 (<autogenerated>:1)	JMP	288
	0x0108 00264 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0108 00264 (<autogenerated>:1)	JMP	268
	0x010c 00268 (<autogenerated>:1)	MOVD	main..autotmp_3-24(SP), R3
	0x0110 00272 (<autogenerated>:1)	ADD	$1, R3, R3
	0x0114 00276 (<autogenerated>:1)	MOVD	R3, main..autotmp_3-24(SP)
	0x0118 00280 (<autogenerated>:1)	JMP	284
	0x011c 00284 (<autogenerated>:1)	JMP	164
	0x0120 00288 (<autogenerated>:1)	JMP	140
	0x0124 00292 (<autogenerated>:1)	MOVD	$1, R1
	0x0128 00296 (<autogenerated>:1)	MOVB	R1, main.r-42(SP)
	0x012c 00300 (<autogenerated>:1)	JMP	148
	0x0130 00304 (<autogenerated>:1)	NOP
	0x0130 00304 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0130 00304 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0130 00304 (<autogenerated>:1)	MOVD	R0, 8(RSP)
	0x0134 00308 (<autogenerated>:1)	MOVD	R1, 16(RSP)
	0x0138 00312 (<autogenerated>:1)	MOVD	R30, R3
	0x013c 00316 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0140 00320 (<autogenerated>:1)	MOVD	8(RSP), R0
	0x0144 00324 (<autogenerated>:1)	MOVD	16(RSP), R1
	0x0148 00328 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0148 00328 (<autogenerated>:1)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb 49 09 00 54 fe 0f 1a f8  ..@..c0.I..T....
	0x0010 fd 83 1f f8 fd 23 00 d1 e0 37 00 f9 e1 3b 00 f9  .....#...7...;..
	0x0020 ff bb 00 39 e3 37 40 f9 63 04 40 f9 e3 1f 00 f9  ...9.7@.c.@.....
	0x0030 e3 3b 40 f9 63 04 40 f9 e3 1b 00 f9 e4 1f 40 f9  .;@.c.@.......@.
	0x0040 7f 00 04 eb 40 00 00 54 10 00 00 14 01 00 00 14  ....@..T........
	0x0050 e3 37 40 f9 63 0c 40 f9 e3 1b 00 f9 e3 3b 40 f9  .7@.c.@......;@.
	0x0060 63 0c 40 f9 e3 1f 00 f9 e4 1b 40 f9 7f 00 04 eb  c.@.......@.....
	0x0070 40 00 00 54 04 00 00 14 01 00 00 14 ff 23 00 f9  @..T.........#..
	0x0080 09 00 00 14 02 00 00 14 01 00 00 14 ff bb 00 39  ...............9
	0x0090 01 00 00 14 e0 bb 40 39 fd fb 7f a9 ff 83 01 91  ......@9........
	0x00a0 c0 03 5f d6 e3 23 40 f9 7f 08 00 f1 4b 00 00 54  .._..#@.....K..T
	0x00b0 1d 00 00 14 e3 23 40 f9 e4 37 40 f9 83 10 03 8b  .....#@..7@.....
	0x00c0 63 04 40 f9 e3 1f 00 f9 e3 23 40 f9 e4 37 40 f9  c.@......#@..7@.
	0x00d0 63 ec 7c d3 83 68 63 f8 e3 2b 00 f9 e3 23 40 f9  c.|..hc..+...#@.
	0x00e0 e4 3b 40 f9 63 ec 7c d3 81 68 63 f8 e1 27 00 f9  .;@.c.|..hc..'..
	0x00f0 e2 1f 40 f9 e0 2b 40 f9 00 00 00 94 e0 bf 00 39  ..@..+@........9
	0x0100 40 00 00 37 07 00 00 14 01 00 00 14 e3 23 40 f9  @..7.........#@.
	0x0110 63 04 00 91 e3 23 00 f9 01 00 00 14 e2 ff ff 17  c....#..........
	0x0120 db ff ff 17 e1 03 40 b2 e1 bb 00 39 da ff ff 17  ......@....9....
	0x0130 e0 07 00 f9 e1 0b 00 f9 e3 03 1e aa 00 00 00 94  ................
	0x0140 e0 07 40 f9 e1 0b 40 f9 ae ff ff 17 00 00 00 00  ..@...@.........
	rel 248+4 t=9 runtime.memequal+0
	rel 316+4 t=9 runtime.morestack_noctxt+0
go.cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go.cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
go.string."hello" SRODATA dupok size=5
	0x0000 68 65 6c 6c 6f                                   hello
go.string."world" SRODATA dupok size=5
	0x0000 77 6f 72 6c 64                                   world
go.string."12345" SRODATA dupok size=5
	0x0000 31 32 33 34 35                                   12345
go.string."abcdef" SRODATA dupok size=6
	0x0000 61 62 63 64 65 66                                abcdef
go.string."123456" SRODATA dupok size=6
	0x0000 31 32 33 34 35 36                                123456
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
type..eqfunc.[2]string SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq.[2]string+0
type..namedata.*[2]string- SRODATA dupok size=12
	0x0000 00 0a 2a 5b 32 5d 73 74 72 69 6e 67              ..*[2]string
type.*[2]string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 d5 e5 67 a6 08 08 08 36 00 00 00 00 00 00 00 00  ..g....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[2]string-+0
	rel 48+8 t=1 type.[2]string+0
runtime.gcbits.05 SRODATA dupok size=1
	0x0000 05                                               .
type.[2]string SRODATA dupok size=72
	0x0000 20 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00   ...............
	0x0010 56 96 d3 dd 02 08 08 11 00 00 00 00 00 00 00 00  V...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..eqfunc.[2]string+0
	rel 32+8 t=1 runtime.gcbits.05+0
	rel 40+4 t=5 type..namedata.*[2]string-+0
	rel 44+4 t=-32763 type.*[2]string+0
	rel 48+8 t=1 type.string+0
	rel 56+8 t=1 type.[]string+0
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·4iTf8S0Y91DPquMauNb0/Q== SRODATA dupok size=12
	0x0000 02 00 00 00 0a 00 00 00 00 00 01 00              ............
main.main.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 e0 ff ff ff 20 00 00 00  ............ ...
	0x0010 18 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.05+0
gclocals·TjPuuCwdlCpTaRQGRKTrYw== SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
gclocals·AzW08EQV0LVfnDEAZer1Nw== SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 00 00                    ..........
type..eq.[2]string.arginfo1 SRODATA static dupok size=3
	0x0000 08 08 ff                                         ...
