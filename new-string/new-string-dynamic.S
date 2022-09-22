main.main STEXT size=224 args=0x0 locals=0x78 funcid=0x0 align=0x0
	0x0000 00000 (new-string-dynamic.go:5)	TEXT	main.main(SB), ABIInternal, $128-0
	0x0000 00000 (new-string-dynamic.go:5)	MOVD	16(g), R16
	0x0004 00004 (new-string-dynamic.go:5)	PCDATA	$0, $-2
	0x0004 00004 (new-string-dynamic.go:5)	CMP	R16, RSP
	0x0008 00008 (new-string-dynamic.go:5)	BLS	204
	0x000c 00012 (new-string-dynamic.go:5)	PCDATA	$0, $-1
	0x000c 00012 (new-string-dynamic.go:5)	MOVD.W	R30, -128(RSP)
	0x0010 00016 (new-string-dynamic.go:5)	MOVD	R29, -8(RSP)
	0x0014 00020 (new-string-dynamic.go:5)	SUB	$8, RSP, R29
	0x0018 00024 (new-string-dynamic.go:5)	FUNCDATA	ZR, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0018 00024 (new-string-dynamic.go:5)	FUNCDATA	$1, gclocals·PywSJIYqXiMHWby6oWHnCg==(SB)
	0x0018 00024 (new-string-dynamic.go:5)	FUNCDATA	$2, main.main.stkobj(SB)
	0x0018 00024 (new-string-dynamic.go:6)	MOVD	$type.string(SB), R0
	0x0020 00032 (new-string-dynamic.go:6)	PCDATA	$1, ZR
	0x0020 00032 (new-string-dynamic.go:6)	CALL	runtime.newobject(SB)
	0x0024 00036 (new-string-dynamic.go:6)	MOVD	R0, main.s1-64(SP)
	0x0028 00040 (new-string-dynamic.go:7)	MOVD	$5, R1
	0x002c 00044 (new-string-dynamic.go:7)	MOVD	R1, 8(R0)
	0x0030 00048 (new-string-dynamic.go:7)	PCDATA	ZR, $-2
	0x0030 00048 (new-string-dynamic.go:7)	MOVWU	runtime.writeBarrier(SB), R1
	0x003c 00060 (new-string-dynamic.go:7)	CBZW	R1, 68
	0x0040 00064 (new-string-dynamic.go:7)	JMP	84
	0x0044 00068 (new-string-dynamic.go:7)	MOVD	$go.string."hello"(SB), R5
	0x004c 00076 (new-string-dynamic.go:7)	MOVD	R5, (R0)
	0x0050 00080 (new-string-dynamic.go:7)	JMP	104
	0x0054 00084 (new-string-dynamic.go:7)	MOVD	R0, R2
	0x0058 00088 (new-string-dynamic.go:7)	MOVD	$go.string."hello"(SB), R3
	0x0060 00096 (new-string-dynamic.go:7)	CALL	runtime.gcWriteBarrier(SB)
	0x0064 00100 (new-string-dynamic.go:7)	JMP	104
	0x0068 00104 (new-string-dynamic.go:9)	PCDATA	ZR, $-1
	0x0068 00104 (new-string-dynamic.go:9)	MOVD	main.s1-64(SP), R5
	0x006c 00108 (new-string-dynamic.go:9)	MOVD	R5, main..autotmp_1-48(SP)
	0x0070 00112 (new-string-dynamic.go:9)	STP	(ZR, ZR), main..autotmp_2-40(SP)
	0x0074 00116 (new-string-dynamic.go:9)	MOVD	$main..autotmp_2-40(SP), R2
	0x0078 00120 (new-string-dynamic.go:9)	MOVD	R2, main..autotmp_4-56(SP)
	0x007c 00124 (new-string-dynamic.go:9)	PCDATA	$0, $-2
	0x007c 00124 (new-string-dynamic.go:9)	MOVB	(R2), R27
	0x0080 00128 (new-string-dynamic.go:9)	PCDATA	$0, $-1
	0x0080 00128 (new-string-dynamic.go:9)	MOVD	main..autotmp_1-48(SP), R5
	0x0084 00132 (new-string-dynamic.go:9)	MOVD	$type.*string(SB), R6
	0x008c 00140 (new-string-dynamic.go:9)	MOVD	R6, main..autotmp_2-40(SP)
	0x0090 00144 (new-string-dynamic.go:9)	MOVD	R5, main..autotmp_2-32(SP)
	0x0094 00148 (new-string-dynamic.go:9)	PCDATA	$0, $-2
	0x0094 00148 (new-string-dynamic.go:9)	MOVB	(R2), R27
	0x0098 00152 (new-string-dynamic.go:9)	PCDATA	$0, $-1
	0x0098 00152 (new-string-dynamic.go:9)	JMP	156
	0x009c 00156 (new-string-dynamic.go:9)	MOVD	R2, main..autotmp_3-24(SP)
	0x00a0 00160 (new-string-dynamic.go:9)	MOVD	$1, R4
	0x00a4 00164 (new-string-dynamic.go:9)	MOVD	R4, main..autotmp_3-16(SP)
	0x00a8 00168 (new-string-dynamic.go:9)	MOVD	R4, main..autotmp_3-8(SP)
	0x00ac 00172 (new-string-dynamic.go:9)	MOVD	$go.string."%p\n"(SB), R0
	0x00b4 00180 (new-string-dynamic.go:9)	MOVD	$3, R1
	0x00b8 00184 (new-string-dynamic.go:9)	MOVD	R4, R3
	0x00bc 00188 (new-string-dynamic.go:9)	CALL	fmt.Printf(SB)
	0x00c0 00192 (new-string-dynamic.go:10)	LDP	-8(RSP), (R29, R30)
	0x00c4 00196 (new-string-dynamic.go:10)	ADD	$128, RSP
	0x00c8 00200 (new-string-dynamic.go:10)	RET	(R30)
	0x00cc 00204 (new-string-dynamic.go:10)	NOP
	0x00cc 00204 (new-string-dynamic.go:5)	PCDATA	$1, $-1
	0x00cc 00204 (new-string-dynamic.go:5)	PCDATA	$0, $-2
	0x00cc 00204 (new-string-dynamic.go:5)	MOVD	R30, R3
	0x00d0 00208 (new-string-dynamic.go:5)	CALL	runtime.morestack_noctxt(SB)
	0x00d4 00212 (new-string-dynamic.go:5)	PCDATA	$0, $-1
	0x00d4 00212 (new-string-dynamic.go:5)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb 29 06 00 54 fe 0f 18 f8  ..@..c0.)..T....
	0x0010 fd 83 1f f8 fd 23 00 d1 00 00 00 90 00 00 00 91  .....#..........
	0x0020 00 00 00 94 e0 1f 00 f9 a1 00 80 d2 01 04 00 f9  ................
	0x0030 1b 00 00 90 7b 03 00 91 61 03 40 b9 41 00 00 34  ....{...a.@.A..4
	0x0040 05 00 00 14 05 00 00 90 a5 00 00 91 05 00 00 f9  ................
	0x0050 06 00 00 14 e2 03 00 aa 03 00 00 90 63 00 00 91  ............c...
	0x0060 00 00 00 94 01 00 00 14 e5 1f 40 f9 e5 27 00 f9  ..........@..'..
	0x0070 ff 7f 05 a9 e2 43 01 91 e2 23 00 f9 5b 00 80 39  .....C...#..[..9
	0x0080 e5 27 40 f9 06 00 00 90 c6 00 00 91 e6 2b 00 f9  .'@..........+..
	0x0090 e5 2f 00 f9 5b 00 80 39 01 00 00 14 e2 33 00 f9  ./..[..9.....3..
	0x00a0 e4 03 40 b2 e4 37 00 f9 e4 3b 00 f9 00 00 00 90  ..@..7...;......
	0x00b0 00 00 00 91 e1 07 40 b2 e3 03 04 aa 00 00 00 94  ......@.........
	0x00c0 fd fb 7f a9 ff 03 02 91 c0 03 5f d6 e3 03 1e aa  .........._.....
	0x00d0 00 00 00 94 cb ff ff 17 00 00 00 00 00 00 00 00  ................
	rel 0+0 t=23 type.*string+0
	rel 24+8 t=3 type.string+0
	rel 32+4 t=9 runtime.newobject+0
	rel 48+8 t=3 runtime.writeBarrier+0
	rel 68+8 t=3 go.string."hello"+0
	rel 88+8 t=3 go.string."hello"+0
	rel 96+4 t=9 runtime.gcWriteBarrier+0
	rel 132+8 t=3 type.*string+0
	rel 172+8 t=3 go.string."%p\n"+0
	rel 188+4 t=9 fmt.Printf+0
	rel 208+4 t=9 runtime.morestack_noctxt+0
go.cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go.cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
go.string."hello" SRODATA dupok size=5
	0x0000 68 65 6c 6c 6f                                   hello
go.string."%p\n" SRODATA dupok size=3
	0x0000 25 70 0a                                         %p.
runtime.nilinterequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.nilinterequal+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*interface {}- SRODATA dupok size=15
	0x0000 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d     ..*interface {}
type.*interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 3b fc f8 8f 08 08 08 36 00 00 00 00 00 00 00 00  ;......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type.interface {} SRODATA dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 39 7a 09 0f 02 08 08 14 00 00 00 00 00 00 00 00  9z..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 44+4 t=-32763 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=17
	0x0000 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20 7b  ..*[]interface {
	0x0010 7d                                               }
type.*[]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 9d 9c 0e 59 08 08 08 36 00 00 00 00 00 00 00 00  ...Y...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 76 de 99 0d 02 08 08 17 00 00 00 00 00 00 00 00  v...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 44+4 t=-32763 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
type..namedata.*[1]interface {}- SRODATA dupok size=18
	0x0000 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65 20  ..*[1]interface 
	0x0010 7b 7d                                            {}
type.[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 6e 20 6a 3d 02 08 08 11 00 00 00 00 00 00 00 00  n j=............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 44+4 t=-32763 type.*[1]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
type.*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 a8 0e 57 36 08 08 08 36 00 00 00 00 00 00 00 00  ..W6...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 48+8 t=1 type.[1]interface {}+0
type..importpath.fmt. SRODATA dupok size=5
	0x0000 00 03 66 6d 74                                   ..fmt
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·PywSJIYqXiMHWby6oWHnCg== SRODATA dupok size=9
	0x0000 01 00 00 00 08 00 00 00 00                       .........
main.main.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 d8 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.02+0
