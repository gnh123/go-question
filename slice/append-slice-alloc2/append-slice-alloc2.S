main.main STEXT size=272 args=0x0 locals=0xa8 funcid=0x0 align=0x0
	0x0000 00000 (append-slice-alloc2.go:3)	TEXT	main.main(SB), ABIInternal, $176-0
	0x0000 00000 (append-slice-alloc2.go:3)	MOVD	16(g), R16
	0x0004 00004 (append-slice-alloc2.go:3)	PCDATA	$0, $-2
	0x0004 00004 (append-slice-alloc2.go:3)	SUB	$48, RSP, R17
	0x0008 00008 (append-slice-alloc2.go:3)	CMP	R16, R17
	0x000c 00012 (append-slice-alloc2.go:3)	BLS	248
	0x0010 00016 (append-slice-alloc2.go:3)	PCDATA	$0, $-1
	0x0010 00016 (append-slice-alloc2.go:3)	MOVD.W	R30, -176(RSP)
	0x0014 00020 (append-slice-alloc2.go:3)	MOVD	R29, -8(RSP)
	0x0018 00024 (append-slice-alloc2.go:3)	SUB	$8, RSP, R29
	0x001c 00028 (append-slice-alloc2.go:3)	FUNCDATA	ZR, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x001c 00028 (append-slice-alloc2.go:3)	FUNCDATA	$1, gclocals·zSOAJ78NQiCJEwXZp/a+Qg==(SB)
	0x001c 00028 (append-slice-alloc2.go:3)	FUNCDATA	$2, main.main.stkobj(SB)
	0x001c 00028 (append-slice-alloc2.go:4)	STP	(ZR, ZR), main..autotmp_3-32(SP)
	0x0020 00032 (append-slice-alloc2.go:4)	STP	(ZR, ZR), main..autotmp_3-16(SP)
	0x0024 00036 (append-slice-alloc2.go:4)	MOVD	$main..autotmp_3-32(SP), R5
	0x0028 00040 (append-slice-alloc2.go:4)	MOVD	R5, main..autotmp_2-88(SP)
	0x002c 00044 (append-slice-alloc2.go:4)	PCDATA	$0, $-2
	0x002c 00044 (append-slice-alloc2.go:4)	MOVB	(R5), R27
	0x0030 00048 (append-slice-alloc2.go:4)	PCDATA	$0, $-1
	0x0030 00048 (append-slice-alloc2.go:4)	MOVD	$5, R6
	0x0034 00052 (append-slice-alloc2.go:4)	MOVD	R6, main..autotmp_3-24(SP)
	0x0038 00056 (append-slice-alloc2.go:4)	MOVD	$go.string."hello"(SB), R7
	0x0040 00064 (append-slice-alloc2.go:4)	MOVD	R7, main..autotmp_3-32(SP)
	0x0044 00068 (append-slice-alloc2.go:4)	PCDATA	$0, $-2
	0x0044 00068 (append-slice-alloc2.go:4)	MOVB	(R5), R27
	0x0048 00072 (append-slice-alloc2.go:4)	PCDATA	$0, $-1
	0x0048 00072 (append-slice-alloc2.go:4)	MOVD	R6, main..autotmp_3-8(SP)
	0x004c 00076 (append-slice-alloc2.go:4)	MOVD	$go.string."world"(SB), R5
	0x0054 00084 (append-slice-alloc2.go:4)	MOVD	R5, main..autotmp_3-16(SP)
	0x0058 00088 (append-slice-alloc2.go:4)	MOVD	main..autotmp_2-88(SP), R1
	0x005c 00092 (append-slice-alloc2.go:4)	PCDATA	$0, $-2
	0x005c 00092 (append-slice-alloc2.go:4)	MOVB	(R1), R27
	0x0060 00096 (append-slice-alloc2.go:4)	PCDATA	$0, $-1
	0x0060 00096 (append-slice-alloc2.go:4)	JMP	100
	0x0064 00100 (append-slice-alloc2.go:4)	MOVD	R1, main.old-80(SP)
	0x0068 00104 (append-slice-alloc2.go:4)	MOVD	$2, R3
	0x006c 00108 (append-slice-alloc2.go:4)	MOVD	R3, main.old-72(SP)
	0x0070 00112 (append-slice-alloc2.go:4)	MOVD	R3, main.old-64(SP)
	0x0074 00116 (append-slice-alloc2.go:5)	JMP	120
	0x0078 00120 (append-slice-alloc2.go:5)	MOVD	$type.string(SB), R0
	0x0080 00128 (append-slice-alloc2.go:5)	MOVD	R3, R2
	0x0084 00132 (append-slice-alloc2.go:5)	MOVD	$3, R4
	0x0088 00136 (append-slice-alloc2.go:5)	PCDATA	$1, ZR
	0x0088 00136 (append-slice-alloc2.go:5)	CALL	runtime.growslice(SB)
	0x008c 00140 (append-slice-alloc2.go:5)	ADD	$1, R1, R5
	0x0090 00144 (append-slice-alloc2.go:5)	JMP	148
	0x0094 00148 (append-slice-alloc2.go:5)	MOVD	$4, R1
	0x0098 00152 (append-slice-alloc2.go:5)	MOVD	R1, 40(R0)
	0x009c 00156 (append-slice-alloc2.go:5)	ADD	$32, R0, R1
	0x00a0 00160 (append-slice-alloc2.go:5)	PCDATA	ZR, $-2
	0x00a0 00160 (append-slice-alloc2.go:5)	MOVWU	runtime.writeBarrier(SB), R4
	0x00ac 00172 (append-slice-alloc2.go:5)	CBZW	R4, 180
	0x00b0 00176 (append-slice-alloc2.go:5)	JMP	196
	0x00b4 00180 (append-slice-alloc2.go:5)	MOVD	$go.string."1234"(SB), R1
	0x00bc 00188 (append-slice-alloc2.go:5)	MOVD	R1, 32(R0)
	0x00c0 00192 (append-slice-alloc2.go:5)	JMP	224
	0x00c4 00196 (append-slice-alloc2.go:5)	MOVD	$go.string."1234"(SB), R3
	0x00cc 00204 (append-slice-alloc2.go:5)	MOVD	R2, R4
	0x00d0 00208 (append-slice-alloc2.go:5)	MOVD	R1, R2
	0x00d4 00212 (append-slice-alloc2.go:5)	CALL	runtime.gcWriteBarrier(SB)
	0x00d8 00216 (append-slice-alloc2.go:5)	MOVD	R4, R2
	0x00dc 00220 (append-slice-alloc2.go:5)	JMP	224
	0x00e0 00224 (append-slice-alloc2.go:5)	PCDATA	ZR, $-1
	0x00e0 00224 (append-slice-alloc2.go:5)	MOVD	R0, main.new-56(SP)
	0x00e4 00228 (append-slice-alloc2.go:5)	MOVD	R5, main.new-48(SP)
	0x00e8 00232 (append-slice-alloc2.go:5)	MOVD	R2, main.new-40(SP)
	0x00ec 00236 (append-slice-alloc2.go:7)	LDP	-8(RSP), (R29, R30)
	0x00f0 00240 (append-slice-alloc2.go:7)	ADD	$176, RSP
	0x00f4 00244 (append-slice-alloc2.go:7)	RET	(R30)
	0x00f8 00248 (append-slice-alloc2.go:7)	NOP
	0x00f8 00248 (append-slice-alloc2.go:3)	PCDATA	$1, $-1
	0x00f8 00248 (append-slice-alloc2.go:3)	PCDATA	$0, $-2
	0x00f8 00248 (append-slice-alloc2.go:3)	MOVD	R30, R3
	0x00fc 00252 (append-slice-alloc2.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x0100 00256 (append-slice-alloc2.go:3)	PCDATA	$0, $-1
	0x0100 00256 (append-slice-alloc2.go:3)	JMP	0
	0x0000 90 0b 40 f9 f1 c3 00 d1 3f 02 10 eb 69 07 00 54  ..@.....?...i..T
	0x0010 fe 0f 15 f8 fd 83 1f f8 fd 23 00 d1 ff ff 08 a9  .........#......
	0x0020 ff ff 09 a9 e5 23 02 91 e5 2b 00 f9 bb 00 80 39  .....#...+.....9
	0x0030 a6 00 80 d2 e6 4b 00 f9 07 00 00 90 e7 00 00 91  .....K..........
	0x0040 e7 47 00 f9 bb 00 80 39 e6 53 00 f9 05 00 00 90  .G.....9.S......
	0x0050 a5 00 00 91 e5 4f 00 f9 e1 2b 40 f9 3b 00 80 39  .....O...+@.;..9
	0x0060 01 00 00 14 e1 2f 00 f9 e3 03 7f b2 e3 33 00 f9  ...../.......3..
	0x0070 e3 37 00 f9 01 00 00 14 00 00 00 90 00 00 00 91  .7..............
	0x0080 e2 03 03 aa e4 07 40 b2 00 00 00 94 25 04 00 91  ......@.....%...
	0x0090 01 00 00 14 e1 03 7e b2 01 14 00 f9 01 80 00 91  ......~.........
	0x00a0 1b 00 00 90 7b 03 00 91 64 03 40 b9 44 00 00 34  ....{...d.@.D..4
	0x00b0 05 00 00 14 01 00 00 90 21 00 00 91 01 10 00 f9  ........!.......
	0x00c0 08 00 00 14 03 00 00 90 63 00 00 91 e4 03 02 aa  ........c.......
	0x00d0 e2 03 01 aa 00 00 00 94 e2 03 04 aa 01 00 00 14  ................
	0x00e0 e0 3b 00 f9 e5 3f 00 f9 e2 43 00 f9 fd fb 7f a9  .;...?...C......
	0x00f0 ff c3 02 91 c0 03 5f d6 e3 03 1e aa 00 00 00 94  ......_.........
	0x0100 c0 ff ff 17 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 56+8 t=3 go.string."hello"+0
	rel 76+8 t=3 go.string."world"+0
	rel 120+8 t=3 type.string+0
	rel 136+4 t=9 runtime.growslice+0
	rel 160+8 t=3 runtime.writeBarrier+0
	rel 180+8 t=3 go.string."1234"+0
	rel 196+8 t=3 go.string."1234"+0
	rel 212+4 t=9 runtime.gcWriteBarrier+0
	rel 252+4 t=9 runtime.morestack_noctxt+0
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
go.string."1234" SRODATA dupok size=4
	0x0000 31 32 33 34                                      1234
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
runtime.gcbits.05 SRODATA dupok size=1
	0x0000 05                                               .
type..namedata.*[2]string- SRODATA dupok size=12
	0x0000 00 0a 2a 5b 32 5d 73 74 72 69 6e 67              ..*[2]string
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
type.*[2]string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 d5 e5 67 a6 08 08 08 36 00 00 00 00 00 00 00 00  ..g....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[2]string-+0
	rel 48+8 t=1 type.[2]string+0
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·zSOAJ78NQiCJEwXZp/a+Qg== SRODATA dupok size=10
	0x0000 01 00 00 00 0b 00 00 00 00 00                    ..........
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
