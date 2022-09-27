main.main STEXT size=304 args=0x0 locals=0xa8 funcid=0x0 align=0x0
	0x0000 00000 (select-block.go:5)	TEXT	main.main(SB), ABIInternal, $176-0
	0x0000 00000 (select-block.go:5)	MOVD	16(g), R16
	0x0004 00004 (select-block.go:5)	PCDATA	$0, $-2
	0x0004 00004 (select-block.go:5)	SUB	$48, RSP, R17
	0x0008 00008 (select-block.go:5)	CMP	R16, R17
	0x000c 00012 (select-block.go:5)	BLS	284
	0x0010 00016 (select-block.go:5)	PCDATA	$0, $-1
	0x0010 00016 (select-block.go:5)	MOVD.W	R30, -176(RSP)
	0x0014 00020 (select-block.go:5)	MOVD	R29, -8(RSP)
	0x0018 00024 (select-block.go:5)	SUB	$8, RSP, R29
	0x001c 00028 (select-block.go:5)	FUNCDATA	ZR, gclocals·ykHN0vawYuq1dUW4zEe2gA==(SB)
	0x001c 00028 (select-block.go:5)	FUNCDATA	$1, gclocals·wjeg23v4hVcs936x4HEGGQ==(SB)
	0x001c 00028 (select-block.go:5)	FUNCDATA	$2, main.main.stkobj(SB)
	0x001c 00028 (select-block.go:6)	MOVD	$type.chan bool(SB), R0
	0x0024 00036 (select-block.go:6)	MOVD	ZR, R1
	0x0028 00040 (select-block.go:6)	PCDATA	$1, ZR
	0x0028 00040 (select-block.go:6)	CALL	runtime.makechan(SB)
	0x002c 00044 (select-block.go:6)	MOVD	R0, main.c-80(SP)
	0x0030 00048 (select-block.go:7)	MOVD	$type.chan bool(SB), R0
	0x0038 00056 (select-block.go:7)	MOVD	ZR, R1
	0x003c 00060 (select-block.go:7)	PCDATA	$1, $1
	0x003c 00060 (select-block.go:7)	CALL	runtime.makechan(SB)
	0x0040 00064 (select-block.go:7)	MOVD	R0, main.c1-88(SP)
	0x0044 00068 (select-block.go:8)	MOVD	$type.noalg.struct { F uintptr; main.c chan bool }(SB), R0
	0x004c 00076 (select-block.go:8)	PCDATA	$1, $2
	0x004c 00076 (select-block.go:8)	CALL	runtime.newobject(SB)
	0x0050 00080 (select-block.go:8)	MOVD	R0, main..autotmp_4-64(SP)
	0x0054 00084 (select-block.go:8)	MOVD	$main.main.func1(SB), R2
	0x005c 00092 (select-block.go:8)	MOVD	R2, (R0)
	0x0060 00096 (select-block.go:8)	MOVD	main..autotmp_4-64(SP), R2
	0x0064 00100 (select-block.go:8)	PCDATA	$0, $-2
	0x0064 00100 (select-block.go:8)	MOVB	(R2), R27
	0x0068 00104 (select-block.go:8)	PCDATA	$0, $-1
	0x0068 00104 (select-block.go:8)	MOVD	main.c-80(SP), R3
	0x006c 00108 (select-block.go:8)	ADD	$8, R2, R4
	0x0070 00112 (select-block.go:8)	PCDATA	ZR, $-2
	0x0070 00112 (select-block.go:8)	MOVWU	runtime.writeBarrier(SB), R5
	0x007c 00124 (select-block.go:8)	CBZW	R5, 132
	0x0080 00128 (select-block.go:8)	JMP	140
	0x0084 00132 (select-block.go:8)	MOVD	R3, 8(R2)
	0x0088 00136 (select-block.go:8)	JMP	152
	0x008c 00140 (select-block.go:8)	MOVD	R4, R2
	0x0090 00144 (select-block.go:8)	CALL	runtime.gcWriteBarrier(SB)
	0x0094 00148 (select-block.go:8)	JMP	152
	0x0098 00152 (select-block.go:8)	PCDATA	ZR, $-1
	0x0098 00152 (select-block.go:8)	MOVD	main..autotmp_4-64(SP), R0
	0x009c 00156 (select-block.go:8)	CALL	runtime.newproc(SB)
	0x00a0 00160 (select-block.go:14)	MOVD	main.c-80(SP), R1
	0x00a4 00164 (select-block.go:14)	MOVD	R1, main..autotmp_2-48(SP)
	0x00a8 00168 (select-block.go:15)	MOVD	main.c1-88(SP), R1
	0x00ac 00172 (select-block.go:15)	MOVD	R1, main..autotmp_3-56(SP)
	0x00b0 00176 (select-block.go:13)	STP	(ZR, ZR), main..autotmp_5-32(SP)
	0x00b4 00180 (select-block.go:13)	STP	(ZR, ZR), main..autotmp_5-16(SP)
	0x00b8 00184 (select-block.go:14)	MOVD	main..autotmp_2-48(SP), R1
	0x00bc 00188 (select-block.go:14)	MOVD	R1, main..autotmp_5-16(SP)
	0x00c0 00192 (select-block.go:15)	MOVD	main..autotmp_3-56(SP), R1
	0x00c4 00196 (select-block.go:15)	MOVD	R1, main..autotmp_5-32(SP)
	0x00c8 00200 (select-block.go:13)	MOVD	$main..autotmp_5-32(SP), R1
	0x00cc 00204 (select-block.go:13)	MOVD	R1, main..autotmp_9-72(SP)
	0x00d0 00208 (select-block.go:13)	MOVD	$main..autotmp_6-96(SP), R1
	0x00d4 00212 (select-block.go:13)	MOVD	R1, main..autotmp_10-40(SP)
	0x00d8 00216 (select-block.go:13)	MOVD	main..autotmp_10-40(SP), R1
	0x00dc 00220 (select-block.go:13)	MOVD	main..autotmp_9-72(SP), R0
	0x00e0 00224 (select-block.go:13)	MOVD	ZR, R2
	0x00e4 00228 (select-block.go:13)	MOVD	ZR, R3
	0x00e8 00232 (select-block.go:13)	MOVD	$2, R4
	0x00ec 00236 (select-block.go:13)	MOVD	$1, R5
	0x00f0 00240 (select-block.go:13)	PCDATA	$1, ZR
	0x00f0 00240 (select-block.go:13)	CALL	runtime.selectgo(SB)
	0x00f4 00244 (select-block.go:13)	MOVD	R0, main..autotmp_7-104(SP)
	0x00f8 00248 (select-block.go:13)	MOVB	R1, main..autotmp_8-105(SP)
	0x00fc 00252 (select-block.go:15)	MOVD	main..autotmp_7-104(SP), R1
	0x0100 00256 (select-block.go:15)	CBZ	R1, 264
	0x0104 00260 (select-block.go:15)	JMP	268
	0x0108 00264 (select-block.go:15)	PCDATA	$1, $-1
	0x0108 00264 (select-block.go:15)	JMP	272
	0x010c 00268 (select-block.go:14)	JMP	272
	0x0110 00272 (select-block.go:17)	LDP	-8(RSP), (R29, R30)
	0x0114 00276 (select-block.go:17)	ADD	$176, RSP
	0x0118 00280 (select-block.go:17)	RET	(R30)
	0x011c 00284 (select-block.go:17)	NOP
	0x011c 00284 (select-block.go:5)	PCDATA	$1, $-1
	0x011c 00284 (select-block.go:5)	PCDATA	$0, $-2
	0x011c 00284 (select-block.go:5)	MOVD	R30, R3
	0x0120 00288 (select-block.go:5)	CALL	runtime.morestack_noctxt(SB)
	0x0124 00292 (select-block.go:5)	PCDATA	$0, $-1
	0x0124 00292 (select-block.go:5)	JMP	0
	0x0000 90 0b 40 f9 f1 c3 00 d1 3f 02 10 eb 89 08 00 54  ..@.....?......T
	0x0010 fe 0f 15 f8 fd 83 1f f8 fd 23 00 d1 00 00 00 90  .........#......
	0x0020 00 00 00 91 01 00 80 d2 00 00 00 94 e0 2f 00 f9  ............./..
	0x0030 00 00 00 90 00 00 00 91 01 00 80 d2 00 00 00 94  ................
	0x0040 e0 2b 00 f9 00 00 00 90 00 00 00 91 00 00 00 94  .+..............
	0x0050 e0 37 00 f9 02 00 00 90 42 00 00 91 02 00 00 f9  .7......B.......
	0x0060 e2 37 40 f9 5b 00 80 39 e3 2f 40 f9 44 20 00 91  .7@.[..9./@.D ..
	0x0070 1b 00 00 90 7b 03 00 91 65 03 40 b9 45 00 00 34  ....{...e.@.E..4
	0x0080 03 00 00 14 43 04 00 f9 04 00 00 14 e2 03 04 aa  ....C...........
	0x0090 00 00 00 94 01 00 00 14 e0 37 40 f9 00 00 00 94  .........7@.....
	0x00a0 e1 2f 40 f9 e1 3f 00 f9 e1 2b 40 f9 e1 3b 00 f9  ./@..?...+@..;..
	0x00b0 ff ff 08 a9 ff ff 09 a9 e1 3f 40 f9 e1 4f 00 f9  .........?@..O..
	0x00c0 e1 3b 40 f9 e1 47 00 f9 e1 23 02 91 e1 33 00 f9  .;@..G...#...3..
	0x00d0 e1 23 01 91 e1 43 00 f9 e1 43 40 f9 e0 33 40 f9  .#...C...C@..3@.
	0x00e0 02 00 80 d2 03 00 80 d2 e4 03 7f b2 e5 03 40 b2  ..............@.
	0x00f0 00 00 00 94 e0 23 00 f9 e1 ff 00 39 e1 23 40 f9  .....#.....9.#@.
	0x0100 41 00 00 b4 02 00 00 14 02 00 00 14 01 00 00 14  A...............
	0x0110 fd fb 7f a9 ff c3 02 91 c0 03 5f d6 e3 03 1e aa  .........._.....
	0x0120 00 00 00 94 b7 ff ff 17 00 00 00 00 00 00 00 00  ................
	rel 28+8 t=3 type.chan bool+0
	rel 40+4 t=9 runtime.makechan+0
	rel 48+8 t=3 type.chan bool+0
	rel 60+4 t=9 runtime.makechan+0
	rel 68+8 t=3 type.noalg.struct { F uintptr; main.c chan bool }+0
	rel 76+4 t=9 runtime.newobject+0
	rel 84+8 t=3 main.main.func1+0
	rel 112+8 t=3 runtime.writeBarrier+0
	rel 144+4 t=9 runtime.gcWriteBarrier+0
	rel 156+4 t=9 runtime.newproc+0
	rel 240+4 t=9 runtime.selectgo+0
	rel 288+4 t=9 runtime.morestack_noctxt+0
main.main.func1 STEXT size=96 args=0x0 locals=0x28 funcid=0x0 align=0x0
	0x0000 00000 (select-block.go:8)	TEXT	main.main.func1(SB), NEEDCTXT|ABIInternal, $48-0
	0x0000 00000 (select-block.go:8)	MOVD	16(g), R16
	0x0004 00004 (select-block.go:8)	PCDATA	$0, $-2
	0x0004 00004 (select-block.go:8)	CMP	R16, RSP
	0x0008 00008 (select-block.go:8)	BLS	76
	0x000c 00012 (select-block.go:8)	PCDATA	$0, $-1
	0x000c 00012 (select-block.go:8)	MOVD.W	R30, -48(RSP)
	0x0010 00016 (select-block.go:8)	MOVD	R29, -8(RSP)
	0x0014 00020 (select-block.go:8)	SUB	$8, RSP, R29
	0x0018 00024 (select-block.go:8)	FUNCDATA	ZR, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0018 00024 (select-block.go:8)	FUNCDATA	$1, gclocals·CnDyI2HjYXFz19SsOj98tw==(SB)
	0x0018 00024 (select-block.go:8)	MOVD	8(R26), R1
	0x001c 00028 (select-block.go:8)	MOVD	R1, main.c-8(SP)
	0x0020 00032 (select-block.go:9)	MOVD	$60000000000, R0
	0x002c 00044 (select-block.go:9)	PCDATA	$1, $1
	0x002c 00044 (select-block.go:9)	CALL	time.Sleep(SB)
	0x0030 00048 (select-block.go:10)	MOVD	main.c-8(SP), R0
	0x0034 00052 (select-block.go:10)	MOVD	$main..stmp_0(SB), R1
	0x003c 00060 (select-block.go:10)	PCDATA	$1, ZR
	0x003c 00060 (select-block.go:10)	CALL	runtime.chansend1(SB)
	0x0040 00064 (select-block.go:11)	LDP	-8(RSP), (R29, R30)
	0x0044 00068 (select-block.go:11)	ADD	$48, RSP
	0x0048 00072 (select-block.go:11)	RET	(R30)
	0x004c 00076 (select-block.go:11)	NOP
	0x004c 00076 (select-block.go:8)	PCDATA	$1, $-1
	0x004c 00076 (select-block.go:8)	PCDATA	$0, $-2
	0x004c 00076 (select-block.go:8)	MOVD	R30, R3
	0x0050 00080 (select-block.go:8)	CALL	runtime.morestack(SB)
	0x0054 00084 (select-block.go:8)	PCDATA	$0, $-1
	0x0054 00084 (select-block.go:8)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb 29 02 00 54 fe 0f 1d f8  ..@..c0.)..T....
	0x0010 fd 83 1f f8 fd 23 00 d1 41 07 40 f9 e1 13 00 f9  .....#..A.@.....
	0x0020 00 00 8b d2 e0 08 bf f2 a0 01 c0 f2 00 00 00 94  ................
	0x0030 e0 13 40 f9 01 00 00 90 21 00 00 91 00 00 00 94  ..@.....!.......
	0x0040 fd fb 7f a9 ff c3 00 91 c0 03 5f d6 e3 03 1e aa  .........._.....
	0x0050 00 00 00 94 eb ff ff 17 00 00 00 00 00 00 00 00  ................
	rel 44+4 t=9 time.Sleep+0
	rel 52+8 t=3 main..stmp_0+0
	rel 60+4 t=9 runtime.chansend1+0
	rel 80+4 t=9 runtime.morestack+0
go.cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go.cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 time..inittask+0
main..stmp_0 SRODATA static size=1
	0x0000 01                                               .
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
type..namedata.*struct { F uintptr; c chan bool }- SRODATA dupok size=36
	0x0000 00 22 2a 73 74 72 75 63 74 20 7b 20 46 20 75 69  ."*struct { F ui
	0x0010 6e 74 70 74 72 3b 20 63 20 63 68 61 6e 20 62 6f  ntptr; c chan bo
	0x0020 6f 6c 20 7d                                      ol }
