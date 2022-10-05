main.main STEXT size=176 args=0x0 locals=0x38 funcid=0x0 align=0x0
	0x0000 00000 (gmp.go:3)	TEXT	main.main(SB), ABIInternal, $64-0
	0x0000 00000 (gmp.go:3)	MOVD	16(g), R16
	0x0004 00004 (gmp.go:3)	PCDATA	$0, $-2
	0x0004 00004 (gmp.go:3)	CMP	R16, RSP
	0x0008 00008 (gmp.go:3)	BLS	160
	0x000c 00012 (gmp.go:3)	PCDATA	$0, $-1
	0x000c 00012 (gmp.go:3)	MOVD.W	R30, -64(RSP)
	0x0010 00016 (gmp.go:3)	MOVD	R29, -8(RSP)
	0x0014 00020 (gmp.go:3)	SUB	$8, RSP, R29
	0x0018 00024 (gmp.go:3)	FUNCDATA	ZR, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0018 00024 (gmp.go:3)	FUNCDATA	$1, gclocals·u97U1TPSCOlmat2W1oBl9Q==(SB)
	0x0018 00024 (gmp.go:4)	MOVD	$type.chan bool(SB), R0
	0x0020 00032 (gmp.go:4)	MOVD	ZR, R1
	0x0024 00036 (gmp.go:4)	PCDATA	$1, ZR
	0x0024 00036 (gmp.go:4)	CALL	runtime.makechan(SB)
	0x0028 00040 (gmp.go:4)	MOVD	R0, main.done-16(SP)
	0x002c 00044 (gmp.go:5)	MOVD	$type.noalg.struct { F uintptr; main.done chan bool }(SB), R0
	0x0034 00052 (gmp.go:5)	PCDATA	$1, $1
	0x0034 00052 (gmp.go:5)	CALL	runtime.newobject(SB)
	0x0038 00056 (gmp.go:5)	MOVD	R0, main..autotmp_1-8(SP)
	0x003c 00060 (gmp.go:5)	MOVD	$main.main.func1(SB), R2
	0x0044 00068 (gmp.go:5)	MOVD	R2, (R0)
	0x0048 00072 (gmp.go:5)	MOVD	main..autotmp_1-8(SP), R2
	0x004c 00076 (gmp.go:5)	PCDATA	$0, $-2
	0x004c 00076 (gmp.go:5)	MOVB	(R2), R27
	0x0050 00080 (gmp.go:5)	PCDATA	$0, $-1
	0x0050 00080 (gmp.go:5)	MOVD	main.done-16(SP), R3
	0x0054 00084 (gmp.go:5)	ADD	$8, R2, R4
	0x0058 00088 (gmp.go:5)	PCDATA	ZR, $-2
	0x0058 00088 (gmp.go:5)	MOVWU	runtime.writeBarrier(SB), R5
	0x0064 00100 (gmp.go:5)	CBZW	R5, 108
	0x0068 00104 (gmp.go:5)	JMP	116
	0x006c 00108 (gmp.go:5)	MOVD	R3, 8(R2)
	0x0070 00112 (gmp.go:5)	JMP	128
	0x0074 00116 (gmp.go:5)	MOVD	R4, R2
	0x0078 00120 (gmp.go:5)	CALL	runtime.gcWriteBarrier(SB)
	0x007c 00124 (gmp.go:5)	JMP	128
	0x0080 00128 (gmp.go:5)	PCDATA	ZR, $-1
	0x0080 00128 (gmp.go:5)	MOVD	main..autotmp_1-8(SP), R0
	0x0084 00132 (gmp.go:5)	CALL	runtime.newproc(SB)
	0x0088 00136 (gmp.go:10)	MOVD	main.done-16(SP), R0
	0x008c 00140 (gmp.go:10)	MOVD	ZR, R1
	0x0090 00144 (gmp.go:10)	PCDATA	$1, ZR
	0x0090 00144 (gmp.go:10)	CALL	runtime.chanrecv1(SB)
	0x0094 00148 (gmp.go:11)	LDP	-8(RSP), (R29, R30)
	0x0098 00152 (gmp.go:11)	ADD	$64, RSP
	0x009c 00156 (gmp.go:11)	RET	(R30)
	0x00a0 00160 (gmp.go:11)	NOP
	0x00a0 00160 (gmp.go:3)	PCDATA	$1, $-1
	0x00a0 00160 (gmp.go:3)	PCDATA	$0, $-2
	0x00a0 00160 (gmp.go:3)	MOVD	R30, R3
	0x00a4 00164 (gmp.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x00a8 00168 (gmp.go:3)	PCDATA	$0, $-1
	0x00a8 00168 (gmp.go:3)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb c9 04 00 54 fe 0f 1c f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 00 00 00 90 00 00 00 91  .....#..........
	0x0020 01 00 80 d2 00 00 00 94 e0 17 00 f9 00 00 00 90  ................
	0x0030 00 00 00 91 00 00 00 94 e0 1b 00 f9 02 00 00 90  ................
	0x0040 42 00 00 91 02 00 00 f9 e2 1b 40 f9 5b 00 80 39  B.........@.[..9
	0x0050 e3 17 40 f9 44 20 00 91 1b 00 00 90 7b 03 00 91  ..@.D ......{...
	0x0060 65 03 40 b9 45 00 00 34 03 00 00 14 43 04 00 f9  e.@.E..4....C...
	0x0070 04 00 00 14 e2 03 04 aa 00 00 00 94 01 00 00 14  ................
	0x0080 e0 1b 40 f9 00 00 00 94 e0 17 40 f9 01 00 80 d2  ..@.......@.....
	0x0090 00 00 00 94 fd fb 7f a9 ff 03 01 91 c0 03 5f d6  .............._.
	0x00a0 e3 03 1e aa 00 00 00 94 d6 ff ff 17 00 00 00 00  ................
	rel 24+8 t=3 type.chan bool+0
	rel 36+4 t=9 runtime.makechan+0
	rel 44+8 t=3 type.noalg.struct { F uintptr; main.done chan bool }+0
	rel 52+4 t=9 runtime.newobject+0
	rel 60+8 t=3 main.main.func1+0
	rel 88+8 t=3 runtime.writeBarrier+0
	rel 120+4 t=9 runtime.gcWriteBarrier+0
	rel 132+4 t=9 runtime.newproc+0
	rel 144+4 t=9 runtime.chanrecv1+0
	rel 164+4 t=9 runtime.morestack_noctxt+0
main.main.func1 STEXT size=160 args=0x0 locals=0x88 funcid=0x0 align=0x0
	0x0000 00000 (gmp.go:5)	TEXT	main.main.func1(SB), NEEDCTXT|ABIInternal, $144-0
	0x0000 00000 (gmp.go:5)	MOVD	16(g), R16
	0x0004 00004 (gmp.go:5)	PCDATA	$0, $-2
	0x0004 00004 (gmp.go:5)	SUB	$16, RSP, R17
	0x0008 00008 (gmp.go:5)	CMP	R16, R17
	0x000c 00012 (gmp.go:5)	BLS	136
	0x0010 00016 (gmp.go:5)	PCDATA	$0, $-1
	0x0010 00016 (gmp.go:5)	MOVD.W	R30, -144(RSP)
	0x0014 00020 (gmp.go:5)	MOVD	R29, -8(RSP)
	0x0018 00024 (gmp.go:5)	SUB	$8, RSP, R29
	0x001c 00028 (gmp.go:5)	FUNCDATA	ZR, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x001c 00028 (gmp.go:5)	FUNCDATA	$1, gclocals·o6Zg9+zmRBFm//1GHy3gfQ==(SB)
	0x001c 00028 (gmp.go:5)	FUNCDATA	$2, main.main.func1.stkobj(SB)
	0x001c 00028 (gmp.go:5)	MOVD	8(R26), R1
	0x0020 00032 (gmp.go:5)	MOVD	R1, main.done-40(SP)
	0x0024 00036 (gmp.go:6)	MOVD	R1, main..autotmp_0-24(SP)
	0x0028 00040 (gmp.go:6)	STP	(ZR, ZR), main..autotmp_2-16(SP)
	0x002c 00044 (gmp.go:6)	MOVD	$main..autotmp_2-16(SP), R1
	0x0030 00048 (gmp.go:6)	MOVD	R1, main..autotmp_1-32(SP)
	0x0034 00052 (gmp.go:6)	PCDATA	$0, $-2
	0x0034 00052 (gmp.go:6)	MOVB	(R1), R27
	0x0038 00056 (gmp.go:6)	PCDATA	$0, $-1
	0x0038 00056 (gmp.go:6)	MOVD	$main.main.func1.1(SB), R2
	0x0040 00064 (gmp.go:6)	MOVD	R2, main..autotmp_2-16(SP)
	0x0044 00068 (gmp.go:6)	PCDATA	$0, $-2
	0x0044 00068 (gmp.go:6)	MOVB	(R1), R27
	0x0048 00072 (gmp.go:6)	PCDATA	$0, $-1
	0x0048 00072 (gmp.go:6)	MOVD	main..autotmp_0-24(SP), R2
	0x004c 00076 (gmp.go:6)	MOVD	R2, main..autotmp_2-8(SP)
	0x0050 00080 (gmp.go:6)	MOVD	R1, main..autotmp_4-88(SP)
	0x0054 00084 (gmp.go:6)	MOVD	$main..autotmp_4-112(SP), R0
	0x0058 00088 (gmp.go:6)	PCDATA	$1, ZR
	0x0058 00088 (gmp.go:6)	CALL	runtime.deferprocStack(SB)
	0x005c 00092 (gmp.go:6)	CMP	ZR, R0
	0x0060 00096 (gmp.go:6)	BNE	108
	0x0064 00100 (gmp.go:6)	JMP	104
	0x0068 00104 (gmp.go:7)	PCDATA	$1, $-1
	0x0068 00104 (gmp.go:7)	JMP	124
	0x006c 00108 (gmp.go:6)	PCDATA	$1, ZR
	0x006c 00108 (gmp.go:6)	CALL	runtime.deferreturn(SB)
	0x0070 00112 (gmp.go:6)	LDP	-8(RSP), (R29, R30)
	0x0074 00116 (gmp.go:6)	ADD	$144, RSP
	0x0078 00120 (gmp.go:6)	RET	(R30)
	0x007c 00124 (gmp.go:7)	PCDATA	$1, $-1
	0x007c 00124 (gmp.go:7)	JMP	128
	0x0080 00128 (gmp.go:7)	JMP	132
	0x0084 00132 (gmp.go:7)	JMP	124
	0x0088 00136 (gmp.go:7)	NOP
	0x0088 00136 (gmp.go:5)	PCDATA	$1, $-1
	0x0088 00136 (gmp.go:5)	PCDATA	$0, $-2
	0x0088 00136 (gmp.go:5)	MOVD	R30, R3
	0x008c 00140 (gmp.go:5)	CALL	runtime.morestack(SB)
	0x0090 00144 (gmp.go:5)	PCDATA	$0, $-1
	0x0090 00144 (gmp.go:5)	JMP	0
	0x0000 90 0b 40 f9 f1 43 00 d1 3f 02 10 eb e9 03 00 54  ..@..C..?......T
	0x0010 fe 0f 17 f8 fd 83 1f f8 fd 23 00 d1 41 07 40 f9  .........#..A.@.
	0x0020 e1 33 00 f9 e1 3b 00 f9 ff ff 07 a9 e1 e3 01 91  .3...;..........
	0x0030 e1 37 00 f9 3b 00 80 39 02 00 00 90 42 00 00 91  .7..;..9....B...
	0x0040 e2 3f 00 f9 3b 00 80 39 e2 3b 40 f9 e2 43 00 f9  .?..;..9.;@..C..
	0x0050 e1 1b 00 f9 e0 63 00 91 00 00 00 94 1f 00 1f eb  .....c..........
	0x0060 61 00 00 54 01 00 00 14 05 00 00 14 00 00 00 94  a..T............
	0x0070 fd fb 7f a9 ff 43 02 91 c0 03 5f d6 01 00 00 14  .....C...._.....
	0x0080 01 00 00 14 fe ff ff 17 e3 03 1e aa 00 00 00 94  ................
	0x0090 dc ff ff 17 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 56+8 t=3 main.main.func1.1+0
	rel 88+4 t=9 runtime.deferprocStack+0
	rel 108+4 t=9 runtime.deferreturn+0
	rel 140+4 t=9 runtime.morestack+0
main.main.func1.1 STEXT size=96 args=0x0 locals=0x18 funcid=0x15 align=0x0
	0x0000 00000 (gmp.go:6)	TEXT	main.main.func1.1(SB), WRAPPER|NEEDCTXT|ABIInternal, $32-0
	0x0000 00000 (gmp.go:6)	MOVD	16(g), R16
	0x0004 00004 (gmp.go:6)	PCDATA	$0, $-2
	0x0004 00004 (gmp.go:6)	CMP	R16, RSP
	0x0008 00008 (gmp.go:6)	BLS	56
	0x000c 00012 (gmp.go:6)	PCDATA	$0, $-1
	0x000c 00012 (gmp.go:6)	MOVD.W	R30, -32(RSP)
	0x0010 00016 (gmp.go:6)	MOVD	R29, -8(RSP)
	0x0014 00020 (gmp.go:6)	SUB	$8, RSP, R29
	0x0018 00024 (gmp.go:6)	MOVD	32(g), R16
	0x001c 00028 (gmp.go:6)	CBNZ	R16, 68
	0x0020 00032 (gmp.go:6)	NOP
	0x0020 00032 (gmp.go:6)	FUNCDATA	ZR, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0020 00032 (gmp.go:6)	FUNCDATA	$1, gclocals·Plqv2ff52JtlYaDd2Rwxbg==(SB)
	0x0020 00032 (gmp.go:6)	MOVD	8(R26), R0
	0x0024 00036 (gmp.go:6)	MOVD	R0, main..autotmp_0-8(SP)
	0x0028 00040 (gmp.go:6)	PCDATA	$1, ZR
	0x0028 00040 (gmp.go:6)	CALL	runtime.closechan(SB)
	0x002c 00044 (gmp.go:6)	LDP	-8(RSP), (R29, R30)
	0x0030 00048 (gmp.go:6)	ADD	$32, RSP
	0x0034 00052 (gmp.go:6)	RET	(R30)
	0x0038 00056 (gmp.go:6)	NOP
	0x0038 00056 (gmp.go:6)	PCDATA	$1, $-1
	0x0038 00056 (gmp.go:6)	PCDATA	$0, $-2
	0x0038 00056 (gmp.go:6)	MOVD	R30, R3
	0x003c 00060 (gmp.go:6)	CALL	runtime.morestack(SB)
	0x0040 00064 (gmp.go:6)	PCDATA	$0, $-1
	0x0040 00064 (gmp.go:6)	JMP	0
	0x0044 00068 (gmp.go:6)	MOVD	(R16), R17
	0x0048 00072 (gmp.go:6)	ADD	$40, RSP, R20
	0x004c 00076 (gmp.go:6)	CMP	R17, R20
	0x0050 00080 (gmp.go:6)	BNE	32
	0x0054 00084 (gmp.go:6)	ADD	$8, RSP, R20
	0x0058 00088 (gmp.go:6)	MOVD	R20, (R16)
	0x005c 00092 (gmp.go:6)	JMP	32
	0x0000 90 0b 40 f9 ff 63 30 eb 89 01 00 54 fe 0f 1e f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 90 13 40 f9 50 01 00 b5  .....#....@.P...
	0x0020 40 07 40 f9 e0 0b 00 f9 00 00 00 94 fd fb 7f a9  @.@.............
	0x0030 ff 83 00 91 c0 03 5f d6 e3 03 1e aa 00 00 00 94  ......_.........
	0x0040 f0 ff ff 17 11 02 40 f9 f4 a3 00 91 9f 02 11 eb  ......@.........
	0x0050 81 fe ff 54 f4 23 00 91 14 02 00 f9 f1 ff ff 17  ...T.#..........
	rel 40+4 t=9 runtime.closechan+0
	rel 60+4 t=9 runtime.morestack+0
go.cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go.cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*chan bool- SRODATA dupok size=12
	0x0000 00 0a 2a 63 68 61 6e 20 62 6f 6f 6c              ..*chan bool
type.*chan bool SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fe 06 42 ef 08 08 08 36 00 00 00 00 00 00 00 00  ..B....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*chan bool-+0
	rel 48+8 t=1 type.chan bool+0
type.chan bool SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 df 69 0d a9 0a 08 08 32 00 00 00 00 00 00 00 00  .i.....2........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*chan bool-+0
	rel 44+4 t=-32763 type.*chan bool+0
	rel 48+8 t=1 type.bool+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type..namedata.*struct { F uintptr; .autotmp_0 chan bool }- SRODATA dupok size=45
	0x0000 00 2b 2a 73 74 72 75 63 74 20 7b 20 46 20 75 69  .+*struct { F ui
	0x0010 6e 74 70 74 72 3b 20 2e 61 75 74 6f 74 6d 70 5f  ntptr; .autotmp_
	0x0020 30 20 63 68 61 6e 20 62 6f 6f 6c 20 7d           0 chan bool }
type..importpath.main. SRODATA dupok size=6
	0x0000 00 04 6d 61 69 6e                                ..main
type..namedata..F- SRODATA dupok size=4
	0x0000 00 02 2e 46                                      ...F
type..namedata..autotmp_0- SRODATA dupok size=12
	0x0000 00 0a 2e 61 75 74 6f 74 6d 70 5f 30              ...autotmp_0
type.noalg.struct { F uintptr; main..autotmp_0 chan bool } SRODATA dupok size=128
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 d4 6c 05 a6 02 08 08 19 00 00 00 00 00 00 00 00  .l..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; .autotmp_0 chan bool }-+0
	rel 44+4 t=-32763 type.*struct { F uintptr; main..autotmp_0 chan bool }+0
	rel 48+8 t=1 type..importpath.main.+0
	rel 56+8 t=1 type.noalg.struct { F uintptr; main..autotmp_0 chan bool }+80
	rel 80+8 t=1 type..namedata..F-+0
	rel 88+8 t=1 type.uintptr+0
	rel 104+8 t=1 type..namedata..autotmp_0-+0
	rel 112+8 t=1 type.chan bool+0
type.*struct { F uintptr; main..autotmp_0 chan bool } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 89 dd f6 77 08 08 08 36 00 00 00 00 00 00 00 00  ...w...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; .autotmp_0 chan bool }-+0
	rel 48+8 t=1 type.noalg.struct { F uintptr; main..autotmp_0 chan bool }+0
type..namedata.*struct { F uintptr; done chan bool }- SRODATA dupok size=39
	0x0000 00 25 2a 73 74 72 75 63 74 20 7b 20 46 20 75 69  .%*struct { F ui
	0x0010 6e 74 70 74 72 3b 20 64 6f 6e 65 20 63 68 61 6e  ntptr; done chan
	0x0020 20 62 6f 6f 6c 20 7d                              bool }
type..namedata.done- SRODATA dupok size=6
	0x0000 00 04 64 6f 6e 65                                ..done
type.noalg.struct { F uintptr; main.done chan bool } SRODATA dupok size=128
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e2 01 41 a0 02 08 08 19 00 00 00 00 00 00 00 00  ..A.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; done chan bool }-+0
	rel 44+4 t=-32763 type.*struct { F uintptr; main.done chan bool }+0
	rel 48+8 t=1 type..importpath.main.+0
	rel 56+8 t=1 type.noalg.struct { F uintptr; main.done chan bool }+80
	rel 80+8 t=1 type..namedata..F-+0
	rel 88+8 t=1 type.uintptr+0
	rel 104+8 t=1 type..namedata.done-+0
	rel 112+8 t=1 type.chan bool+0
