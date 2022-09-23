main.main STEXT size=272 args=0x0 locals=0x98 funcid=0x0 align=0x0
	0x0000 00000 (append-slice-alloc3.go:5)	TEXT	main.main(SB), ABIInternal, $160-0
	0x0000 00000 (append-slice-alloc3.go:5)	MOVD	16(g), R16
	0x0004 00004 (append-slice-alloc3.go:5)	PCDATA	$0, $-2
	0x0004 00004 (append-slice-alloc3.go:5)	SUB	$32, RSP, R17
	0x0008 00008 (append-slice-alloc3.go:5)	CMP	R16, R17
	0x000c 00012 (append-slice-alloc3.go:5)	BLS	256
	0x0010 00016 (append-slice-alloc3.go:5)	PCDATA	$0, $-1
	0x0010 00016 (append-slice-alloc3.go:5)	MOVD.W	R30, -160(RSP)
	0x0014 00020 (append-slice-alloc3.go:5)	MOVD	R29, -8(RSP)
	0x0018 00024 (append-slice-alloc3.go:5)	SUB	$8, RSP, R29
	0x001c 00028 (append-slice-alloc3.go:5)	FUNCDATA	ZR, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x001c 00028 (append-slice-alloc3.go:5)	FUNCDATA	$1, gclocals·PywSJIYqXiMHWby6oWHnCg==(SB)
	0x001c 00028 (append-slice-alloc3.go:6)	MOVD	$go.string."hello "(SB), R0
	0x0024 00036 (append-slice-alloc3.go:6)	MOVD	$6, R1
	0x0028 00040 (append-slice-alloc3.go:6)	MOVD	$256, R2
	0x002c 00044 (append-slice-alloc3.go:6)	PCDATA	$1, ZR
	0x002c 00044 (append-slice-alloc3.go:6)	CALL	strings.Repeat(SB)
	0x0030 00048 (append-slice-alloc3.go:6)	MOVD	R0, main..autotmp_2-64(SP)
	0x0034 00052 (append-slice-alloc3.go:6)	MOVD	R1, main..autotmp_2-56(SP)
	0x0038 00056 (append-slice-alloc3.go:6)	MOVD	$go.string." "(SB), R2
	0x0040 00064 (append-slice-alloc3.go:6)	MOVD	$1, R3
	0x0044 00068 (append-slice-alloc3.go:6)	CALL	strings.Split(SB)
	0x0048 00072 (append-slice-alloc3.go:6)	MOVD	R0, main.old-48(SP)
	0x004c 00076 (append-slice-alloc3.go:6)	MOVD	R1, main.old-40(SP)
	0x0050 00080 (append-slice-alloc3.go:6)	MOVD	R2, main.old-32(SP)
	0x0054 00084 (append-slice-alloc3.go:7)	MOVD	main.old-40(SP), R2
	0x0058 00088 (append-slice-alloc3.go:7)	ADD	$1, R2, R4
	0x005c 00092 (append-slice-alloc3.go:7)	MOVD	main.old-32(SP), R3
	0x0060 00096 (append-slice-alloc3.go:7)	MOVD	main.old-48(SP), R1
	0x0064 00100 (append-slice-alloc3.go:7)	CMP	R4, R3
	0x0068 00104 (append-slice-alloc3.go:7)	BHS	112
	0x006c 00108 (append-slice-alloc3.go:7)	JMP	116
	0x0070 00112 (append-slice-alloc3.go:7)	PCDATA	$1, $-1
	0x0070 00112 (append-slice-alloc3.go:7)	JMP	152
	0x0074 00116 (append-slice-alloc3.go:7)	MOVD	R2, main..autotmp_3-72(SP)
	0x0078 00120 (append-slice-alloc3.go:7)	MOVD	$type.string(SB), R0
	0x0080 00128 (append-slice-alloc3.go:7)	PCDATA	$1, ZR
	0x0080 00128 (append-slice-alloc3.go:7)	CALL	runtime.growslice(SB)
	0x0084 00132 (append-slice-alloc3.go:7)	ADD	$1, R1, R4
	0x0088 00136 (append-slice-alloc3.go:7)	MOVD	R0, R1
	0x008c 00140 (append-slice-alloc3.go:7)	MOVD	R2, R3
	0x0090 00144 (append-slice-alloc3.go:7)	MOVD	main..autotmp_3-72(SP), R2
	0x0094 00148 (append-slice-alloc3.go:7)	JMP	152
	0x0098 00152 (append-slice-alloc3.go:7)	ADD	R2<<4, R1, R0
	0x009c 00156 (append-slice-alloc3.go:7)	MOVD	$4, R5
	0x00a0 00160 (append-slice-alloc3.go:7)	MOVD	R5, 8(R0)
	0x00a4 00164 (append-slice-alloc3.go:7)	LSL	$4, R2, R5
	0x00a8 00168 (append-slice-alloc3.go:7)	PCDATA	ZR, $-2
	0x00a8 00168 (append-slice-alloc3.go:7)	MOVWU	runtime.writeBarrier(SB), R6
	0x00b4 00180 (append-slice-alloc3.go:7)	CBZW	R6, 188
	0x00b8 00184 (append-slice-alloc3.go:7)	JMP	204
	0x00bc 00188 (append-slice-alloc3.go:7)	MOVD	$go.string."1234"(SB), R0
	0x00c4 00196 (append-slice-alloc3.go:7)	MOVD	R0, (R1)(R5)
	0x00c8 00200 (append-slice-alloc3.go:7)	JMP	232
	0x00cc 00204 (append-slice-alloc3.go:7)	MOVD	R0, R2
	0x00d0 00208 (append-slice-alloc3.go:7)	MOVD	R3, R0
	0x00d4 00212 (append-slice-alloc3.go:7)	MOVD	$go.string."1234"(SB), R3
	0x00dc 00220 (append-slice-alloc3.go:7)	CALL	runtime.gcWriteBarrier(SB)
	0x00e0 00224 (append-slice-alloc3.go:7)	MOVD	R0, R3
	0x00e4 00228 (append-slice-alloc3.go:7)	JMP	232
	0x00e8 00232 (append-slice-alloc3.go:7)	PCDATA	ZR, $-1
	0x00e8 00232 (append-slice-alloc3.go:7)	MOVD	R1, main.new-24(SP)
	0x00ec 00236 (append-slice-alloc3.go:7)	MOVD	R4, main.new-16(SP)
	0x00f0 00240 (append-slice-alloc3.go:7)	MOVD	R3, main.new-8(SP)
	0x00f4 00244 (append-slice-alloc3.go:9)	LDP	-8(RSP), (R29, R30)
	0x00f8 00248 (append-slice-alloc3.go:9)	ADD	$160, RSP
	0x00fc 00252 (append-slice-alloc3.go:9)	RET	(R30)
	0x0100 00256 (append-slice-alloc3.go:9)	NOP
	0x0100 00256 (append-slice-alloc3.go:5)	PCDATA	$1, $-1
	0x0100 00256 (append-slice-alloc3.go:5)	PCDATA	$0, $-2
	0x0100 00256 (append-slice-alloc3.go:5)	MOVD	R30, R3
	0x0104 00260 (append-slice-alloc3.go:5)	CALL	runtime.morestack_noctxt(SB)
	0x0108 00264 (append-slice-alloc3.go:5)	PCDATA	$0, $-1
	0x0108 00264 (append-slice-alloc3.go:5)	JMP	0
	0x0000 90 0b 40 f9 f1 83 00 d1 3f 02 10 eb a9 07 00 54  ..@.....?......T
	0x0010 fe 0f 16 f8 fd 83 1f f8 fd 23 00 d1 00 00 00 90  .........#......
	0x0020 00 00 00 91 e1 07 7f b2 e2 03 78 b2 00 00 00 94  ..........x.....
	0x0030 e0 2f 00 f9 e1 33 00 f9 02 00 00 90 42 00 00 91  ./...3......B...
	0x0040 e3 03 40 b2 00 00 00 94 e0 37 00 f9 e1 3b 00 f9  ..@......7...;..
	0x0050 e2 3f 00 f9 e2 3b 40 f9 44 04 00 91 e3 3f 40 f9  .?...;@.D....?@.
	0x0060 e1 37 40 f9 7f 00 04 eb 42 00 00 54 02 00 00 14  .7@.....B..T....
	0x0070 0a 00 00 14 e2 2b 00 f9 00 00 00 90 00 00 00 91  .....+..........
	0x0080 00 00 00 94 24 04 00 91 e1 03 00 aa e3 03 02 aa  ....$...........
	0x0090 e2 2b 40 f9 01 00 00 14 20 10 02 8b e5 03 7e b2  .+@..... .....~.
	0x00a0 05 04 00 f9 45 ec 7c d3 1b 00 00 90 7b 03 00 91  ....E.|.....{...
	0x00b0 66 03 40 b9 46 00 00 34 05 00 00 14 00 00 00 90  f.@.F..4........
	0x00c0 00 00 00 91 20 68 25 f8 08 00 00 14 e2 03 00 aa  .... h%.........
	0x00d0 e0 03 03 aa 03 00 00 90 63 00 00 91 00 00 00 94  ........c.......
	0x00e0 e3 03 00 aa 01 00 00 14 e1 43 00 f9 e4 47 00 f9  .........C...G..
	0x00f0 e3 4b 00 f9 fd fb 7f a9 ff 83 02 91 c0 03 5f d6  .K............_.
	0x0100 e3 03 1e aa 00 00 00 94 be ff ff 17 00 00 00 00  ................
	rel 28+8 t=3 go.string."hello "+0
	rel 44+4 t=9 strings.Repeat+0
	rel 56+8 t=3 go.string." "+0
	rel 68+4 t=9 strings.Split+0
	rel 120+8 t=3 type.string+0
	rel 128+4 t=9 runtime.growslice+0
	rel 168+8 t=3 runtime.writeBarrier+0
	rel 188+8 t=3 go.string."1234"+0
	rel 212+8 t=3 go.string."1234"+0
	rel 220+4 t=9 runtime.gcWriteBarrier+0
	rel 260+4 t=9 runtime.morestack_noctxt+0
go.cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go.cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 strings..inittask+0
go.string."hello " SRODATA dupok size=6
	0x0000 68 65 6c 6c 6f 20                                hello 
go.string." " SRODATA dupok size=1
	0x0000 20                                                
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
type..importpath.strings. SRODATA dupok size=9
	0x0000 00 07 73 74 72 69 6e 67 73                       ..strings
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·PywSJIYqXiMHWby6oWHnCg== SRODATA dupok size=9
	0x0000 01 00 00 00 08 00 00 00 00                       .........