type..importpath.main. SRODATA dupok size=6
	0x0000 00 04 6d 61 69 6e                                ..main
type..namedata..F- SRODATA dupok size=4
	0x0000 00 02 2e 46                                      ...F
type..namedata.c- SRODATA dupok size=3
	0x0000 00 01 63                                         ..c
type.noalg.struct { F uintptr; main.c chan bool } SRODATA dupok size=128
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e3 9a e4 35 02 08 08 19 00 00 00 00 00 00 00 00  ...5............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; c chan bool }-+0
	rel 44+4 t=-32763 type.*struct { F uintptr; main.c chan bool }+0
	rel 48+8 t=1 type..importpath.main.+0
	rel 56+8 t=1 type.noalg.struct { F uintptr; main.c chan bool }+80
	rel 80+8 t=1 type..namedata..F-+0
	rel 88+8 t=1 type.uintptr+0
	rel 104+8 t=1 type..namedata.c-+0
	rel 112+8 t=1 type.chan bool+0
type.*struct { F uintptr; main.c chan bool } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 a6 32 d8 b8 08 08 08 36 00 00 00 00 00 00 00 00  .2.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; c chan bool }-+0
	rel 48+8 t=1 type.noalg.struct { F uintptr; main.c chan bool }+0
type..namedata.*[]uint16- SRODATA dupok size=11
	0x0000 00 09 2a 5b 5d 75 69 6e 74 31 36                 ..*[]uint16
