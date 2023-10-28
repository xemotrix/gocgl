#include "textflag.h"
#include "go_asm.h"


GLOBL ·alpha_shuffle_mask<>(SB), RODATA, $32
DATA ·alpha_shuffle_mask<>+0(SB)/4,  $0x80808003
DATA ·alpha_shuffle_mask<>+4(SB)/4,  $0x80808007
DATA ·alpha_shuffle_mask<>+8(SB)/4,  $0x8080800b
DATA ·alpha_shuffle_mask<>+12(SB)/4, $0x8080800f
DATA ·alpha_shuffle_mask<>+16(SB)/4, $0x80808013
DATA ·alpha_shuffle_mask<>+20(SB)/4, $0x80808017
DATA ·alpha_shuffle_mask<>+24(SB)/4, $0x8080801b
DATA ·alpha_shuffle_mask<>+28(SB)/4, $0x8080801f

GLOBL ·green_pack_mask<>(SB), RODATA, $32
DATA ·green_pack_mask<>+0(SB)/4,  $0x80800080
DATA ·green_pack_mask<>+4(SB)/4,  $0x80800480
DATA ·green_pack_mask<>+8(SB)/4,  $0x80800880
DATA ·green_pack_mask<>+12(SB)/4, $0x80800c80
DATA ·green_pack_mask<>+16(SB)/4, $0x80801080
DATA ·green_pack_mask<>+20(SB)/4, $0x80801480
DATA ·green_pack_mask<>+24(SB)/4, $0x80801880
DATA ·green_pack_mask<>+28(SB)/4, $0x80801c80

GLOBL ·red_pack_mask<>(SB), RODATA, $32
DATA ·red_pack_mask<>+0(SB)/4,  $0x80008080
DATA ·red_pack_mask<>+4(SB)/4,  $0x80048080
DATA ·red_pack_mask<>+8(SB)/4,  $0x80088080
DATA ·red_pack_mask<>+12(SB)/4, $0x800c8080
DATA ·red_pack_mask<>+16(SB)/4, $0x80108080
DATA ·red_pack_mask<>+20(SB)/4, $0x80148080
DATA ·red_pack_mask<>+24(SB)/4, $0x80188080
DATA ·red_pack_mask<>+28(SB)/4, $0x801c8080

GLOBL ·literal_128<>(SB), RODATA, $32
DATA ·literal_128<>+0(SB)/4,  $0x00800080
DATA ·literal_128<>+4(SB)/4,  $0x00800080
DATA ·literal_128<>+8(SB)/4,  $0x00800080
DATA ·literal_128<>+12(SB)/4, $0x00800080
DATA ·literal_128<>+16(SB)/4, $0x00800080
DATA ·literal_128<>+20(SB)/4, $0x00800080
DATA ·literal_128<>+24(SB)/4, $0x00800080
DATA ·literal_128<>+28(SB)/4, $0x00800080

GLOBL ·bitshift8_mask<>(SB), RODATA, $32
DATA ·bitshift8_mask<>+0(SB)/4,  $0x80808001
DATA ·bitshift8_mask<>+4(SB)/4,  $0x80808005
DATA ·bitshift8_mask<>+8(SB)/4,  $0x80808009
DATA ·bitshift8_mask<>+12(SB)/4, $0x8080800d
DATA ·bitshift8_mask<>+16(SB)/4, $0x80808011
DATA ·bitshift8_mask<>+20(SB)/4, $0x80808015
DATA ·bitshift8_mask<>+24(SB)/4, $0x80808019
DATA ·bitshift8_mask<>+28(SB)/4, $0x8080801d

GLOBL ·blue_shuffle_mask<>(SB), RODATA, $32
DATA ·blue_shuffle_mask<>+0(SB)/4,  $0x80808000
DATA ·blue_shuffle_mask<>+4(SB)/4,  $0x80808004
DATA ·blue_shuffle_mask<>+8(SB)/4,  $0x80808008
DATA ·blue_shuffle_mask<>+12(SB)/4, $0x8080800c
DATA ·blue_shuffle_mask<>+16(SB)/4, $0x80808010
DATA ·blue_shuffle_mask<>+20(SB)/4, $0x80808014
DATA ·blue_shuffle_mask<>+24(SB)/4, $0x80808018
DATA ·blue_shuffle_mask<>+28(SB)/4, $0x8080801c

GLOBL ·red_shuffle_mask<>(SB), RODATA, $32
DATA ·red_shuffle_mask<>+0(SB)/4,  $0x80808002
DATA ·red_shuffle_mask<>+4(SB)/4,  $0x80808006
DATA ·red_shuffle_mask<>+8(SB)/4,  $0x8080800a
DATA ·red_shuffle_mask<>+12(SB)/4, $0x8080800e
DATA ·red_shuffle_mask<>+16(SB)/4, $0x80808012
DATA ·red_shuffle_mask<>+20(SB)/4, $0x80808016
DATA ·red_shuffle_mask<>+24(SB)/4, $0x8080801a
DATA ·red_shuffle_mask<>+28(SB)/4, $0x8080801e


