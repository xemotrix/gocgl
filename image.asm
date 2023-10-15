# command-line-arguments
command-line-arguments.NewImage STEXT size=242 args=0x8 locals=0x40 funcid=0x0 align=0x0
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	TEXT	command-line-arguments.NewImage(SB), ABIInternal, $64-8
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	CMPQ	SP, 16(R14)
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	PCDATA	$0, $-2
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	JLS	215
	0x000a 00010 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	PCDATA	$0, $-1
	0x000a 00010 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	PUSHQ	BP
	0x000b 00011 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	MOVQ	SP, BP
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	SUBQ	$56, SP
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	FUNCDATA	$0, gclocals·ykHN0vawYuq1dUW4zEe2gA==(SB)
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	FUNCDATA	$1, gclocals·sQxO+jiYy+d9ldxoWSePwQ==(SB)
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	FUNCDATA	$5, command-line-arguments.NewImage.arginfo1(SB)
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	FUNCDATA	$6, command-line-arguments.NewImage.argliveinfo(SB)
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	PCDATA	$3, $1
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	MOVL	BX, command-line-arguments.height+76(SP)
	0x0016 00022 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	MOVL	AX, command-line-arguments.width+72(SP)
	0x001a 00026 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	PCDATA	$3, $-1
	0x001a 00026 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	MOVL	BX, CX
	0x001c 00028 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	IMULL	AX, CX
	0x001f 00031 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	MOVL	CX, DX
	0x0021 00033 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	SHLL	$2, DX
	0x0024 00036 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	MOVL	DX, command-line-arguments..autotmp_8+28(SP)
	0x0028 00040 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	MOVL	CX, SI
	0x002a 00042 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	MOVQ	SI, command-line-arguments..autotmp_9+32(SP)
	0x002f 00047 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	MOVL	DX, CX
	0x0031 00049 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	LEAQ	type:uint8(SB), AX
	0x0038 00056 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	MOVL	CX, BX
	0x003a 00058 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	PCDATA	$1, $0
	0x003a 00058 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	CALL	runtime.makeslice(SB)
	0x003f 00063 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	MOVQ	AX, command-line-arguments..autotmp_10+48(SP)
	0x0044 00068 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	MOVQ	command-line-arguments..autotmp_9+32(SP), BX
	0x0049 00073 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	MOVQ	BX, CX
	0x004c 00076 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	LEAQ	type:float64(SB), AX
	0x0053 00083 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	PCDATA	$1, $1
	0x0053 00083 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	CALL	runtime.makeslice(SB)
	0x0058 00088 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	MOVQ	AX, command-line-arguments..autotmp_11+40(SP)
	0x005d 00093 (/Users/chema.rodriguez/Documents/gocgl/image.go:19)	LEAQ	type:command-line-arguments.Image(SB), AX
	0x0064 00100 (/Users/chema.rodriguez/Documents/gocgl/image.go:19)	PCDATA	$1, $2
	0x0064 00100 (/Users/chema.rodriguez/Documents/gocgl/image.go:19)	CALL	runtime.newobject(SB)
	0x0069 00105 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	MOVL	command-line-arguments..autotmp_8+28(SP), DX
	0x006d 00109 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	MOVQ	DX, 8(AX)
	0x0071 00113 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	MOVQ	DX, 16(AX)
	0x0075 00117 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	PCDATA	$0, $-2
	0x0075 00117 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	CMPL	runtime.writeBarrier(SB), $0
	0x007c 00124 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	JNE	133
	0x007e 00126 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	MOVQ	command-line-arguments..autotmp_10+48(SP), CX
	0x0083 00131 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	JMP	146
	0x0085 00133 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	CALL	runtime.gcWriteBarrier1(SB)
	0x008a 00138 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	MOVQ	command-line-arguments..autotmp_10+48(SP), CX
	0x008f 00143 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	MOVQ	CX, (R11)
	0x0092 00146 (/Users/chema.rodriguez/Documents/gocgl/image.go:20)	MOVQ	CX, (AX)
	0x0095 00149 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	PCDATA	$0, $-1
	0x0095 00149 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	MOVQ	command-line-arguments..autotmp_9+32(SP), CX
	0x009a 00154 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	MOVQ	CX, 32(AX)
	0x009e 00158 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	MOVQ	CX, 40(AX)
	0x00a2 00162 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	PCDATA	$0, $-2
	0x00a2 00162 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	CMPL	runtime.writeBarrier(SB), $0
	0x00a9 00169 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	JNE	178
	0x00ab 00171 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	MOVQ	command-line-arguments..autotmp_11+40(SP), CX
	0x00b0 00176 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	JMP	191
	0x00b2 00178 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	CALL	runtime.gcWriteBarrier1(SB)
	0x00b7 00183 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	MOVQ	command-line-arguments..autotmp_11+40(SP), CX
	0x00bc 00188 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	MOVQ	CX, (R11)
	0x00bf 00191 (/Users/chema.rodriguez/Documents/gocgl/image.go:21)	MOVQ	CX, 24(AX)
	0x00c3 00195 (/Users/chema.rodriguez/Documents/gocgl/image.go:22)	PCDATA	$0, $-1
	0x00c3 00195 (/Users/chema.rodriguez/Documents/gocgl/image.go:22)	MOVL	command-line-arguments.width+72(SP), CX
	0x00c7 00199 (/Users/chema.rodriguez/Documents/gocgl/image.go:22)	MOVL	CX, 48(AX)
	0x00ca 00202 (/Users/chema.rodriguez/Documents/gocgl/image.go:23)	MOVL	command-line-arguments.height+76(SP), CX
	0x00ce 00206 (/Users/chema.rodriguez/Documents/gocgl/image.go:23)	MOVL	CX, 52(AX)
	0x00d1 00209 (/Users/chema.rodriguez/Documents/gocgl/image.go:19)	ADDQ	$56, SP
	0x00d5 00213 (/Users/chema.rodriguez/Documents/gocgl/image.go:19)	POPQ	BP
	0x00d6 00214 (/Users/chema.rodriguez/Documents/gocgl/image.go:19)	RET
	0x00d7 00215 (/Users/chema.rodriguez/Documents/gocgl/image.go:19)	NOP
	0x00d7 00215 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	PCDATA	$1, $-1
	0x00d7 00215 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	PCDATA	$0, $-2
	0x00d7 00215 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	MOVL	AX, 8(SP)
	0x00db 00219 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	MOVL	BX, 12(SP)
	0x00df 00223 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	NOP
	0x00e0 00224 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	CALL	runtime.morestack_noctxt(SB)
	0x00e5 00229 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	MOVL	8(SP), AX
	0x00e9 00233 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	MOVL	12(SP), BX
	0x00ed 00237 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	PCDATA	$0, $-1
	0x00ed 00237 (/Users/chema.rodriguez/Documents/gocgl/image.go:18)	JMP	0
	0x0000 49 3b 66 10 0f 86 cd 00 00 00 55 48 89 e5 48 83  I;f.......UH..H.
	0x0010 ec 38 89 5c 24 4c 89 44 24 48 89 d9 0f af c8 89  .8.\$L.D$H......
	0x0020 ca c1 e2 02 89 54 24 1c 89 ce 48 89 74 24 20 89  .....T$...H.t$ .
	0x0030 d1 48 8d 05 00 00 00 00 89 cb e8 00 00 00 00 48  .H.............H
	0x0040 89 44 24 30 48 8b 5c 24 20 48 89 d9 48 8d 05 00  .D$0H.\$ H..H...
	0x0050 00 00 00 e8 00 00 00 00 48 89 44 24 28 48 8d 05  ........H.D$(H..
	0x0060 00 00 00 00 e8 00 00 00 00 8b 54 24 1c 48 89 50  ..........T$.H.P
	0x0070 08 48 89 50 10 83 3d 00 00 00 00 00 75 07 48 8b  .H.P..=.....u.H.
	0x0080 4c 24 30 eb 0d e8 00 00 00 00 48 8b 4c 24 30 49  L$0.......H.L$0I
	0x0090 89 0b 48 89 08 48 8b 4c 24 20 48 89 48 20 48 89  ..H..H.L$ H.H H.
	0x00a0 48 28 83 3d 00 00 00 00 00 75 07 48 8b 4c 24 28  H(.=.....u.H.L$(
	0x00b0 eb 0d e8 00 00 00 00 48 8b 4c 24 28 49 89 0b 48  .......H.L$(I..H
	0x00c0 89 48 18 8b 4c 24 48 89 48 30 8b 4c 24 4c 89 48  .H..L$H.H0.L$L.H
	0x00d0 34 48 83 c4 38 5d c3 89 44 24 08 89 5c 24 0c 90  4H..8]..D$..\$..
	0x00e0 e8 00 00 00 00 8b 44 24 08 8b 5c 24 0c e9 0e ff  ......D$..\$....
	0x00f0 ff ff                                            ..
	rel 52+4 t=14 type:uint8+0
	rel 59+4 t=7 runtime.makeslice+0
	rel 79+4 t=14 type:float64+0
	rel 84+4 t=7 runtime.makeslice+0
	rel 96+4 t=14 type:command-line-arguments.Image+0
	rel 101+4 t=7 runtime.newobject+0
	rel 119+4 t=14 runtime.writeBarrier+-1
	rel 134+4 t=7 runtime.gcWriteBarrier1+0
	rel 164+4 t=14 runtime.writeBarrier+-1
	rel 179+4 t=7 runtime.gcWriteBarrier1+0
	rel 225+4 t=7 runtime.morestack_noctxt+0
command-line-arguments.(*Image).index STEXT nosplit size=13 args=0x10 locals=0x0 funcid=0x0 align=0x0
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:27)	TEXT	command-line-arguments.(*Image).index(SB), NOSPLIT|NOFRAME|ABIInternal, $0-16
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:27)	FUNCDATA	$0, gclocals·wgcWObbY2HYnK2SU/U22lA==(SB)
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:27)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:27)	FUNCDATA	$5, command-line-arguments.(*Image).index.arginfo1(SB)
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:27)	FUNCDATA	$6, command-line-arguments.(*Image).index.argliveinfo(SB)
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:27)	PCDATA	$3, $1
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:28)	MOVL	48(AX), DX
	0x0003 00003 (/Users/chema.rodriguez/Documents/gocgl/image.go:28)	IMULL	DX, CX
	0x0006 00006 (/Users/chema.rodriguez/Documents/gocgl/image.go:28)	LEAL	(CX)(BX*1), AX
	0x0009 00009 (/Users/chema.rodriguez/Documents/gocgl/image.go:28)	SHLL	$2, AX
	0x000c 00012 (/Users/chema.rodriguez/Documents/gocgl/image.go:28)	RET
	0x0000 8b 50 30 0f af ca 8d 04 19 c1 e0 02 c3           .P0..........
command-line-arguments.(*Image).SetPixelZ STEXT size=151 args=0x20 locals=0x20 funcid=0x0 align=0x0
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	TEXT	command-line-arguments.(*Image).SetPixelZ(SB), ABIInternal, $32-32
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	CMPQ	SP, 16(R14)
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	PCDATA	$0, $-2
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	JLS	95
	0x0006 00006 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	PCDATA	$0, $-1
	0x0006 00006 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	PUSHQ	BP
	0x0007 00007 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	MOVQ	SP, BP
	0x000a 00010 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	SUBQ	$24, SP
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	FUNCDATA	$0, gclocals·wgcWObbY2HYnK2SU/U22lA==(SB)
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	FUNCDATA	$5, command-line-arguments.(*Image).SetPixelZ.arginfo1(SB)
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	FUNCDATA	$6, command-line-arguments.(*Image).SetPixelZ.argliveinfo(SB)
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	PCDATA	$3, $1
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:32)	MOVL	48(AX), DX
	0x0011 00017 (/Users/chema.rodriguez/Documents/gocgl/image.go:32)	CMPL	BX, DX
	0x0013 00019 (/Users/chema.rodriguez/Documents/gocgl/image.go:32)	JCC	26
	0x0015 00021 (/Users/chema.rodriguez/Documents/gocgl/image.go:32)	CMPL	52(AX), CX
	0x0018 00024 (/Users/chema.rodriguez/Documents/gocgl/image.go:32)	JHI	33
	0x001a 00026 (/Users/chema.rodriguez/Documents/gocgl/image.go:33)	ADDQ	$24, SP
	0x001e 00030 (/Users/chema.rodriguez/Documents/gocgl/image.go:33)	POPQ	BP
	0x001f 00031 (/Users/chema.rodriguez/Documents/gocgl/image.go:33)	NOP
	0x0020 00032 (/Users/chema.rodriguez/Documents/gocgl/image.go:33)	RET
	0x0021 00033 (/Users/chema.rodriguez/Documents/gocgl/image.go:35)	IMULL	CX, DX
	0x0024 00036 (/Users/chema.rodriguez/Documents/gocgl/image.go:35)	ADDL	BX, DX
	0x0026 00038 (/Users/chema.rodriguez/Documents/gocgl/image.go:36)	MOVQ	32(AX), SI
	0x002a 00042 (/Users/chema.rodriguez/Documents/gocgl/image.go:36)	CMPQ	SI, DX
	0x002d 00045 (/Users/chema.rodriguez/Documents/gocgl/image.go:36)	JLS	84
	0x002f 00047 (/Users/chema.rodriguez/Documents/gocgl/image.go:36)	MOVQ	24(AX), SI
	0x0033 00051 (/Users/chema.rodriguez/Documents/gocgl/image.go:36)	MOVSD	(SI)(DX*8), X1
	0x0038 00056 (/Users/chema.rodriguez/Documents/gocgl/image.go:36)	UCOMISD	X0, X1
	0x003c 00060 (/Users/chema.rodriguez/Documents/gocgl/image.go:36)	JLS	68
	0x003e 00062 (/Users/chema.rodriguez/Documents/gocgl/image.go:37)	ADDQ	$24, SP
	0x0042 00066 (/Users/chema.rodriguez/Documents/gocgl/image.go:37)	POPQ	BP
	0x0043 00067 (/Users/chema.rodriguez/Documents/gocgl/image.go:37)	RET
	0x0044 00068 (/Users/chema.rodriguez/Documents/gocgl/image.go:39)	MOVSD	X0, (SI)(DX*8)
	0x0049 00073 (/Users/chema.rodriguez/Documents/gocgl/image.go:40)	PCDATA	$1, $1
	0x0049 00073 (/Users/chema.rodriguez/Documents/gocgl/image.go:40)	CALL	command-line-arguments.(*Image).SetPixel(SB)
	0x004e 00078 (/Users/chema.rodriguez/Documents/gocgl/image.go:41)	ADDQ	$24, SP
	0x0052 00082 (/Users/chema.rodriguez/Documents/gocgl/image.go:41)	POPQ	BP
	0x0053 00083 (/Users/chema.rodriguez/Documents/gocgl/image.go:41)	RET
	0x0054 00084 (/Users/chema.rodriguez/Documents/gocgl/image.go:36)	MOVL	DX, AX
	0x0056 00086 (/Users/chema.rodriguez/Documents/gocgl/image.go:36)	MOVQ	SI, CX
	0x0059 00089 (/Users/chema.rodriguez/Documents/gocgl/image.go:36)	CALL	runtime.panicIndex(SB)
	0x005e 00094 (/Users/chema.rodriguez/Documents/gocgl/image.go:36)	XCHGL	AX, AX
	0x005f 00095 (/Users/chema.rodriguez/Documents/gocgl/image.go:36)	NOP
	0x005f 00095 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	PCDATA	$1, $-1
	0x005f 00095 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	PCDATA	$0, $-2
	0x005f 00095 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	MOVQ	AX, 8(SP)
	0x0064 00100 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	MOVL	BX, 16(SP)
	0x0068 00104 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	MOVL	CX, 20(SP)
	0x006c 00108 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	MOVSD	X0, 24(SP)
	0x0072 00114 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	MOVL	DI, 32(SP)
	0x0076 00118 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	CALL	runtime.morestack_noctxt(SB)
	0x007b 00123 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	MOVQ	8(SP), AX
	0x0080 00128 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	MOVL	16(SP), BX
	0x0084 00132 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	MOVL	20(SP), CX
	0x0088 00136 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	MOVSD	24(SP), X0
	0x008e 00142 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	MOVL	32(SP), DI
	0x0092 00146 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	PCDATA	$0, $-1
	0x0092 00146 (/Users/chema.rodriguez/Documents/gocgl/image.go:31)	JMP	0
	0x0000 49 3b 66 10 76 59 55 48 89 e5 48 83 ec 18 8b 50  I;f.vYUH..H....P
	0x0010 30 39 d3 73 05 39 48 34 77 07 48 83 c4 18 5d 90  09.s.9H4w.H...].
	0x0020 c3 0f af d1 01 da 48 8b 70 20 48 39 d6 76 25 48  ......H.p H9.v%H
	0x0030 8b 70 18 f2 0f 10 0c d6 66 0f 2e c8 76 06 48 83  .p......f...v.H.
	0x0040 c4 18 5d c3 f2 0f 11 04 d6 e8 00 00 00 00 48 83  ..]...........H.
	0x0050 c4 18 5d c3 89 d0 48 89 f1 e8 00 00 00 00 90 48  ..]...H........H
	0x0060 89 44 24 08 89 5c 24 10 89 4c 24 14 f2 0f 11 44  .D$..\$..L$....D
	0x0070 24 18 89 7c 24 20 e8 00 00 00 00 48 8b 44 24 08  $..|$ .....H.D$.
	0x0080 8b 5c 24 10 8b 4c 24 14 f2 0f 10 44 24 18 8b 7c  .\$..L$....D$..|
	0x0090 24 20 e9 69 ff ff ff                             $ .i...
	rel 74+4 t=7 command-line-arguments.(*Image).SetPixel+0
	rel 90+4 t=7 runtime.panicIndex+0
	rel 119+4 t=7 runtime.morestack_noctxt+0
