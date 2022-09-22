main.main STEXT size=384 args=0x0 locals=0xa8 funcid=0x0 align=0x0
	0x0000 00000 (new-slice.go:8)	TEXT	main.main(SB), ABIInternal, $176-0
	0x0000 00000 (new-slice.go:8)	MOVD	16(g), R16
	0x0004 00004 (new-slice.go:8)	PCDATA	$0, $-2
	0x0004 00004 (new-slice.go:8)	SUB	$48, RSP, R17
	0x0008 00008 (new-slice.go:8)	CMP	R16, R17
	0x000c 00012 (new-slice.go:8)	BLS	360
	0x0010 00016 (new-slice.go:8)	PCDATA	$0, $-1
	0x0010 00016 (new-slice.go:8)	MOVD.W	R30, -176(RSP)
	0x0014 00020 (new-slice.go:8)	MOVD	R29, -8(RSP)
	0x0018 00024 (new-slice.go:8)	SUB	$8, RSP, R29
	0x001c 00028 (new-slice.go:8)	FUNCDATA	ZR, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x001c 00028 (new-slice.go:8)	FUNCDATA	$1, gclocals·IKs4nCiP63HHjS17MJNVbQ==(SB)
	0x001c 00028 (new-slice.go:9)	MOVD	ZR, main.size-128(SP)
	0x0020 00032 (new-slice.go:9)	PCDATA	$0, $-3
	0x0020 00032 (new-slice.go:10)	MOVD	os.Args+8(SB), R1
	0x002c 00044 (new-slice.go:10)	PCDATA	$0, $-4
	0x002c 00044 (new-slice.go:10)	MOVD	os.Args(SB), R3
	0x0038 00056 (new-slice.go:10)	PCDATA	$0, $-3
	0x0038 00056 (new-slice.go:10)	MOVD	os.Args+16(SB), R4
	0x0044 00068 (new-slice.go:10)	PCDATA	$0, $-1
	0x0044 00068 (new-slice.go:10)	JMP	72
	0x0048 00072 (new-slice.go:10)	CMP	$1, R1
	0x004c 00076 (new-slice.go:10)	BHS	84
	0x0050 00080 (new-slice.go:10)	JMP	348
	0x0054 00084 (new-slice.go:10)	SUB	$1, R4, R4
	0x0058 00088 (new-slice.go:10)	NEG	R4, R5
	0x005c 00092 (new-slice.go:10)	ASR	$63, R5, R5
	0x0060 00096 (new-slice.go:10)	AND	$16, R5, R5
	0x0064 00100 (new-slice.go:10)	ADD	R5, R3, R3
	0x0068 00104 (new-slice.go:10)	MOVD	R3, main..autotmp_3-24(SP)
	0x006c 00108 (new-slice.go:10)	SUB	$1, R1, R5
	0x0070 00112 (new-slice.go:10)	MOVD	R5, main..autotmp_3-16(SP)
	0x0074 00116 (new-slice.go:10)	MOVD	R4, main..autotmp_3-8(SP)
	0x0078 00120 (new-slice.go:10)	MOVD	R3, main..autotmp_4-48(SP)
	0x007c 00124 (new-slice.go:10)	MOVD	R5, main..autotmp_4-40(SP)
	0x0080 00128 (new-slice.go:10)	MOVD	R4, main..autotmp_4-32(SP)
	0x0084 00132 (new-slice.go:10)	MOVD	ZR, main..autotmp_6-112(SP)
	0x0088 00136 (new-slice.go:10)	MOVD	main..autotmp_4-40(SP), R3
	0x008c 00140 (new-slice.go:10)	MOVD	R3, main..autotmp_7-120(SP)
	0x0090 00144 (new-slice.go:10)	MOVD	main..autotmp_4-48(SP), R3
	0x0094 00148 (new-slice.go:10)	MOVD	R3, main..autotmp_8-96(SP)
	0x0098 00152 (new-slice.go:10)	MOVD	main..autotmp_6-112(SP), R3
	0x009c 00156 (new-slice.go:10)	MOVD	main..autotmp_7-120(SP), R4
	0x00a0 00160 (new-slice.go:10)	CMP	R3, R4
	0x00a4 00164 (new-slice.go:10)	BGT	172
	0x00a8 00168 (new-slice.go:10)	JMP	176
	0x00ac 00172 (new-slice.go:10)	JMP	260
	0x00b0 00176 (new-slice.go:10)	JMP	180
	0x00b4 00180 (new-slice.go:13)	MOVD	main.size-128(SP), R2
	0x00b8 00184 (new-slice.go:13)	MOVD	main.size-128(SP), R1
	0x00bc 00188 (new-slice.go:13)	MOVD	$type.uint8(SB), R0
	0x00c4 00196 (new-slice.go:13)	PCDATA	$1, ZR
	0x00c4 00196 (new-slice.go:13)	CALL	runtime.makeslice(SB)
	0x00c8 00200 (new-slice.go:13)	MOVD	main.size-128(SP), R1
	0x00cc 00204 (new-slice.go:13)	MOVD	main.size-128(SP), R3
	0x00d0 00208 (new-slice.go:13)	MOVD	R0, main.s-72(SP)
	0x00d4 00212 (new-slice.go:13)	MOVD	R1, main.s-64(SP)
	0x00d8 00216 (new-slice.go:13)	MOVD	R3, main.s-56(SP)
	0x00dc 00220 (new-slice.go:14)	CMP	ZR, R1
	0x00e0 00224 (new-slice.go:14)	BHI	232
	0x00e4 00228 (new-slice.go:14)	JMP	252
	0x00e8 00232 (new-slice.go:14)	MOVD	$1, R1
	0x00ec 00236 (new-slice.go:14)	MOVB	R1, (R0)
	0x00f0 00240 (new-slice.go:16)	LDP	-8(RSP), (R29, R30)
	0x00f4 00244 (new-slice.go:16)	ADD	$176, RSP
	0x00f8 00248 (new-slice.go:16)	RET	(R30)
	0x00fc 00252 (new-slice.go:14)	MOVD	ZR, R0
	0x0100 00256 (new-slice.go:14)	CALL	runtime.panicIndex(SB)
	0x0104 00260 (new-slice.go:10)	MOVD	main..autotmp_8-96(SP), R2
	0x0108 00264 (new-slice.go:10)	PCDATA	$0, $-2
	0x0108 00264 (new-slice.go:10)	MOVB	(R2), R27
	0x010c 00268 (new-slice.go:10)	PCDATA	$0, $-1
	0x010c 00268 (new-slice.go:10)	MOVD	(R2), R0
	0x0110 00272 (new-slice.go:10)	MOVD	8(R2), R1
	0x0114 00276 (new-slice.go:10)	MOVD	R0, main.a-88(SP)
	0x0118 00280 (new-slice.go:10)	MOVD	R1, main.a-80(SP)
	0x011c 00284 (new-slice.go:11)	PCDATA	$1, $1
	0x011c 00284 (new-slice.go:11)	CALL	strconv.Atoi(SB)
	0x0120 00288 (new-slice.go:11)	MOVD	R0, main..autotmp_5-104(SP)
	0x0124 00292 (new-slice.go:11)	MOVD	R0, main.size-128(SP)
	0x0128 00296 (new-slice.go:11)	JMP	300
	0x012c 00300 (new-slice.go:10)	MOVD	main..autotmp_6-112(SP), R3
	0x0130 00304 (new-slice.go:10)	ADD	$1, R3, R3
	0x0134 00308 (new-slice.go:10)	MOVD	R3, main..autotmp_6-112(SP)
	0x0138 00312 (new-slice.go:10)	MOVD	main..autotmp_7-120(SP), R4
	0x013c 00316 (new-slice.go:10)	CMP	R3, R4
	0x0140 00320 (new-slice.go:10)	BGT	328
	0x0144 00324 (new-slice.go:10)	JMP	344
	0x0148 00328 (new-slice.go:10)	MOVD	main..autotmp_8-96(SP), R2
	0x014c 00332 (new-slice.go:10)	ADD	$16, R2, R2
	0x0150 00336 (new-slice.go:10)	MOVD	R2, main..autotmp_8-96(SP)
	0x0154 00340 (new-slice.go:10)	JMP	260
	0x0158 00344 (new-slice.go:13)	PCDATA	$1, $-1
	0x0158 00344 (new-slice.go:13)	JMP	180
	0x015c 00348 (new-slice.go:10)	MOVD	$1, R0
	0x0160 00352 (new-slice.go:10)	PCDATA	$1, ZR
	0x0160 00352 (new-slice.go:10)	CALL	runtime.panicSliceB(SB)
	0x0164 00356 (new-slice.go:10)	HINT	ZR
	0x0168 00360 (new-slice.go:10)	NOP
	0x0168 00360 (new-slice.go:8)	PCDATA	$1, $-1
	0x0168 00360 (new-slice.go:8)	PCDATA	$0, $-2
	0x0168 00360 (new-slice.go:8)	MOVD	R30, R3
	0x016c 00364 (new-slice.go:8)	CALL	runtime.morestack_noctxt(SB)
	0x0170 00368 (new-slice.go:8)	PCDATA	$0, $-1
	0x0170 00368 (new-slice.go:8)	JMP	0
	0x0000 90 0b 40 f9 f1 c3 00 d1 3f 02 10 eb e9 0a 00 54  ..@.....?......T
	0x0010 fe 0f 15 f8 fd 83 1f f8 fd 23 00 d1 ff 17 00 f9  .........#......
	0x0020 1b 00 00 90 7b 03 00 91 61 03 40 f9 1b 00 00 90  ....{...a.@.....
	0x0030 7b 03 00 91 63 03 40 f9 1b 00 00 90 7b 03 00 91  {...c.@.....{...
	0x0040 64 03 40 f9 01 00 00 14 3f 04 00 f1 42 00 00 54  d.@.....?...B..T
	0x0050 43 00 00 14 84 04 00 d1 e5 03 04 cb a5 fc 7f 93  C...............
	0x0060 a5 00 7c 92 63 00 05 8b e3 4b 00 f9 25 04 00 d1  ..|.c....K..%...
	0x0070 e5 4f 00 f9 e4 53 00 f9 e3 3f 00 f9 e5 43 00 f9  .O...S...?...C..
	0x0080 e4 47 00 f9 ff 1f 00 f9 e3 43 40 f9 e3 1b 00 f9  .G.......C@.....
	0x0090 e3 3f 40 f9 e3 27 00 f9 e3 1f 40 f9 e4 1b 40 f9  .?@..'....@...@.
	0x00a0 9f 00 03 eb 4c 00 00 54 02 00 00 14 16 00 00 14  ....L..T........
	0x00b0 01 00 00 14 e2 17 40 f9 e1 17 40 f9 00 00 00 90  ......@...@.....
	0x00c0 00 00 00 91 00 00 00 94 e1 17 40 f9 e3 17 40 f9  ..........@...@.
	0x00d0 e0 33 00 f9 e1 37 00 f9 e3 3b 00 f9 3f 00 1f eb  .3...7...;..?...
	0x00e0 48 00 00 54 06 00 00 14 e1 03 40 b2 01 00 00 39  H..T......@....9
	0x00f0 fd fb 7f a9 ff c3 02 91 c0 03 5f d6 00 00 80 d2  .........._.....
	0x0100 00 00 00 94 e2 27 40 f9 5b 00 80 39 40 00 40 f9  .....'@.[..9@.@.
	0x0110 41 04 40 f9 e0 2b 00 f9 e1 2f 00 f9 00 00 00 94  A.@..+.../......
	0x0120 e0 23 00 f9 e0 17 00 f9 01 00 00 14 e3 1f 40 f9  .#............@.
	0x0130 63 04 00 91 e3 1f 00 f9 e4 1b 40 f9 9f 00 03 eb  c.........@.....
	0x0140 4c 00 00 54 05 00 00 14 e2 27 40 f9 42 40 00 91  L..T.....'@.B@..
	0x0150 e2 27 00 f9 ec ff ff 17 d7 ff ff 17 e0 03 40 b2  .'............@.
	0x0160 00 00 00 94 1f 20 03 d5 e3 03 1e aa 00 00 00 94  ..... ..........
	0x0170 a4 ff ff 17 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=3 os.Args+8
	rel 44+8 t=3 os.Args+0
	rel 56+8 t=3 os.Args+16
	rel 188+8 t=3 type.uint8+0
	rel 196+4 t=9 runtime.makeslice+0
	rel 256+4 t=9 runtime.panicIndex+0
	rel 284+4 t=9 strconv.Atoi+0
	rel 352+4 t=9 runtime.panicSliceB+0
	rel 364+4 t=9 runtime.morestack_noctxt+0
go.cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go.cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=40
	0x0000 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 os..inittask+0
	rel 32+8 t=1 strconv..inittask+0
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
type..importpath.os. SRODATA dupok size=4
	0x0000 00 02 6f 73                                      ..os
type..importpath.strconv. SRODATA dupok size=9
	0x0000 00 07 73 74 72 63 6f 6e 76                       ..strconv
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·IKs4nCiP63HHjS17MJNVbQ== SRODATA dupok size=12
	0x0000 02 00 00 00 0c 00 00 00 00 00 01 00              ............
