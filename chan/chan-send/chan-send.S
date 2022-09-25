main.main STEXT size=176 args=0x0 locals=0x38 funcid=0x0 align=0x0
	0x0000 00000 (chan-send.go:3)	TEXT	main.main(SB), ABIInternal, $64-0
	0x0000 00000 (chan-send.go:3)	MOVD	16(g), R16
	0x0004 00004 (chan-send.go:3)	PCDATA	$0, $-2
	0x0004 00004 (chan-send.go:3)	CMP	R16, RSP
	0x0008 00008 (chan-send.go:3)	BLS	164
	0x000c 00012 (chan-send.go:3)	PCDATA	$0, $-1
	0x000c 00012 (chan-send.go:3)	MOVD.W	R30, -64(RSP)
	0x0010 00016 (chan-send.go:3)	MOVD	R29, -8(RSP)
	0x0014 00020 (chan-send.go:3)	SUB	$8, RSP, R29
	0x0018 00024 (chan-send.go:3)	FUNCDATA	ZR, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0018 00024 (chan-send.go:3)	FUNCDATA	$1, gclocals·u97U1TPSCOlmat2W1oBl9Q==(SB)
	0x0018 00024 (chan-send.go:4)	MOVD	$type.chan bool(SB), R0
	0x0020 00032 (chan-send.go:4)	MOVD	ZR, R1
	0x0024 00036 (chan-send.go:4)	PCDATA	$1, ZR
	0x0024 00036 (chan-send.go:4)	CALL	runtime.makechan(SB)
	0x0028 00040 (chan-send.go:4)	MOVD	R0, main.c-16(SP)
	0x002c 00044 (chan-send.go:5)	MOVD	$type.noalg.struct { F uintptr; main.c chan bool }(SB), R0
	0x0034 00052 (chan-send.go:5)	PCDATA	$1, $1
	0x0034 00052 (chan-send.go:5)	CALL	runtime.newobject(SB)
	0x0038 00056 (chan-send.go:5)	MOVD	R0, main..autotmp_1-8(SP)
	0x003c 00060 (chan-send.go:5)	MOVD	$main.main.func1(SB), R2
	0x0044 00068 (chan-send.go:5)	MOVD	R2, (R0)
	0x0048 00072 (chan-send.go:5)	MOVD	main..autotmp_1-8(SP), R2
	0x004c 00076 (chan-send.go:5)	PCDATA	$0, $-2
	0x004c 00076 (chan-send.go:5)	MOVB	(R2), R27
	0x0050 00080 (chan-send.go:5)	PCDATA	$0, $-1
	0x0050 00080 (chan-send.go:5)	MOVD	main.c-16(SP), R3
	0x0054 00084 (chan-send.go:5)	ADD	$8, R2, R4
	0x0058 00088 (chan-send.go:5)	PCDATA	ZR, $-2
	0x0058 00088 (chan-send.go:5)	MOVWU	runtime.writeBarrier(SB), R5
	0x0064 00100 (chan-send.go:5)	CBZW	R5, 108
	0x0068 00104 (chan-send.go:5)	JMP	116
	0x006c 00108 (chan-send.go:5)	MOVD	R3, 8(R2)
	0x0070 00112 (chan-send.go:5)	JMP	128
	0x0074 00116 (chan-send.go:5)	MOVD	R4, R2
	0x0078 00120 (chan-send.go:5)	CALL	runtime.gcWriteBarrier(SB)
	0x007c 00124 (chan-send.go:5)	JMP	128
	0x0080 00128 (chan-send.go:5)	PCDATA	ZR, $-1
	0x0080 00128 (chan-send.go:5)	MOVD	main..autotmp_1-8(SP), R0
	0x0084 00132 (chan-send.go:5)	CALL	runtime.newproc(SB)
	0x0088 00136 (chan-send.go:9)	MOVD	main.c-16(SP), R0
	0x008c 00140 (chan-send.go:9)	MOVD	$main..stmp_0(SB), R1
	0x0094 00148 (chan-send.go:9)	PCDATA	$1, ZR
	0x0094 00148 (chan-send.go:9)	CALL	runtime.chansend1(SB)
	0x0098 00152 (chan-send.go:10)	LDP	-8(RSP), (R29, R30)
	0x009c 00156 (chan-send.go:10)	ADD	$64, RSP
	0x00a0 00160 (chan-send.go:10)	RET	(R30)
	0x00a4 00164 (chan-send.go:10)	NOP
	0x00a4 00164 (chan-send.go:3)	PCDATA	$1, $-1
	0x00a4 00164 (chan-send.go:3)	PCDATA	$0, $-2
	0x00a4 00164 (chan-send.go:3)	MOVD	R30, R3
	0x00a8 00168 (chan-send.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x00ac 00172 (chan-send.go:3)	PCDATA	$0, $-1
	0x00ac 00172 (chan-send.go:3)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb e9 04 00 54 fe 0f 1c f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 00 00 00 90 00 00 00 91  .....#..........
	0x0020 01 00 80 d2 00 00 00 94 e0 17 00 f9 00 00 00 90  ................
	0x0030 00 00 00 91 00 00 00 94 e0 1b 00 f9 02 00 00 90  ................
	0x0040 42 00 00 91 02 00 00 f9 e2 1b 40 f9 5b 00 80 39  B.........@.[..9
	0x0050 e3 17 40 f9 44 20 00 91 1b 00 00 90 7b 03 00 91  ..@.D ......{...
	0x0060 65 03 40 b9 45 00 00 34 03 00 00 14 43 04 00 f9  e.@.E..4....C...
	0x0070 04 00 00 14 e2 03 04 aa 00 00 00 94 01 00 00 14  ................
	0x0080 e0 1b 40 f9 00 00 00 94 e0 17 40 f9 01 00 00 90  ..@.......@.....
	0x0090 21 00 00 91 00 00 00 94 fd fb 7f a9 ff 03 01 91  !...............
	0x00a0 c0 03 5f d6 e3 03 1e aa 00 00 00 94 d5 ff ff 17  .._.............
	rel 24+8 t=3 type.chan bool+0
	rel 36+4 t=9 runtime.makechan+0
	rel 44+8 t=3 type.noalg.struct { F uintptr; main.c chan bool }+0
	rel 52+4 t=9 runtime.newobject+0
	rel 60+8 t=3 main.main.func1+0
	rel 88+8 t=3 runtime.writeBarrier+0
	rel 120+4 t=9 runtime.gcWriteBarrier+0
	rel 132+4 t=9 runtime.newproc+0
	rel 140+8 t=3 main..stmp_0+0
	rel 148+4 t=9 runtime.chansend1+0
	rel 168+4 t=9 runtime.morestack_noctxt+0
main.main.func1 STEXT size=80 args=0x0 locals=0x28 funcid=0x0 align=0x0
	0x0000 00000 (chan-send.go:5)	TEXT	main.main.func1(SB), NEEDCTXT|ABIInternal, $48-0
	0x0000 00000 (chan-send.go:5)	MOVD	16(g), R16
	0x0004 00004 (chan-send.go:5)	PCDATA	$0, $-2
	0x0004 00004 (chan-send.go:5)	CMP	R16, RSP
	0x0008 00008 (chan-send.go:5)	BLS	56
	0x000c 00012 (chan-send.go:5)	PCDATA	$0, $-1
	0x000c 00012 (chan-send.go:5)	MOVD.W	R30, -48(RSP)
	0x0010 00016 (chan-send.go:5)	MOVD	R29, -8(RSP)
	0x0014 00020 (chan-send.go:5)	SUB	$8, RSP, R29
	0x0018 00024 (chan-send.go:5)	FUNCDATA	ZR, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0018 00024 (chan-send.go:5)	FUNCDATA	$1, gclocals·Plqv2ff52JtlYaDd2Rwxbg==(SB)
	0x0018 00024 (chan-send.go:5)	MOVD	8(R26), R0
	0x001c 00028 (chan-send.go:5)	MOVD	R0, main.c-8(SP)
	0x0020 00032 (chan-send.go:6)	MOVD	$main..stmp_1(SB), R1
	0x0028 00040 (chan-send.go:6)	PCDATA	$1, ZR
	0x0028 00040 (chan-send.go:6)	CALL	runtime.chansend1(SB)
	0x002c 00044 (chan-send.go:7)	LDP	-8(RSP), (R29, R30)
	0x0030 00048 (chan-send.go:7)	ADD	$48, RSP
	0x0034 00052 (chan-send.go:7)	RET	(R30)
	0x0038 00056 (chan-send.go:7)	NOP
	0x0038 00056 (chan-send.go:5)	PCDATA	$1, $-1
	0x0038 00056 (chan-send.go:5)	PCDATA	$0, $-2
	0x0038 00056 (chan-send.go:5)	MOVD	R30, R3
	0x003c 00060 (chan-send.go:5)	CALL	runtime.morestack(SB)
	0x0040 00064 (chan-send.go:5)	PCDATA	$0, $-1
	0x0040 00064 (chan-send.go:5)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb 89 01 00 54 fe 0f 1d f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 40 07 40 f9 e0 13 00 f9  .....#..@.@.....
	0x0020 01 00 00 90 21 00 00 91 00 00 00 94 fd fb 7f a9  ....!...........
	0x0030 ff c3 00 91 c0 03 5f d6 e3 03 1e aa 00 00 00 94  ......_.........
	0x0040 f0 ff ff 17 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=3 main..stmp_1+0
	rel 40+4 t=9 runtime.chansend1+0
	rel 60+4 t=9 runtime.morestack+0
go.cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go.cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
main..stmp_0 SRODATA static size=1
	0x0000 01                                               .
main..stmp_1 SRODATA static size=1
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
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·u97U1TPSCOlmat2W1oBl9Q== SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 00 01                    ..........
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·Plqv2ff52JtlYaDd2Rwxbg== SRODATA dupok size=9
	0x0000 01 00 00 00 01 00 00 00 00                       .........
