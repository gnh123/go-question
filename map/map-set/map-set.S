main.main STEXT size=240 args=0x0 locals=0x118 funcid=0x0 align=0x0
	0x0000 00000 (map-set.go:3)	TEXT	main.main(SB), ABIInternal, $288-0
	0x0000 00000 (map-set.go:3)	MOVD	16(g), R16
	0x0004 00004 (map-set.go:3)	PCDATA	$0, $-2
	0x0004 00004 (map-set.go:3)	SUB	$160, RSP, R17
	0x0008 00008 (map-set.go:3)	CMP	R16, R17
	0x000c 00012 (map-set.go:3)	BLS	228
	0x0010 00016 (map-set.go:3)	PCDATA	$0, $-1
	0x0010 00016 (map-set.go:3)	SUB	$288, RSP, R20
	0x0014 00020 (map-set.go:3)	STP	(R29, R30), -8(R20)
	0x0018 00024 (map-set.go:3)	PCDATA	$0, $-2
	0x0018 00024 (map-set.go:3)	MOVD	R20, RSP
	0x001c 00028 (map-set.go:3)	PCDATA	$0, $-1
	0x001c 00028 (map-set.go:3)	SUB	$8, RSP, R29
	0x0020 00032 (map-set.go:3)	FUNCDATA	ZR, gclocals·ykHN0vawYuq1dUW4zEe2gA==(SB)
	0x0020 00032 (map-set.go:3)	FUNCDATA	$1, gclocals·nPqEVdKRZsr/9GfD9R6F/A==(SB)
	0x0020 00032 (map-set.go:3)	FUNCDATA	$2, main.main.stkobj(SB)
	0x0020 00032 (map-set.go:4)	STP	(ZR, ZR), main..autotmp_1-200(SP)
	0x0024 00036 (map-set.go:4)	STP	(ZR, ZR), main..autotmp_1-184(SP)
	0x0028 00040 (map-set.go:4)	STP	(ZR, ZR), main..autotmp_1-168(SP)
	0x002c 00044 (map-set.go:4)	MOVD	$main..autotmp_2-152(SP), R16
	0x0030 00048 (map-set.go:4)	MOVD	$main..autotmp_2-24(SP), R0
	0x0034 00052 (map-set.go:4)	STP.P	(ZR, ZR), 16(R16)
	0x0038 00056 (map-set.go:4)	CMP	R0, R16
	0x003c 00060 (map-set.go:4)	BLE	52
	0x0040 00064 (map-set.go:4)	MOVD	ZR, main..autotmp_2-8(SP)
	0x0044 00068 (map-set.go:4)	MOVD	$main..autotmp_1-200(SP), R0
	0x0048 00072 (map-set.go:4)	MOVD	R0, main..autotmp_3-208(SP)
	0x004c 00076 (map-set.go:4)	PCDATA	$0, $-2
	0x004c 00076 (map-set.go:4)	MOVB	(R0), R27
	0x0050 00080 (map-set.go:4)	PCDATA	$0, $-1
	0x0050 00080 (map-set.go:4)	MOVD	$main..autotmp_2-152(SP), R0
	0x0054 00084 (map-set.go:4)	MOVD	R0, main..autotmp_1-184(SP)
	0x0058 00088 (map-set.go:4)	MOVD	$main..autotmp_1-200(SP), R0
	0x005c 00092 (map-set.go:4)	MOVD	R0, main..autotmp_4-216(SP)
	0x0060 00096 (map-set.go:4)	PCDATA	$1, $1
	0x0060 00096 (map-set.go:4)	CALL	runtime.fastrand(SB)
	0x0064 00100 (map-set.go:4)	MOVD	main..autotmp_4-216(SP), R1
	0x0068 00104 (map-set.go:4)	PCDATA	$0, $-2
	0x0068 00104 (map-set.go:4)	MOVB	(R1), R27
	0x006c 00108 (map-set.go:4)	PCDATA	$0, $-1
	0x006c 00108 (map-set.go:4)	MOVW	R0, 12(R1)
	0x0070 00112 (map-set.go:4)	MOVD	$main..autotmp_1-200(SP), R0
	0x0074 00116 (map-set.go:4)	MOVD	R0, main.m-240(SP)
	0x0078 00120 (map-set.go:5)	MOVD	main.m-240(SP), R1
	0x007c 00124 (map-set.go:5)	MOVD	$type.map[string]bool(SB), R0
	0x0084 00132 (map-set.go:5)	MOVD	$go.string."hello"(SB), R2
	0x008c 00140 (map-set.go:5)	MOVD	$5, R3
	0x0090 00144 (map-set.go:5)	PCDATA	$1, $2
	0x0090 00144 (map-set.go:5)	CALL	runtime.mapassign_faststr(SB)
	0x0094 00148 (map-set.go:5)	MOVD	R0, main..autotmp_5-224(SP)
	0x0098 00152 (map-set.go:5)	PCDATA	$0, $-2
	0x0098 00152 (map-set.go:5)	MOVB	(R0), R27
	0x009c 00156 (map-set.go:5)	PCDATA	$0, $-1
	0x009c 00156 (map-set.go:5)	MOVD	$1, R1
	0x00a0 00160 (map-set.go:5)	MOVB	R1, (R0)
	0x00a4 00164 (map-set.go:6)	MOVD	main.m-240(SP), R0
	0x00a8 00168 (map-set.go:6)	MOVD	$go.string."world"(SB), R2
	0x00b0 00176 (map-set.go:6)	MOVD	$5, R3
	0x00b4 00180 (map-set.go:6)	MOVD	R0, R4
	0x00b8 00184 (map-set.go:6)	MOVD	$type.map[string]bool(SB), R0
	0x00c0 00192 (map-set.go:6)	MOVD	R4, R1
	0x00c4 00196 (map-set.go:6)	PCDATA	$1, ZR
	0x00c4 00196 (map-set.go:6)	CALL	runtime.mapassign_faststr(SB)
	0x00c8 00200 (map-set.go:6)	MOVD	R0, main..autotmp_6-232(SP)
	0x00cc 00204 (map-set.go:6)	PCDATA	$0, $-2
	0x00cc 00204 (map-set.go:6)	MOVB	(R0), R27
	0x00d0 00208 (map-set.go:6)	PCDATA	$0, $-1
	0x00d0 00208 (map-set.go:6)	MOVD	$1, R1
	0x00d4 00212 (map-set.go:6)	MOVB	R1, (R0)
	0x00d8 00216 (map-set.go:7)	LDP	-8(RSP), (R29, R30)
	0x00dc 00220 (map-set.go:7)	ADD	$288, RSP
	0x00e0 00224 (map-set.go:7)	RET	(R30)
	0x00e4 00228 (map-set.go:7)	NOP
	0x00e4 00228 (map-set.go:3)	PCDATA	$1, $-1
	0x00e4 00228 (map-set.go:3)	PCDATA	$0, $-2
	0x00e4 00228 (map-set.go:3)	MOVD	R30, R3
	0x00e8 00232 (map-set.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x00ec 00236 (map-set.go:3)	PCDATA	$0, $-1
	0x00ec 00236 (map-set.go:3)	JMP	0
	0x0000 90 0b 40 f9 f1 83 02 d1 3f 02 10 eb c9 06 00 54  ..@.....?......T
	0x0010 f4 83 04 d1 9d fa 3f a9 9f 02 00 91 fd 23 00 d1  ......?......#..
	0x0020 ff 7f 05 a9 ff 7f 06 a9 ff 7f 07 a9 f0 03 02 91  ................
	0x0030 e0 03 04 91 1f 7e 81 a8 1f 02 00 eb cd ff ff 54  .....~.........T
	0x0040 ff 8b 00 f9 e0 43 01 91 e0 27 00 f9 1b 00 80 39  .....C...'.....9
	0x0050 e0 03 02 91 e0 33 00 f9 e0 43 01 91 e0 23 00 f9  .....3...C...#..
	0x0060 00 00 00 94 e1 23 40 f9 3b 00 80 39 20 0c 00 b9  .....#@.;..9 ...
	0x0070 e0 43 01 91 e0 17 00 f9 e1 17 40 f9 00 00 00 90  .C........@.....
	0x0080 00 00 00 91 02 00 00 90 42 00 00 91 a3 00 80 d2  ........B.......
	0x0090 00 00 00 94 e0 1f 00 f9 1b 00 80 39 e1 03 40 b2  ...........9..@.
	0x00a0 01 00 00 39 e0 17 40 f9 02 00 00 90 42 00 00 91  ...9..@.....B...
	0x00b0 a3 00 80 d2 e4 03 00 aa 00 00 00 90 00 00 00 91  ................
	0x00c0 e1 03 04 aa 00 00 00 94 e0 1b 00 f9 1b 00 80 39  ...............9
	0x00d0 e1 03 40 b2 01 00 00 39 fd fb 7f a9 ff 83 04 91  ..@....9........
	0x00e0 c0 03 5f d6 e3 03 1e aa 00 00 00 94 c5 ff ff 17  .._.............
	rel 96+4 t=9 runtime.fastrand+0
	rel 124+8 t=3 type.map[string]bool+0
	rel 132+8 t=3 go.string."hello"+0
	rel 144+4 t=9 runtime.mapassign_faststr+0
	rel 168+8 t=3 go.string."world"+0
	rel 184+8 t=3 type.map[string]bool+0
	rel 196+4 t=9 runtime.mapassign_faststr+0
	rel 232+4 t=9 runtime.morestack_noctxt+0
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
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
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
type..namedata.*[8]uint8- SRODATA dupok size=11
	0x0000 00 09 2a 5b 38 5d 75 69 6e 74 38                 ..*[8]uint8
type.*[8]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f8 9a 95 1a 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[8]uint8-+0
	rel 48+8 t=1 type.[8]uint8+0
runtime.gcbits. SRODATA dupok size=0
type.[8]uint8 SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 89 18 9c b4 0a 01 01 11 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 08 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[8]uint8-+0
	rel 44+4 t=-32763 type.*[8]uint8+0
	rel 48+8 t=1 type.uint8+0
	rel 56+8 t=1 type.[]uint8+0
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
type..namedata.*[8]string- SRODATA dupok size=12
	0x0000 00 0a 2a 5b 38 5d 73 74 72 69 6e 67              ..*[8]string
type.*[8]string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 e3 bf d7 63 08 08 08 36 00 00 00 00 00 00 00 00  ...c...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[8]string-+0
	rel 48+8 t=1 type.noalg.[8]string+0
runtime.gcbits.5555 SRODATA dupok size=2
	0x0000 55 55                                            UU
type.noalg.[8]string SRODATA dupok size=72
	0x0000 80 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00  ........x.......
	0x0010 0c 1c ff 04 02 08 08 11 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 08 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.5555+0
	rel 40+4 t=5 type..namedata.*[8]string-+0
	rel 44+4 t=-32763 type.*[8]string+0
	rel 48+8 t=1 type.string+0
	rel 56+8 t=1 type.[]string+0
type..namedata.*[]bool- SRODATA dupok size=9
	0x0000 00 07 2a 5b 5d 62 6f 6f 6c                       ..*[]bool
type.*[]bool SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 99 65 d8 4b 08 08 08 36 00 00 00 00 00 00 00 00  .e.K...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]bool-+0
	rel 48+8 t=1 type.[]bool+0
