main.main STEXT size=416 args=0x0 locals=0x48 funcid=0x0 align=0x0
	0x0000 00000 (chan-close-broadcast.go:5)	TEXT	main.main(SB), ABIInternal, $80-0
	0x0000 00000 (chan-close-broadcast.go:5)	MOVD	16(g), R16
	0x0004 00004 (chan-close-broadcast.go:5)	PCDATA	$0, $-2
	0x0004 00004 (chan-close-broadcast.go:5)	CMP	R16, RSP
	0x0008 00008 (chan-close-broadcast.go:5)	BLS	392
	0x000c 00012 (chan-close-broadcast.go:5)	PCDATA	$0, $-1
	0x000c 00012 (chan-close-broadcast.go:5)	MOVD.W	R30, -80(RSP)
	0x0010 00016 (chan-close-broadcast.go:5)	MOVD	R29, -8(RSP)
	0x0014 00020 (chan-close-broadcast.go:5)	SUB	$8, RSP, R29
	0x0018 00024 (chan-close-broadcast.go:5)	FUNCDATA	ZR, gclocals·D1/YcbyNumM1nqYyoY4wEQ==(SB)
	0x0018 00024 (chan-close-broadcast.go:5)	FUNCDATA	$1, gclocals·PAAm5sYkWVcMvEfVm9VFKQ==(SB)
	0x0018 00024 (chan-close-broadcast.go:6)	MOVD	$type.chan bool(SB), R0
	0x0020 00032 (chan-close-broadcast.go:6)	MOVD	ZR, R1
	0x0024 00036 (chan-close-broadcast.go:6)	PCDATA	$1, ZR
	0x0024 00036 (chan-close-broadcast.go:6)	CALL	runtime.makechan(SB)
	0x0028 00040 (chan-close-broadcast.go:6)	MOVD	R0, main.c-32(SP)
	0x002c 00044 (chan-close-broadcast.go:7)	MOVD	$type.sync.WaitGroup(SB), R0
	0x0034 00052 (chan-close-broadcast.go:7)	PCDATA	$1, $1
	0x0034 00052 (chan-close-broadcast.go:7)	CALL	runtime.newobject(SB)
	0x0038 00056 (chan-close-broadcast.go:7)	MOVD	R0, main.&wg-8(SP)
	0x003c 00060 (chan-close-broadcast.go:7)	MOVD	ZR, (R0)
	0x0040 00064 (chan-close-broadcast.go:7)	MOVW	ZR, 8(R0)
	0x0044 00068 (chan-close-broadcast.go:9)	MOVD	main.&wg-8(SP), R0
	0x0048 00072 (chan-close-broadcast.go:9)	MOVD	$2, R1
	0x004c 00076 (chan-close-broadcast.go:9)	PCDATA	$1, $2
	0x004c 00076 (chan-close-broadcast.go:9)	CALL	sync.(*WaitGroup).Add(SB)
	0x0050 00080 (chan-close-broadcast.go:10)	MOVD	$type.noalg.struct { F uintptr; main.wg *sync.WaitGroup; main.c chan bool }(SB), R0
	0x0058 00088 (chan-close-broadcast.go:10)	CALL	runtime.newobject(SB)
	0x005c 00092 (chan-close-broadcast.go:10)	MOVD	R0, main..autotmp_2-16(SP)
	0x0060 00096 (chan-close-broadcast.go:10)	MOVD	$main.main.func1(SB), R2
	0x0068 00104 (chan-close-broadcast.go:10)	MOVD	R2, (R0)
	0x006c 00108 (chan-close-broadcast.go:10)	MOVD	main..autotmp_2-16(SP), R2
	0x0070 00112 (chan-close-broadcast.go:10)	PCDATA	$0, $-2
	0x0070 00112 (chan-close-broadcast.go:10)	MOVB	(R2), R27
	0x0074 00116 (chan-close-broadcast.go:10)	PCDATA	$0, $-1
	0x0074 00116 (chan-close-broadcast.go:10)	MOVD	main.&wg-8(SP), R3
	0x0078 00120 (chan-close-broadcast.go:10)	ADD	$8, R2, R4
	0x007c 00124 (chan-close-broadcast.go:10)	PCDATA	ZR, $-2
	0x007c 00124 (chan-close-broadcast.go:10)	MOVWU	runtime.writeBarrier(SB), R5
	0x0088 00136 (chan-close-broadcast.go:10)	CBZW	R5, 144
	0x008c 00140 (chan-close-broadcast.go:10)	JMP	152
	0x0090 00144 (chan-close-broadcast.go:10)	MOVD	R3, 8(R2)
	0x0094 00148 (chan-close-broadcast.go:10)	JMP	164
	0x0098 00152 (chan-close-broadcast.go:10)	MOVD	R4, R2
	0x009c 00156 (chan-close-broadcast.go:10)	CALL	runtime.gcWriteBarrier(SB)
	0x00a0 00160 (chan-close-broadcast.go:10)	JMP	164
	0x00a4 00164 (chan-close-broadcast.go:10)	PCDATA	ZR, $-1
	0x00a4 00164 (chan-close-broadcast.go:10)	MOVD	main..autotmp_2-16(SP), R1
	0x00a8 00168 (chan-close-broadcast.go:10)	PCDATA	$0, $-2
	0x00a8 00168 (chan-close-broadcast.go:10)	MOVB	(R1), R27
	0x00ac 00172 (chan-close-broadcast.go:10)	PCDATA	$0, $-1
	0x00ac 00172 (chan-close-broadcast.go:10)	MOVD	main.c-32(SP), R3
	0x00b0 00176 (chan-close-broadcast.go:10)	ADD	$16, R1, R2
	0x00b4 00180 (chan-close-broadcast.go:10)	PCDATA	ZR, $-2
	0x00b4 00180 (chan-close-broadcast.go:10)	MOVWU	runtime.writeBarrier(SB), R4
	0x00c0 00192 (chan-close-broadcast.go:10)	CBZW	R4, 200
	0x00c4 00196 (chan-close-broadcast.go:10)	JMP	208
	0x00c8 00200 (chan-close-broadcast.go:10)	MOVD	R3, 16(R1)
	0x00cc 00204 (chan-close-broadcast.go:10)	JMP	216
	0x00d0 00208 (chan-close-broadcast.go:10)	CALL	runtime.gcWriteBarrier(SB)
	0x00d4 00212 (chan-close-broadcast.go:10)	JMP	216
	0x00d8 00216 (chan-close-broadcast.go:10)	PCDATA	ZR, $-1
	0x00d8 00216 (chan-close-broadcast.go:10)	MOVD	main..autotmp_2-16(SP), R0
	0x00dc 00220 (chan-close-broadcast.go:10)	CALL	runtime.newproc(SB)
	0x00e0 00224 (chan-close-broadcast.go:14)	MOVD	$type.noalg.struct { F uintptr; main.wg *sync.WaitGroup; main.c chan bool }(SB), R0
	0x00e8 00232 (chan-close-broadcast.go:14)	CALL	runtime.newobject(SB)
	0x00ec 00236 (chan-close-broadcast.go:14)	MOVD	R0, main..autotmp_3-24(SP)
	0x00f0 00240 (chan-close-broadcast.go:14)	MOVD	$main.main.func2(SB), R1
	0x00f8 00248 (chan-close-broadcast.go:14)	MOVD	R1, (R0)
	0x00fc 00252 (chan-close-broadcast.go:14)	MOVD	main..autotmp_3-24(SP), R1
	0x0100 00256 (chan-close-broadcast.go:14)	PCDATA	$0, $-2
	0x0100 00256 (chan-close-broadcast.go:14)	MOVB	(R1), R27
	0x0104 00260 (chan-close-broadcast.go:14)	PCDATA	$0, $-1
	0x0104 00260 (chan-close-broadcast.go:14)	MOVD	main.&wg-8(SP), R3
	0x0108 00264 (chan-close-broadcast.go:14)	ADD	$8, R1, R2
	0x010c 00268 (chan-close-broadcast.go:14)	PCDATA	ZR, $-2
	0x010c 00268 (chan-close-broadcast.go:14)	MOVWU	runtime.writeBarrier(SB), R4
	0x0118 00280 (chan-close-broadcast.go:14)	CBZW	R4, 288
	0x011c 00284 (chan-close-broadcast.go:14)	JMP	296
	0x0120 00288 (chan-close-broadcast.go:14)	MOVD	R3, 8(R1)
	0x0124 00292 (chan-close-broadcast.go:14)	JMP	304
	0x0128 00296 (chan-close-broadcast.go:14)	CALL	runtime.gcWriteBarrier(SB)
	0x012c 00300 (chan-close-broadcast.go:14)	JMP	304
	0x0130 00304 (chan-close-broadcast.go:14)	PCDATA	ZR, $-1
	0x0130 00304 (chan-close-broadcast.go:14)	MOVD	main..autotmp_3-24(SP), R1
	0x0134 00308 (chan-close-broadcast.go:14)	PCDATA	$0, $-2
	0x0134 00308 (chan-close-broadcast.go:14)	MOVB	(R1), R27
	0x0138 00312 (chan-close-broadcast.go:14)	PCDATA	$0, $-1
	0x0138 00312 (chan-close-broadcast.go:14)	MOVD	main.c-32(SP), R3
	0x013c 00316 (chan-close-broadcast.go:14)	ADD	$16, R1, R2
	0x0140 00320 (chan-close-broadcast.go:14)	PCDATA	ZR, $-2
	0x0140 00320 (chan-close-broadcast.go:14)	MOVWU	runtime.writeBarrier(SB), R4
	0x014c 00332 (chan-close-broadcast.go:14)	CBZW	R4, 340
	0x0150 00336 (chan-close-broadcast.go:14)	JMP	348
	0x0154 00340 (chan-close-broadcast.go:14)	MOVD	R3, 16(R1)
	0x0158 00344 (chan-close-broadcast.go:14)	JMP	356
	0x015c 00348 (chan-close-broadcast.go:14)	CALL	runtime.gcWriteBarrier(SB)
	0x0160 00352 (chan-close-broadcast.go:14)	JMP	356
	0x0164 00356 (chan-close-broadcast.go:14)	PCDATA	ZR, $-1
	0x0164 00356 (chan-close-broadcast.go:14)	MOVD	main..autotmp_3-24(SP), R0
	0x0168 00360 (chan-close-broadcast.go:14)	CALL	runtime.newproc(SB)
	0x016c 00364 (chan-close-broadcast.go:18)	MOVD	main.c-32(SP), R0
	0x0170 00368 (chan-close-broadcast.go:18)	PCDATA	$1, $3
	0x0170 00368 (chan-close-broadcast.go:18)	CALL	runtime.closechan(SB)
	0x0174 00372 (chan-close-broadcast.go:19)	MOVD	main.&wg-8(SP), R0
	0x0178 00376 (chan-close-broadcast.go:19)	PCDATA	$1, ZR
	0x0178 00376 (chan-close-broadcast.go:19)	CALL	sync.(*WaitGroup).Wait(SB)
	0x017c 00380 (chan-close-broadcast.go:20)	LDP	-8(RSP), (R29, R30)
	0x0180 00384 (chan-close-broadcast.go:20)	ADD	$80, RSP
	0x0184 00388 (chan-close-broadcast.go:20)	RET	(R30)
	0x0188 00392 (chan-close-broadcast.go:20)	NOP
	0x0188 00392 (chan-close-broadcast.go:5)	PCDATA	$1, $-1
	0x0188 00392 (chan-close-broadcast.go:5)	PCDATA	$0, $-2
	0x0188 00392 (chan-close-broadcast.go:5)	MOVD	R30, R3
	0x018c 00396 (chan-close-broadcast.go:5)	CALL	runtime.morestack_noctxt(SB)
	0x0190 00400 (chan-close-broadcast.go:5)	PCDATA	$0, $-1
	0x0190 00400 (chan-close-broadcast.go:5)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb 09 0c 00 54 fe 0f 1b f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 00 00 00 90 00 00 00 91  .....#..........
	0x0020 01 00 80 d2 00 00 00 94 e0 17 00 f9 00 00 00 90  ................
	0x0030 00 00 00 91 00 00 00 94 e0 23 00 f9 1f 00 00 f9  .........#......
	0x0040 1f 08 00 b9 e0 23 40 f9 e1 03 7f b2 00 00 00 94  .....#@.........
	0x0050 00 00 00 90 00 00 00 91 00 00 00 94 e0 1f 00 f9  ................
	0x0060 02 00 00 90 42 00 00 91 02 00 00 f9 e2 1f 40 f9  ....B.........@.
	0x0070 5b 00 80 39 e3 23 40 f9 44 20 00 91 1b 00 00 90  [..9.#@.D ......
	0x0080 7b 03 00 91 65 03 40 b9 45 00 00 34 03 00 00 14  {...e.@.E..4....
	0x0090 43 04 00 f9 04 00 00 14 e2 03 04 aa 00 00 00 94  C...............
	0x00a0 01 00 00 14 e1 1f 40 f9 3b 00 80 39 e3 17 40 f9  ......@.;..9..@.
	0x00b0 22 40 00 91 1b 00 00 90 7b 03 00 91 64 03 40 b9  "@......{...d.@.
	0x00c0 44 00 00 34 03 00 00 14 23 08 00 f9 03 00 00 14  D..4....#.......
	0x00d0 00 00 00 94 01 00 00 14 e0 1f 40 f9 00 00 00 94  ..........@.....
	0x00e0 00 00 00 90 00 00 00 91 00 00 00 94 e0 1b 00 f9  ................
	0x00f0 01 00 00 90 21 00 00 91 01 00 00 f9 e1 1b 40 f9  ....!.........@.
	0x0100 3b 00 80 39 e3 23 40 f9 22 20 00 91 1b 00 00 90  ;..9.#@." ......
	0x0110 7b 03 00 91 64 03 40 b9 44 00 00 34 03 00 00 14  {...d.@.D..4....
	0x0120 23 04 00 f9 03 00 00 14 00 00 00 94 01 00 00 14  #...............
	0x0130 e1 1b 40 f9 3b 00 80 39 e3 17 40 f9 22 40 00 91  ..@.;..9..@."@..
	0x0140 1b 00 00 90 7b 03 00 91 64 03 40 b9 44 00 00 34  ....{...d.@.D..4
	0x0150 03 00 00 14 23 08 00 f9 03 00 00 14 00 00 00 94  ....#...........
	0x0160 01 00 00 14 e0 1b 40 f9 00 00 00 94 e0 17 40 f9  ......@.......@.
	0x0170 00 00 00 94 e0 23 40 f9 00 00 00 94 fd fb 7f a9  .....#@.........
	0x0180 ff 43 01 91 c0 03 5f d6 e3 03 1e aa 00 00 00 94  .C...._.........
	0x0190 9c ff ff 17 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=3 type.chan bool+0
	rel 36+4 t=9 runtime.makechan+0
	rel 44+8 t=3 type.sync.WaitGroup+0
	rel 52+4 t=9 runtime.newobject+0
	rel 76+4 t=9 sync.(*WaitGroup).Add+0
	rel 80+8 t=3 type.noalg.struct { F uintptr; main.wg *sync.WaitGroup; main.c chan bool }+0
	rel 88+4 t=9 runtime.newobject+0
	rel 96+8 t=3 main.main.func1+0
	rel 124+8 t=3 runtime.writeBarrier+0
	rel 156+4 t=9 runtime.gcWriteBarrier+0
	rel 180+8 t=3 runtime.writeBarrier+0
	rel 208+4 t=9 runtime.gcWriteBarrier+0
	rel 220+4 t=9 runtime.newproc+0
	rel 224+8 t=3 type.noalg.struct { F uintptr; main.wg *sync.WaitGroup; main.c chan bool }+0
	rel 232+4 t=9 runtime.newobject+0
	rel 240+8 t=3 main.main.func2+0
	rel 268+8 t=3 runtime.writeBarrier+0
	rel 296+4 t=9 runtime.gcWriteBarrier+0
	rel 320+8 t=3 runtime.writeBarrier+0
	rel 348+4 t=9 runtime.gcWriteBarrier+0
	rel 360+4 t=9 runtime.newproc+0
	rel 368+4 t=9 runtime.closechan+0
	rel 376+4 t=9 sync.(*WaitGroup).Wait+0
	rel 396+4 t=9 runtime.morestack_noctxt+0
main.main.func2 STEXT size=176 args=0x0 locals=0x98 funcid=0x0 align=0x0
	0x0000 00000 (chan-close-broadcast.go:14)	TEXT	main.main.func2(SB), NEEDCTXT|ABIInternal, $160-0
	0x0000 00000 (chan-close-broadcast.go:14)	MOVD	16(g), R16
	0x0004 00004 (chan-close-broadcast.go:14)	PCDATA	$0, $-2
	0x0004 00004 (chan-close-broadcast.go:14)	SUB	$32, RSP, R17
	0x0008 00008 (chan-close-broadcast.go:14)	CMP	R16, R17
	0x000c 00012 (chan-close-broadcast.go:14)	BLS	160
	0x0010 00016 (chan-close-broadcast.go:14)	PCDATA	$0, $-1
	0x0010 00016 (chan-close-broadcast.go:14)	MOVD.W	R30, -160(RSP)
	0x0014 00020 (chan-close-broadcast.go:14)	MOVD	R29, -8(RSP)
	0x0018 00024 (chan-close-broadcast.go:14)	SUB	$8, RSP, R29
	0x001c 00028 (chan-close-broadcast.go:14)	FUNCDATA	ZR, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x001c 00028 (chan-close-broadcast.go:14)	FUNCDATA	$1, gclocals·TJqp01Pbhslx8LvL7y0LqA==(SB)
	0x001c 00028 (chan-close-broadcast.go:14)	FUNCDATA	$2, main.main.func2.stkobj(SB)
	0x001c 00028 (chan-close-broadcast.go:14)	MOVD	8(R26), R1
	0x0020 00032 (chan-close-broadcast.go:14)	MOVD	R1, main.&wg-24(SP)
	0x0024 00036 (chan-close-broadcast.go:14)	MOVD	16(R26), R1
	0x0028 00040 (chan-close-broadcast.go:14)	MOVD	R1, main.c-48(SP)
	0x002c 00044 (chan-close-broadcast.go:15)	MOVD	main.&wg-24(SP), R1
	0x0030 00048 (chan-close-broadcast.go:15)	MOVD	R1, main..autotmp_0-32(SP)
	0x0034 00052 (chan-close-broadcast.go:15)	STP	(ZR, ZR), main..autotmp_2-16(SP)
	0x0038 00056 (chan-close-broadcast.go:15)	MOVD	$main..autotmp_2-16(SP), R1
	0x003c 00060 (chan-close-broadcast.go:15)	MOVD	R1, main..autotmp_1-40(SP)
	0x0040 00064 (chan-close-broadcast.go:15)	PCDATA	$0, $-2
	0x0040 00064 (chan-close-broadcast.go:15)	MOVB	(R1), R27
	0x0044 00068 (chan-close-broadcast.go:15)	PCDATA	$0, $-1
	0x0044 00068 (chan-close-broadcast.go:15)	MOVD	$main.main.func2.1(SB), R2
	0x004c 00076 (chan-close-broadcast.go:15)	MOVD	R2, main..autotmp_2-16(SP)
	0x0050 00080 (chan-close-broadcast.go:15)	PCDATA	$0, $-2
	0x0050 00080 (chan-close-broadcast.go:15)	MOVB	(R1), R27
	0x0054 00084 (chan-close-broadcast.go:15)	PCDATA	$0, $-1
	0x0054 00084 (chan-close-broadcast.go:15)	MOVD	main..autotmp_0-32(SP), R2
	0x0058 00088 (chan-close-broadcast.go:15)	MOVD	R2, main..autotmp_2-8(SP)
	0x005c 00092 (chan-close-broadcast.go:15)	MOVD	R1, main..autotmp_5-96(SP)
	0x0060 00096 (chan-close-broadcast.go:15)	MOVD	$main..autotmp_5-120(SP), R0
	0x0064 00100 (chan-close-broadcast.go:15)	PCDATA	$1, $1
	0x0064 00100 (chan-close-broadcast.go:15)	CALL	runtime.deferprocStack(SB)
	0x0068 00104 (chan-close-broadcast.go:15)	CMP	ZR, R0
	0x006c 00108 (chan-close-broadcast.go:15)	BNE	144
	0x0070 00112 (chan-close-broadcast.go:15)	JMP	116
	0x0074 00116 (chan-close-broadcast.go:16)	MOVD	main.c-48(SP), R0
	0x0078 00120 (chan-close-broadcast.go:16)	MOVD	ZR, R1
	0x007c 00124 (chan-close-broadcast.go:16)	PCDATA	$1, ZR
	0x007c 00124 (chan-close-broadcast.go:16)	CALL	runtime.chanrecv1(SB)
	0x0080 00128 (chan-close-broadcast.go:17)	CALL	runtime.deferreturn(SB)
	0x0084 00132 (chan-close-broadcast.go:17)	LDP	-8(RSP), (R29, R30)
	0x0088 00136 (chan-close-broadcast.go:17)	ADD	$160, RSP
	0x008c 00140 (chan-close-broadcast.go:17)	RET	(R30)
	0x0090 00144 (chan-close-broadcast.go:15)	CALL	runtime.deferreturn(SB)
	0x0094 00148 (chan-close-broadcast.go:15)	LDP	-8(RSP), (R29, R30)
	0x0098 00152 (chan-close-broadcast.go:15)	ADD	$160, RSP
	0x009c 00156 (chan-close-broadcast.go:15)	RET	(R30)
	0x00a0 00160 (chan-close-broadcast.go:15)	NOP
	0x00a0 00160 (chan-close-broadcast.go:14)	PCDATA	$1, $-1
	0x00a0 00160 (chan-close-broadcast.go:14)	PCDATA	$0, $-2
	0x00a0 00160 (chan-close-broadcast.go:14)	MOVD	R30, R3
	0x00a4 00164 (chan-close-broadcast.go:14)	CALL	runtime.morestack(SB)
	0x00a8 00168 (chan-close-broadcast.go:14)	PCDATA	$0, $-1
	0x00a8 00168 (chan-close-broadcast.go:14)	JMP	0
	0x0000 90 0b 40 f9 f1 83 00 d1 3f 02 10 eb a9 04 00 54  ..@.....?......T
	0x0010 fe 0f 16 f8 fd 83 1f f8 fd 23 00 d1 41 07 40 f9  .........#..A.@.
	0x0020 e1 43 00 f9 41 0b 40 f9 e1 37 00 f9 e1 43 40 f9  .C..A.@..7...C@.
	0x0030 e1 3f 00 f9 ff ff 08 a9 e1 23 02 91 e1 3b 00 f9  .?.......#...;..
	0x0040 3b 00 80 39 02 00 00 90 42 00 00 91 e2 47 00 f9  ;..9....B....G..
	0x0050 3b 00 80 39 e2 3f 40 f9 e2 4b 00 f9 e1 1f 00 f9  ;..9.?@..K......
	0x0060 e0 83 00 91 00 00 00 94 1f 00 1f eb 21 01 00 54  ............!..T
	0x0070 01 00 00 14 e0 37 40 f9 01 00 80 d2 00 00 00 94  .....7@.........
	0x0080 00 00 00 94 fd fb 7f a9 ff 83 02 91 c0 03 5f d6  .............._.
	0x0090 00 00 00 94 fd fb 7f a9 ff 83 02 91 c0 03 5f d6  .............._.
	0x00a0 e3 03 1e aa 00 00 00 94 d6 ff ff 17 00 00 00 00  ................
	rel 68+8 t=3 main.main.func2.1+0
	rel 100+4 t=9 runtime.deferprocStack+0
	rel 124+4 t=9 runtime.chanrecv1+0
	rel 128+4 t=9 runtime.deferreturn+0
	rel 144+4 t=9 runtime.deferreturn+0
	rel 164+4 t=9 runtime.morestack+0
main.main.func2.1 STEXT size=96 args=0x0 locals=0x18 funcid=0x15 align=0x0
	0x0000 00000 (chan-close-broadcast.go:15)	TEXT	main.main.func2.1(SB), WRAPPER|NEEDCTXT|ABIInternal, $32-0
	0x0000 00000 (chan-close-broadcast.go:15)	MOVD	16(g), R16
	0x0004 00004 (chan-close-broadcast.go:15)	PCDATA	$0, $-2
	0x0004 00004 (chan-close-broadcast.go:15)	CMP	R16, RSP
	0x0008 00008 (chan-close-broadcast.go:15)	BLS	56
	0x000c 00012 (chan-close-broadcast.go:15)	PCDATA	$0, $-1
	0x000c 00012 (chan-close-broadcast.go:15)	MOVD.W	R30, -32(RSP)
	0x0010 00016 (chan-close-broadcast.go:15)	MOVD	R29, -8(RSP)
	0x0014 00020 (chan-close-broadcast.go:15)	SUB	$8, RSP, R29
	0x0018 00024 (chan-close-broadcast.go:15)	MOVD	32(g), R16
	0x001c 00028 (chan-close-broadcast.go:15)	CBNZ	R16, 68
	0x0020 00032 (chan-close-broadcast.go:15)	NOP
	0x0020 00032 (chan-close-broadcast.go:15)	FUNCDATA	ZR, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0020 00032 (chan-close-broadcast.go:15)	FUNCDATA	$1, gclocals·Plqv2ff52JtlYaDd2Rwxbg==(SB)
	0x0020 00032 (chan-close-broadcast.go:15)	FUNCDATA	$7, sync.(*WaitGroup).Done.wrapinfo(SB)
	0x0020 00032 (chan-close-broadcast.go:15)	MOVD	8(R26), R0
	0x0024 00036 (chan-close-broadcast.go:15)	MOVD	R0, main..autotmp_0-8(SP)
	0x0028 00040 (chan-close-broadcast.go:15)	PCDATA	$1, ZR
	0x0028 00040 (chan-close-broadcast.go:15)	CALL	sync.(*WaitGroup).Done(SB)
	0x002c 00044 (chan-close-broadcast.go:15)	LDP	-8(RSP), (R29, R30)
	0x0030 00048 (chan-close-broadcast.go:15)	ADD	$32, RSP
	0x0034 00052 (chan-close-broadcast.go:15)	RET	(R30)
	0x0038 00056 (chan-close-broadcast.go:15)	NOP
	0x0038 00056 (chan-close-broadcast.go:15)	PCDATA	$1, $-1
	0x0038 00056 (chan-close-broadcast.go:15)	PCDATA	$0, $-2
	0x0038 00056 (chan-close-broadcast.go:15)	MOVD	R30, R3
	0x003c 00060 (chan-close-broadcast.go:15)	CALL	runtime.morestack(SB)
	0x0040 00064 (chan-close-broadcast.go:15)	PCDATA	$0, $-1
	0x0040 00064 (chan-close-broadcast.go:15)	JMP	0
	0x0044 00068 (chan-close-broadcast.go:15)	MOVD	(R16), R17
	0x0048 00072 (chan-close-broadcast.go:15)	ADD	$40, RSP, R20
	0x004c 00076 (chan-close-broadcast.go:15)	CMP	R17, R20
	0x0050 00080 (chan-close-broadcast.go:15)	BNE	32
	0x0054 00084 (chan-close-broadcast.go:15)	ADD	$8, RSP, R20
	0x0058 00088 (chan-close-broadcast.go:15)	MOVD	R20, (R16)
	0x005c 00092 (chan-close-broadcast.go:15)	JMP	32
	0x0000 90 0b 40 f9 ff 63 30 eb 89 01 00 54 fe 0f 1e f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 90 13 40 f9 50 01 00 b5  .....#....@.P...
	0x0020 40 07 40 f9 e0 0b 00 f9 00 00 00 94 fd fb 7f a9  @.@.............
	0x0030 ff 83 00 91 c0 03 5f d6 e3 03 1e aa 00 00 00 94  ......_.........
	0x0040 f0 ff ff 17 11 02 40 f9 f4 a3 00 91 9f 02 11 eb  ......@.........
	0x0050 81 fe ff 54 f4 23 00 91 14 02 00 f9 f1 ff ff 17  ...T.#..........
	rel 40+4 t=9 sync.(*WaitGroup).Done+0
	rel 60+4 t=9 runtime.morestack+0
main.main.func1 STEXT size=176 args=0x0 locals=0x98 funcid=0x0 align=0x0
	0x0000 00000 (chan-close-broadcast.go:10)	TEXT	main.main.func1(SB), NEEDCTXT|ABIInternal, $160-0
	0x0000 00000 (chan-close-broadcast.go:10)	MOVD	16(g), R16
	0x0004 00004 (chan-close-broadcast.go:10)	PCDATA	$0, $-2
	0x0004 00004 (chan-close-broadcast.go:10)	SUB	$32, RSP, R17
	0x0008 00008 (chan-close-broadcast.go:10)	CMP	R16, R17
	0x000c 00012 (chan-close-broadcast.go:10)	BLS	160
	0x0010 00016 (chan-close-broadcast.go:10)	PCDATA	$0, $-1
	0x0010 00016 (chan-close-broadcast.go:10)	MOVD.W	R30, -160(RSP)
	0x0014 00020 (chan-close-broadcast.go:10)	MOVD	R29, -8(RSP)
	0x0018 00024 (chan-close-broadcast.go:10)	SUB	$8, RSP, R29
	0x001c 00028 (chan-close-broadcast.go:10)	FUNCDATA	ZR, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x001c 00028 (chan-close-broadcast.go:10)	FUNCDATA	$1, gclocals·TJqp01Pbhslx8LvL7y0LqA==(SB)
	0x001c 00028 (chan-close-broadcast.go:10)	FUNCDATA	$2, main.main.func1.stkobj(SB)
	0x001c 00028 (chan-close-broadcast.go:10)	MOVD	8(R26), R1
	0x0020 00032 (chan-close-broadcast.go:10)	MOVD	R1, main.&wg-24(SP)
	0x0024 00036 (chan-close-broadcast.go:10)	MOVD	16(R26), R1
	0x0028 00040 (chan-close-broadcast.go:10)	MOVD	R1, main.c-48(SP)
	0x002c 00044 (chan-close-broadcast.go:11)	MOVD	main.&wg-24(SP), R1
	0x0030 00048 (chan-close-broadcast.go:11)	MOVD	R1, main..autotmp_0-32(SP)
	0x0034 00052 (chan-close-broadcast.go:11)	STP	(ZR, ZR), main..autotmp_2-16(SP)
	0x0038 00056 (chan-close-broadcast.go:11)	MOVD	$main..autotmp_2-16(SP), R1
	0x003c 00060 (chan-close-broadcast.go:11)	MOVD	R1, main..autotmp_1-40(SP)
	0x0040 00064 (chan-close-broadcast.go:11)	PCDATA	$0, $-2
	0x0040 00064 (chan-close-broadcast.go:11)	MOVB	(R1), R27
	0x0044 00068 (chan-close-broadcast.go:11)	PCDATA	$0, $-1
	0x0044 00068 (chan-close-broadcast.go:11)	MOVD	$main.main.func1.1(SB), R2
	0x004c 00076 (chan-close-broadcast.go:11)	MOVD	R2, main..autotmp_2-16(SP)
	0x0050 00080 (chan-close-broadcast.go:11)	PCDATA	$0, $-2
	0x0050 00080 (chan-close-broadcast.go:11)	MOVB	(R1), R27
	0x0054 00084 (chan-close-broadcast.go:11)	PCDATA	$0, $-1
	0x0054 00084 (chan-close-broadcast.go:11)	MOVD	main..autotmp_0-32(SP), R2
	0x0058 00088 (chan-close-broadcast.go:11)	MOVD	R2, main..autotmp_2-8(SP)
	0x005c 00092 (chan-close-broadcast.go:11)	MOVD	R1, main..autotmp_5-96(SP)
	0x0060 00096 (chan-close-broadcast.go:11)	MOVD	$main..autotmp_5-120(SP), R0
	0x0064 00100 (chan-close-broadcast.go:11)	PCDATA	$1, $1
	0x0064 00100 (chan-close-broadcast.go:11)	CALL	runtime.deferprocStack(SB)
	0x0068 00104 (chan-close-broadcast.go:11)	CMP	ZR, R0
	0x006c 00108 (chan-close-broadcast.go:11)	BNE	144
	0x0070 00112 (chan-close-broadcast.go:11)	JMP	116
	0x0074 00116 (chan-close-broadcast.go:12)	MOVD	main.c-48(SP), R0
	0x0078 00120 (chan-close-broadcast.go:12)	MOVD	ZR, R1
	0x007c 00124 (chan-close-broadcast.go:12)	PCDATA	$1, ZR
	0x007c 00124 (chan-close-broadcast.go:12)	CALL	runtime.chanrecv1(SB)
	0x0080 00128 (chan-close-broadcast.go:13)	CALL	runtime.deferreturn(SB)
	0x0084 00132 (chan-close-broadcast.go:13)	LDP	-8(RSP), (R29, R30)
	0x0088 00136 (chan-close-broadcast.go:13)	ADD	$160, RSP
	0x008c 00140 (chan-close-broadcast.go:13)	RET	(R30)
	0x0090 00144 (chan-close-broadcast.go:11)	CALL	runtime.deferreturn(SB)
	0x0094 00148 (chan-close-broadcast.go:11)	LDP	-8(RSP), (R29, R30)
	0x0098 00152 (chan-close-broadcast.go:11)	ADD	$160, RSP
	0x009c 00156 (chan-close-broadcast.go:11)	RET	(R30)
	0x00a0 00160 (chan-close-broadcast.go:11)	NOP
	0x00a0 00160 (chan-close-broadcast.go:10)	PCDATA	$1, $-1
	0x00a0 00160 (chan-close-broadcast.go:10)	PCDATA	$0, $-2
	0x00a0 00160 (chan-close-broadcast.go:10)	MOVD	R30, R3
	0x00a4 00164 (chan-close-broadcast.go:10)	CALL	runtime.morestack(SB)
	0x00a8 00168 (chan-close-broadcast.go:10)	PCDATA	$0, $-1
	0x00a8 00168 (chan-close-broadcast.go:10)	JMP	0
	0x0000 90 0b 40 f9 f1 83 00 d1 3f 02 10 eb a9 04 00 54  ..@.....?......T
	0x0010 fe 0f 16 f8 fd 83 1f f8 fd 23 00 d1 41 07 40 f9  .........#..A.@.
	0x0020 e1 43 00 f9 41 0b 40 f9 e1 37 00 f9 e1 43 40 f9  .C..A.@..7...C@.
	0x0030 e1 3f 00 f9 ff ff 08 a9 e1 23 02 91 e1 3b 00 f9  .?.......#...;..
	0x0040 3b 00 80 39 02 00 00 90 42 00 00 91 e2 47 00 f9  ;..9....B....G..
	0x0050 3b 00 80 39 e2 3f 40 f9 e2 4b 00 f9 e1 1f 00 f9  ;..9.?@..K......
	0x0060 e0 83 00 91 00 00 00 94 1f 00 1f eb 21 01 00 54  ............!..T
	0x0070 01 00 00 14 e0 37 40 f9 01 00 80 d2 00 00 00 94  .....7@.........
	0x0080 00 00 00 94 fd fb 7f a9 ff 83 02 91 c0 03 5f d6  .............._.
	0x0090 00 00 00 94 fd fb 7f a9 ff 83 02 91 c0 03 5f d6  .............._.
	0x00a0 e3 03 1e aa 00 00 00 94 d6 ff ff 17 00 00 00 00  ................
	rel 68+8 t=3 main.main.func1.1+0
	rel 100+4 t=9 runtime.deferprocStack+0
	rel 124+4 t=9 runtime.chanrecv1+0
	rel 128+4 t=9 runtime.deferreturn+0
	rel 144+4 t=9 runtime.deferreturn+0
	rel 164+4 t=9 runtime.morestack+0
main.main.func1.1 STEXT size=96 args=0x0 locals=0x18 funcid=0x15 align=0x0
	0x0000 00000 (chan-close-broadcast.go:11)	TEXT	main.main.func1.1(SB), WRAPPER|NEEDCTXT|ABIInternal, $32-0
	0x0000 00000 (chan-close-broadcast.go:11)	MOVD	16(g), R16
	0x0004 00004 (chan-close-broadcast.go:11)	PCDATA	$0, $-2
	0x0004 00004 (chan-close-broadcast.go:11)	CMP	R16, RSP
	0x0008 00008 (chan-close-broadcast.go:11)	BLS	56
	0x000c 00012 (chan-close-broadcast.go:11)	PCDATA	$0, $-1
	0x000c 00012 (chan-close-broadcast.go:11)	MOVD.W	R30, -32(RSP)
	0x0010 00016 (chan-close-broadcast.go:11)	MOVD	R29, -8(RSP)
	0x0014 00020 (chan-close-broadcast.go:11)	SUB	$8, RSP, R29
	0x0018 00024 (chan-close-broadcast.go:11)	MOVD	32(g), R16
	0x001c 00028 (chan-close-broadcast.go:11)	CBNZ	R16, 68
	0x0020 00032 (chan-close-broadcast.go:11)	NOP
	0x0020 00032 (chan-close-broadcast.go:11)	FUNCDATA	ZR, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0020 00032 (chan-close-broadcast.go:11)	FUNCDATA	$1, gclocals·Plqv2ff52JtlYaDd2Rwxbg==(SB)
	0x0020 00032 (chan-close-broadcast.go:11)	FUNCDATA	$7, sync.(*WaitGroup).Done.wrapinfo(SB)
	0x0020 00032 (chan-close-broadcast.go:11)	MOVD	8(R26), R0
	0x0024 00036 (chan-close-broadcast.go:11)	MOVD	R0, main..autotmp_0-8(SP)
	0x0028 00040 (chan-close-broadcast.go:11)	PCDATA	$1, ZR
	0x0028 00040 (chan-close-broadcast.go:11)	CALL	sync.(*WaitGroup).Done(SB)
	0x002c 00044 (chan-close-broadcast.go:11)	LDP	-8(RSP), (R29, R30)
	0x0030 00048 (chan-close-broadcast.go:11)	ADD	$32, RSP
	0x0034 00052 (chan-close-broadcast.go:11)	RET	(R30)
	0x0038 00056 (chan-close-broadcast.go:11)	NOP
	0x0038 00056 (chan-close-broadcast.go:11)	PCDATA	$1, $-1
	0x0038 00056 (chan-close-broadcast.go:11)	PCDATA	$0, $-2
	0x0038 00056 (chan-close-broadcast.go:11)	MOVD	R30, R3
	0x003c 00060 (chan-close-broadcast.go:11)	CALL	runtime.morestack(SB)
	0x0040 00064 (chan-close-broadcast.go:11)	PCDATA	$0, $-1
	0x0040 00064 (chan-close-broadcast.go:11)	JMP	0
	0x0044 00068 (chan-close-broadcast.go:11)	MOVD	(R16), R17
	0x0048 00072 (chan-close-broadcast.go:11)	ADD	$40, RSP, R20
	0x004c 00076 (chan-close-broadcast.go:11)	CMP	R17, R20
	0x0050 00080 (chan-close-broadcast.go:11)	BNE	32
	0x0054 00084 (chan-close-broadcast.go:11)	ADD	$8, RSP, R20
	0x0058 00088 (chan-close-broadcast.go:11)	MOVD	R20, (R16)
	0x005c 00092 (chan-close-broadcast.go:11)	JMP	32
	0x0000 90 0b 40 f9 ff 63 30 eb 89 01 00 54 fe 0f 1e f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 90 13 40 f9 50 01 00 b5  .....#....@.P...
	0x0020 40 07 40 f9 e0 0b 00 f9 00 00 00 94 fd fb 7f a9  @.@.............
	0x0030 ff 83 00 91 c0 03 5f d6 e3 03 1e aa 00 00 00 94  ......_.........
	0x0040 f0 ff ff 17 11 02 40 f9 f4 a3 00 91 9f 02 11 eb  ......@.........
	0x0050 81 fe ff 54 f4 23 00 91 14 02 00 f9 f1 ff ff 17  ...T.#..........
	rel 40+4 t=9 sync.(*WaitGroup).Done+0
	rel 60+4 t=9 runtime.morestack+0
go.cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go.cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 sync..inittask+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type..namedata.*struct { F uintptr; .autotmp_0 *sync.WaitGroup }- SRODATA dupok size=51
	0x0000 00 31 2a 73 74 72 75 63 74 20 7b 20 46 20 75 69  .1*struct { F ui
	0x0010 6e 74 70 74 72 3b 20 2e 61 75 74 6f 74 6d 70 5f  ntptr; .autotmp_
	0x0020 30 20 2a 73 79 6e 63 2e 57 61 69 74 47 72 6f 75  0 *sync.WaitGrou
	0x0030 70 20 7d                                         p }
type..importpath.main. SRODATA dupok size=6
	0x0000 00 04 6d 61 69 6e                                ..main
type..namedata..F- SRODATA dupok size=4
	0x0000 00 02 2e 46                                      ...F
type..namedata..autotmp_0- SRODATA dupok size=12
	0x0000 00 0a 2e 61 75 74 6f 74 6d 70 5f 30              ...autotmp_0
type.noalg.struct { F uintptr; main..autotmp_0 *sync.WaitGroup } SRODATA dupok size=128
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 18 1d c6 51 02 08 08 19 00 00 00 00 00 00 00 00  ...Q............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; .autotmp_0 *sync.WaitGroup }-+0
	rel 44+4 t=-32763 type.*struct { F uintptr; main..autotmp_0 *sync.WaitGroup }+0
	rel 48+8 t=1 type..importpath.main.+0
	rel 56+8 t=1 type.noalg.struct { F uintptr; main..autotmp_0 *sync.WaitGroup }+80
	rel 80+8 t=1 type..namedata..F-+0
	rel 88+8 t=1 type.uintptr+0
	rel 104+8 t=1 type..namedata..autotmp_0-+0
	rel 112+8 t=1 type.*sync.WaitGroup+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type.*struct { F uintptr; main..autotmp_0 *sync.WaitGroup } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 bf 0c e6 ad 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; .autotmp_0 *sync.WaitGroup }-+0
	rel 48+8 t=1 type.noalg.struct { F uintptr; main..autotmp_0 *sync.WaitGroup }+0
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
runtime.gcbits.06 SRODATA dupok size=1
	0x0000 06                                               .
type..namedata.*struct { F uintptr; wg *sync.WaitGroup; c chan bool }- SRODATA dupok size=56
	0x0000 00 36 2a 73 74 72 75 63 74 20 7b 20 46 20 75 69  .6*struct { F ui
	0x0010 6e 74 70 74 72 3b 20 77 67 20 2a 73 79 6e 63 2e  ntptr; wg *sync.
	0x0020 57 61 69 74 47 72 6f 75 70 3b 20 63 20 63 68 61  WaitGroup; c cha
	0x0030 6e 20 62 6f 6f 6c 20 7d                          n bool }
type..namedata.wg- SRODATA dupok size=4
	0x0000 00 02 77 67                                      ..wg
type..namedata.c- SRODATA dupok size=3
	0x0000 00 01 63                                         ..c
type.noalg.struct { F uintptr; main.wg *sync.WaitGroup; main.c chan bool } SRODATA dupok size=152
	0x0000 18 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	0x0010 a8 4a 28 92 02 08 08 19 00 00 00 00 00 00 00 00  .J(.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 03 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 10 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.06+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; wg *sync.WaitGroup; c chan bool }-+0
	rel 44+4 t=-32763 type.*struct { F uintptr; main.wg *sync.WaitGroup; main.c chan bool }+0
	rel 48+8 t=1 type..importpath.main.+0
	rel 56+8 t=1 type.noalg.struct { F uintptr; main.wg *sync.WaitGroup; main.c chan bool }+80
	rel 80+8 t=1 type..namedata..F-+0
	rel 88+8 t=1 type.uintptr+0
	rel 104+8 t=1 type..namedata.wg-+0
	rel 112+8 t=1 type.*sync.WaitGroup+0
	rel 128+8 t=1 type..namedata.c-+0
	rel 136+8 t=1 type.chan bool+0
type.*struct { F uintptr; main.wg *sync.WaitGroup; main.c chan bool } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 31 80 73 a5 08 08 08 36 00 00 00 00 00 00 00 00  1.s....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; wg *sync.WaitGroup; c chan bool }-+0
	rel 48+8 t=1 type.noalg.struct { F uintptr; main.wg *sync.WaitGroup; main.c chan bool }+0
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
type..importpath.sync. SRODATA dupok size=6
	0x0000 00 04 73 79 6e 63                                ..sync
gclocals·D1/YcbyNumM1nqYyoY4wEQ== SRODATA dupok size=8
	0x0000 04 00 00 00 00 00 00 00                          ........
gclocals·PAAm5sYkWVcMvEfVm9VFKQ== SRODATA dupok size=12
	0x0000 04 00 00 00 04 00 00 00 00 01 09 08              ............
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·TJqp01Pbhslx8LvL7y0LqA== SRODATA dupok size=10
	0x0000 02 00 00 00 06 00 00 00 00 01                    ..........
main.main.func2.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.02+0
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·Plqv2ff52JtlYaDd2Rwxbg== SRODATA dupok size=9
	0x0000 01 00 00 00 01 00 00 00 00                       .........
sync.(*WaitGroup).Done.wrapinfo SRODATA static dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 sync.(*WaitGroup).Done+0
main.main.func1.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.02+0