// https://arxiv.org/pdf/2202.02864.pdf
// Alpha Blending with No Division Operations
// Jerry R. VanAken
// February 21, 2022

// from the paper:
// int FastAlphaMult2(int alpha, int red) {
//	red *= alpha;
// 	red += 0x80U;
// 	red += red >> 8;
// 	return (red >> 8);
// }

#define ALPHA_MUL(mask_register, output_register) \
	VPSHUFB	mask_register, Y1, Y3; \	// extract the red channel for each pixel into two words (zero extended)
	VPMULLW Y2, Y3, Y3; \			// color *= alpha
	VPADDW	Y3, Y8, Y3; \			// color += 0x80U
	VPSHUFB	Y9, Y3, Y4; \			// color += color >> 8
	VPADDW	Y3, Y4, Y3; \
	VPSHUFB	Y9, Y3, output_register		// return color >> 8

#define LOAD_STATIC(iden, register) \
	MOVQ	$iden<>(SB), AX; \
	VMOVDQA	(AX), register

// func OverlayChunk(a, b *byte, lenght int)
TEXT ·OverlayChunk(SB),NOSPLIT,$0
	MOVQ	a_prt+0(FP), R8
	MOVQ	b_prt+8(FP), R12
	MOVD	lenght+16(FP), SI

	LOAD_STATIC(·alpha_shuffle_mask,   Y5)
	LOAD_STATIC(·green_pack_mask,      Y6)
	LOAD_STATIC(·red_pack_mask,        Y7)
	LOAD_STATIC(·literal_128,          Y8)
	LOAD_STATIC(·bitshift8_mask,       Y9)
	LOAD_STATIC(·blue_shuffle_mask,    Y10)
	LOAD_STATIC(·red_shuffle_mask,     Y11)

	// Y0  | aux                        | NOT USED
	// Y1  | bg                         | loaded twice per loop (fg and bg)
	// Y2  | alpha_bg (words)           | loaded once per loop. Inverted (255-alpha) once per loop
	// Y3  | aux                        | 
	// Y4  | aux                        |
	// Y5  | alpha_shuffle_mask         | DONT TOUCH
	// Y6  | green_pack_mask            | DONT TOUCH
	// Y7  | red_pack_mask              | DONT TOUCH
	// Y8  | literal_128                | DONT TOUCH
	// Y9  | bitshift8_mask             | DONT TOUCH
	// Y10 | blue_shuffle_mask          | DONT TOUCH
	// Y11 | red_shuffle_mask           | DONT TOUCH
	// Y12 | aux                        |
	// Y13 | blue result accumulator    | only to be used for accumulation
	// Y14 | green result accumulator   | only to be used for accumulation
	// Y15 | red result accumulator     | only to be used for accumulation

	XORQ	CX, CX

loop:
	// load 8 double words (pixels) into Y1
	VMOVDQU	(R12), Y1

	// extract the alpha channel for each pixel into two words (zero extended)
	VPSHUFB	Y5, Y1, Y2

	ALPHA_MUL(Y11, Y15)	// RED
	ALPHA_MUL(Y9, Y14)	// GREEN
	ALPHA_MUL(Y10, Y13)	// BLUE

	// start BACKGROUND colors:
	// load 8 double words (pixels) into Y1
	VMOVDQU	(R8), Y1

	// convert alpha into 255 - alpha
	MOVD	$0x000000ff, BX
	MOVD	BX, X4
	VPBROADCASTD X4, Y4
	VPSUBW	Y2, Y4, Y2

	ALPHA_MUL(Y11, Y3)	// RED
	VPADDW Y3, Y15, Y15
	ALPHA_MUL(Y9, Y3)	// GREEN
	VPADDW Y3, Y14, Y14
	ALPHA_MUL(Y10, Y3)	// BLUE
	VPADDW Y3, Y13, Y13

	//////// REPACK COLORS ////////
	VPSHUFB	Y7, Y15, Y15
	VPSHUFB	Y6, Y14, Y14
	// fill a register with ff s in the place of the alphas to OR later
	MOVD $0xff000000, BX
	MOVD	BX, X12
	VPBROADCASTD X12, Y12

	// bitwise OR all the things!!
	VPOR	Y15, Y14, Y15
	VPOR	Y15, Y13, Y15
	VPOR	Y15, Y12, Y15

	// store the result in the background array
	VMOVDQU	Y15, (R8)

	// loopy loop
	ADDQ	$32, R8
	ADDQ	$32, R12
	INCQ	CX
	CMPQ	CX, SI
	JNE	loop

	RET