type.[]bool SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 38 6e 3c 4f 02 08 08 17 00 00 00 00 00 00 00 00  8n<O............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]bool-+0
	rel 44+4 t=-32763 type.*[]bool+0
	rel 48+8 t=1 type.bool+0
type..namedata.*[8]bool- SRODATA dupok size=10
	0x0000 00 08 2a 5b 38 5d 62 6f 6f 6c                    ..*[8]bool
type.*[8]bool SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f6 c2 d4 08 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[8]bool-+0
	rel 48+8 t=1 type.noalg.[8]bool+0
type.noalg.[8]bool SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 72 f8 b2 0b 02 01 01 11 00 00 00 00 00 00 00 00  r...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 08 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[8]bool-+0
	rel 44+4 t=-32763 type.*[8]bool+0
	rel 48+8 t=1 type.bool+0
	rel 56+8 t=1 type.[]bool+0
runtime.gcbits.aaaa04 SRODATA dupok size=3
	0x0000 aa aa 04                                         ...
type..namedata.*map.bucket[string]bool- SRODATA dupok size=25
	0x0000 00 17 2a 6d 61 70 2e 62 75 63 6b 65 74 5b 73 74  ..*map.bucket[st
	0x0010 72 69 6e 67 5d 62 6f 6f 6c                       ring]bool