command-line-arguments.(*Image).SetPixel STEXT nosplit size=326 args=0x18 locals=0x20 funcid=0x0 align=0x0
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:43)	TEXT	command-line-arguments.(*Image).SetPixel(SB), NOSPLIT|ABIInternal, $32-24
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:43)	PUSHQ	BP
	0x0001 00001 (/Users/chema.rodriguez/Documents/gocgl/image.go:43)	MOVQ	SP, BP
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:43)	SUBQ	$24, SP
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:43)	FUNCDATA	$0, gclocals·wgcWObbY2HYnK2SU/U22lA==(SB)
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:43)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:43)	FUNCDATA	$5, command-line-arguments.(*Image).SetPixel.arginfo1(SB)
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:43)	FUNCDATA	$6, command-line-arguments.(*Image).SetPixel.argliveinfo(SB)
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:43)	PCDATA	$3, $1
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:44)	MOVL	48(AX), DX
	0x000b 00011 (/Users/chema.rodriguez/Documents/gocgl/image.go:44)	CMPL	BX, DX
	0x000d 00013 (/Users/chema.rodriguez/Documents/gocgl/image.go:44)	JCC	20
	0x000f 00015 (/Users/chema.rodriguez/Documents/gocgl/image.go:44)	CMPL	52(AX), CX
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:44)	JHI	26
	0x0014 00020 (/Users/chema.rodriguez/Documents/gocgl/image.go:45)	ADDQ	$24, SP
	0x0018 00024 (/Users/chema.rodriguez/Documents/gocgl/image.go:45)	POPQ	BP
	0x0019 00025 (/Users/chema.rodriguez/Documents/gocgl/image.go:45)	RET
	0x001a 00026 (/Users/chema.rodriguez/Documents/gocgl/image.go:47)	MOVL	DI, SI
	0x001c 00028 (/Users/chema.rodriguez/Documents/gocgl/image.go:47)	SHRL	$24, DI
	0x001f 00031 (/Users/chema.rodriguez/Documents/gocgl/image.go:47)	NOP
	0x0020 00032 (/Users/chema.rodriguez/Documents/gocgl/image.go:48)	TESTL	DI, DI
	0x0022 00034 (/Users/chema.rodriguez/Documents/gocgl/image.go:48)	JEQ	308
	0x0028 00040 (/Users/chema.rodriguez/Documents/gocgl/image.go:54)	XORPS	X0, X0
	0x002b 00043 (/Users/chema.rodriguez/Documents/gocgl/image.go:54)	CVTSQ2SD	DI, X0
	0x0030 00048 (/Users/chema.rodriguez/Documents/gocgl/image.go:28)	IMULL	DX, CX
	0x0033 00051 (/Users/chema.rodriguez/Documents/gocgl/image.go:52)	XCHGL	AX, AX
	0x0034 00052 (/Users/chema.rodriguez/Documents/gocgl/image.go:54)	MOVSD	$f64.406fe00000000000(SB), X1
	0x003c 00060 (/Users/chema.rodriguez/Documents/gocgl/image.go:54)	DIVSD	X1, X0
	0x0040 00064 (/Users/chema.rodriguez/Documents/gocgl/image.go:28)	LEAL	(CX)(BX*1), DX
	0x0043 00067 (/Users/chema.rodriguez/Documents/gocgl/image.go:60)	CMPQ	8(AX), $0
	0x0048 00072 (/Users/chema.rodriguez/Documents/gocgl/image.go:60)	JLS	314
	0x004e 00078 (/Users/chema.rodriguez/Documents/gocgl/image.go:55)	MOVL	SI, CX
	0x0050 00080 (/Users/chema.rodriguez/Documents/gocgl/image.go:55)	SHRL	$16, SI
	0x0053 00083 (/Users/chema.rodriguez/Documents/gocgl/image.go:56)	MOVL	CX, BX
	0x0055 00085 (/Users/chema.rodriguez/Documents/gocgl/image.go:56)	SHRL	$8, CX
	0x0058 00088 (/Users/chema.rodriguez/Documents/gocgl/image.go:60)	MOVQ	(AX), AX
	0x005b 00091 (/Users/chema.rodriguez/Documents/gocgl/image.go:66)	MOVSD	$f64.3ff0000000000000(SB), X2
	0x0063 00099 (/Users/chema.rodriguez/Documents/gocgl/image.go:66)	SUBSD	X0, X2
	0x0067 00103 (/Users/chema.rodriguez/Documents/gocgl/image.go:69)	MOVBLZX	BL, BX
	0x006a 00106 (/Users/chema.rodriguez/Documents/gocgl/image.go:69)	XORPS	X3, X3
	0x006d 00109 (/Users/chema.rodriguez/Documents/gocgl/image.go:69)	CVTSL2SD	BX, X3
	0x0071 00113 (/Users/chema.rodriguez/Documents/gocgl/image.go:69)	MULSD	X0, X3
	0x0075 00117 (/Users/chema.rodriguez/Documents/gocgl/image.go:70)	MOVBLZX	CL, CX
	0x0078 00120 (/Users/chema.rodriguez/Documents/gocgl/image.go:70)	XORPS	X4, X4
	0x007b 00123 (/Users/chema.rodriguez/Documents/gocgl/image.go:70)	CVTSL2SD	CX, X4
	0x007f 00127 (/Users/chema.rodriguez/Documents/gocgl/image.go:70)	MULSD	X0, X4
	0x0083 00131 (/Users/chema.rodriguez/Documents/gocgl/image.go:71)	MOVBLZX	SIB, CX
	0x0087 00135 (/Users/chema.rodriguez/Documents/gocgl/image.go:71)	XORPS	X5, X5
	0x008a 00138 (/Users/chema.rodriguez/Documents/gocgl/image.go:71)	CVTSL2SD	CX, X5
	0x008e 00142 (/Users/chema.rodriguez/Documents/gocgl/image.go:71)	MULSD	X0, X5
	0x0092 00146 (/Users/chema.rodriguez/Documents/gocgl/image.go:28)	SHLL	$2, DX
	0x0095 00149 (/Users/chema.rodriguez/Documents/gocgl/image.go:63)	MOVL	(AX)(DX*1), CX
	0x0098 00152 (/Users/chema.rodriguez/Documents/gocgl/image.go:63)	MOVL	CX, command-line-arguments.bgra+20(SP)
	0x009c 00156 (/Users/chema.rodriguez/Documents/gocgl/image.go:65)	MOVBLZX	command-line-arguments.bgra+23(SP), CX
	0x00a1 00161 (/Users/chema.rodriguez/Documents/gocgl/image.go:65)	XORPS	X6, X6
	0x00a4 00164 (/Users/chema.rodriguez/Documents/gocgl/image.go:65)	CVTSL2SD	CX, X6
	0x00a8 00168 (/Users/chema.rodriguez/Documents/gocgl/image.go:65)	DIVSD	X1, X6
	0x00ac 00172 (/Users/chema.rodriguez/Documents/gocgl/image.go:66)	MOVUPS	X2, X7
	0x00af 00175 (/Users/chema.rodriguez/Documents/gocgl/image.go:66)	MULSD	X6, X2
	0x00b3 00179 (/Users/chema.rodriguez/Documents/gocgl/image.go:66)	ADDSD	X0, X2
	0x00b7 00183 (/Users/chema.rodriguez/Documents/gocgl/image.go:69)	MOVBLZX	command-line-arguments.bgra+20(SP), CX
	0x00bc 00188 (/Users/chema.rodriguez/Documents/gocgl/image.go:69)	XORPS	X0, X0
	0x00bf 00191 (/Users/chema.rodriguez/Documents/gocgl/image.go:69)	CVTSL2SD	CX, X0
	0x00c3 00195 (/Users/chema.rodriguez/Documents/gocgl/image.go:69)	MULSD	X6, X0
	0x00c7 00199 (/Users/chema.rodriguez/Documents/gocgl/image.go:69)	MULSD	X7, X0
	0x00cb 00203 (/Users/chema.rodriguez/Documents/gocgl/image.go:69)	ADDSD	X3, X0
	0x00cf 00207 (/Users/chema.rodriguez/Documents/gocgl/image.go:69)	DIVSD	X2, X0
	0x00d3 00211 (/Users/chema.rodriguez/Documents/gocgl/image.go:69)	CVTTSD2SL	X0, CX
	0x00d7 00215 (/Users/chema.rodriguez/Documents/gocgl/image.go:70)	MOVBLZX	command-line-arguments.bgra+21(SP), BX
	0x00dc 00220 (/Users/chema.rodriguez/Documents/gocgl/image.go:70)	XORPS	X0, X0
	0x00df 00223 (/Users/chema.rodriguez/Documents/gocgl/image.go:70)	CVTSL2SD	BX, X0
	0x00e3 00227 (/Users/chema.rodriguez/Documents/gocgl/image.go:70)	MULSD	X6, X0
	0x00e7 00231 (/Users/chema.rodriguez/Documents/gocgl/image.go:70)	MULSD	X7, X0
	0x00eb 00235 (/Users/chema.rodriguez/Documents/gocgl/image.go:70)	ADDSD	X4, X0
	0x00ef 00239 (/Users/chema.rodriguez/Documents/gocgl/image.go:70)	DIVSD	X2, X0
	0x00f3 00243 (/Users/chema.rodriguez/Documents/gocgl/image.go:70)	CVTTSD2SL	X0, BX
	0x00f7 00247 (/Users/chema.rodriguez/Documents/gocgl/image.go:71)	MOVBLZX	command-line-arguments.bgra+22(SP), SI
	0x00fc 00252 (/Users/chema.rodriguez/Documents/gocgl/image.go:68)	MOVB	CL, (AX)(DX*1)
	0x00ff 00255 (/Users/chema.rodriguez/Documents/gocgl/image.go:68)	MOVB	BL, 1(AX)(DX*1)
	0x0103 00259 (/Users/chema.rodriguez/Documents/gocgl/image.go:71)	XORPS	X0, X0
	0x0106 00262 (/Users/chema.rodriguez/Documents/gocgl/image.go:71)	CVTSL2SD	SI, X0
	0x010a 00266 (/Users/chema.rodriguez/Documents/gocgl/image.go:71)	MULSD	X6, X0
	0x010e 00270 (/Users/chema.rodriguez/Documents/gocgl/image.go:71)	MULSD	X7, X0
	0x0112 00274 (/Users/chema.rodriguez/Documents/gocgl/image.go:71)	ADDSD	X5, X0
	0x0116 00278 (/Users/chema.rodriguez/Documents/gocgl/image.go:71)	DIVSD	X2, X0
	0x011a 00282 (/Users/chema.rodriguez/Documents/gocgl/image.go:71)	CVTTSD2SL	X0, CX
	0x011e 00286 (/Users/chema.rodriguez/Documents/gocgl/image.go:68)	MOVB	CL, 2(AX)(DX*1)
	0x0122 00290 (/Users/chema.rodriguez/Documents/gocgl/image.go:72)	MULSD	X1, X2
	0x0126 00294 (/Users/chema.rodriguez/Documents/gocgl/image.go:72)	CVTTSD2SL	X2, CX
	0x012a 00298 (/Users/chema.rodriguez/Documents/gocgl/image.go:68)	MOVB	CL, 3(AX)(DX*1)
	0x012e 00302 (/Users/chema.rodriguez/Documents/gocgl/image.go:74)	ADDQ	$24, SP
	0x0132 00306 (/Users/chema.rodriguez/Documents/gocgl/image.go:74)	POPQ	BP
	0x0133 00307 (/Users/chema.rodriguez/Documents/gocgl/image.go:74)	RET
	0x0134 00308 (/Users/chema.rodriguez/Documents/gocgl/image.go:49)	ADDQ	$24, SP
	0x0138 00312 (/Users/chema.rodriguez/Documents/gocgl/image.go:49)	POPQ	BP
	0x0139 00313 (/Users/chema.rodriguez/Documents/gocgl/image.go:49)	RET
	0x013a 00314 (/Users/chema.rodriguez/Documents/gocgl/image.go:60)	XORL	AX, AX
	0x013c 00316 (/Users/chema.rodriguez/Documents/gocgl/image.go:60)	MOVQ	AX, CX
	0x013f 00319 (/Users/chema.rodriguez/Documents/gocgl/image.go:60)	PCDATA	$1, $1
	0x013f 00319 (/Users/chema.rodriguez/Documents/gocgl/image.go:60)	NOP
	0x0140 00320 (/Users/chema.rodriguez/Documents/gocgl/image.go:60)	CALL	runtime.panicIndex(SB)
	0x0145 00325 (/Users/chema.rodriguez/Documents/gocgl/image.go:60)	XCHGL	AX, AX
	0x0000 55 48 89 e5 48 83 ec 18 8b 50 30 39 d3 73 05 39  UH..H....P09.s.9
	0x0010 48 34 77 06 48 83 c4 18 5d c3 89 fe c1 ef 18 90  H4w.H...].......
	0x0020 85 ff 0f 84 0c 01 00 00 0f 57 c0 f2 48 0f 2a c7  .........W..H.*.
	0x0030 0f af ca 90 f2 0f 10 0d 00 00 00 00 f2 0f 5e c1  ..............^.
	0x0040 8d 14 19 48 83 78 08 00 0f 86 ec 00 00 00 89 f1  ...H.x..........
	0x0050 c1 ee 10 89 cb c1 e9 08 48 8b 00 f2 0f 10 15 00  ........H.......
	0x0060 00 00 00 f2 0f 5c d0 0f b6 db 0f 57 db f2 0f 2a  .....\.....W...*
	0x0070 db f2 0f 59 d8 0f b6 c9 0f 57 e4 f2 0f 2a e1 f2  ...Y.....W...*..
	0x0080 0f 59 e0 40 0f b6 ce 0f 57 ed f2 0f 2a e9 f2 0f  .Y.@....W...*...
	0x0090 59 e8 c1 e2 02 8b 0c 10 89 4c 24 14 0f b6 4c 24  Y........L$...L$
	0x00a0 17 0f 57 f6 f2 0f 2a f1 f2 0f 5e f1 0f 10 fa f2  ..W...*...^.....
	0x00b0 0f 59 d6 f2 0f 58 d0 0f b6 4c 24 14 0f 57 c0 f2  .Y...X...L$..W..
	0x00c0 0f 2a c1 f2 0f 59 c6 f2 0f 59 c7 f2 0f 58 c3 f2  .*...Y...Y...X..
	0x00d0 0f 5e c2 f2 0f 2c c8 0f b6 5c 24 15 0f 57 c0 f2  .^...,...\$..W..
	0x00e0 0f 2a c3 f2 0f 59 c6 f2 0f 59 c7 f2 0f 58 c4 f2  .*...Y...Y...X..
	0x00f0 0f 5e c2 f2 0f 2c d8 0f b6 74 24 16 88 0c 10 88  .^...,...t$.....
	0x0100 5c 10 01 0f 57 c0 f2 0f 2a c6 f2 0f 59 c6 f2 0f  \...W...*...Y...
	0x0110 59 c7 f2 0f 58 c5 f2 0f 5e c2 f2 0f 2c c8 88 4c  Y...X...^...,..L
	0x0120 10 02 f2 0f 59 d1 f2 0f 2c ca 88 4c 10 03 48 83  ....Y...,..L..H.
	0x0130 c4 18 5d c3 48 83 c4 18 5d c3 31 c0 48 89 c1 90  ..].H...].1.H...
	0x0140 e8 00 00 00 00 90                                ......
	rel 56+4 t=14 $f64.406fe00000000000+0
	rel 95+4 t=14 $f64.3ff0000000000000+0
	rel 321+4 t=7 runtime.panicIndex+0
