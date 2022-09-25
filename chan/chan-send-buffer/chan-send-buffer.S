main.main STEXT size=96 args=0x0 locals=0x28 funcid=0x0 align=0x0
	0x0000 00000 (chan-send-buffer.go:3)	TEXT	main.main(SB), ABIInternal, $48-0
	0x0000 00000 (chan-send-buffer.go:3)	MOVD	16(g), R16
	0x0004 00004 (chan-send-buffer.go:3)	PCDATA	$0, $-2
	0x0004 00004 (chan-send-buffer.go:3)	CMP	R16, RSP
	0x0008 00008 (chan-send-buffer.go:3)	BLS	84
	0x000c 00012 (chan-send-buffer.go:3)	PCDATA	$0, $-1
	0x000c 00012 (chan-send-buffer.go:3)	MOVD.W	R30, -48(RSP)
	0x0010 00016 (chan-send-buffer.go:3)	MOVD	R29, -8(RSP)
	0x0014 00020 (chan-send-buffer.go:3)	SUB	$8, RSP, R29
	0x0018 00024 (chan-send-buffer.go:3)	FUNCDATA	ZR, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0018 00024 (chan-send-buffer.go:3)	FUNCDATA	$1, gclocals·CnDyI2HjYXFz19SsOj98tw==(SB)
	0x0018 00024 (chan-send-buffer.go:4)	MOVD	$type.chan string(SB), R0
	0x0020 00032 (chan-send-buffer.go:4)	MOVD	$2, R1
	0x0024 00036 (chan-send-buffer.go:4)	PCDATA	$1, ZR
	0x0024 00036 (chan-send-buffer.go:4)	CALL	runtime.makechan(SB)
	0x0028 00040 (chan-send-buffer.go:4)	MOVD	R0, main.c-8(SP)
	0x002c 00044 (chan-send-buffer.go:5)	MOVD	$main..stmp_0(SB), R1
	0x0034 00052 (chan-send-buffer.go:5)	PCDATA	$1, $1
	0x0034 00052 (chan-send-buffer.go:5)	CALL	runtime.chansend1(SB)
	0x0038 00056 (chan-send-buffer.go:6)	MOVD	main.c-8(SP), R0
	0x003c 00060 (chan-send-buffer.go:6)	MOVD	$main..stmp_1(SB), R1
	0x0044 00068 (chan-send-buffer.go:6)	PCDATA	$1, ZR
	0x0044 00068 (chan-send-buffer.go:6)	CALL	runtime.chansend1(SB)
	0x0048 00072 (chan-send-buffer.go:7)	LDP	-8(RSP), (R29, R30)
	0x004c 00076 (chan-send-buffer.go:7)	ADD	$48, RSP
	0x0050 00080 (chan-send-buffer.go:7)	RET	(R30)
	0x0054 00084 (chan-send-buffer.go:7)	NOP
	0x0054 00084 (chan-send-buffer.go:3)	PCDATA	$1, $-1
	0x0054 00084 (chan-send-buffer.go:3)	PCDATA	$0, $-2
	0x0054 00084 (chan-send-buffer.go:3)	MOVD	R30, R3
	0x0058 00088 (chan-send-buffer.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x005c 00092 (chan-send-buffer.go:3)	PCDATA	$0, $-1
	0x005c 00092 (chan-send-buffer.go:3)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb 69 02 00 54 fe 0f 1d f8  ..@..c0.i..T....
	0x0010 fd 83 1f f8 fd 23 00 d1 00 00 00 90 00 00 00 91  .....#..........
	0x0020 e1 03 7f b2 00 00 00 94 e0 13 00 f9 01 00 00 90  ................
	0x0030 21 00 00 91 00 00 00 94 e0 13 40 f9 01 00 00 90  !.........@.....
	0x0040 21 00 00 91 00 00 00 94 fd fb 7f a9 ff c3 00 91  !...............
	0x0050 c0 03 5f d6 e3 03 1e aa 00 00 00 94 e9 ff ff 17  .._.............
	rel 24+8 t=3 type.chan string+0
	rel 36+4 t=9 runtime.makechan+0
	rel 44+8 t=3 main..stmp_0+0
	rel 52+4 t=9 runtime.chansend1+0
	rel 60+8 t=3 main..stmp_1+0
	rel 68+4 t=9 runtime.chansend1+0
	rel 88+4 t=9 runtime.morestack_noctxt+0
go.cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go.cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
go.string."1" SRODATA dupok size=1
	0x0000 31                                               1
go.string."2" SRODATA dupok size=1
	0x0000 32                                               2
main..stmp_0 SRODATA static size=16
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."1"+0
main..stmp_1 SRODATA static size=16
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."2"+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*chan string- SRODATA dupok size=14
	0x0000 00 0c 2a 63 68 61 6e 20 73 74 72 69 6e 67        ..*chan string
type.*chan string SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 81 6b 73 85 08 08 08 36 00 00 00 00 00 00 00 00  .ks....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*chan string-+0
	rel 48+8 t=1 type.chan string+0
type.chan string SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 e1 17 2d a8 0a 08 08 32 00 00 00 00 00 00 00 00  ..-....2........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*chan string-+0
	rel 44+4 t=-32763 type.*chan string+0
	rel 48+8 t=1 type.string+0
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·CnDyI2HjYXFz19SsOj98tw== SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