type..importpath.. SRODATA dupok size=2
	0x0000 00 00                                            ..
type..namedata.topbits- SRODATA dupok size=9
	0x0000 00 07 74 6f 70 62 69 74 73                       ..topbits
type..namedata.keys- SRODATA dupok size=6
	0x0000 00 04 6b 65 79 73                                ..keys
type..namedata.elems- SRODATA dupok size=7
	0x0000 00 05 65 6c 65 6d 73                             ..elems
type..namedata.overflow- SRODATA dupok size=10
	0x0000 00 08 6f 76 65 72 66 6c 6f 77                    ..overflow
type.noalg.map.bucket[string]bool SRODATA dupok size=176
	0x0000 98 00 00 00 00 00 00 00 98 00 00 00 00 00 00 00  ................
	0x0010 3b dc ed 4f 02 08 08 19 00 00 00 00 00 00 00 00  ;..O............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 04 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 88 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 00 00 00 90 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.aaaa04+0
	rel 40+4 t=5 type..namedata.*map.bucket[string]bool-+0
	rel 44+4 t=-32763 type.*map.bucket[string]bool+0
	rel 48+8 t=1 type..importpath..+0
	rel 56+8 t=1 type.noalg.map.bucket[string]bool+80
	rel 80+8 t=1 type..namedata.topbits-+0
	rel 88+8 t=1 type.[8]uint8+0
	rel 104+8 t=1 type..namedata.keys-+0
	rel 112+8 t=1 type.noalg.[8]string+0
	rel 128+8 t=1 type..namedata.elems-+0
	rel 136+8 t=1 type.noalg.[8]bool+0
	rel 152+8 t=1 type..namedata.overflow-+0
	rel 160+8 t=1 type.unsafe.Pointer+0