command-line-arguments.(*Image).CopyFrom STEXT size=152 args=0x10 locals=0x20 funcid=0x0 align=0x0
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	TEXT	command-line-arguments.(*Image).CopyFrom(SB), ABIInternal, $32-16
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	CMPQ	SP, 16(R14)
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	PCDATA	$0, $-2
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	JLS	122
	0x0006 00006 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	PCDATA	$0, $-1
	0x0006 00006 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	PUSHQ	BP
	0x0007 00007 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	MOVQ	SP, BP
	0x000a 00010 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	SUBQ	$24, SP
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	FUNCDATA	$0, gclocals·TjPuuCwdlCpTaRQGRKTrYw==(SB)
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	FUNCDATA	$5, command-line-arguments.(*Image).CopyFrom.arginfo1(SB)
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	FUNCDATA	$6, command-line-arguments.(*Image).CopyFrom.argliveinfo(SB)
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	PCDATA	$3, $1
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	MOVQ	(AX), DX
	0x0011 00017 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	MOVQ	8(AX), CX
	0x0015 00021 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	MOVQ	(BX), SI
	0x0018 00024 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	MOVQ	8(BX), DI
	0x001c 00028 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	CMPQ	CX, DI
	0x001f 00031 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	CMOVQGT	DI, CX
	0x0023 00035 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	CMPQ	DX, SI
	0x0026 00038 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	JEQ	71
	0x0028 00040 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	MOVQ	AX, command-line-arguments.img+40(SP)
	0x002d 00045 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	MOVQ	BX, command-line-arguments.other+48(SP)
	0x0032 00050 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	PCDATA	$3, $-1
	0x0032 00050 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	MOVQ	DX, AX
	0x0035 00053 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	MOVQ	SI, BX
	0x0038 00056 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	PCDATA	$1, $0
	0x0038 00056 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	CALL	runtime.memmove(SB)
	0x003d 00061 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	MOVQ	command-line-arguments.img+40(SP), AX
	0x0042 00066 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	MOVQ	command-line-arguments.other+48(SP), BX
	0x0047 00071 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	PCDATA	$1, $-1
	0x0047 00071 (/Users/chema.rodriguez/Documents/gocgl/image.go:77)	PCDATA	$3, $1
	0x0047 00071 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	MOVQ	24(AX), DX
	0x004b 00075 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	MOVQ	32(AX), CX
	0x004f 00079 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	MOVQ	24(BX), SI
	0x0053 00083 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	MOVQ	32(BX), DI
	0x0057 00087 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	CMPQ	CX, DI
	0x005a 00090 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	CMOVQGT	DI, CX
	0x005e 00094 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	NOP
	0x0060 00096 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	CMPQ	SI, DX
	0x0063 00099 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	JEQ	116
	0x0065 00101 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	SHLQ	$3, CX
	0x0069 00105 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	MOVQ	DX, AX
	0x006c 00108 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	MOVQ	SI, BX
	0x006f 00111 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	PCDATA	$1, $1
	0x006f 00111 (/Users/chema.rodriguez/Documents/gocgl/image.go:78)	CALL	runtime.memmove(SB)
	0x0074 00116 (/Users/chema.rodriguez/Documents/gocgl/image.go:79)	PCDATA	$1, $-1
	0x0074 00116 (/Users/chema.rodriguez/Documents/gocgl/image.go:79)	ADDQ	$24, SP
	0x0078 00120 (/Users/chema.rodriguez/Documents/gocgl/image.go:79)	POPQ	BP
	0x0079 00121 (/Users/chema.rodriguez/Documents/gocgl/image.go:79)	RET
	0x007a 00122 (/Users/chema.rodriguez/Documents/gocgl/image.go:79)	NOP
	0x007a 00122 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	PCDATA	$1, $-1
	0x007a 00122 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	PCDATA	$0, $-2
	0x007a 00122 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	MOVQ	AX, 8(SP)
	0x007f 00127 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	MOVQ	BX, 16(SP)
	0x0084 00132 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	CALL	runtime.morestack_noctxt(SB)
	0x0089 00137 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	MOVQ	8(SP), AX
	0x008e 00142 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	MOVQ	16(SP), BX
	0x0093 00147 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	PCDATA	$0, $-1
	0x0093 00147 (/Users/chema.rodriguez/Documents/gocgl/image.go:76)	JMP	0
	0x0000 49 3b 66 10 76 74 55 48 89 e5 48 83 ec 18 48 8b  I;f.vtUH..H...H.
	0x0010 10 48 8b 48 08 48 8b 33 48 8b 7b 08 48 39 f9 48  .H.H.H.3H.{.H9.H
	0x0020 0f 4f cf 48 39 f2 74 1f 48 89 44 24 28 48 89 5c  .O.H9.t.H.D$(H.\
	0x0030 24 30 48 89 d0 48 89 f3 e8 00 00 00 00 48 8b 44  $0H..H.......H.D
	0x0040 24 28 48 8b 5c 24 30 48 8b 50 18 48 8b 48 20 48  $(H.\$0H.P.H.H H
	0x0050 8b 73 18 48 8b 7b 20 48 39 f9 48 0f 4f cf 66 90  .s.H.{ H9.H.O.f.
	0x0060 48 39 d6 74 0f 48 c1 e1 03 48 89 d0 48 89 f3 e8  H9.t.H...H..H...
	0x0070 00 00 00 00 48 83 c4 18 5d c3 48 89 44 24 08 48  ....H...].H.D$.H
	0x0080 89 5c 24 10 e8 00 00 00 00 48 8b 44 24 08 48 8b  .\$......H.D$.H.
	0x0090 5c 24 10 e9 68 ff ff ff                          \$..h...
	rel 57+4 t=7 runtime.memmove+0
	rel 112+4 t=7 runtime.memmove+0
	rel 133+4 t=7 runtime.morestack_noctxt+0
command-line-arguments.(*Image).Overlay STEXT nosplit size=521 args=0x10 locals=0x18 funcid=0x0 align=0x0
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:81)	TEXT	command-line-arguments.(*Image).Overlay(SB), NOSPLIT|ABIInternal, $24-16
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:81)	PUSHQ	BP
	0x0001 00001 (/Users/chema.rodriguez/Documents/gocgl/image.go:81)	MOVQ	SP, BP
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:81)	SUBQ	$16, SP
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:81)	FUNCDATA	$0, gclocals·TjPuuCwdlCpTaRQGRKTrYw==(SB)
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:81)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:81)	FUNCDATA	$5, command-line-arguments.(*Image).Overlay.arginfo1(SB)
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:81)	FUNCDATA	$6, command-line-arguments.(*Image).Overlay.argliveinfo(SB)
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:81)	PCDATA	$3, $1
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:81)	XORL	CX, CX
	0x000a 00010 (/Users/chema.rodriguez/Documents/gocgl/image.go:82)	JMP	26
	0x000c 00012 (/Users/chema.rodriguez/Documents/gocgl/image.go:98)	CVTTSD2SL	X5, DX
	0x0010 00016 (/Users/chema.rodriguez/Documents/gocgl/image.go:103)	MOVQ	(AX), SI
	0x0013 00019 (/Users/chema.rodriguez/Documents/gocgl/image.go:103)	MOVB	DL, (SI)(CX*1)
	0x0016 00022 (/Users/chema.rodriguez/Documents/gocgl/image.go:82)	ADDQ	$4, CX
	0x001a 00026 (/Users/chema.rodriguez/Documents/gocgl/image.go:82)	MOVQ	8(AX), DX
	0x001e 00030 (/Users/chema.rodriguez/Documents/gocgl/image.go:82)	NOP
	0x0020 00032 (/Users/chema.rodriguez/Documents/gocgl/image.go:82)	CMPQ	CX, DX
	0x0023 00035 (/Users/chema.rodriguez/Documents/gocgl/image.go:82)	JGE	404
	0x0029 00041 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	MOVQ	8(BX), SI
	0x002d 00045 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	LEAQ	3(CX), DI
	0x0031 00049 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	CMPQ	SI, DI
	0x0034 00052 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	JLS	509
	0x003a 00058 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	MOVQ	(BX), R8
	0x003d 00061 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	MOVBLZX	3(R8)(CX*1), R9
	0x0043 00067 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	XORPS	X0, X0
	0x0046 00070 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	CVTSL2SD	R9, X0
	0x004b 00075 (/Users/chema.rodriguez/Documents/gocgl/image.go:84)	LEAQ	2(CX), R9
	0x004f 00079 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	MOVSD	$f64.406fe00000000000(SB), X1
	0x0057 00087 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	DIVSD	X1, X0
	0x005b 00091 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	NOP
	0x0060 00096 (/Users/chema.rodriguez/Documents/gocgl/image.go:84)	CMPQ	SI, R9
	0x0063 00099 (/Users/chema.rodriguez/Documents/gocgl/image.go:84)	JLS	498
	0x0069 00105 (/Users/chema.rodriguez/Documents/gocgl/image.go:85)	LEAQ	1(CX), R10
	0x006d 00109 (/Users/chema.rodriguez/Documents/gocgl/image.go:84)	MOVBLZX	2(R8)(CX*1), R11
	0x0073 00115 (/Users/chema.rodriguez/Documents/gocgl/image.go:85)	CMPQ	SI, R10
	0x0076 00118 (/Users/chema.rodriguez/Documents/gocgl/image.go:85)	JLS	487
	0x007c 00124 (/Users/chema.rodriguez/Documents/gocgl/image.go:85)	MOVBLZX	1(R8)(CX*1), R12
	0x0082 00130 (/Users/chema.rodriguez/Documents/gocgl/image.go:86)	CMPQ	CX, SI
	0x0085 00133 (/Users/chema.rodriguez/Documents/gocgl/image.go:86)	JCC	476
	0x008b 00139 (/Users/chema.rodriguez/Documents/gocgl/image.go:86)	MOVBLZX	(R8)(CX*1), SI
	0x0090 00144 (/Users/chema.rodriguez/Documents/gocgl/image.go:88)	CMPQ	DX, DI
	0x0093 00147 (/Users/chema.rodriguez/Documents/gocgl/image.go:88)	JLS	465
	0x0099 00153 (/Users/chema.rodriguez/Documents/gocgl/image.go:82)	MOVQ	(AX), DI
	0x009c 00156 (/Users/chema.rodriguez/Documents/gocgl/image.go:88)	MOVBLZX	3(DI)(CX*1), R8
	0x00a2 00162 (/Users/chema.rodriguez/Documents/gocgl/image.go:89)	CMPQ	DX, R9
	0x00a5 00165 (/Users/chema.rodriguez/Documents/gocgl/image.go:89)	JLS	454
	0x00ab 00171 (/Users/chema.rodriguez/Documents/gocgl/image.go:89)	MOVBLZX	2(DI)(CX*1), R13
	0x00b1 00177 (/Users/chema.rodriguez/Documents/gocgl/image.go:90)	CMPQ	DX, R10
	0x00b4 00180 (/Users/chema.rodriguez/Documents/gocgl/image.go:90)	JLS	443
	0x00ba 00186 (/Users/chema.rodriguez/Documents/gocgl/image.go:90)	MOVBLZX	1(DI)(CX*1), DX
	0x00bf 00191 (/Users/chema.rodriguez/Documents/gocgl/image.go:91)	MOVBLZX	(DI)(CX*1), R15
	0x00c4 00196 (/Users/chema.rodriguez/Documents/gocgl/image.go:93)	XORPS	X2, X2
	0x00c7 00199 (/Users/chema.rodriguez/Documents/gocgl/image.go:93)	CVTSL2SD	R8, X2
	0x00cc 00204 (/Users/chema.rodriguez/Documents/gocgl/image.go:93)	DIVSD	X1, X2
	0x00d0 00208 (/Users/chema.rodriguez/Documents/gocgl/image.go:94)	MOVSD	$f64.3ff0000000000000(SB), X3
	0x00d8 00216 (/Users/chema.rodriguez/Documents/gocgl/image.go:94)	SUBSD	X0, X3
	0x00dc 00220 (/Users/chema.rodriguez/Documents/gocgl/image.go:94)	MOVUPS	X3, X4
	0x00df 00223 (/Users/chema.rodriguez/Documents/gocgl/image.go:94)	MULSD	X2, X3
	0x00e3 00227 (/Users/chema.rodriguez/Documents/gocgl/image.go:94)	ADDSD	X0, X3
	0x00e7 00231 (/Users/chema.rodriguez/Documents/gocgl/image.go:96)	XORPS	X5, X5
	0x00ea 00234 (/Users/chema.rodriguez/Documents/gocgl/image.go:96)	CVTSL2SD	R11, X5
	0x00ef 00239 (/Users/chema.rodriguez/Documents/gocgl/image.go:96)	MULSD	X0, X5
	0x00f3 00243 (/Users/chema.rodriguez/Documents/gocgl/image.go:96)	XORPS	X6, X6
	0x00f6 00246 (/Users/chema.rodriguez/Documents/gocgl/image.go:96)	CVTSL2SD	R13, X6
	0x00fb 00251 (/Users/chema.rodriguez/Documents/gocgl/image.go:96)	MULSD	X2, X6
	0x00ff 00255 (/Users/chema.rodriguez/Documents/gocgl/image.go:96)	MULSD	X4, X6
	0x0103 00259 (/Users/chema.rodriguez/Documents/gocgl/image.go:96)	ADDSD	X5, X6
	0x0107 00263 (/Users/chema.rodriguez/Documents/gocgl/image.go:97)	XORPS	X5, X5
	0x010a 00266 (/Users/chema.rodriguez/Documents/gocgl/image.go:97)	CVTSL2SD	R12, X5
	0x010f 00271 (/Users/chema.rodriguez/Documents/gocgl/image.go:97)	MULSD	X0, X5
	0x0113 00275 (/Users/chema.rodriguez/Documents/gocgl/image.go:97)	XORPS	X7, X7
	0x0116 00278 (/Users/chema.rodriguez/Documents/gocgl/image.go:97)	CVTSL2SD	DX, X7
	0x011a 00282 (/Users/chema.rodriguez/Documents/gocgl/image.go:97)	MULSD	X2, X7
	0x011e 00286 (/Users/chema.rodriguez/Documents/gocgl/image.go:97)	MULSD	X4, X7
	0x0122 00290 (/Users/chema.rodriguez/Documents/gocgl/image.go:97)	ADDSD	X5, X7
	0x0126 00294 (/Users/chema.rodriguez/Documents/gocgl/image.go:98)	XORPS	X5, X5
	0x0129 00297 (/Users/chema.rodriguez/Documents/gocgl/image.go:98)	CVTSL2SD	SI, X5
	0x012d 00301 (/Users/chema.rodriguez/Documents/gocgl/image.go:98)	MULSD	X0, X5
	0x0131 00305 (/Users/chema.rodriguez/Documents/gocgl/image.go:98)	XORPS	X0, X0
	0x0134 00308 (/Users/chema.rodriguez/Documents/gocgl/image.go:98)	CVTSL2SD	R15, X0
	0x0139 00313 (/Users/chema.rodriguez/Documents/gocgl/image.go:98)	MULSD	X2, X0
	0x013d 00317 (/Users/chema.rodriguez/Documents/gocgl/image.go:98)	MULSD	X4, X0
	0x0141 00321 (/Users/chema.rodriguez/Documents/gocgl/image.go:98)	ADDSD	X0, X5
	0x0145 00325 (/Users/chema.rodriguez/Documents/gocgl/image.go:100)	MULSD	X3, X1
	0x0149 00329 (/Users/chema.rodriguez/Documents/gocgl/image.go:100)	CVTTSD2SL	X1, DX
	0x014d 00333 (/Users/chema.rodriguez/Documents/gocgl/image.go:100)	MOVB	DL, 3(CX)(DI*1)
	0x0151 00337 (/Users/chema.rodriguez/Documents/gocgl/image.go:101)	MOVQ	8(AX), DX
	0x0155 00341 (/Users/chema.rodriguez/Documents/gocgl/image.go:96)	DIVSD	X3, X6
	0x0159 00345 (/Users/chema.rodriguez/Documents/gocgl/image.go:97)	DIVSD	X3, X7
	0x015d 00349 (/Users/chema.rodriguez/Documents/gocgl/image.go:98)	DIVSD	X3, X5
	0x0161 00353 (/Users/chema.rodriguez/Documents/gocgl/image.go:101)	CMPQ	DX, R9
	0x0164 00356 (/Users/chema.rodriguez/Documents/gocgl/image.go:101)	JLS	432
	0x0166 00358 (/Users/chema.rodriguez/Documents/gocgl/image.go:96)	CVTTSD2SL	X6, DX
	0x016a 00362 (/Users/chema.rodriguez/Documents/gocgl/image.go:101)	MOVQ	(AX), SI
	0x016d 00365 (/Users/chema.rodriguez/Documents/gocgl/image.go:101)	MOVB	DL, 2(CX)(SI*1)
	0x0171 00369 (/Users/chema.rodriguez/Documents/gocgl/image.go:102)	MOVQ	8(AX), DX
	0x0175 00373 (/Users/chema.rodriguez/Documents/gocgl/image.go:102)	CMPQ	DX, R10
	0x0178 00376 (/Users/chema.rodriguez/Documents/gocgl/image.go:102)	JLS	421
	0x017a 00378 (/Users/chema.rodriguez/Documents/gocgl/image.go:97)	CVTTSD2SL	X7, DX
	0x017e 00382 (/Users/chema.rodriguez/Documents/gocgl/image.go:102)	MOVQ	(AX), SI
	0x0181 00385 (/Users/chema.rodriguez/Documents/gocgl/image.go:102)	MOVB	DL, 1(CX)(SI*1)
	0x0185 00389 (/Users/chema.rodriguez/Documents/gocgl/image.go:103)	MOVQ	8(AX), DX
	0x0189 00393 (/Users/chema.rodriguez/Documents/gocgl/image.go:103)	CMPQ	CX, DX
	0x018c 00396 (/Users/chema.rodriguez/Documents/gocgl/image.go:103)	JCS	12
	0x0192 00402 (/Users/chema.rodriguez/Documents/gocgl/image.go:103)	JMP	410
	0x0194 00404 (/Users/chema.rodriguez/Documents/gocgl/image.go:105)	ADDQ	$16, SP
	0x0198 00408 (/Users/chema.rodriguez/Documents/gocgl/image.go:105)	POPQ	BP
	0x0199 00409 (/Users/chema.rodriguez/Documents/gocgl/image.go:105)	RET
	0x019a 00410 (/Users/chema.rodriguez/Documents/gocgl/image.go:103)	MOVQ	CX, AX
	0x019d 00413 (/Users/chema.rodriguez/Documents/gocgl/image.go:103)	MOVQ	DX, CX
	0x01a0 00416 (/Users/chema.rodriguez/Documents/gocgl/image.go:103)	PCDATA	$1, $1
	0x01a0 00416 (/Users/chema.rodriguez/Documents/gocgl/image.go:103)	CALL	runtime.panicIndex(SB)
	0x01a5 00421 (/Users/chema.rodriguez/Documents/gocgl/image.go:102)	MOVQ	R10, AX
	0x01a8 00424 (/Users/chema.rodriguez/Documents/gocgl/image.go:102)	MOVQ	DX, CX
	0x01ab 00427 (/Users/chema.rodriguez/Documents/gocgl/image.go:102)	CALL	runtime.panicIndex(SB)
	0x01b0 00432 (/Users/chema.rodriguez/Documents/gocgl/image.go:101)	MOVQ	R9, AX
	0x01b3 00435 (/Users/chema.rodriguez/Documents/gocgl/image.go:101)	MOVQ	DX, CX
	0x01b6 00438 (/Users/chema.rodriguez/Documents/gocgl/image.go:101)	CALL	runtime.panicIndex(SB)
	0x01bb 00443 (/Users/chema.rodriguez/Documents/gocgl/image.go:90)	MOVQ	R10, AX
	0x01be 00446 (/Users/chema.rodriguez/Documents/gocgl/image.go:90)	MOVQ	DX, CX
	0x01c1 00449 (/Users/chema.rodriguez/Documents/gocgl/image.go:90)	CALL	runtime.panicIndex(SB)
	0x01c6 00454 (/Users/chema.rodriguez/Documents/gocgl/image.go:89)	MOVQ	R9, AX
	0x01c9 00457 (/Users/chema.rodriguez/Documents/gocgl/image.go:89)	MOVQ	DX, CX
	0x01cc 00460 (/Users/chema.rodriguez/Documents/gocgl/image.go:89)	CALL	runtime.panicIndex(SB)
	0x01d1 00465 (/Users/chema.rodriguez/Documents/gocgl/image.go:88)	MOVQ	DI, AX
	0x01d4 00468 (/Users/chema.rodriguez/Documents/gocgl/image.go:88)	MOVQ	DX, CX
	0x01d7 00471 (/Users/chema.rodriguez/Documents/gocgl/image.go:88)	CALL	runtime.panicIndex(SB)
	0x01dc 00476 (/Users/chema.rodriguez/Documents/gocgl/image.go:86)	MOVQ	CX, AX
	0x01df 00479 (/Users/chema.rodriguez/Documents/gocgl/image.go:86)	MOVQ	SI, CX
	0x01e2 00482 (/Users/chema.rodriguez/Documents/gocgl/image.go:86)	CALL	runtime.panicIndex(SB)
	0x01e7 00487 (/Users/chema.rodriguez/Documents/gocgl/image.go:85)	MOVQ	R10, AX
	0x01ea 00490 (/Users/chema.rodriguez/Documents/gocgl/image.go:85)	MOVQ	SI, CX
	0x01ed 00493 (/Users/chema.rodriguez/Documents/gocgl/image.go:85)	CALL	runtime.panicIndex(SB)
	0x01f2 00498 (/Users/chema.rodriguez/Documents/gocgl/image.go:84)	MOVQ	R9, AX
	0x01f5 00501 (/Users/chema.rodriguez/Documents/gocgl/image.go:84)	MOVQ	SI, CX
	0x01f8 00504 (/Users/chema.rodriguez/Documents/gocgl/image.go:84)	CALL	runtime.panicIndex(SB)
	0x01fd 00509 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	MOVQ	DI, AX
	0x0200 00512 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	MOVQ	SI, CX
	0x0203 00515 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	CALL	runtime.panicIndex(SB)
	0x0208 00520 (/Users/chema.rodriguez/Documents/gocgl/image.go:83)	XCHGL	AX, AX
	0x0000 55 48 89 e5 48 83 ec 10 31 c9 eb 0e f2 0f 2c d5  UH..H...1.....,.
	0x0010 48 8b 30 88 14 0e 48 83 c1 04 48 8b 50 08 66 90  H.0...H...H.P.f.
	0x0020 48 39 d1 0f 8d 6b 01 00 00 48 8b 73 08 48 8d 79  H9...k...H.s.H.y
	0x0030 03 48 39 fe 0f 86 c3 01 00 00 4c 8b 03 45 0f b6  .H9.......L..E..
	0x0040 4c 08 03 0f 57 c0 f2 41 0f 2a c1 4c 8d 49 02 f2  L...W..A.*.L.I..
	0x0050 0f 10 0d 00 00 00 00 f2 0f 5e c1 0f 1f 44 00 00  .........^...D..
	0x0060 4c 39 ce 0f 86 89 01 00 00 4c 8d 51 01 45 0f b6  L9.......L.Q.E..
	0x0070 5c 08 02 4c 39 d6 0f 86 6b 01 00 00 45 0f b6 64  \..L9...k...E..d
	0x0080 08 01 48 39 f1 0f 83 51 01 00 00 41 0f b6 34 08  ..H9...Q...A..4.
	0x0090 48 39 fa 0f 86 38 01 00 00 48 8b 38 44 0f b6 44  H9...8...H.8D..D
	0x00a0 0f 03 4c 39 ca 0f 86 1b 01 00 00 44 0f b6 6c 0f  ..L9.......D..l.
	0x00b0 02 4c 39 d2 0f 86 01 01 00 00 0f b6 54 0f 01 44  .L9.........T..D
	0x00c0 0f b6 3c 0f 0f 57 d2 f2 41 0f 2a d0 f2 0f 5e d1  ..<..W..A.*...^.
	0x00d0 f2 0f 10 1d 00 00 00 00 f2 0f 5c d8 0f 10 e3 f2  ..........\.....
	0x00e0 0f 59 da f2 0f 58 d8 0f 57 ed f2 41 0f 2a eb f2  .Y...X..W..A.*..
	0x00f0 0f 59 e8 0f 57 f6 f2 41 0f 2a f5 f2 0f 59 f2 f2  .Y..W..A.*...Y..
	0x0100 0f 59 f4 f2 0f 58 f5 0f 57 ed f2 41 0f 2a ec f2  .Y...X..W..A.*..
	0x0110 0f 59 e8 0f 57 ff f2 0f 2a fa f2 0f 59 fa f2 0f  .Y..W...*...Y...
	0x0120 59 fc f2 0f 58 fd 0f 57 ed f2 0f 2a ee f2 0f 59  Y...X..W...*...Y
	0x0130 e8 0f 57 c0 f2 41 0f 2a c7 f2 0f 59 c2 f2 0f 59  ..W..A.*...Y...Y
	0x0140 c4 f2 0f 58 e8 f2 0f 59 cb f2 0f 2c d1 88 54 39  ...X...Y...,..T9
	0x0150 03 48 8b 50 08 f2 0f 5e f3 f2 0f 5e fb f2 0f 5e  .H.P...^...^...^
	0x0160 eb 4c 39 ca 76 4a f2 0f 2c d6 48 8b 30 88 54 31  .L9.vJ..,.H.0.T1
	0x0170 02 48 8b 50 08 4c 39 d2 76 2b f2 0f 2c d7 48 8b  .H.P.L9.v+..,.H.
	0x0180 30 88 54 31 01 48 8b 50 08 48 39 d1 0f 82 7a fe  0.T1.H.P.H9...z.
	0x0190 ff ff eb 06 48 83 c4 10 5d c3 48 89 c8 48 89 d1  ....H...].H..H..
	0x01a0 e8 00 00 00 00 4c 89 d0 48 89 d1 e8 00 00 00 00  .....L..H.......
	0x01b0 4c 89 c8 48 89 d1 e8 00 00 00 00 4c 89 d0 48 89  L..H.......L..H.
	0x01c0 d1 e8 00 00 00 00 4c 89 c8 48 89 d1 e8 00 00 00  ......L..H......
	0x01d0 00 48 89 f8 48 89 d1 e8 00 00 00 00 48 89 c8 48  .H..H.......H..H
	0x01e0 89 f1 e8 00 00 00 00 4c 89 d0 48 89 f1 e8 00 00  .......L..H.....
	0x01f0 00 00 4c 89 c8 48 89 f1 e8 00 00 00 00 48 89 f8  ..L..H.......H..
	0x0200 48 89 f1 e8 00 00 00 00 90                       H........
	rel 83+4 t=14 $f64.406fe00000000000+0
	rel 212+4 t=14 $f64.3ff0000000000000+0
	rel 417+4 t=7 runtime.panicIndex+0
	rel 428+4 t=7 runtime.panicIndex+0
	rel 439+4 t=7 runtime.panicIndex+0
	rel 450+4 t=7 runtime.panicIndex+0
	rel 461+4 t=7 runtime.panicIndex+0
	rel 472+4 t=7 runtime.panicIndex+0
	rel 483+4 t=7 runtime.panicIndex+0
	rel 494+4 t=7 runtime.panicIndex+0
	rel 505+4 t=7 runtime.panicIndex+0
	rel 516+4 t=7 runtime.panicIndex+0
