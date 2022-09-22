main.main STEXT size=128 args=0x0 locals=0x88 funcid=0x0 align=0x0
	0x0000 00000 (join-string-2.go:3)	TEXT	main.main(SB), ABIInternal, $144-0
	0x0000 00000 (join-string-2.go:3)	MOVD	16(g), R16
	0x0004 00004 (join-string-2.go:3)	PCDATA	$0, $-2
	0x0004 00004 (join-string-2.go:3)	SUB	$16, RSP, R17
	0x0008 00008 (join-string-2.go:3)	CMP	R16, R17
	0x000c 00012 (join-string-2.go:3)	BLS	104
	0x0010 00016 (join-string-2.go:3)	PCDATA	$0, $-1
	0x0010 00016 (join-string-2.go:3)	MOVD.W	R30, -144(RSP)
	0x0014 00020 (join-string-2.go:3)	MOVD	R29, -8(RSP)
	0x0018 00024 (join-string-2.go:3)	SUB	$8, RSP, R29
	0x001c 00028 (join-string-2.go:3)	FUNCDATA	ZR, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x001c 00028 (join-string-2.go:3)	FUNCDATA	$1, gclocals·/ydTHfVJHvKeH/UP4dRKSQ==(SB)
	0x001c 00028 (join-string-2.go:4)	MOVD	$go.string."hello"(SB), R5
	0x0024 00036 (join-string-2.go:4)	MOVD	R5, main.s-16(SP)
	0x0028 00040 (join-string-2.go:4)	MOVD	$5, R5
	0x002c 00044 (join-string-2.go:4)	MOVD	R5, main.s-8(SP)
	0x0030 00048 (join-string-2.go:6)	MOVD	$go.string."world1"(SB), R3
	0x0038 00056 (join-string-2.go:6)	MOVD	R3, main.s2-32(SP)
	0x003c 00060 (join-string-2.go:6)	MOVD	$6, R4
	0x0040 00064 (join-string-2.go:6)	MOVD	R4, main.s2-24(SP)
	0x0044 00068 (join-string-2.go:8)	MOVD	main.s-16(SP), R1
	0x0048 00072 (join-string-2.go:8)	MOVD	main.s-8(SP), R2
	0x004c 00076 (join-string-2.go:8)	MOVD	$main..autotmp_3-80(SP), R0
	0x0050 00080 (join-string-2.go:8)	PCDATA	$1, ZR
	0x0050 00080 (join-string-2.go:8)	CALL	runtime.concatstring2(SB)
	0x0054 00084 (join-string-2.go:8)	MOVD	R0, main.s3-48(SP)
	0x0058 00088 (join-string-2.go:8)	MOVD	R1, main.s3-40(SP)
	0x005c 00092 (join-string-2.go:11)	LDP	-8(RSP), (R29, R30)
	0x0060 00096 (join-string-2.go:11)	ADD	$144, RSP
	0x0064 00100 (join-string-2.go:11)	RET	(R30)
	0x0068 00104 (join-string-2.go:11)	NOP
	0x0068 00104 (join-string-2.go:3)	PCDATA	$1, $-1
	0x0068 00104 (join-string-2.go:3)	PCDATA	$0, $-2
	0x0068 00104 (join-string-2.go:3)	MOVD	R30, R3
	0x006c 00108 (join-string-2.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x0070 00112 (join-string-2.go:3)	PCDATA	$0, $-1
	0x0070 00112 (join-string-2.go:3)	JMP	0
	0x0000 90 0b 40 f9 f1 43 00 d1 3f 02 10 eb e9 02 00 54  ..@..C..?......T
	0x0010 fe 0f 17 f8 fd 83 1f f8 fd 23 00 d1 05 00 00 90  .........#......
	0x0020 a5 00 00 91 e5 3f 00 f9 a5 00 80 d2 e5 43 00 f9  .....?.......C..
	0x0030 03 00 00 90 63 00 00 91 e3 37 00 f9 e4 07 7f b2  ....c....7......
	0x0040 e4 3b 00 f9 e1 3f 40 f9 e2 43 40 f9 e0 e3 00 91  .;...?@..C@.....
	0x0050 00 00 00 94 e0 2f 00 f9 e1 33 00 f9 fd fb 7f a9  ...../...3......
	0x0060 ff 43 02 91 c0 03 5f d6 e3 03 1e aa 00 00 00 94  .C...._.........
	0x0070 e4 ff ff 17 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 28+8 t=3 go.string."hello"+0
	rel 48+8 t=3 go.string."world1"+0
	rel 80+4 t=9 runtime.concatstring2+0
	rel 108+4 t=9 runtime.morestack_noctxt+0
go.cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go.cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
go.string."hello" SRODATA dupok size=5
	0x0000 68 65 6c 6c 6f                                   hello
go.string."world1" SRODATA dupok size=6
	0x0000 77 6f 72 6c 64 31                                world1
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
gclocals·/ydTHfVJHvKeH/UP4dRKSQ== SRODATA dupok size=9
	0x0000 01 00 00 00 06 00 00 00 00                       .........