type.*map.bucket[string]bool SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 2c 68 f2 42 08 08 08 36 00 00 00 00 00 00 00 00  ,h.B...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*map.bucket[string]bool-+0
	rel 48+8 t=1 type.noalg.map.bucket[string]bool+0
runtime.gcbits.2c SRODATA dupok size=1
	0x0000 2c                                               ,
type..namedata.*map.hdr[string]bool- SRODATA dupok size=22
	0x0000 00 14 2a 6d 61 70 2e 68 64 72 5b 73 74 72 69 6e  ..*map.hdr[strin
	0x0010 67 5d 62 6f 6f 6c                                g]bool
type..namedata.count- SRODATA dupok size=7
	0x0000 00 05 63 6f 75 6e 74                             ..count
type..namedata.flags- SRODATA dupok size=7
	0x0000 00 05 66 6c 61 67 73                             ..flags
type..namedata.B. SRODATA dupok size=3
	0x0000 01 01 42                                         ..B
type..namedata.noverflow- SRODATA dupok size=11
	0x0000 00 09 6e 6f 76 65 72 66 6c 6f 77                 ..noverflow
type..namedata.hash0- SRODATA dupok size=7
	0x0000 00 05 68 61 73 68 30                             ..hash0
type..namedata.buckets- SRODATA dupok size=9
	0x0000 00 07 62 75 63 6b 65 74 73                       ..buckets
type..namedata.oldbuckets- SRODATA dupok size=12
	0x0000 00 0a 6f 6c 64 62 75 63 6b 65 74 73              ..oldbuckets
type..namedata.nevacuate- SRODATA dupok size=11
	0x0000 00 09 6e 65 76 61 63 75 61 74 65                 ..nevacuate