command-line-arguments.(*Image).FillWithColor STEXT size=179 args=0x10 locals=0x28 funcid=0x0 align=0x0
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	TEXT	command-line-arguments.(*Image).FillWithColor(SB), ABIInternal, $40-16
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	CMPQ	SP, 16(R14)
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	PCDATA	$0, $-2
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	JLS	146
	0x000a 00010 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	PCDATA	$0, $-1
	0x000a 00010 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	PUSHQ	BP
	0x000b 00011 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	MOVQ	SP, BP
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	SUBQ	$32, SP
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	FUNCDATA	$0, gclocals·wgcWObbY2HYnK2SU/U22lA==(SB)
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	FUNCDATA	$5, command-line-arguments.(*Image).FillWithColor.arginfo1(SB)
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	FUNCDATA	$6, command-line-arguments.(*Image).FillWithColor.argliveinfo(SB)
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	PCDATA	$3, $1
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	XORL	CX, CX
	0x0014 00020 (/Users/chema.rodriguez/Documents/gocgl/image.go:108)	JMP	32
	0x0016 00022 (/Users/chema.rodriguez/Documents/gocgl/image.go:108)	MOVQ	(AX), DX
	0x0019 00025 (/Users/chema.rodriguez/Documents/gocgl/image.go:109)	MOVL	BX, (DX)(CX*1)
	0x001c 00028 (/Users/chema.rodriguez/Documents/gocgl/image.go:108)	ADDQ	$4, CX
	0x0020 00032 (/Users/chema.rodriguez/Documents/gocgl/image.go:108)	MOVQ	8(AX), DX
	0x0024 00036 (/Users/chema.rodriguez/Documents/gocgl/image.go:108)	CMPQ	CX, DX
	0x0027 00039 (/Users/chema.rodriguez/Documents/gocgl/image.go:108)	JGE	45
	0x0029 00041 (/Users/chema.rodriguez/Documents/gocgl/image.go:109)	JCS	22
	0x002b 00043 (/Users/chema.rodriguez/Documents/gocgl/image.go:109)	JMP	134
	0x002d 00045 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	MOVQ	AX, command-line-arguments.img+48(SP)
	0x0032 00050 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	PCDATA	$3, $2
	0x0032 00050 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	MOVL	48(AX), DX
	0x0035 00053 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	MOVL	52(AX), SI
	0x0038 00056 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	IMULL	SI, DX
	0x003b 00059 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	MOVL	DX, CX
	0x003d 00061 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	MOVQ	CX, command-line-arguments..autotmp_7+24(SP)
	0x0042 00066 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	MOVQ	CX, BX
	0x0045 00069 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	LEAQ	type:float64(SB), AX
	0x004c 00076 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	PCDATA	$1, $0
	0x004c 00076 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	CALL	runtime.makeslice(SB)
	0x0051 00081 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	MOVQ	command-line-arguments..autotmp_7+24(SP), DX
	0x0056 00086 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	MOVQ	command-line-arguments.img+48(SP), SI
	0x005b 00091 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	MOVQ	DX, 32(SI)
	0x005f 00095 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	MOVQ	DX, 40(SI)
	0x0063 00099 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	PCDATA	$0, $-2
	0x0063 00099 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	CMPL	runtime.writeBarrier(SB), $0
	0x006a 00106 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	JEQ	124
	0x006c 00108 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	CALL	runtime.gcWriteBarrier2(SB)
	0x0071 00113 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	MOVQ	AX, (R11)
	0x0074 00116 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	MOVQ	24(SI), CX
	0x0078 00120 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	MOVQ	CX, 8(R11)
	0x007c 00124 (/Users/chema.rodriguez/Documents/gocgl/image.go:111)	MOVQ	AX, 24(SI)
	0x0080 00128 (/Users/chema.rodriguez/Documents/gocgl/image.go:112)	ADDQ	$32, SP
	0x0084 00132 (/Users/chema.rodriguez/Documents/gocgl/image.go:112)	POPQ	BP
	0x0085 00133 (/Users/chema.rodriguez/Documents/gocgl/image.go:112)	RET
	0x0086 00134 (/Users/chema.rodriguez/Documents/gocgl/image.go:112)	PCDATA	$0, $-1
	0x0086 00134 (/Users/chema.rodriguez/Documents/gocgl/image.go:112)	PCDATA	$1, $-1
	0x0086 00134 (/Users/chema.rodriguez/Documents/gocgl/image.go:112)	PCDATA	$3, $1
	0x0086 00134 (/Users/chema.rodriguez/Documents/gocgl/image.go:109)	MOVQ	CX, AX
	0x0089 00137 (/Users/chema.rodriguez/Documents/gocgl/image.go:109)	MOVQ	DX, CX
	0x008c 00140 (/Users/chema.rodriguez/Documents/gocgl/image.go:109)	PCDATA	$1, $1
	0x008c 00140 (/Users/chema.rodriguez/Documents/gocgl/image.go:109)	CALL	runtime.panicIndex(SB)
	0x0091 00145 (/Users/chema.rodriguez/Documents/gocgl/image.go:109)	XCHGL	AX, AX
	0x0092 00146 (/Users/chema.rodriguez/Documents/gocgl/image.go:109)	NOP
	0x0092 00146 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	PCDATA	$1, $-1
	0x0092 00146 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	PCDATA	$0, $-2
	0x0092 00146 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	MOVQ	AX, 8(SP)
	0x0097 00151 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	MOVL	BX, 16(SP)
	0x009b 00155 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	NOP
	0x00a0 00160 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	CALL	runtime.morestack_noctxt(SB)
	0x00a5 00165 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	MOVQ	8(SP), AX
	0x00aa 00170 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	MOVL	16(SP), BX
	0x00ae 00174 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	PCDATA	$0, $-1
	0x00ae 00174 (/Users/chema.rodriguez/Documents/gocgl/image.go:107)	JMP	0
	0x0000 49 3b 66 10 0f 86 88 00 00 00 55 48 89 e5 48 83  I;f.......UH..H.
	0x0010 ec 20 31 c9 eb 0a 48 8b 10 89 1c 0a 48 83 c1 04  . 1...H.....H...
	0x0020 48 8b 50 08 48 39 d1 7d 04 72 eb eb 59 48 89 44  H.P.H9.}.r..YH.D
	0x0030 24 30 8b 50 30 8b 70 34 0f af d6 89 d1 48 89 4c  $0.P0.p4.....H.L
	0x0040 24 18 48 89 cb 48 8d 05 00 00 00 00 e8 00 00 00  $.H..H..........
	0x0050 00 48 8b 54 24 18 48 8b 74 24 30 48 89 56 20 48  .H.T$.H.t$0H.V H
	0x0060 89 56 28 83 3d 00 00 00 00 00 74 10 e8 00 00 00  .V(.=.....t.....
	0x0070 00 49 89 03 48 8b 4e 18 49 89 4b 08 48 89 46 18  .I..H.N.I.K.H.F.
	0x0080 48 83 c4 20 5d c3 48 89 c8 48 89 d1 e8 00 00 00  H.. ].H..H......
	0x0090 00 90 48 89 44 24 08 89 5c 24 10 0f 1f 44 00 00  ..H.D$..\$...D..
	0x00a0 e8 00 00 00 00 48 8b 44 24 08 8b 5c 24 10 e9 4d  .....H.D$..\$..M
	0x00b0 ff ff ff                                         ...
	rel 72+4 t=14 type:float64+0
	rel 77+4 t=7 runtime.makeslice+0
	rel 101+4 t=14 runtime.writeBarrier+-1
	rel 109+4 t=7 runtime.gcWriteBarrier2+0
	rel 141+4 t=7 runtime.panicIndex+0
	rel 161+4 t=7 runtime.morestack_noctxt+0
command-line-arguments.(*Image).ApplyColorFilter STEXT size=120 args=0x10 locals=0x30 funcid=0x0 align=0x0
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	TEXT	command-line-arguments.(*Image).ApplyColorFilter(SB), ABIInternal, $48-16
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	CMPQ	SP, 16(R14)
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	PCDATA	$0, $-2
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	JLS	95
	0x0006 00006 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	PCDATA	$0, $-1
	0x0006 00006 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	PUSHQ	BP
	0x0007 00007 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	MOVQ	SP, BP
	0x000a 00010 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	SUBQ	$40, SP
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	FUNCDATA	$0, gclocals·wgcWObbY2HYnK2SU/U22lA==(SB)
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	FUNCDATA	$5, command-line-arguments.(*Image).ApplyColorFilter.arginfo1(SB)
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	FUNCDATA	$6, command-line-arguments.(*Image).ApplyColorFilter.argliveinfo(SB)
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	PCDATA	$3, $1
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	MOVL	BX, command-line-arguments..autotmp_4+36(SP)
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	MOVQ	AX, command-line-arguments.img+56(SP)
	0x0017 00023 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	PCDATA	$3, $2
	0x0017 00023 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	XORL	CX, CX
	0x0019 00025 (/Users/chema.rodriguez/Documents/gocgl/image.go:115)	JMP	32
	0x001b 00027 (/Users/chema.rodriguez/Documents/gocgl/image.go:115)	INCL	CX
	0x001d 00029 (/Users/chema.rodriguez/Documents/gocgl/image.go:115)	NOP
	0x0020 00032 (/Users/chema.rodriguez/Documents/gocgl/image.go:115)	CMPL	48(AX), CX
	0x0023 00035 (/Users/chema.rodriguez/Documents/gocgl/image.go:115)	JLS	45
	0x0025 00037 (/Users/chema.rodriguez/Documents/gocgl/image.go:115)	MOVL	CX, command-line-arguments.x+32(SP)
	0x0029 00041 (/Users/chema.rodriguez/Documents/gocgl/image.go:115)	XORL	DX, DX
	0x002b 00043 (/Users/chema.rodriguez/Documents/gocgl/image.go:116)	JMP	88
	0x002d 00045 (/Users/chema.rodriguez/Documents/gocgl/image.go:120)	ADDQ	$40, SP
	0x0031 00049 (/Users/chema.rodriguez/Documents/gocgl/image.go:120)	POPQ	BP
	0x0032 00050 (/Users/chema.rodriguez/Documents/gocgl/image.go:120)	RET
	0x0033 00051 (/Users/chema.rodriguez/Documents/gocgl/image.go:116)	MOVL	DX, command-line-arguments.y+28(SP)
	0x0037 00055 (/Users/chema.rodriguez/Documents/gocgl/image.go:117)	MOVL	BX, DI
	0x0039 00057 (/Users/chema.rodriguez/Documents/gocgl/image.go:117)	MOVL	CX, BX
	0x003b 00059 (/Users/chema.rodriguez/Documents/gocgl/image.go:117)	MOVL	DX, CX
	0x003d 00061 (/Users/chema.rodriguez/Documents/gocgl/image.go:117)	PCDATA	$1, $0
	0x003d 00061 (/Users/chema.rodriguez/Documents/gocgl/image.go:117)	NOP
	0x0040 00064 (/Users/chema.rodriguez/Documents/gocgl/image.go:117)	CALL	command-line-arguments.(*Image).SetPixel(SB)
	0x0045 00069 (/Users/chema.rodriguez/Documents/gocgl/image.go:116)	MOVL	command-line-arguments.y+28(SP), DX
	0x0049 00073 (/Users/chema.rodriguez/Documents/gocgl/image.go:116)	INCL	DX
	0x004b 00075 (/Users/chema.rodriguez/Documents/gocgl/image.go:116)	MOVQ	command-line-arguments.img+56(SP), AX
	0x0050 00080 (/Users/chema.rodriguez/Documents/gocgl/image.go:117)	MOVL	command-line-arguments.x+32(SP), CX
	0x0054 00084 (/Users/chema.rodriguez/Documents/gocgl/image.go:117)	MOVL	command-line-arguments..autotmp_4+36(SP), BX
	0x0058 00088 (/Users/chema.rodriguez/Documents/gocgl/image.go:116)	CMPL	52(AX), DX
	0x005b 00091 (/Users/chema.rodriguez/Documents/gocgl/image.go:116)	JHI	51
	0x005d 00093 (/Users/chema.rodriguez/Documents/gocgl/image.go:116)	JMP	27
	0x005f 00095 (/Users/chema.rodriguez/Documents/gocgl/image.go:116)	NOP
	0x005f 00095 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	PCDATA	$1, $-1
	0x005f 00095 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	PCDATA	$0, $-2
	0x005f 00095 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	MOVQ	AX, 8(SP)
	0x0064 00100 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	MOVL	BX, 16(SP)
	0x0068 00104 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	CALL	runtime.morestack_noctxt(SB)
	0x006d 00109 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	MOVQ	8(SP), AX
	0x0072 00114 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	MOVL	16(SP), BX
	0x0076 00118 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	PCDATA	$0, $-1
	0x0076 00118 (/Users/chema.rodriguez/Documents/gocgl/image.go:114)	JMP	0
	0x0000 49 3b 66 10 76 59 55 48 89 e5 48 83 ec 28 89 5c  I;f.vYUH..H..(.\
	0x0010 24 24 48 89 44 24 38 31 c9 eb 05 ff c1 0f 1f 00  $$H.D$81........
	0x0020 39 48 30 76 08 89 4c 24 20 31 d2 eb 2b 48 83 c4  9H0v..L$ 1..+H..
	0x0030 28 5d c3 89 54 24 1c 89 df 89 cb 89 d1 0f 1f 00  (]..T$..........
	0x0040 e8 00 00 00 00 8b 54 24 1c ff c2 48 8b 44 24 38  ......T$...H.D$8
	0x0050 8b 4c 24 20 8b 5c 24 24 39 50 34 77 d6 eb bc 48  .L$ .\$$9P4w...H
	0x0060 89 44 24 08 89 5c 24 10 e8 00 00 00 00 48 8b 44  .D$..\$......H.D
	0x0070 24 08 8b 5c 24 10 eb 88                          $..\$...
	rel 65+4 t=7 command-line-arguments.(*Image).SetPixel+0
	rel 105+4 t=7 runtime.morestack_noctxt+0
command-line-arguments.(*Image).ApplyAlphaReduction STEXT nosplit size=81 args=0x10 locals=0x18 funcid=0x0 align=0x0
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:122)	TEXT	command-line-arguments.(*Image).ApplyAlphaReduction(SB), NOSPLIT|ABIInternal, $24-16
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:122)	PUSHQ	BP
	0x0001 00001 (/Users/chema.rodriguez/Documents/gocgl/image.go:122)	MOVQ	SP, BP
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:122)	SUBQ	$16, SP
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:122)	FUNCDATA	$0, gclocals·wgcWObbY2HYnK2SU/U22lA==(SB)
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:122)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:122)	FUNCDATA	$5, command-line-arguments.(*Image).ApplyAlphaReduction.arginfo1(SB)
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:122)	FUNCDATA	$6, command-line-arguments.(*Image).ApplyAlphaReduction.argliveinfo(SB)
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:122)	PCDATA	$3, $1
	0x0008 00008 (/Users/chema.rodriguez/Documents/gocgl/image.go:122)	XORL	CX, CX
	0x000a 00010 (/Users/chema.rodriguez/Documents/gocgl/image.go:123)	JMP	43
	0x000c 00012 (/Users/chema.rodriguez/Documents/gocgl/image.go:123)	MOVQ	(AX), DX
	0x000f 00015 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	MOVBLZX	3(CX)(DX*1), BX
	0x0014 00020 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	XORPS	X1, X1
	0x0017 00023 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	CVTSL2SD	BX, X1
	0x001b 00027 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	MULSD	X0, X1
	0x001f 00031 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	CVTTSD2SL	X1, BX
	0x0023 00035 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	MOVB	BL, 3(CX)(DX*1)
	0x0027 00039 (/Users/chema.rodriguez/Documents/gocgl/image.go:123)	ADDQ	$4, CX
	0x002b 00043 (/Users/chema.rodriguez/Documents/gocgl/image.go:123)	MOVQ	8(AX), DX
	0x002f 00047 (/Users/chema.rodriguez/Documents/gocgl/image.go:123)	CMPQ	CX, DX
	0x0032 00050 (/Users/chema.rodriguez/Documents/gocgl/image.go:123)	JGE	63
	0x0034 00052 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	LEAQ	3(CX), BX
	0x0038 00056 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	CMPQ	DX, BX
	0x003b 00059 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	JHI	12
	0x003d 00061 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	JMP	69
	0x003f 00063 (/Users/chema.rodriguez/Documents/gocgl/image.go:126)	ADDQ	$16, SP
	0x0043 00067 (/Users/chema.rodriguez/Documents/gocgl/image.go:126)	POPQ	BP
	0x0044 00068 (/Users/chema.rodriguez/Documents/gocgl/image.go:126)	RET
	0x0045 00069 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	MOVQ	BX, AX
	0x0048 00072 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	MOVQ	DX, CX
	0x004b 00075 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	PCDATA	$1, $1
	0x004b 00075 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	CALL	runtime.panicIndex(SB)
	0x0050 00080 (/Users/chema.rodriguez/Documents/gocgl/image.go:124)	XCHGL	AX, AX
	0x0000 55 48 89 e5 48 83 ec 10 31 c9 eb 1f 48 8b 10 0f  UH..H...1...H...
	0x0010 b6 5c 11 03 0f 57 c9 f2 0f 2a cb f2 0f 59 c8 f2  .\...W...*...Y..
	0x0020 0f 2c d9 88 5c 11 03 48 83 c1 04 48 8b 50 08 48  .,..\..H...H.P.H
	0x0030 39 d1 7d 0b 48 8d 59 03 48 39 da 77 cf eb 06 48  9.}.H.Y.H9.w...H
	0x0040 83 c4 10 5d c3 48 89 d8 48 89 d1 e8 00 00 00 00  ...].H..H.......
	0x0050 90                                               .
	rel 76+4 t=7 runtime.panicIndex+0