type.*struct { F uintptr; main.done chan bool } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 3a d1 56 76 08 08 08 36 00 00 00 00 00 00 00 00  :.Vv...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; done chan bool }-+0
	rel 48+8 t=1 type.noalg.struct { F uintptr; main.done chan bool }+0
type..namedata.*struct { started bool; heap bool; openDefer bool; sp uintptr; pc uintptr; fn uintptr; _panic uintptr; link uintptr; fd uintptr; varp uintptr; framepc uintptr }- SRODATA dupok size=163
	0x0000 00 a0 01 2a 73 74 72 75 63 74 20 7b 20 73 74 61  ...*struct { sta
	0x0010 72 74 65 64 20 62 6f 6f 6c 3b 20 68 65 61 70 20  rted bool; heap 
	0x0020 62 6f 6f 6c 3b 20 6f 70 65 6e 44 65 66 65 72 20  bool; openDefer 
	0x0030 62 6f 6f 6c 3b 20 73 70 20 75 69 6e 74 70 74 72  bool; sp uintptr
	0x0040 3b 20 70 63 20 75 69 6e 74 70 74 72 3b 20 66 6e  ; pc uintptr; fn
	0x0050 20 75 69 6e 74 70 74 72 3b 20 5f 70 61 6e 69 63   uintptr; _panic
	0x0060 20 75 69 6e 74 70 74 72 3b 20 6c 69 6e 6b 20 75   uintptr; link u
	0x0070 69 6e 74 70 74 72 3b 20 66 64 20 75 69 6e 74 70  intptr; fd uintp
	0x0080 74 72 3b 20 76 61 72 70 20 75 69 6e 74 70 74 72  tr; varp uintptr
	0x0090 3b 20 66 72 61 6d 65 70 63 20 75 69 6e 74 70 74  ; framepc uintpt
	0x00a0 72 20 7d                                         r }