type..namedata.extra- SRODATA dupok size=7
	0x0000 00 05 65 78 74 72 61                             ..extra
type.noalg.map.hdr[string]bool SRODATA dupok size=296
	0x0000 30 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00  0.......0.......
	0x0010 ed cf 2b a5 02 08 08 19 00 00 00 00 00 00 00 00  ..+.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 09 00 00 00 00 00 00 00 09 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 09 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 00 00 00 0a 00 00 00 00 00 00 00  ................
	0x00b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00c0 0c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00d0 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x00e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00f0 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0100 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  ........ .......
	0x0110 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0120 28 00 00 00 00 00 00 00                          (.......
	rel 32+8 t=1 runtime.gcbits.2c+0
	rel 40+4 t=5 type..namedata.*map.hdr[string]bool-+0
	rel 44+4 t=-32763 type.*map.hdr[string]bool+0
	rel 48+8 t=1 type..importpath..+0
	rel 56+8 t=1 type.noalg.map.hdr[string]bool+80
	rel 80+8 t=1 type..namedata.count-+0
	rel 88+8 t=1 type.int+0
	rel 104+8 t=1 type..namedata.flags-+0
	rel 112+8 t=1 type.uint8+0
	rel 128+8 t=1 type..namedata.B.+0
	rel 136+8 t=1 type.uint8+0
	rel 152+8 t=1 type..namedata.noverflow-+0
	rel 160+8 t=1 type.uint16+0
	rel 176+8 t=1 type..namedata.hash0-+0
	rel 184+8 t=1 type.uint32+0
	rel 200+8 t=1 type..namedata.buckets-+0
	rel 208+8 t=1 type.*map.bucket[string]bool+0
	rel 224+8 t=1 type..namedata.oldbuckets-+0
	rel 232+8 t=1 type.*map.bucket[string]bool+0
	rel 248+8 t=1 type..namedata.nevacuate-+0
	rel 256+8 t=1 type.uintptr+0
	rel 272+8 t=1 type..namedata.extra-+0
	rel 280+8 t=1 type.unsafe.Pointer+0
type.*map.hdr[string]bool SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 b3 c2 d4 94 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*map.hdr[string]bool-+0
	rel 48+8 t=1 type.noalg.map.hdr[string]bool+0
runtime.strhash·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.strhash+0
type..namedata.*map[string]bool- SRODATA dupok size=18
	0x0000 00 10 2a 6d 61 70 5b 73 74 72 69 6e 67 5d 62 6f  ..*map[string]bo
	0x0010 6f 6c                                            ol
type.*map[string]bool SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 63 c6 22 60 08 08 08 36 00 00 00 00 00 00 00 00  c."`...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*map[string]bool-+0
	rel 48+8 t=1 type.map[string]bool+0
type.map[string]bool SRODATA dupok size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fb 60 18 7f 02 08 08 35 00 00 00 00 00 00 00 00  .`.....5........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 10 01 98 00 0c 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*map[string]bool-+0
	rel 44+4 t=-32763 type.*map[string]bool+0
	rel 48+8 t=1 type.string+0
	rel 56+8 t=1 type.bool+0
	rel 64+8 t=1 type.noalg.map.bucket[string]bool+0
	rel 72+8 t=1 runtime.strhash·f+0
gclocals·ykHN0vawYuq1dUW4zEe2gA== SRODATA dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
gclocals·nPqEVdKRZsr/9GfD9R6F/A== SRODATA dupok size=20
	0x0000 03 00 00 00 1e 00 00 00 00 00 00 00 88 05 00 00  ................
	0x0010 01 00 00 00                                      ....
main.main.stkobj SRODATA static size=40
	0x0000 02 00 00 00 00 00 00 00 38 ff ff ff 30 00 00 00  ........8...0...
	0x0010 30 00 00 00 00 00 00 00 68 ff ff ff 98 00 00 00  0.......h.......
	0x0020 98 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.2c+0
	rel 36+4 t=5 runtime.gcbits.aaaa04+0