command-line-arguments.(*Image).WritePPM STEXT size=805 args=0x18 locals=0xb8 funcid=0x0 align=0x0
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	TEXT	command-line-arguments.(*Image).WritePPM(SB), ABIInternal, $184-24
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	LEAQ	-56(SP), R12
	0x0005 00005 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	CMPQ	R12, 16(R14)
	0x0009 00009 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	PCDATA	$0, $-2
	0x0009 00009 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	JLS	760
	0x000f 00015 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	PCDATA	$0, $-1
	0x000f 00015 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	PUSHQ	BP
	0x0010 00016 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	MOVQ	SP, BP
	0x0013 00019 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	SUBQ	$176, SP
	0x001a 00026 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	MOVQ	BX, command-line-arguments.filePath+200(FP)
	0x0022 00034 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	MOVQ	X15, 168(SP)
	0x002c 00044 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	FUNCDATA	$0, gclocals·7XBZTuTlonMHIcAyzzmwZw==(SB)
	0x002c 00044 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	FUNCDATA	$1, gclocals·KUXTMja1XtZGbptKL272+g==(SB)
	0x002c 00044 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	FUNCDATA	$2, command-line-arguments.(*Image).WritePPM.stkobj(SB)
	0x002c 00044 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	FUNCDATA	$5, command-line-arguments.(*Image).WritePPM.arginfo1(SB)
	0x002c 00044 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	FUNCDATA	$6, command-line-arguments.(*Image).WritePPM.argliveinfo(SB)
	0x002c 00044 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	FUNCDATA	$4, command-line-arguments.(*Image).WritePPM.opendefer(SB)
	0x002c 00044 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	PCDATA	$3, $1
	0x002c 00044 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	MOVQ	AX, command-line-arguments.img+192(SP)
	0x0034 00052 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	PCDATA	$3, $2
	0x0034 00052 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	MOVB	$0, command-line-arguments..autotmp_39+47(SP)
	0x0039 00057 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	MOVUPS	X15, command-line-arguments.~r0+104(SP)
	0x003f 00063 (/Users/chema.rodriguez/Documents/gocgl/image.go:129)	XCHGL	AX, AX
	0x0040 00064 (/usr/local/Cellar/go/1.21.1/libexec/src/os/file.go:323)	MOVL	$438, DI
	0x0045 00069 (/usr/local/Cellar/go/1.21.1/libexec/src/os/file.go:323)	MOVQ	BX, AX
	0x0048 00072 (/usr/local/Cellar/go/1.21.1/libexec/src/os/file.go:323)	MOVQ	CX, BX
	0x004b 00075 (/usr/local/Cellar/go/1.21.1/libexec/src/os/file.go:323)	MOVL	$1538, CX
	0x0050 00080 (/usr/local/Cellar/go/1.21.1/libexec/src/os/file.go:323)	PCDATA	$1, $1
	0x0050 00080 (/usr/local/Cellar/go/1.21.1/libexec/src/os/file.go:323)	CALL	os.OpenFile(SB)
	0x0055 00085 (/usr/local/Cellar/go/1.21.1/libexec/src/os/file.go:323)	MOVQ	AX, command-line-arguments.~R0+96(SP)
	0x005a 00090 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	MOVUPS	X15, command-line-arguments..autotmp_27+120(SP)
	0x0060 00096 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	LEAQ	command-line-arguments.(*Image).WritePPM.func1(SB), DX
	0x0067 00103 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	MOVQ	DX, command-line-arguments..autotmp_27+120(SP)
	0x006c 00108 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	MOVQ	AX, command-line-arguments..autotmp_27+128(SP)
	0x0074 00116 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	LEAQ	command-line-arguments..autotmp_27+120(SP), DX
	0x0079 00121 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	MOVQ	DX, command-line-arguments..autotmp_40+168(SP)
	0x0081 00129 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	MOVB	$1, command-line-arguments..autotmp_39+47(SP)
	0x0086 00134 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVUPS	X15, command-line-arguments..autotmp_22+136(SP)
	0x008f 00143 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVUPS	X15, command-line-arguments..autotmp_22+152(SP)
	0x0098 00152 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVQ	command-line-arguments.img+192(SP), DX
	0x00a0 00160 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVL	48(DX), SI
	0x00a3 00163 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVL	SI, AX
	0x00a5 00165 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	PCDATA	$1, $2
	0x00a5 00165 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	CALL	runtime.convT32(SB)
	0x00aa 00170 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	LEAQ	type:uint32(SB), DX
	0x00b1 00177 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVQ	DX, command-line-arguments..autotmp_22+136(SP)
	0x00b9 00185 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVQ	AX, command-line-arguments..autotmp_22+144(SP)
	0x00c1 00193 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVQ	command-line-arguments.img+192(SP), SI
	0x00c9 00201 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVL	52(SI), AX
	0x00cc 00204 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	CALL	runtime.convT32(SB)
	0x00d1 00209 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	LEAQ	type:uint32(SB), DX
	0x00d8 00216 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVQ	DX, command-line-arguments..autotmp_22+152(SP)
	0x00e0 00224 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVQ	AX, command-line-arguments..autotmp_22+160(SP)
	0x00e8 00232 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	LEAQ	go:string."P6 %d %d 255 "(SB), AX
	0x00ef 00239 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVL	$13, BX
	0x00f4 00244 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	LEAQ	command-line-arguments..autotmp_22+136(SP), CX
	0x00fc 00252 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVL	$2, DI
	0x0101 00257 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVQ	DI, SI
	0x0104 00260 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	PCDATA	$1, $3
	0x0104 00260 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	CALL	fmt.Sprintf(SB)
	0x0109 00265 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVQ	BX, CX
	0x010c 00268 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	MOVQ	AX, BX
	0x010f 00271 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	LEAQ	command-line-arguments..autotmp_34+64(SP), AX
	0x0114 00276 (/Users/chema.rodriguez/Documents/gocgl/image.go:132)	CALL	runtime.stringtoslicebyte(SB)
	0x0119 00281 (/Users/chema.rodriguez/Documents/gocgl/image.go:134)	MOVQ	BX, command-line-arguments.header.len+56(SP)
	0x011e 00286 (/Users/chema.rodriguez/Documents/gocgl/image.go:134)	MOVQ	CX, DI
	0x0121 00289 (/Users/chema.rodriguez/Documents/gocgl/image.go:134)	MOVQ	BX, CX
	0x0124 00292 (/Users/chema.rodriguez/Documents/gocgl/image.go:134)	MOVQ	AX, BX
	0x0127 00295 (/Users/chema.rodriguez/Documents/gocgl/image.go:134)	MOVQ	command-line-arguments.~R0+96(SP), AX
	0x012c 00300 (/Users/chema.rodriguez/Documents/gocgl/image.go:134)	CALL	os.(*File).Write(SB)
	0x0131 00305 (/Users/chema.rodriguez/Documents/gocgl/image.go:135)	TESTQ	BX, BX
	0x0134 00308 (/Users/chema.rodriguez/Documents/gocgl/image.go:135)	JNE	374
	0x0136 00310 (/Users/chema.rodriguez/Documents/gocgl/image.go:139)	MOVQ	command-line-arguments.img+192(SP), DX
	0x013e 00318 (/Users/chema.rodriguez/Documents/gocgl/image.go:139)	MOVL	48(DX), SI
	0x0141 00321 (/Users/chema.rodriguez/Documents/gocgl/image.go:139)	MOVL	52(DX), DI
	0x0144 00324 (/Users/chema.rodriguez/Documents/gocgl/image.go:139)	IMULL	DI, SI
	0x0147 00327 (/Users/chema.rodriguez/Documents/gocgl/image.go:139)	LEAL	(SI)(SI*2), SI
	0x014a 00330 (/Users/chema.rodriguez/Documents/gocgl/image.go:139)	MOVL	SI, CX
	0x014c 00332 (/Users/chema.rodriguez/Documents/gocgl/image.go:139)	MOVQ	CX, command-line-arguments.imgBytes.len+48(SP)
	0x0151 00337 (/Users/chema.rodriguez/Documents/gocgl/image.go:139)	LEAQ	type:uint8(SB), AX
	0x0158 00344 (/Users/chema.rodriguez/Documents/gocgl/image.go:139)	MOVQ	CX, BX
	0x015b 00347 (/Users/chema.rodriguez/Documents/gocgl/image.go:139)	NOP
	0x0160 00352 (/Users/chema.rodriguez/Documents/gocgl/image.go:139)	CALL	runtime.makeslice(SB)
	0x0165 00357 (/Users/chema.rodriguez/Documents/gocgl/image.go:141)	MOVQ	command-line-arguments.imgBytes.len+48(SP), DX
	0x016a 00362 (/Users/chema.rodriguez/Documents/gocgl/image.go:141)	MOVQ	command-line-arguments.img+192(SP), SI
	0x0172 00370 (/Users/chema.rodriguez/Documents/gocgl/image.go:141)	XORL	CX, CX
	0x0174 00372 (/Users/chema.rodriguez/Documents/gocgl/image.go:141)	JMP	430
	0x0176 00374 (/Users/chema.rodriguez/Documents/gocgl/image.go:136)	MOVQ	BX, command-line-arguments.~r0+104(SP)
	0x017b 00379 (/Users/chema.rodriguez/Documents/gocgl/image.go:136)	MOVQ	CX, command-line-arguments.~r0+112(SP)
	0x0180 00384 (/Users/chema.rodriguez/Documents/gocgl/image.go:136)	MOVB	$0, command-line-arguments..autotmp_39+47(SP)
	0x0185 00389 (/Users/chema.rodriguez/Documents/gocgl/image.go:136)	MOVQ	command-line-arguments..autotmp_40+168(SP), DX
	0x018d 00397 (/Users/chema.rodriguez/Documents/gocgl/image.go:136)	MOVQ	(DX), AX
	0x0190 00400 (/Users/chema.rodriguez/Documents/gocgl/image.go:136)	PCDATA	$1, $4
	0x0190 00400 (/Users/chema.rodriguez/Documents/gocgl/image.go:136)	CALL	AX
	0x0192 00402 (/Users/chema.rodriguez/Documents/gocgl/image.go:136)	MOVQ	command-line-arguments.~r0+104(SP), AX
	0x0197 00407 (/Users/chema.rodriguez/Documents/gocgl/image.go:136)	MOVQ	command-line-arguments.~r0+112(SP), BX
	0x019c 00412 (/Users/chema.rodriguez/Documents/gocgl/image.go:136)	ADDQ	$176, SP
	0x01a3 00419 (/Users/chema.rodriguez/Documents/gocgl/image.go:136)	POPQ	BP
	0x01a4 00420 (/Users/chema.rodriguez/Documents/gocgl/image.go:136)	RET
	0x01a5 00421 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	MOVB	R10B, 2(R12)(AX*1)
	0x01aa 00426 (/Users/chema.rodriguez/Documents/gocgl/image.go:141)	LEAQ	4(R9), CX
	0x01ae 00430 (/Users/chema.rodriguez/Documents/gocgl/image.go:141)	MOVQ	8(SI), R8
	0x01b2 00434 (/Users/chema.rodriguez/Documents/gocgl/image.go:141)	CMPQ	CX, R8
	0x01b5 00437 (/Users/chema.rodriguez/Documents/gocgl/image.go:141)	JGE	594
	0x01bb 00443 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	MOVQ	CX, R9
	0x01be 00446 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	SARQ	$63, CX
	0x01c2 00450 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	SHRQ	$62, CX
	0x01c6 00454 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	LEAQ	(R9)(CX*1), R10
	0x01ca 00458 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	SARQ	$2, R10
	0x01ce 00462 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	LEAQ	2(R9), R11
	0x01d2 00466 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	LEAQ	(R10)(R10*2), R12
	0x01d6 00470 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	CMPQ	R8, R11
	0x01d9 00473 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	JLS	720
	0x01df 00479 (/Users/chema.rodriguez/Documents/gocgl/image.go:141)	MOVQ	(SI), R8
	0x01e2 00482 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	MOVBLZX	2(R9)(R8*1), R8
	0x01e8 00488 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	CMPQ	R12, DX
	0x01eb 00491 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	JCC	709
	0x01f1 00497 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	MOVB	R8B, (AX)(R12*1)
	0x01f5 00501 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	MOVQ	8(SI), CX
	0x01f9 00505 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	LEAQ	1(R9), R8
	0x01fd 00509 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	LEAQ	(R10)(R10*2), R11
	0x0201 00513 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	LEAQ	1(R11), R11
	0x0205 00517 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	CMPQ	CX, R8
	0x0208 00520 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	JLS	696
	0x020e 00526 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	MOVQ	(SI), R8
	0x0211 00529 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	MOVBLZX	1(R9)(R8*1), R8
	0x0217 00535 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	NOP
	0x0220 00544 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	CMPQ	R11, DX
	0x0223 00547 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	JCC	685
	0x0229 00553 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	MOVB	R8B, 1(R12)(AX*1)
	0x022e 00558 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	MOVQ	8(SI), CX
	0x0232 00562 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	LEAQ	(R10)(R10*2), R8
	0x0236 00566 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	LEAQ	2(R8), R8
	0x023a 00570 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	CMPQ	R9, CX
	0x023d 00573 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	JCC	677
	0x023f 00575 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	MOVQ	(SI), R10
	0x0242 00578 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	MOVBLZX	(R10)(R9*1), R10
	0x0247 00583 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	CMPQ	R8, DX
	0x024a 00586 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	JCS	421
	0x0250 00592 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	JMP	666
	0x0252 00594 (/Users/chema.rodriguez/Documents/gocgl/image.go:146)	MOVQ	AX, BX
	0x0255 00597 (/Users/chema.rodriguez/Documents/gocgl/image.go:146)	MOVQ	DX, CX
	0x0258 00600 (/Users/chema.rodriguez/Documents/gocgl/image.go:146)	MOVQ	CX, DI
	0x025b 00603 (/Users/chema.rodriguez/Documents/gocgl/image.go:146)	MOVQ	command-line-arguments.header.len+56(SP), SI
	0x0260 00608 (/Users/chema.rodriguez/Documents/gocgl/image.go:146)	MOVQ	command-line-arguments.~R0+96(SP), AX
	0x0265 00613 (/Users/chema.rodriguez/Documents/gocgl/image.go:146)	CALL	os.(*File).WriteAt(SB)
	0x026a 00618 (/Users/chema.rodriguez/Documents/gocgl/image.go:150)	MOVQ	BX, command-line-arguments.~r0+104(SP)
	0x026f 00623 (/Users/chema.rodriguez/Documents/gocgl/image.go:150)	MOVQ	CX, command-line-arguments.~r0+112(SP)
	0x0274 00628 (/Users/chema.rodriguez/Documents/gocgl/image.go:150)	MOVB	$0, command-line-arguments..autotmp_39+47(SP)
	0x0279 00633 (/Users/chema.rodriguez/Documents/gocgl/image.go:150)	MOVQ	command-line-arguments..autotmp_40+168(SP), DX
	0x0281 00641 (/Users/chema.rodriguez/Documents/gocgl/image.go:150)	MOVQ	(DX), R8
	0x0284 00644 (/Users/chema.rodriguez/Documents/gocgl/image.go:150)	CALL	R8
	0x0287 00647 (/Users/chema.rodriguez/Documents/gocgl/image.go:150)	MOVQ	command-line-arguments.~r0+104(SP), AX
	0x028c 00652 (/Users/chema.rodriguez/Documents/gocgl/image.go:150)	MOVQ	command-line-arguments.~r0+112(SP), BX
	0x0291 00657 (/Users/chema.rodriguez/Documents/gocgl/image.go:150)	ADDQ	$176, SP
	0x0298 00664 (/Users/chema.rodriguez/Documents/gocgl/image.go:150)	POPQ	BP
	0x0299 00665 (/Users/chema.rodriguez/Documents/gocgl/image.go:150)	RET
	0x029a 00666 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	MOVQ	R8, AX
	0x029d 00669 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	MOVQ	DX, CX
	0x02a0 00672 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	CALL	runtime.panicIndex(SB)
	0x02a5 00677 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	MOVQ	R9, AX
	0x02a8 00680 (/Users/chema.rodriguez/Documents/gocgl/image.go:144)	CALL	runtime.panicIndex(SB)
	0x02ad 00685 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	MOVQ	R11, AX
	0x02b0 00688 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	MOVQ	DX, CX
	0x02b3 00691 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	CALL	runtime.panicIndex(SB)
	0x02b8 00696 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	MOVQ	R8, AX
	0x02bb 00699 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	NOP
	0x02c0 00704 (/Users/chema.rodriguez/Documents/gocgl/image.go:143)	CALL	runtime.panicIndex(SB)
	0x02c5 00709 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	MOVQ	R12, AX
	0x02c8 00712 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	MOVQ	DX, CX
	0x02cb 00715 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	CALL	runtime.panicIndex(SB)
	0x02d0 00720 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	MOVQ	R11, AX
	0x02d3 00723 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	MOVQ	R8, CX
	0x02d6 00726 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	CALL	runtime.panicIndex(SB)
	0x02db 00731 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	XCHGL	AX, AX
	0x02dc 00732 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	NOP
	0x02e0 00736 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	CALL	runtime.deferreturn(SB)
	0x02e5 00741 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	MOVQ	command-line-arguments.~r0+104(SP), AX
	0x02ea 00746 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	MOVQ	command-line-arguments.~r0+112(SP), BX
	0x02ef 00751 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	ADDQ	$176, SP
	0x02f6 00758 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	POPQ	BP
	0x02f7 00759 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	RET
	0x02f8 00760 (/Users/chema.rodriguez/Documents/gocgl/image.go:142)	NOP
	0x02f8 00760 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	PCDATA	$1, $-1
	0x02f8 00760 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	PCDATA	$0, $-2
	0x02f8 00760 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	MOVQ	AX, 8(SP)
	0x02fd 00765 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	MOVQ	BX, 16(SP)
	0x0302 00770 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	MOVQ	CX, 24(SP)
	0x0307 00775 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	CALL	runtime.morestack_noctxt(SB)
	0x030c 00780 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	MOVQ	8(SP), AX
	0x0311 00785 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	MOVQ	16(SP), BX
	0x0316 00790 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	MOVQ	24(SP), CX
	0x031b 00795 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	PCDATA	$0, $-1
	0x031b 00795 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	NOP
	0x0320 00800 (/Users/chema.rodriguez/Documents/gocgl/image.go:128)	JMP	0
	0x0000 4c 8d 64 24 c8 4d 3b 66 10 0f 86 e9 02 00 00 55  L.d$.M;f.......U
	0x0010 48 89 e5 48 81 ec b0 00 00 00 48 89 9c 24 c8 00  H..H......H..$..
	0x0020 00 00 66 44 0f d6 bc 24 a8 00 00 00 48 89 84 24  ..fD...$....H..$
	0x0030 c0 00 00 00 c6 44 24 2f 00 44 0f 11 7c 24 68 90  .....D$/.D..|$h.
	0x0040 bf b6 01 00 00 48 89 d8 48 89 cb b9 02 06 00 00  .....H..H.......
	0x0050 e8 00 00 00 00 48 89 44 24 60 44 0f 11 7c 24 78  .....H.D$`D..|$x
	0x0060 48 8d 15 00 00 00 00 48 89 54 24 78 48 89 84 24  H......H.T$xH..$
	0x0070 80 00 00 00 48 8d 54 24 78 48 89 94 24 a8 00 00  ....H.T$xH..$...
	0x0080 00 c6 44 24 2f 01 44 0f 11 bc 24 88 00 00 00 44  ..D$/.D...$....D
	0x0090 0f 11 bc 24 98 00 00 00 48 8b 94 24 c0 00 00 00  ...$....H..$....
	0x00a0 8b 72 30 89 f0 e8 00 00 00 00 48 8d 15 00 00 00  .r0.......H.....
	0x00b0 00 48 89 94 24 88 00 00 00 48 89 84 24 90 00 00  .H..$....H..$...
	0x00c0 00 48 8b b4 24 c0 00 00 00 8b 46 34 e8 00 00 00  .H..$.....F4....
	0x00d0 00 48 8d 15 00 00 00 00 48 89 94 24 98 00 00 00  .H......H..$....
	0x00e0 48 89 84 24 a0 00 00 00 48 8d 05 00 00 00 00 bb  H..$....H.......
	0x00f0 0d 00 00 00 48 8d 8c 24 88 00 00 00 bf 02 00 00  ....H..$........
	0x0100 00 48 89 fe e8 00 00 00 00 48 89 d9 48 89 c3 48  .H.......H..H..H
	0x0110 8d 44 24 40 e8 00 00 00 00 48 89 5c 24 38 48 89  .D$@.....H.\$8H.
	0x0120 cf 48 89 d9 48 89 c3 48 8b 44 24 60 e8 00 00 00  .H..H..H.D$`....
	0x0130 00 48 85 db 75 40 48 8b 94 24 c0 00 00 00 8b 72  .H..u@H..$.....r
	0x0140 30 8b 7a 34 0f af f7 8d 34 76 89 f1 48 89 4c 24  0.z4....4v..H.L$
	0x0150 30 48 8d 05 00 00 00 00 48 89 cb 0f 1f 44 00 00  0H......H....D..
	0x0160 e8 00 00 00 00 48 8b 54 24 30 48 8b b4 24 c0 00  .....H.T$0H..$..
	0x0170 00 00 31 c9 eb 38 48 89 5c 24 68 48 89 4c 24 70  ..1..8H.\$hH.L$p
	0x0180 c6 44 24 2f 00 48 8b 94 24 a8 00 00 00 48 8b 02  .D$/.H..$....H..
	0x0190 ff d0 48 8b 44 24 68 48 8b 5c 24 70 48 81 c4 b0  ..H.D$hH.\$pH...
	0x01a0 00 00 00 5d c3 45 88 54 04 02 49 8d 49 04 4c 8b  ...].E.T..I.I.L.
	0x01b0 46 08 4c 39 c1 0f 8d 97 00 00 00 49 89 c9 48 c1  F.L9.......I..H.
	0x01c0 f9 3f 48 c1 e9 3e 4d 8d 14 09 49 c1 fa 02 4d 8d  .?H..>M...I...M.
	0x01d0 59 02 4f 8d 24 52 4d 39 d8 0f 86 f1 00 00 00 4c  Y.O.$RM9.......L
	0x01e0 8b 06 47 0f b6 44 01 02 49 39 d4 0f 83 d4 00 00  ..G..D..I9......
	0x01f0 00 46 88 04 20 48 8b 4e 08 4d 8d 41 01 4f 8d 1c  .F.. H.N.M.A.O..
	0x0200 52 4d 8d 5b 01 4c 39 c1 0f 86 aa 00 00 00 4c 8b  RM.[.L9.......L.
	0x0210 06 47 0f b6 44 01 01 66 0f 1f 84 00 00 00 00 00  .G..D..f........
	0x0220 49 39 d3 0f 83 84 00 00 00 45 88 44 04 01 48 8b  I9.......E.D..H.
	0x0230 4e 08 4f 8d 04 52 4d 8d 40 02 49 39 c9 73 66 4c  N.O..RM.@.I9.sfL
	0x0240 8b 16 47 0f b6 14 0a 49 39 d0 0f 82 55 ff ff ff  ..G....I9...U...
	0x0250 eb 48 48 89 c3 48 89 d1 48 89 cf 48 8b 74 24 38  .HH..H..H..H.t$8
	0x0260 48 8b 44 24 60 e8 00 00 00 00 48 89 5c 24 68 48  H.D$`.....H.\$hH
	0x0270 89 4c 24 70 c6 44 24 2f 00 48 8b 94 24 a8 00 00  .L$p.D$/.H..$...
	0x0280 00 4c 8b 02 41 ff d0 48 8b 44 24 68 48 8b 5c 24  .L..A..H.D$hH.\$
	0x0290 70 48 81 c4 b0 00 00 00 5d c3 4c 89 c0 48 89 d1  pH......].L..H..
	0x02a0 e8 00 00 00 00 4c 89 c8 e8 00 00 00 00 4c 89 d8  .....L.......L..
	0x02b0 48 89 d1 e8 00 00 00 00 4c 89 c0 0f 1f 44 00 00  H.......L....D..
	0x02c0 e8 00 00 00 00 4c 89 e0 48 89 d1 e8 00 00 00 00  .....L..H.......
	0x02d0 4c 89 d8 4c 89 c1 e8 00 00 00 00 90 0f 1f 40 00  L..L..........@.
	0x02e0 e8 00 00 00 00 48 8b 44 24 68 48 8b 5c 24 70 48  .....H.D$hH.\$pH
	0x02f0 81 c4 b0 00 00 00 5d c3 48 89 44 24 08 48 89 5c  ......].H.D$.H.\
	0x0300 24 10 48 89 4c 24 18 e8 00 00 00 00 48 8b 44 24  $.H.L$......H.D$
	0x0310 08 48 8b 5c 24 10 48 8b 4c 24 18 0f 1f 44 00 00  .H.\$.H.L$...D..
	0x0320 e9 db fc ff ff                                   .....
	rel 4+0 t=23 type:uint32+0
	rel 4+0 t=23 type:uint32+0
	rel 81+4 t=7 os.OpenFile+0
	rel 99+4 t=14 command-line-arguments.(*Image).WritePPM.func1+0
	rel 166+4 t=7 runtime.convT32+0
	rel 173+4 t=14 type:uint32+0
	rel 205+4 t=7 runtime.convT32+0
	rel 212+4 t=14 type:uint32+0
	rel 235+4 t=14 go:string."P6 %d %d 255 "+0
	rel 261+4 t=7 fmt.Sprintf+0
	rel 277+4 t=7 runtime.stringtoslicebyte+0
	rel 301+4 t=7 os.(*File).Write+0
	rel 340+4 t=14 type:uint8+0
	rel 353+4 t=7 runtime.makeslice+0
	rel 400+0 t=10 +0
	rel 614+4 t=7 os.(*File).WriteAt+0
	rel 645+0 t=10 +0
	rel 673+4 t=7 runtime.panicIndex+0
	rel 681+4 t=7 runtime.panicIndex+0
	rel 692+4 t=7 runtime.panicIndex+0
	rel 705+4 t=7 runtime.panicIndex+0
	rel 716+4 t=7 runtime.panicIndex+0
	rel 727+4 t=7 runtime.panicIndex+0
	rel 737+4 t=7 runtime.deferreturn+0
	rel 776+4 t=7 runtime.morestack_noctxt+0
command-line-arguments.(*Image).WritePPM.func1 STEXT size=67 args=0x0 locals=0x10 funcid=0x15 align=0x0
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	TEXT	command-line-arguments.(*Image).WritePPM.func1(SB), WRAPPER|NEEDCTXT|ABIInternal, $16-0
	0x0000 00000 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	CMPQ	SP, 16(R14)
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	PCDATA	$0, $-2
	0x0004 00004 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	JLS	43
	0x0006 00006 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	PCDATA	$0, $-1
	0x0006 00006 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	PUSHQ	BP
	0x0007 00007 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	MOVQ	SP, BP
	0x000a 00010 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	SUBQ	$8, SP
	0x000e 00014 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	MOVQ	32(R14), R12
	0x0012 00018 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	TESTQ	R12, R12
	0x0015 00021 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	JNE	50
	0x0017 00023 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	NOP
	0x0017 00023 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0017 00023 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0017 00023 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	FUNCDATA	$7, os.(*File).Close.wrapinfo(SB)
	0x0017 00023 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	MOVQ	8(DX), AX
	0x001b 00027 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	PCDATA	$1, $0
	0x001b 00027 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	NOP
	0x0020 00032 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	CALL	os.(*File).Close(SB)
	0x0025 00037 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	ADDQ	$8, SP
	0x0029 00041 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	POPQ	BP
	0x002a 00042 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	RET
	0x002b 00043 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	NOP
	0x002b 00043 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	PCDATA	$1, $-1
	0x002b 00043 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	PCDATA	$0, $-2
	0x002b 00043 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	CALL	runtime.morestack(SB)
	0x0030 00048 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	PCDATA	$0, $-1
	0x0030 00048 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	JMP	0
	0x0032 00050 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	LEAQ	24(SP), R13
	0x0037 00055 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	CMPQ	(R12), R13
	0x003b 00059 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	JNE	23
	0x003d 00061 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	MOVQ	SP, (R12)
	0x0041 00065 (/Users/chema.rodriguez/Documents/gocgl/image.go:130)	JMP	23
	0x0000 49 3b 66 10 76 25 55 48 89 e5 48 83 ec 08 4d 8b  I;f.v%UH..H...M.
	0x0010 66 20 4d 85 e4 75 1b 48 8b 42 08 0f 1f 44 00 00  f M..u.H.B...D..
	0x0020 e8 00 00 00 00 48 83 c4 08 5d c3 e8 00 00 00 00  .....H...]......
	0x0030 eb ce 4c 8d 6c 24 18 4d 39 2c 24 75 da 49 89 24  ..L.l$.M9,$u.I.$
	0x0040 24 eb d4                                         $..
	rel 33+4 t=7 os.(*File).Close+0
	rel 44+4 t=7 runtime.morestack+0
type:.eq.[2]interface {} STEXT dupok size=159 args=0x10 locals=0x28 funcid=0x0 align=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	type:.eq.[2]interface {}(SB), DUPOK|ABIInternal, $40-16
	0x0000 00000 (<autogenerated>:1)	CMPQ	SP, 16(R14)
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	JLS	129
	0x0006 00006 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0006 00006 (<autogenerated>:1)	PUSHQ	BP
	0x0007 00007 (<autogenerated>:1)	MOVQ	SP, BP
	0x000a 00010 (<autogenerated>:1)	SUBQ	$32, SP
	0x000e 00014 (<autogenerated>:1)	FUNCDATA	$0, gclocals·TjPuuCwdlCpTaRQGRKTrYw==(SB)
	0x000e 00014 (<autogenerated>:1)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x000e 00014 (<autogenerated>:1)	FUNCDATA	$5, type:.eq.[2]interface {}.arginfo1(SB)
	0x000e 00014 (<autogenerated>:1)	FUNCDATA	$6, type:.eq.[2]interface {}.argliveinfo(SB)
	0x000e 00014 (<autogenerated>:1)	PCDATA	$3, $1
	0x000e 00014 (<autogenerated>:1)	MOVQ	AX, command-line-arguments.p+48(SP)
	0x0013 00019 (<autogenerated>:1)	MOVQ	BX, command-line-arguments.q+56(SP)
	0x0018 00024 (<autogenerated>:1)	PCDATA	$3, $-1
	0x0018 00024 (<autogenerated>:1)	XORL	CX, CX
	0x001a 00026 (<autogenerated>:1)	JMP	46
	0x001c 00028 (<autogenerated>:1)	MOVQ	command-line-arguments..autotmp_6+24(SP), CX
	0x0021 00033 (<autogenerated>:1)	INCQ	CX
	0x0024 00036 (<autogenerated>:1)	MOVQ	command-line-arguments.q+56(SP), BX
	0x0029 00041 (<autogenerated>:1)	MOVQ	command-line-arguments.p+48(SP), AX
	0x002e 00046 (<autogenerated>:1)	CMPQ	CX, $2
	0x0032 00050 (<autogenerated>:1)	JGE	120
	0x0034 00052 (<autogenerated>:1)	MOVQ	CX, DX
	0x0037 00055 (<autogenerated>:1)	SHLQ	$4, CX
	0x003b 00059 (<autogenerated>:1)	MOVQ	(AX)(CX*1), SI
	0x003f 00063 (<autogenerated>:1)	MOVQ	(BX)(CX*1), DI
	0x0043 00067 (<autogenerated>:1)	MOVQ	8(CX)(AX*1), R8
	0x0048 00072 (<autogenerated>:1)	MOVQ	8(CX)(BX*1), CX
	0x004d 00077 (<autogenerated>:1)	CMPQ	DI, SI
	0x0050 00080 (<autogenerated>:1)	JNE	116
	0x0052 00082 (<autogenerated>:1)	MOVQ	DX, command-line-arguments..autotmp_6+24(SP)
	0x0057 00087 (<autogenerated>:1)	MOVQ	SI, AX
	0x005a 00090 (<autogenerated>:1)	MOVQ	R8, BX
	0x005d 00093 (<autogenerated>:1)	PCDATA	$1, $0
	0x005d 00093 (<autogenerated>:1)	NOP
	0x0060 00096 (<autogenerated>:1)	CALL	runtime.efaceeq(SB)
	0x0065 00101 (<autogenerated>:1)	TESTB	AL, AL
	0x0067 00103 (<autogenerated>:1)	JNE	28
	0x0069 00105 (<autogenerated>:1)	MOVQ	command-line-arguments..autotmp_6+24(SP), CX
	0x006e 00110 (<autogenerated>:1)	CMPQ	CX, $2
	0x0072 00114 (<autogenerated>:1)	JMP	120
	0x0074 00116 (<autogenerated>:1)	CMPQ	DX, $2
	0x0078 00120 (<autogenerated>:1)	SETGE	AL
	0x007b 00123 (<autogenerated>:1)	ADDQ	$32, SP
	0x007f 00127 (<autogenerated>:1)	POPQ	BP
	0x0080 00128 (<autogenerated>:1)	RET
	0x0081 00129 (<autogenerated>:1)	NOP
	0x0081 00129 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0081 00129 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0081 00129 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0086 00134 (<autogenerated>:1)	MOVQ	BX, 16(SP)
	0x008b 00139 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0090 00144 (<autogenerated>:1)	MOVQ	8(SP), AX
	0x0095 00149 (<autogenerated>:1)	MOVQ	16(SP), BX
	0x009a 00154 (<autogenerated>:1)	PCDATA	$0, $-1
	0x009a 00154 (<autogenerated>:1)	JMP	0
	0x0000 49 3b 66 10 76 7b 55 48 89 e5 48 83 ec 20 48 89  I;f.v{UH..H.. H.
	0x0010 44 24 30 48 89 5c 24 38 31 c9 eb 12 48 8b 4c 24  D$0H.\$81...H.L$
	0x0020 18 48 ff c1 48 8b 5c 24 38 48 8b 44 24 30 48 83  .H..H.\$8H.D$0H.
	0x0030 f9 02 7d 44 48 89 ca 48 c1 e1 04 48 8b 34 08 48  ..}DH..H...H.4.H
	0x0040 8b 3c 0b 4c 8b 44 01 08 48 8b 4c 19 08 48 39 f7  .<.L.D..H.L..H9.
	0x0050 75 22 48 89 54 24 18 48 89 f0 4c 89 c3 0f 1f 00  u"H.T$.H..L.....
	0x0060 e8 00 00 00 00 84 c0 75 b3 48 8b 4c 24 18 48 83  .......u.H.L$.H.
	0x0070 f9 02 eb 04 48 83 fa 02 0f 9d c0 48 83 c4 20 5d  ....H......H.. ]
	0x0080 c3 48 89 44 24 08 48 89 5c 24 10 e8 00 00 00 00  .H.D$.H.\$......
	0x0090 48 8b 44 24 08 48 8b 5c 24 10 e9 61 ff ff ff     H.D$.H.\$..a...
	rel 97+4 t=7 runtime.efaceeq+0
	rel 140+4 t=7 runtime.morestack_noctxt+0
go:cuinfo.producer.command-line-arguments SDWARFCUINFO dupok size=0
	0x0000 72 65 67 61 62 69                                regabi
go:cuinfo.packagename.command-line-arguments SDWARFCUINFO dupok size=0
	0x0000 67 6f 63 67 6c                                   gocgl
go:info.command-line-arguments.(*Image).index$abstract SDWARFABSFCN dupok size=69
	0x0000 05 63 6f 6d 6d 61 6e 64 2d 6c 69 6e 65 2d 61 72  .command-line-ar
	0x0010 67 75 6d 65 6e 74 73 2e 28 2a 49 6d 61 67 65 29  guments.(*Image)
	0x0020 2e 69 6e 64 65 78 00 01 1b 01 13 69 6d 67 00 00  .index.....img..
	0x0030 00 00 00 00 13 78 00 00 00 00 00 00 13 79 00 00  .....x.......y..
	0x0040 00 00 00 00 00                                   .....
	rel 48+4 t=31 go:info.*command-line-arguments.Image+0
	rel 56+4 t=31 go:info.uint32+0
	rel 64+4 t=31 go:info.uint32+0
go:info.os.Create$abstract SDWARFABSFCN dupok size=27
	0x0000 05 6f 73 2e 43 72 65 61 74 65 00 01 c2 02 01 13  .os.Create......
	0x0010 6e 61 6d 65 00 00 00 00 00 00 00                 name.......
	rel 0+0 t=22 type:*os.File+0
	rel 0+0 t=22 type:error+0
	rel 0+0 t=22 type:string+0
	rel 22+4 t=31 go:info.string+0
command-line-arguments..inittask SNOPTRDATA size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+0 t=81 fmt..inittask+0
	rel 0+0 t=81 os..inittask+0
go:string."P6 %d %d 255 " SRODATA dupok size=13
	0x0000 50 36 20 25 64 20 25 64 20 32 35 35 20           P6 %d %d 255 
go:constinfo.command-line-arguments SDWARFCONST size=38
	0x0000 0b 63 6f 6d 6d 61 6e 64 2d 6c 69 6e 65 2d 61 72  .command-line-ar
	0x0010 67 75 6d 65 6e 74 73 2e 50 49 58 42 59 54 45 53  guments.PIXBYTES
	0x0020 00 00 00 00 00 04                                ......
	rel 33+4 t=31 go:info.int+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.0100000000000000 SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
type:.namedata.*gocgl.Image. SRODATA dupok size=14
	0x0000 01 0c 2a 67 6f 63 67 6c 2e 49 6d 61 67 65        ..*gocgl.Image
type:.namedata.*func(*gocgl.Image, float64)- SRODATA dupok size=30
	0x0000 00 1c 2a 66 75 6e 63 28 2a 67 6f 63 67 6c 2e 49  ..*func(*gocgl.I
	0x0010 6d 61 67 65 2c 20 66 6c 6f 61 74 36 34 29        mage, float64)
type:*func(*command-line-arguments.Image, float64) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 5a 36 0f 6f 08 08 08 36 00 00 00 00 00 00 00 00  Z6.o...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, float64)-+0
	rel 48+8 t=1 type:func(*command-line-arguments.Image, float64)+0
type:func(*command-line-arguments.Image, float64) SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 7b 4c 1e e3 02 08 08 33 00 00 00 00 00 00 00 00  {L.....3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, float64)-+0
	rel 44+4 t=-32763 type:*func(*command-line-arguments.Image, float64)+0
	rel 56+8 t=1 type:*command-line-arguments.Image+0
	rel 64+8 t=1 type:float64+0
type:.namedata.*func(*gocgl.Image, uint32)- SRODATA dupok size=29
	0x0000 00 1b 2a 66 75 6e 63 28 2a 67 6f 63 67 6c 2e 49  ..*func(*gocgl.I
	0x0010 6d 61 67 65 2c 20 75 69 6e 74 33 32 29           mage, uint32)
type:*func(*command-line-arguments.Image, uint32) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fc 34 13 23 08 08 08 36 00 00 00 00 00 00 00 00  .4.#...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, uint32)-+0
	rel 48+8 t=1 type:func(*command-line-arguments.Image, uint32)+0
type:func(*command-line-arguments.Image, uint32) SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 d5 6b d2 28 02 08 08 33 00 00 00 00 00 00 00 00  .k.(...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, uint32)-+0
	rel 44+4 t=-32763 type:*func(*command-line-arguments.Image, uint32)+0
	rel 56+8 t=1 type:*command-line-arguments.Image+0
	rel 64+8 t=1 type:uint32+0
type:.namedata.*func(*gocgl.Image, *gocgl.Image)- SRODATA dupok size=35
	0x0000 00 21 2a 66 75 6e 63 28 2a 67 6f 63 67 6c 2e 49  .!*func(*gocgl.I
	0x0010 6d 61 67 65 2c 20 2a 67 6f 63 67 6c 2e 49 6d 61  mage, *gocgl.Ima
	0x0020 67 65 29                                         ge)
type:*func(*command-line-arguments.Image, *command-line-arguments.Image) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4f 30 88 7a 08 08 08 36 00 00 00 00 00 00 00 00  O0.z...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, *gocgl.Image)-+0
	rel 48+8 t=1 type:func(*command-line-arguments.Image, *command-line-arguments.Image)+0
type:func(*command-line-arguments.Image, *command-line-arguments.Image) SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 2a e2 b5 1f 02 08 08 33 00 00 00 00 00 00 00 00  *......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, *gocgl.Image)-+0
	rel 44+4 t=-32763 type:*func(*command-line-arguments.Image, *command-line-arguments.Image)+0
	rel 56+8 t=1 type:*command-line-arguments.Image+0
	rel 64+8 t=1 type:*command-line-arguments.Image+0
type:.namedata.*func(*gocgl.Image, uint32, uint32, uint32)- SRODATA dupok size=45
	0x0000 00 2b 2a 66 75 6e 63 28 2a 67 6f 63 67 6c 2e 49  .+*func(*gocgl.I
	0x0010 6d 61 67 65 2c 20 75 69 6e 74 33 32 2c 20 75 69  mage, uint32, ui
	0x0020 6e 74 33 32 2c 20 75 69 6e 74 33 32 29           nt32, uint32)
type:*func(*command-line-arguments.Image, uint32, uint32, uint32) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 73 d2 37 d6 08 08 08 36 00 00 00 00 00 00 00 00  s.7....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, uint32, uint32, uint32)-+0
	rel 48+8 t=1 type:func(*command-line-arguments.Image, uint32, uint32, uint32)+0
type:func(*command-line-arguments.Image, uint32, uint32, uint32) SRODATA dupok size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 94 07 f1 39 02 08 08 33 00 00 00 00 00 00 00 00  ...9...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, uint32, uint32, uint32)-+0
	rel 44+4 t=-32763 type:*func(*command-line-arguments.Image, uint32, uint32, uint32)+0
	rel 56+8 t=1 type:*command-line-arguments.Image+0
	rel 64+8 t=1 type:uint32+0
	rel 72+8 t=1 type:uint32+0
	rel 80+8 t=1 type:uint32+0
type:.namedata.*func(*gocgl.Image, uint32, uint32, float64, uint32)- SRODATA dupok size=54
	0x0000 00 34 2a 66 75 6e 63 28 2a 67 6f 63 67 6c 2e 49  .4*func(*gocgl.I
	0x0010 6d 61 67 65 2c 20 75 69 6e 74 33 32 2c 20 75 69  mage, uint32, ui
	0x0020 6e 74 33 32 2c 20 66 6c 6f 61 74 36 34 2c 20 75  nt32, float64, u
	0x0030 69 6e 74 33 32 29                                int32)
type:*func(*command-line-arguments.Image, uint32, uint32, float64, uint32) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 67 42 4c c3 08 08 08 36 00 00 00 00 00 00 00 00  gBL....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, uint32, uint32, float64, uint32)-+0
	rel 48+8 t=1 type:func(*command-line-arguments.Image, uint32, uint32, float64, uint32)+0
type:func(*command-line-arguments.Image, uint32, uint32, float64, uint32) SRODATA dupok size=96
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 8a d2 69 c5 02 08 08 33 00 00 00 00 00 00 00 00  ..i....3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, uint32, uint32, float64, uint32)-+0
	rel 44+4 t=-32763 type:*func(*command-line-arguments.Image, uint32, uint32, float64, uint32)+0
	rel 56+8 t=1 type:*command-line-arguments.Image+0
	rel 64+8 t=1 type:uint32+0
	rel 72+8 t=1 type:uint32+0
	rel 80+8 t=1 type:float64+0
	rel 88+8 t=1 type:uint32+0
type:.namedata.*func(*gocgl.Image, string) error- SRODATA dupok size=35
	0x0000 00 21 2a 66 75 6e 63 28 2a 67 6f 63 67 6c 2e 49  .!*func(*gocgl.I
	0x0010 6d 61 67 65 2c 20 73 74 72 69 6e 67 29 20 65 72  mage, string) er
	0x0020 72 6f 72                                         ror
type:*func(*command-line-arguments.Image, string) error SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f8 b2 d2 77 08 08 08 36 00 00 00 00 00 00 00 00  ...w...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, string) error-+0
	rel 48+8 t=1 type:func(*command-line-arguments.Image, string) error+0
type:func(*command-line-arguments.Image, string) error SRODATA dupok size=80
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 61 26 1a 70 02 08 08 33 00 00 00 00 00 00 00 00  a&.p...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, string) error-+0
	rel 44+4 t=-32763 type:*func(*command-line-arguments.Image, string) error+0
	rel 56+8 t=1 type:*command-line-arguments.Image+0
	rel 64+8 t=1 type:string+0
	rel 72+8 t=1 type:error+0
type:.namedata.*func(*gocgl.Image, uint32, uint32) uint32- SRODATA dupok size=44
	0x0000 00 2a 2a 66 75 6e 63 28 2a 67 6f 63 67 6c 2e 49  .**func(*gocgl.I
	0x0010 6d 61 67 65 2c 20 75 69 6e 74 33 32 2c 20 75 69  mage, uint32, ui
	0x0020 6e 74 33 32 29 20 75 69 6e 74 33 32              nt32) uint32
type:*func(*command-line-arguments.Image, uint32, uint32) uint32 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 34 27 b9 13 08 08 08 36 00 00 00 00 00 00 00 00  4'.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, uint32, uint32) uint32-+0
	rel 48+8 t=1 type:func(*command-line-arguments.Image, uint32, uint32) uint32+0
type:func(*command-line-arguments.Image, uint32, uint32) uint32 SRODATA dupok size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 ad 59 01 25 02 08 08 33 00 00 00 00 00 00 00 00  .Y.%...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 03 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image, uint32, uint32) uint32-+0
	rel 44+4 t=-32763 type:*func(*command-line-arguments.Image, uint32, uint32) uint32+0
	rel 56+8 t=1 type:*command-line-arguments.Image+0
	rel 64+8 t=1 type:uint32+0
	rel 72+8 t=1 type:uint32+0
	rel 80+8 t=1 type:uint32+0
type:.importpath.command-line-arguments. SRODATA dupok size=24
	0x0000 00 16 63 6f 6d 6d 61 6e 64 2d 6c 69 6e 65 2d 61  ..command-line-a
	0x0010 72 67 75 6d 65 6e 74 73                          rguments
type:.namedata.ApplyAlphaReduction. SRODATA dupok size=21
	0x0000 01 13 41 70 70 6c 79 41 6c 70 68 61 52 65 64 75  ..ApplyAlphaRedu
	0x0010 63 74 69 6f 6e                                   ction
type:.namedata.*func(float64)- SRODATA dupok size=16
	0x0000 00 0e 2a 66 75 6e 63 28 66 6c 6f 61 74 36 34 29  ..*func(float64)
type:*func(float64) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 98 62 bc 34 08 08 08 36 00 00 00 00 00 00 00 00  .b.4...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(float64)-+0
	rel 48+8 t=1 type:func(float64)+0
type:func(float64) SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 54 4c 7f 30 02 08 08 33 00 00 00 00 00 00 00 00  TL.0...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(float64)-+0
	rel 44+4 t=-32763 type:*func(float64)+0
	rel 56+8 t=1 type:float64+0
type:.namedata.ApplyColorFilter. SRODATA dupok size=18
	0x0000 01 10 41 70 70 6c 79 43 6f 6c 6f 72 46 69 6c 74  ..ApplyColorFilt
	0x0010 65 72                                            er
type:.namedata.*func(uint32)- SRODATA dupok size=15
	0x0000 00 0d 2a 66 75 6e 63 28 75 69 6e 74 33 32 29     ..*func(uint32)
type:*func(uint32) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 58 39 04 cc 08 08 08 36 00 00 00 00 00 00 00 00  X9.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(uint32)-+0
	rel 48+8 t=1 type:func(uint32)+0
type:func(uint32) SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 59 97 f8 aa 02 08 08 33 00 00 00 00 00 00 00 00  Y......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(uint32)-+0
	rel 44+4 t=-32763 type:*func(uint32)+0
	rel 56+8 t=1 type:uint32+0
type:.namedata.CopyFrom. SRODATA dupok size=10
	0x0000 01 08 43 6f 70 79 46 72 6f 6d                    ..CopyFrom
type:.namedata.*func(*gocgl.Image)- SRODATA dupok size=21
	0x0000 00 13 2a 66 75 6e 63 28 2a 67 6f 63 67 6c 2e 49  ..*func(*gocgl.I
	0x0010 6d 61 67 65 29                                   mage)
type:*func(*command-line-arguments.Image) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 ec 5c 25 f5 08 08 08 36 00 00 00 00 00 00 00 00  .\%....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image)-+0
	rel 48+8 t=1 type:func(*command-line-arguments.Image)+0
type:func(*command-line-arguments.Image) SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 21 4c 3b 70 02 08 08 33 00 00 00 00 00 00 00 00  !L;p...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*gocgl.Image)-+0
	rel 44+4 t=-32763 type:*func(*command-line-arguments.Image)+0
	rel 56+8 t=1 type:*command-line-arguments.Image+0
type:.namedata.FillWithColor. SRODATA dupok size=15
	0x0000 01 0d 46 69 6c 6c 57 69 74 68 43 6f 6c 6f 72     ..FillWithColor
type:.namedata.Overlay. SRODATA dupok size=9
	0x0000 01 07 4f 76 65 72 6c 61 79                       ..Overlay
type:.namedata.SetPixel. SRODATA dupok size=10
	0x0000 01 08 53 65 74 50 69 78 65 6c                    ..SetPixel
type:.namedata.*func(uint32, uint32, uint32)- SRODATA dupok size=31
	0x0000 00 1d 2a 66 75 6e 63 28 75 69 6e 74 33 32 2c 20  ..*func(uint32, 
	0x0010 75 69 6e 74 33 32 2c 20 75 69 6e 74 33 32 29     uint32, uint32)
type:*func(uint32, uint32, uint32) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4a a0 30 bc 08 08 08 36 00 00 00 00 00 00 00 00  J.0....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(uint32, uint32, uint32)-+0
	rel 48+8 t=1 type:func(uint32, uint32, uint32)+0
type:func(uint32, uint32, uint32) SRODATA dupok size=80
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 b7 e0 72 b9 02 08 08 33 00 00 00 00 00 00 00 00  ..r....3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(uint32, uint32, uint32)-+0
	rel 44+4 t=-32763 type:*func(uint32, uint32, uint32)+0
	rel 56+8 t=1 type:uint32+0
	rel 64+8 t=1 type:uint32+0
	rel 72+8 t=1 type:uint32+0
type:.namedata.SetPixelZ. SRODATA dupok size=11
	0x0000 01 09 53 65 74 50 69 78 65 6c 5a                 ..SetPixelZ
type:.namedata.*func(uint32, uint32, float64, uint32)- SRODATA dupok size=40
	0x0000 00 26 2a 66 75 6e 63 28 75 69 6e 74 33 32 2c 20  .&*func(uint32, 
	0x0010 75 69 6e 74 33 32 2c 20 66 6c 6f 61 74 36 34 2c  uint32, float64,
	0x0020 20 75 69 6e 74 33 32 29                           uint32)
type:*func(uint32, uint32, float64, uint32) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fd 68 64 de 08 08 08 36 00 00 00 00 00 00 00 00  .hd....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(uint32, uint32, float64, uint32)-+0
	rel 48+8 t=1 type:func(uint32, uint32, float64, uint32)+0
type:func(uint32, uint32, float64, uint32) SRODATA dupok size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 15 e4 87 6a 02 08 08 33 00 00 00 00 00 00 00 00  ...j...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(uint32, uint32, float64, uint32)-+0
	rel 44+4 t=-32763 type:*func(uint32, uint32, float64, uint32)+0
	rel 56+8 t=1 type:uint32+0
	rel 64+8 t=1 type:uint32+0
	rel 72+8 t=1 type:float64+0
	rel 80+8 t=1 type:uint32+0
type:.namedata.WritePPM. SRODATA dupok size=10
	0x0000 01 08 57 72 69 74 65 50 50 4d                    ..WritePPM
type:.namedata.*func(string) error- SRODATA dupok size=21
	0x0000 00 13 2a 66 75 6e 63 28 73 74 72 69 6e 67 29 20  ..*func(string) 
	0x0010 65 72 72 6f 72                                   error
type:*func(string) error SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 d1 9b 60 05 08 08 08 36 00 00 00 00 00 00 00 00  ..`....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(string) error-+0
	rel 48+8 t=1 type:func(string) error+0
type:func(string) error SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 c4 f6 36 c6 02 08 08 33 00 00 00 00 00 00 00 00  ..6....3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(string) error-+0
	rel 44+4 t=-32763 type:*func(string) error+0
	rel 56+8 t=1 type:string+0
	rel 64+8 t=1 type:error+0
type:.namedata.index- SRODATA dupok size=7
	0x0000 00 05 69 6e 64 65 78                             ..index
type:.namedata.*func(uint32, uint32) uint32- SRODATA dupok size=30
	0x0000 00 1c 2a 66 75 6e 63 28 75 69 6e 74 33 32 2c 20  ..*func(uint32, 
	0x0010 75 69 6e 74 33 32 29 20 75 69 6e 74 33 32        uint32) uint32
type:*func(uint32, uint32) uint32 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 71 75 3f f8 08 08 08 36 00 00 00 00 00 00 00 00  qu?....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(uint32, uint32) uint32-+0
	rel 48+8 t=1 type:func(uint32, uint32) uint32+0
type:func(uint32, uint32) uint32 SRODATA dupok size=80
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 ea d9 fb 02 02 08 08 33 00 00 00 00 00 00 00 00  .......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(uint32, uint32) uint32-+0
	rel 44+4 t=-32763 type:*func(uint32, uint32) uint32+0
	rel 56+8 t=1 type:uint32+0
	rel 64+8 t=1 type:uint32+0
	rel 72+8 t=1 type:uint32+0
type:*command-line-arguments.Image SRODATA size=216
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4d 13 83 89 09 08 08 36 00 00 00 00 00 00 00 00  M......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 09 00 08 00  ................
	0x0040 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00d0 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*gocgl.Image.+0
	rel 48+8 t=1 type:command-line-arguments.Image+0
	rel 56+4 t=5 type:.importpath.command-line-arguments.+0
	rel 72+4 t=5 type:.namedata.ApplyAlphaReduction.+0
	rel 76+4 t=26 type:func(float64)+0
	rel 80+4 t=26 command-line-arguments.(*Image).ApplyAlphaReduction+0
	rel 84+4 t=26 command-line-arguments.(*Image).ApplyAlphaReduction+0
	rel 88+4 t=5 type:.namedata.ApplyColorFilter.+0
	rel 92+4 t=26 type:func(uint32)+0
	rel 96+4 t=26 command-line-arguments.(*Image).ApplyColorFilter+0
	rel 100+4 t=26 command-line-arguments.(*Image).ApplyColorFilter+0
	rel 104+4 t=5 type:.namedata.CopyFrom.+0
	rel 108+4 t=26 type:func(*command-line-arguments.Image)+0
	rel 112+4 t=26 command-line-arguments.(*Image).CopyFrom+0
	rel 116+4 t=26 command-line-arguments.(*Image).CopyFrom+0
	rel 120+4 t=5 type:.namedata.FillWithColor.+0
	rel 124+4 t=26 type:func(uint32)+0
	rel 128+4 t=26 command-line-arguments.(*Image).FillWithColor+0
	rel 132+4 t=26 command-line-arguments.(*Image).FillWithColor+0
	rel 136+4 t=5 type:.namedata.Overlay.+0
	rel 140+4 t=26 type:func(*command-line-arguments.Image)+0
	rel 144+4 t=26 command-line-arguments.(*Image).Overlay+0
	rel 148+4 t=26 command-line-arguments.(*Image).Overlay+0
	rel 152+4 t=5 type:.namedata.SetPixel.+0
	rel 156+4 t=26 type:func(uint32, uint32, uint32)+0
	rel 160+4 t=26 command-line-arguments.(*Image).SetPixel+0
	rel 164+4 t=26 command-line-arguments.(*Image).SetPixel+0
	rel 168+4 t=5 type:.namedata.SetPixelZ.+0
	rel 172+4 t=26 type:func(uint32, uint32, float64, uint32)+0
	rel 176+4 t=26 command-line-arguments.(*Image).SetPixelZ+0
	rel 180+4 t=26 command-line-arguments.(*Image).SetPixelZ+0
	rel 184+4 t=5 type:.namedata.WritePPM.+0
	rel 188+4 t=26 type:func(string) error+0
	rel 192+4 t=26 command-line-arguments.(*Image).WritePPM+0
	rel 196+4 t=26 command-line-arguments.(*Image).WritePPM+0
	rel 200+4 t=5 type:.namedata.index-+0
	rel 204+4 t=26 type:func(uint32, uint32) uint32+0
	rel 208+4 t=26 command-line-arguments.(*Image).index+0
	rel 212+4 t=26 command-line-arguments.(*Image).index+0
runtime.gcbits.0900000000000000 SRODATA dupok size=8
	0x0000 09 00 00 00 00 00 00 00                          ........
type:.namedata.Arr. SRODATA dupok size=5
	0x0000 01 03 41 72 72                                   ..Arr
type:.namedata.Zbuf. SRODATA dupok size=6
	0x0000 01 04 5a 62 75 66                                ..Zbuf
type:.namedata.Width. SRODATA dupok size=7
	0x0000 01 05 57 69 64 74 68                             ..Width
type:.namedata.Height. SRODATA dupok size=8
	0x0000 01 06 48 65 69 67 68 74                          ..Height
type:command-line-arguments.Image SRODATA size=192
	0x0000 38 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  8....... .......
	0x0010 e8 5a 7f e5 07 08 08 19 00 00 00 00 00 00 00 00  .Z..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 04 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 70 00 00 00 00 00 00 00  ........p.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  0...............
	0x00b0 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00  ........4.......
	rel 32+8 t=1 runtime.gcbits.0900000000000000+0
	rel 40+4 t=5 type:.namedata.*gocgl.Image.+0
	rel 44+4 t=5 type:*command-line-arguments.Image+0
	rel 56+8 t=1 type:command-line-arguments.Image+96
	rel 80+4 t=5 type:.importpath.command-line-arguments.+0
	rel 96+8 t=1 type:.namedata.Arr.+0
	rel 104+8 t=1 type:[]uint8+0
	rel 120+8 t=1 type:.namedata.Zbuf.+0
	rel 128+8 t=1 type:[]float64+0
	rel 144+8 t=1 type:.namedata.Width.+0
	rel 152+8 t=1 type:uint32+0
	rel 168+8 t=1 type:.namedata.Height.+0
	rel 176+8 t=1 type:uint32+0
runtime.memequal32·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal32+0
runtime.gcbits. SRODATA dupok size=0
type:.namedata.*[4]uint8- SRODATA dupok size=11
	0x0000 00 09 2a 5b 34 5d 75 69 6e 74 38                 ..*[4]uint8
type:[4]uint8 SRODATA dupok size=72
	0x0000 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 14 65 25 51 0a 01 01 11 00 00 00 00 00 00 00 00  .e%Q............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 04 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal32·f+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type:.namedata.*[4]uint8-+0
	rel 44+4 t=-32763 type:*[4]uint8+0
	rel 48+8 t=1 type:uint8+0
	rel 56+8 t=1 type:[]uint8+0
type:*[4]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 c4 80 4b 75 08 08 08 36 00 00 00 00 00 00 00 00  ..Ku...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*[4]uint8-+0
	rel 48+8 t=1 type:[4]uint8+0
type:.eqfunc.[2]interface {} SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type:.eq.[2]interface {}+0
type:.namedata.*[2]interface {}- SRODATA dupok size=18
	0x0000 00 10 2a 5b 32 5d 69 6e 74 65 72 66 61 63 65 20  ..*[2]interface 
	0x0010 7b 7d                                            {}
type:*[2]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 53 dc 6b 00 08 08 08 36 00 00 00 00 00 00 00 00  S.k....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*[2]interface {}-+0
	rel 48+8 t=1 type:[2]interface {}+0
runtime.gcbits.0a00000000000000 SRODATA dupok size=8
	0x0000 0a 00 00 00 00 00 00 00                          ........
type:[2]interface {} SRODATA dupok size=72
	0x0000 20 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00   ....... .......
	0x0010 0a f3 b4 b4 02 08 08 11 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type:.eqfunc.[2]interface {}+0
	rel 32+8 t=1 runtime.gcbits.0a00000000000000+0
	rel 40+4 t=5 type:.namedata.*[2]interface {}-+0
	rel 44+4 t=-32763 type:*[2]interface {}+0
	rel 48+8 t=1 type:interface {}+0
	rel 56+8 t=1 type:[]interface {}+0
type:.eqfunc32 SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  ........ .......
	rel 0+8 t=1 runtime.memequal_varlen+0
type:.namedata.*[32]uint8- SRODATA dupok size=12
	0x0000 00 0a 2a 5b 33 32 5d 75 69 6e 74 38              ..*[32]uint8
type:*[32]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 26 0d b3 9e 08 08 08 36 00 00 00 00 00 00 00 00  &......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*[32]uint8-+0
	rel 48+8 t=1 type:[32]uint8+0
type:[32]uint8 SRODATA dupok size=72
	0x0000 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ...............
	0x0010 aa ab 93 92 0a 01 01 11 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 20 00 00 00 00 00 00 00                           .......
	rel 24+8 t=1 type:.eqfunc32+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type:.namedata.*[32]uint8-+0
	rel 44+4 t=-32763 type:*[32]uint8+0
	rel 48+8 t=1 type:uint8+0
	rel 56+8 t=1 type:[]uint8+0
type:.namedata.*func()- SRODATA dupok size=9
	0x0000 00 07 2a 66 75 6e 63 28 29                       ..*func()
type:*func() SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 75 ac 29 27 08 08 08 36 00 00 00 00 00 00 00 00  u.)'...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func()-+0
	rel 48+8 t=1 type:func()+0