type.*[]uint16 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 2f 82 37 a9 08 08 08 36 00 00 00 00 00 00 00 00  /.7....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]uint16-+0
	rel 48+8 t=1 type.[]uint16+0
type.[]uint16 SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 3b bb e5 9a 02 08 08 17 00 00 00 00 00 00 00 00  ;...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]uint16-+0
	rel 44+4 t=-32763 type.*[]uint16+0
	rel 48+8 t=1 type.uint16+0
type..namedata.*[4]uint16- SRODATA dupok size=12
	0x0000 00 0a 2a 5b 34 5d 75 69 6e 74 31 36              ..*[4]uint16
type.*[4]uint16 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fa 60 c7 84 08 08 08 36 00 00 00 00 00 00 00 00  .`.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[4]uint16-+0
	rel 48+8 t=1 type.[4]uint16+0
runtime.gcbits. SRODATA dupok size=0
type.[4]uint16 SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 fd 85 41 c5 0a 02 02 11 00 00 00 00 00 00 00 00  ..A.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 04 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[4]uint16-+0
	rel 44+4 t=-32763 type.*[4]uint16+0
	rel 48+8 t=1 type.uint16+0
	rel 56+8 t=1 type.[]uint16+0
type..namedata.*struct { c unsafe.Pointer; elem unsafe.Pointer }- SRODATA dupok size=51
	0x0000 00 31 2a 73 74 72 75 63 74 20 7b 20 63 20 75 6e  .1*struct { c un
	0x0010 73 61 66 65 2e 50 6f 69 6e 74 65 72 3b 20 65 6c  safe.Pointer; el
	0x0020 65 6d 20 75 6e 73 61 66 65 2e 50 6f 69 6e 74 65  em unsafe.Pointe
	0x0030 72 20 7d                                         r }
type.*struct { main.c unsafe.Pointer; main.elem unsafe.Pointer } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 ad 28 46 70 08 08 08 36 00 00 00 00 00 00 00 00  .(Fp...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*struct { c unsafe.Pointer; elem unsafe.Pointer }-+0
	rel 48+8 t=1 type.noalg.struct { main.c unsafe.Pointer; main.elem unsafe.Pointer }+0
runtime.gcbits.03 SRODATA dupok size=1
	0x0000 03                                               .
type..namedata.elem- SRODATA dupok size=6
	0x0000 00 04 65 6c 65 6d                                ..elem
type.noalg.struct { main.c unsafe.Pointer; main.elem unsafe.Pointer } SRODATA dupok size=128
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 da ee 87 bc 02 08 08 19 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.03+0
	rel 40+4 t=5 type..namedata.*struct { c unsafe.Pointer; elem unsafe.Pointer }-+0
	rel 44+4 t=-32763 type.*struct { main.c unsafe.Pointer; main.elem unsafe.Pointer }+0
	rel 48+8 t=1 type..importpath.main.+0
	rel 56+8 t=1 type.noalg.struct { main.c unsafe.Pointer; main.elem unsafe.Pointer }+80
	rel 80+8 t=1 type..namedata.c-+0
	rel 88+8 t=1 type.unsafe.Pointer+0
	rel 104+8 t=1 type..namedata.elem-+0
	rel 112+8 t=1 type.unsafe.Pointer+0
type..namedata.*[]struct { c unsafe.Pointer; elem unsafe.Pointer }- SRODATA dupok size=53
	0x0000 00 33 2a 5b 5d 73 74 72 75 63 74 20 7b 20 63 20  .3*[]struct { c 
	0x0010 75 6e 73 61 66 65 2e 50 6f 69 6e 74 65 72 3b 20  unsafe.Pointer; 
	0x0020 65 6c 65 6d 20 75 6e 73 61 66 65 2e 50 6f 69 6e  elem unsafe.Poin
	0x0030 74 65 72 20 7d                                   ter }
type.*[]struct { main.c unsafe.Pointer; main.elem unsafe.Pointer } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 cc 6b c7 f1 08 08 08 36 00 00 00 00 00 00 00 00  .k.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]struct { c unsafe.Pointer; elem unsafe.Pointer }-+0
	rel 48+8 t=1 type.[]struct { main.c unsafe.Pointer; main.elem unsafe.Pointer }+0
type.[]struct { main.c unsafe.Pointer; main.elem unsafe.Pointer } SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 c4 88 08 20 02 08 08 17 00 00 00 00 00 00 00 00  ... ............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]struct { c unsafe.Pointer; elem unsafe.Pointer }-+0
	rel 44+4 t=-32763 type.*[]struct { main.c unsafe.Pointer; main.elem unsafe.Pointer }+0
	rel 48+8 t=1 type.noalg.struct { main.c unsafe.Pointer; main.elem unsafe.Pointer }+0
type..namedata.*[2]struct { c unsafe.Pointer; elem unsafe.Pointer }- SRODATA dupok size=54
	0x0000 00 34 2a 5b 32 5d 73 74 72 75 63 74 20 7b 20 63  .4*[2]struct { c
	0x0010 20 75 6e 73 61 66 65 2e 50 6f 69 6e 74 65 72 3b   unsafe.Pointer;
	0x0020 20 65 6c 65 6d 20 75 6e 73 61 66 65 2e 50 6f 69   elem unsafe.Poi
	0x0030 6e 74 65 72 20 7d                                nter }
type.*[2]struct { main.c unsafe.Pointer; main.elem unsafe.Pointer } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 5d c5 0d 53 08 08 08 36 00 00 00 00 00 00 00 00  ]..S...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[2]struct { c unsafe.Pointer; elem unsafe.Pointer }-+0
	rel 48+8 t=1 type.noalg.[2]struct { main.c unsafe.Pointer; main.elem unsafe.Pointer }+0
runtime.gcbits.0f SRODATA dupok size=1
	0x0000 0f                                               .
type.noalg.[2]struct { main.c unsafe.Pointer; main.elem unsafe.Pointer } SRODATA dupok size=72
	0x0000 20 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00   ....... .......
	0x0010 10 48 af 0c 02 08 08 11 00 00 00 00 00 00 00 00  .H..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.0f+0
	rel 40+4 t=5 type..namedata.*[2]struct { c unsafe.Pointer; elem unsafe.Pointer }-+0
	rel 44+4 t=-32763 type.*[2]struct { main.c unsafe.Pointer; main.elem unsafe.Pointer }+0
	rel 48+8 t=1 type.noalg.struct { main.c unsafe.Pointer; main.elem unsafe.Pointer }+0
	rel 56+8 t=1 type.[]struct { main.c unsafe.Pointer; main.elem unsafe.Pointer }+0
type..importpath.time. SRODATA dupok size=6
	0x0000 00 04 74 69 6d 65                                ..time
gclocals·ykHN0vawYuq1dUW4zEe2gA== SRODATA dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
gclocals·wjeg23v4hVcs936x4HEGGQ== SRODATA dupok size=14
	0x0000 03 00 00 00 0b 00 00 00 00 00 02 00 03 00        ..............
main.main.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 e0 ff ff ff 20 00 00 00  ............ ...
	0x0010 20 00 00 00 00 00 00 00                           .......
	rel 20+4 t=5 runtime.gcbits.0f+0
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·CnDyI2HjYXFz19SsOj98tw== SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