type.*struct { main.started bool; main.heap bool; main.openDefer bool; main.sp uintptr; main.pc uintptr; main.fn uintptr; main._panic uintptr; main.link uintptr; main.fd uintptr; main.varp uintptr; main.framepc uintptr } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 e0 a3 8b ac 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*struct { started bool; heap bool; openDefer bool; sp uintptr; pc uintptr; fn uintptr; _panic uintptr; link uintptr; fd uintptr; varp uintptr; framepc uintptr }-+0
	rel 48+8 t=1 type.noalg.struct { main.started bool; main.heap bool; main.openDefer bool; main.sp uintptr; main.pc uintptr; main.fn uintptr; main._panic uintptr; main.link uintptr; main.fd uintptr; main.varp uintptr; main.framepc uintptr }+0
runtime.gcbits. SRODATA dupok size=0
type..namedata.started- SRODATA dupok size=9
	0x0000 00 07 73 74 61 72 74 65 64                       ..started
type..namedata.heap- SRODATA dupok size=6
	0x0000 00 04 68 65 61 70                                ..heap
type..namedata.openDefer- SRODATA dupok size=11
	0x0000 00 09 6f 70 65 6e 44 65 66 65 72                 ..openDefer
type..namedata.sp- SRODATA dupok size=4
	0x0000 00 02 73 70                                      ..sp