type:func() SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fe fa b9 80 02 08 08 33 00 00 00 00 00 00 00 00  .......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00                                      ....
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func()-+0
	rel 44+4 t=-32763 type:*func()+0
type:.namedata.*struct { F uintptr; .autotmp_19 *os.File }- SRODATA dupok size=45
	0x0000 00 2b 2a 73 74 72 75 63 74 20 7b 20 46 20 75 69  .+*struct { F ui
	0x0010 6e 74 70 74 72 3b 20 2e 61 75 74 6f 74 6d 70 5f  ntptr; .autotmp_
	0x0020 31 39 20 2a 6f 73 2e 46 69 6c 65 20 7d           19 *os.File }
type:*struct { F uintptr; command-line-arguments..autotmp_19 *os.File } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 1d 40 4f df 08 08 08 36 00 00 00 00 00 00 00 00  .@O....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*struct { F uintptr; .autotmp_19 *os.File }-+0
	rel 48+8 t=1 type:noalg.struct { F uintptr; command-line-arguments..autotmp_19 *os.File }+0
runtime.gcbits.0200000000000000 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
type:.namedata..F- SRODATA dupok size=4
	0x0000 00 02 2e 46                                      ...F
type:.namedata..autotmp_19- SRODATA dupok size=13
	0x0000 00 0b 2e 61 75 74 6f 74 6d 70 5f 31 39           ...autotmp_19
type:noalg.struct { F uintptr; command-line-arguments..autotmp_19 *os.File } SRODATA dupok size=128
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 3a a0 74 d8 02 08 08 19 00 00 00 00 00 00 00 00  :.t.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.0200000000000000+0
	rel 40+4 t=5 type:.namedata.*struct { F uintptr; .autotmp_19 *os.File }-+0
	rel 44+4 t=-32763 type:*struct { F uintptr; command-line-arguments..autotmp_19 *os.File }+0
	rel 48+8 t=1 type:.importpath.command-line-arguments.+0
	rel 56+8 t=1 type:noalg.struct { F uintptr; command-line-arguments..autotmp_19 *os.File }+80
	rel 80+8 t=1 type:.namedata..F-+0
	rel 88+8 t=1 type:uintptr+0
	rel 104+8 t=1 type:.namedata..autotmp_19-+0
	rel 112+8 t=1 type:*os.File+0
type:.importpath.fmt. SRODATA dupok size=5
	0x0000 00 03 66 6d 74                                   ..fmt
type:.importpath.os. SRODATA dupok size=4
	0x0000 00 02 6f 73                                      ..os
type:.importpath.unsafe. SRODATA dupok size=8
	0x0000 00 06 75 6e 73 61 66 65                          ..unsafe