type..namedata.pc- SRODATA dupok size=4
	0x0000 00 02 70 63                                      ..pc
type..namedata.fn- SRODATA dupok size=4
	0x0000 00 02 66 6e                                      ..fn
type..namedata._panic- SRODATA dupok size=8
	0x0000 00 06 5f 70 61 6e 69 63                          .._panic
type..namedata.link- SRODATA dupok size=6
	0x0000 00 04 6c 69 6e 6b                                ..link
type..namedata.fd- SRODATA dupok size=4
	0x0000 00 02 66 64                                      ..fd
type..namedata.varp- SRODATA dupok size=6
	0x0000 00 04 76 61 72 70                                ..varp
type..namedata.framepc- SRODATA dupok size=9
	0x0000 00 07 66 72 61 6d 65 70 63                       ..framepc
type.noalg.struct { main.started bool; main.heap bool; main.openDefer bool; main.sp uintptr; main.pc uintptr; main.fn uintptr; main._panic uintptr; main.link uintptr; main.fd uintptr; main.varp uintptr; main.framepc uintptr } SRODATA dupok size=344
	0x0000 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  H...............
	0x0010 46 86 93 99 02 08 08 19 00 00 00 00 00 00 00 00  F...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 0b 00 00 00 00 00 00 00 0b 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x00b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00c0 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00d0 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	0x00e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00f0 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ...............
	0x0100 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	0x0110 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0120 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  0...............
	0x0130 00 00 00 00 00 00 00 00 38 00 00 00 00 00 00 00  ........8.......
	0x0140 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0150 40 00 00 00 00 00 00 00                          @.......
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*struct { started bool; heap bool; openDefer bool; sp uintptr; pc uintptr; fn uintptr; _panic uintptr; link uintptr; fd uintptr; varp uintptr; framepc uintptr }-+0
	rel 44+4 t=-32763 type.*struct { main.started bool; main.heap bool; main.openDefer bool; main.sp uintptr; main.pc uintptr; main.fn uintptr; main._panic uintptr; main.link uintptr; main.fd uintptr; main.varp uintptr; main.framepc uintptr }+0
	rel 48+8 t=1 type..importpath.main.+0
	rel 56+8 t=1 type.noalg.struct { main.started bool; main.heap bool; main.openDefer bool; main.sp uintptr; main.pc uintptr; main.fn uintptr; main._panic uintptr; main.link uintptr; main.fd uintptr; main.varp uintptr; main.framepc uintptr }+80
	rel 80+8 t=1 type..namedata.started-+0
	rel 88+8 t=1 type.bool+0
	rel 104+8 t=1 type..namedata.heap-+0
	rel 112+8 t=1 type.bool+0
	rel 128+8 t=1 type..namedata.openDefer-+0
	rel 136+8 t=1 type.bool+0
	rel 152+8 t=1 type..namedata.sp-+0
	rel 160+8 t=1 type.uintptr+0
	rel 176+8 t=1 type..namedata.pc-+0
	rel 184+8 t=1 type.uintptr+0
	rel 200+8 t=1 type..namedata.fn-+0
	rel 208+8 t=1 type.uintptr+0
	rel 224+8 t=1 type..namedata._panic-+0
	rel 232+8 t=1 type.uintptr+0
	rel 248+8 t=1 type..namedata.link-+0
	rel 256+8 t=1 type.uintptr+0
	rel 272+8 t=1 type..namedata.fd-+0
	rel 280+8 t=1 type.uintptr+0
	rel 296+8 t=1 type..namedata.varp-+0
	rel 304+8 t=1 type.uintptr+0
	rel 320+8 t=1 type..namedata.framepc-+0
	rel 328+8 t=1 type.uintptr+0
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·u97U1TPSCOlmat2W1oBl9Q== SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 00 01                    ..........
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·o6Zg9+zmRBFm//1GHy3gfQ== SRODATA dupok size=9
	0x0000 01 00 00 00 05 00 00 00 00                       .........
main.main.func1.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.02+0
gclocals·Plqv2ff52JtlYaDd2Rwxbg== SRODATA dupok size=9
	0x0000 01 00 00 00 01 00 00 00 00                       .........