gclocals·ykHN0vawYuq1dUW4zEe2gA== SRODATA dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
gclocals·sQxO+jiYy+d9ldxoWSePwQ== SRODATA dupok size=11
	0x0000 03 00 00 00 02 00 00 00 00 02 03                 ...........
command-line-arguments.NewImage.arginfo1 SRODATA static dupok size=5
	0x0000 00 04 04 04 ff                                   .....
command-line-arguments.NewImage.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
gclocals·wgcWObbY2HYnK2SU/U22lA== SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
command-line-arguments.(*Image).index.arginfo1 SRODATA static dupok size=7
	0x0000 00 08 08 04 0c 04 ff                             .......
command-line-arguments.(*Image).index.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
command-line-arguments.(*Image).SetPixelZ.arginfo1 SRODATA static dupok size=11
	0x0000 00 08 08 04 0c 04 10 08 18 04 ff                 ...........
command-line-arguments.(*Image).SetPixelZ.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
command-line-arguments.(*Image).SetPixel.arginfo1 SRODATA static dupok size=9
	0x0000 00 08 08 04 0c 04 10 04 ff                       .........
command-line-arguments.(*Image).SetPixel.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
gclocals·TjPuuCwdlCpTaRQGRKTrYw== SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
command-line-arguments.(*Image).CopyFrom.arginfo1 SRODATA static dupok size=5
	0x0000 00 08 08 08 ff                                   .....
command-line-arguments.(*Image).CopyFrom.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
command-line-arguments.(*Image).Overlay.arginfo1 SRODATA static dupok size=5
	0x0000 00 08 08 08 ff                                   .....
command-line-arguments.(*Image).Overlay.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
command-line-arguments.(*Image).FillWithColor.arginfo1 SRODATA static dupok size=5
	0x0000 00 08 08 04 ff                                   .....
command-line-arguments.(*Image).FillWithColor.argliveinfo SRODATA static dupok size=3
	0x0000 00 00 01                                         ...
command-line-arguments.(*Image).ApplyColorFilter.arginfo1 SRODATA static dupok size=5
	0x0000 00 08 08 04 ff                                   .....
command-line-arguments.(*Image).ApplyColorFilter.argliveinfo SRODATA static dupok size=3
	0x0000 00 00 01                                         ...
command-line-arguments.(*Image).ApplyAlphaReduction.arginfo1 SRODATA static dupok size=5
	0x0000 00 08 08 08 ff                                   .....
command-line-arguments.(*Image).ApplyAlphaReduction.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
gclocals·7XBZTuTlonMHIcAyzzmwZw== SRODATA dupok size=13
	0x0000 05 00 00 00 02 00 00 00 03 01 01 01 00           .............
gclocals·KUXTMja1XtZGbptKL272+g== SRODATA dupok size=18
	0x0000 05 00 00 00 0a 00 00 00 00 00 04 02 45 03 05 02  ............E...
	0x0010 04 02                                            ..
command-line-arguments.(*Image).WritePPM.stkobj SRODATA static size=40
	0x0000 02 00 00 00 00 00 00 00 c8 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00 d8 ff ff ff 20 00 00 00  ............ ...
	0x0020 20 00 00 00 00 00 00 00                           .......
	rel 20+4 t=5 runtime.gcbits.0200000000000000+0
	rel 36+4 t=5 runtime.gcbits.0a00000000000000+0
command-line-arguments.(*Image).WritePPM.opendefer SRODATA dupok size=4
	0x0000 81 01 01 08                                      ....
command-line-arguments.(*Image).WritePPM.arginfo1 SRODATA static dupok size=9
	0x0000 00 08 fe 08 08 10 08 fd ff                       .........
command-line-arguments.(*Image).WritePPM.argliveinfo SRODATA static dupok size=3
	0x0000 00 00 01                                         ...
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
os.(*File).Close.wrapinfo SRODATA static dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 os.(*File).Close+0
type:.eq.[2]interface {}.arginfo1 SRODATA static dupok size=3
	0x0000 08 08 ff                                         ...
type:.eq.[2]interface {}.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
$f64.3ff0000000000000 SRODATA size=8
	0x0000 00 00 00 00 00 00 f0 3f                          .......?
$f64.406fe00000000000 SRODATA size=8
	0x0000 00 00 00 00 00 e0 6f 40                          ......o@
