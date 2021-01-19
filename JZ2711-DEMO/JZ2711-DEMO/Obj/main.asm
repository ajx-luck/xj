
;----------------------------------------------------
;  Copyright (c) 2003-2013 SONiX Technology Co., Ltd.
;  Sonix SN8 C Compiler - V2.01
;----------------------------------------------------

CHIP SN8P2711B

INCLUDE <sncc_macros.h>
EXTERN DATA T
EXTERN DATA I
.CODE
.stabs "lcc4_compiled.",0x3C,0,0,0
.stabs "C:\mcuproject\xj\JZ2711-DEMO\JZ2711-DEMO/",0x64,0,3,Ltext0
.stabs ".\Src\main.c",0x64,0,3,Ltext0
Ltext0:
.stabs "int:t1=r1;-128;127;",128,0,0,0
.stabs "char:t2=r2;-128;127;",128,0,0,0
.stabs "double:t3=r1;4;0;",128,0,0,0
.stabs "float:t4=r1;4;0;",128,0,0,0
.stabs "long double:t5=r1;4;0;",128,0,0,0
.stabs "long int:t6=r1;-32768;32767;",128,0,0,0
.stabs "long long int:t7=r1;-2147483648;2147483647;",128,0,0,0
.stabs "signed char:t8=r1;-128;127;",128,0,0,0
.stabs "unsigned char:t9=r1;0;255;",128,0,0,0
.stabs "unsigned long:t10=r1;0;65535;",128,0,0,0
.stabs "unsigned long long:t11=r1;0;4294967295;",128,0,0,0
.stabs "unsigned int:t12=r1;0;255;",128,0,0,0
.stabs "void:t13=13",128,0,0,0
.stabs "bit:t14",128,0,0,0
.stabs ":t300=L16:0",128,0,0,0
.stabs ":t301=L16:1",128,0,0,0
.stabs ":t302=L16:2",128,0,0,0
.stabs ":t303=L16:3",128,0,0,0
.stabs ":t304=L16:4",128,0,0,0
.stabs ":t305=L16:5",128,0,0,0
.stabs ":t306=L16:6",128,0,0,0
.stabs ":t307=L16:7",128,0,0,0
.stabs ":t308=ar1;0;9;1",128,0,0,0

;---------------Begin emit user code-----------------

PUBLIC _TEMP_Table
PUBLIC _inrserv_isr
PUBLIC _main
PUBLIC _RESULT_BUBBLING
PUBLIC _AD_NTC_IN
PUBLIC _System_init
PUBLIC _TC0_init
PUBLIC _SEND_DAT_TO_PC
PUBLIC _SEND_DAT_TO_PC_arg@0
PUBLIC _DELAY_US
PUBLIC _DELAY_US_arg@0
PUBLIC _LED_CNT
_LED_CNT@segment SEGMENT DATA INBANK
	_LED_CNT DS 1
PUBLIC _FLAG_LED_LEVEL
_FLAG_LED_LEVEL@segment SEGMENT DATA INBANK
	_FLAG_LED_LEVEL DS 1
PUBLIC _AD_ONCE_VAL
_AD_ONCE_VAL@segment SEGMENT DATA INBANK
	_AD_ONCE_VAL DS 2
PUBLIC _ABL_SUM
_ABL_SUM@segment SEGMENT DATA INBANK
	_ABL_SUM DS 1
PUBLIC _AD_8T_SUM_OLD
_AD_8T_SUM_OLD@segment SEGMENT DATA INBANK
	_AD_8T_SUM_OLD DS 2
PUBLIC _AD_8T_SUM
_AD_8T_SUM@segment SEGMENT DATA INBANK
	_AD_8T_SUM DS 2
PUBLIC _AD_ARRAY_ONCE
_AD_ARRAY_ONCE@segment SEGMENT DATA INBANK
	_AD_ARRAY_ONCE DS 10
PUBLIC _AD_8_TIMES
_AD_8_TIMES@segment SEGMENT DATA INBANK
	_AD_8_TIMES DS 1
PUBLIC _AD_RCE_TURNS
_AD_RCE_TURNS@segment SEGMENT DATA INBANK
	_AD_RCE_TURNS DS 1
PUBLIC _AD_JUDGE_BASE
_AD_JUDGE_BASE@segment SEGMENT DATA INBANK
	_AD_JUDGE_BASE DS 1
PUBLIC _F_AD_SUCCESS
PUBLIC _F_DIG1_DIG2
PUBLIC _F_LED
PUBLIC _AD_LONG_BUF
_AD_LONG_BUF@segment SEGMENT DATA INBANK
	_AD_LONG_BUF DS 2

_main_c_GlobalBitDataPool0 BITSEGMENT DATA BANK 0 INBANK
	_F_AD_SUCCESS DSBIT 1
	_F_DIG1_DIG2 DSBIT 1
	_F_LED DSBIT 1

_TEMP_Table@segment SEGMENT CODE INBANK
_TEMP_Table:
	DB 0xBE,0x3
	DB 0x83,0x4
	DB 0x58,0x5
	DB 0x37,0x6
	DB 0x1C,0x7
	DB 0x0,0x8
	DB 0xDD,0x8
	DB 0xAF,0x9
	DB 0x72,0xA
	DB 0x25,0xB
	DB 0xC6,0xB
	DB 0x55,0xC
	DB 0xD3,0xC
	DB 0x41,0xD
	DB 0xA1,0xD
	DB 0xF4,0xD
_DEFINE_ISRBACKUP_DATA 2
_Function_inrserv_isr_data SEGMENT DATA INBANK
	_inrserv_isr_data@0	DS	1

_Function_main_data SEGMENT DATA INBANK

_Function_RESULT_BUBBLING_data SEGMENT DATA INBANK
	_RESULT_BUBBLING_data@0	DS	1
	_RESULT_BUBBLING_data@1	DS	1
	_RESULT_BUBBLING_data@2	DS	1
	_RESULT_BUBBLING_data@3	DS	1
	_RESULT_BUBBLING_data@4	DS	1

_Function_AD_NTC_IN_data SEGMENT DATA INBANK
	_AD_NTC_IN_data@0	DS	1
	_AD_NTC_IN_data@1	DS	1

_Function_System_init_data SEGMENT DATA INBANK

_Function_TC0_init_data SEGMENT DATA INBANK

_Function_SEND_DAT_TO_PC_data SEGMENT DATA INBANK
	_SEND_DAT_TO_PC_arg@0 DS 2
	_SEND_DAT_TO_PC_data@0	DS	1
	_SEND_DAT_TO_PC_data@1	DS	1

_Function_DELAY_US_data SEGMENT DATA INBANK
	_DELAY_US_arg@0 DS 1


_VirtualReg SEGMENT DATA BANK 0 INBANK COMMON
	W0 DS 1
	W1 DS 1
	W2 DS 1
	W3 DS 1
	W4 DS 1
	W5 DS 1

.stabs "R:G12",32,0,0,0x82
.stabs "Z:G12",32,0,0,0x83
.stabs "Y:G12",32,0,0,0x84
.stabs "PFLAG:G12",32,0,0,0x86
.stabs "FZ:G300",32,0,0,0x86
.stabs "FDC:G301",32,0,0,0x86
.stabs "FC:G302",32,0,0,0x86
.stabs "FLVD24:G304",32,0,0,0x86
.stabs "FLVD36:G305",32,0,0,0x86
.stabs "FNPD:G306",32,0,0,0x86
.stabs "FNT0:G307",32,0,0,0x86
.stabs "P4CON:G12",32,0,0,0xAE
.stabs "VREFH:G12",32,0,0,0xAF
.stabs "FVHS0:G300",32,0,0,0xAF
.stabs "FVHS1:G301",32,0,0,0xAF
.stabs "FEVHENB:G307",32,0,0,0xAF
.stabs "ADM:G12",32,0,0,0xB1
.stabs "FADENB:G307",32,0,0,0xB1
.stabs "FADS:G306",32,0,0,0xB1
.stabs "FEOC:G305",32,0,0,0xB1
.stabs "FGCHS:G304",32,0,0,0xB1
.stabs "FCHS2:G302",32,0,0,0xB1
.stabs "FCHS1:G301",32,0,0,0xB1
.stabs "FCHS0:G300",32,0,0,0xB1
.stabs "ADB:G12",32,0,0,0xB2
.stabs "ADR:G12",32,0,0,0xB3
.stabs "FADCKS1:G306",32,0,0,0xB3
.stabs "FADCKS0:G304",32,0,0,0xB3
.stabs "FADB3:G303",32,0,0,0xB3
.stabs "FADB2:G302",32,0,0,0xB3
.stabs "FADB1:G301",32,0,0,0xB3
.stabs "FADB0:G300",32,0,0,0xB3
.stabs "ADT:G12",32,0,0,0xB4
.stabs "FADTS1:G307",32,0,0,0xB4
.stabs "FADTS0:G306",32,0,0,0xB4
.stabs "FADT4:G304",32,0,0,0xB4
.stabs "FADT3:G303",32,0,0,0xB4
.stabs "FADT2:G302",32,0,0,0xB4
.stabs "FADT1:G301",32,0,0,0xB4
.stabs "FADT0:G300",32,0,0,0xB4
.stabs "P0M:G12",32,0,0,0xB8
.stabs "FP00M:G300",32,0,0,0xB8
.stabs "FP01M:G301",32,0,0,0xB8
.stabs "FP02M:G302",32,0,0,0xB8
.stabs "FP03M:G303",32,0,0,0xB8
.stabs "PEDGE:G12",32,0,0,0xBF
.stabs "FP00G1:G304",32,0,0,0xBF
.stabs "FP00G0:G303",32,0,0,0xBF
.stabs "P4M:G12",32,0,0,0xC4
.stabs "FP40M:G300",32,0,0,0xC4
.stabs "FP41M:G301",32,0,0,0xC4
.stabs "FP42M:G302",32,0,0,0xC4
.stabs "FP43M:G303",32,0,0,0xC4
.stabs "FP44M:G304",32,0,0,0xC4
.stabs "P5M:G12",32,0,0,0xC5
.stabs "FP53M:G303",32,0,0,0xC5
.stabs "FP54M:G304",32,0,0,0xC5
.stabs "INTRQ:G12",32,0,0,0xC8
.stabs "FP00IRQ:G300",32,0,0,0xC8
.stabs "FP01IRQ:G301",32,0,0,0xC8
.stabs "FTC0IRQ:G305",32,0,0,0xC8
.stabs "FTC1IRQ:G306",32,0,0,0xC8
.stabs "FADCIRQ:G307",32,0,0,0xC8
.stabs "INTEN:G12",32,0,0,0xC9
.stabs "FP00IEN:G300",32,0,0,0xC9
.stabs "FP01IEN:G301",32,0,0,0xC9
.stabs "FTC0IEN:G305",32,0,0,0xC9
.stabs "FTC1IEN:G306",32,0,0,0xC9
.stabs "FADCIEN:G307",32,0,0,0xC9
.stabs "OSCM:G12",32,0,0,0xCA
.stabs "FCPUM1:G304",32,0,0,0xCA
.stabs "FCPUM0:G303",32,0,0,0xCA
.stabs "FCLKMD:G302",32,0,0,0xCA
.stabs "FSTPHX:G301",32,0,0,0xCA
.stabs "WDTR:G12",32,0,0,0xCC
.stabs "PCL:G12",32,0,0,0xCE
.stabs "PCH:G12",32,0,0,0xCF
.stabs "P0:G12",32,0,0,0xD0
.stabs "FP00:G300",32,0,0,0xD0
.stabs "FP01:G301",32,0,0,0xD0
.stabs "FP02:G302",32,0,0,0xD0
.stabs "FP03:G303",32,0,0,0xD0
.stabs "FP04:G304",32,0,0,0xD0
.stabs "P4:G12",32,0,0,0xD4
.stabs "FP40:G300",32,0,0,0xD4
.stabs "FP41:G301",32,0,0,0xD4
.stabs "FP42:G302",32,0,0,0xD4
.stabs "FP43:G303",32,0,0,0xD4
.stabs "FP44:G304",32,0,0,0xD4
.stabs "P5:G12",32,0,0,0xD5
.stabs "FP53:G303",32,0,0,0xD5
.stabs "FP54:G304",32,0,0,0xD5
.stabs "T0M:G12",32,0,0,0xD8
.stabs "FTC0GN:G301",32,0,0,0xD8
.stabs "FTC0X8:G302",32,0,0,0xD8
.stabs "FTC1X8:G303",32,0,0,0xD8
.stabs "TC0M:G12",32,0,0,0xDA
.stabs "FTC0ENB:G307",32,0,0,0xDA
.stabs "FTC0RATE2:G306",32,0,0,0xDA
.stabs "FTC0RATE1:G305",32,0,0,0xDA
.stabs "FTC0RATE0:G304",32,0,0,0xDA
.stabs "FTC0CKS:G303",32,0,0,0xDA
.stabs "FALOAD0:G302",32,0,0,0xDA
.stabs "FTC0OUT:G301",32,0,0,0xDA
.stabs "FPWM0OUT:G300",32,0,0,0xDA
.stabs "TC0C:G12",32,0,0,0xDB
.stabs "TC0R:G12",32,0,0,0xCD
.stabs "TC1M:G12",32,0,0,0xDC
.stabs "FTC1ENB:G307",32,0,0,0xDC
.stabs "FTC1RATE2:G306",32,0,0,0xDC
.stabs "FTC1RATE1:G305",32,0,0,0xDC
.stabs "FTC1RATE0:G304",32,0,0,0xDC
.stabs "FTC1CKS:G303",32,0,0,0xDC
.stabs "FALOAD1:G302",32,0,0,0xDC
.stabs "FTC1OUT:G301",32,0,0,0xDC
.stabs "FPWM1OUT:G300",32,0,0,0xDC
.stabs "TC1C:G12",32,0,0,0xDD
.stabs "TC1R:G12",32,0,0,0xDE
.stabs "STKP:G12",32,0,0,0xDF
.stabs "FGIE:G307",32,0,0,0xDF
.stabs "FSTKPB2:G302",32,0,0,0xDF
.stabs "FSTKPB1:G301",32,0,0,0xDF
.stabs "FSTKPB0:G300",32,0,0,0xDF
.stabs "P0UR:G12",32,0,0,0xE0
.stabs "P4UR:G12",32,0,0,0xE4
.stabs "P5UR:G12",32,0,0,0xE5
.stabs "_YZ:G12",32,0,0,0xE7
.stabs "STK3L:G12",32,0,0,0xF8
.stabs "STK3H:G12",32,0,0,0xF9
.stabs "STK2L:G12",32,0,0,0xFA
.stabs "STK2H:G12",32,0,0,0xFB
.stabs "STK1L:G12",32,0,0,0xFC
.stabs "STK1H:G12",32,0,0,0xFD
.stabs "STK0L:G12",32,0,0,0xFE
.stabs "STK0H:G12",32,0,0,0xFF
.stabs ":t15=ar1;0;15;10",128,0,0,0
.stabs "TEMP_Table:G15",32,0,1,_TEMP_Table
.stabs "inrserv:F13",36,0,0,_inrserv_isr

_interrupt@_inrserv_isr SEGMENT CODE AT 0x8 INBANK
_vector_for_inrserv_isr:
	JMP _inrserv_isr

_Function_inrserv_isr_code SEGMENT CODE INBANK USING _Function_inrserv_isr_data
_inrserv_isr:
	__PUSH_REG 2
.stabs "temp:9",128,0,0,_inrserv_isr_data@0
.stabn 0xC0,0,0,L36-_inrserv_isr
L36:
.stabn 0x44,0,45,L37-_inrserv_isr
L37:
;Line#45 {

 .stabn 0x44,0,47,L38-_inrserv_isr
L38:
;Line#47 	if(FTC0IRQ==SET)//TC0:1ms中断//FP44=~FP44;//test_cui

 	;NEX1 L2 ,0xC8.5 ,#1
	B0BTS1 0xC8.5
	JMP L2
.stabn 0xC0,0,1,L39-_inrserv_isr
L39:
.stabn 0x44,0,48,L40-_inrserv_isr
L40:
;Line#48 	{

 .stabn 0x44,0,49,L41-_inrserv_isr
L41:
;Line#49 		FTC0IRQ=0u;

 	;MOVX1 0xC8.5 ,#0
	B0BCLR 0xC8.5
.stabn 0x44,0,51,L42-_inrserv_isr
L42:
;Line#51 		AD_JUDGE_BASE++;			//AD采样计时计数器

 	;ADDU1 _AD_JUDGE_BASE ,_AD_JUDGE_BASE ,#1
	__SelectBANK _AD_JUDGE_BASE
	INCMS _AD_JUDGE_BASE
	NOP
.stabn 0x44,0,52,L43-_inrserv_isr
L43:
;Line#52 		temp = FLAG_LED_LEVEL;			//

 	;MOVU1 _inrserv_isr_data@0 ,_FLAG_LED_LEVEL
	__SelectBANK _FLAG_LED_LEVEL
	MOV A, _FLAG_LED_LEVEL
	__SelectBANK _inrserv_isr_data@0
	MOV _inrserv_isr_data@0, A
.stabn 0x44,0,54,L44-_inrserv_isr
L44:
;Line#54 		F_DIG1_DIG2=~F_DIG1_DIG2;	//两段扫描

 	;BCOM _F_DIG1_DIG2 ,_F_DIG1_DIG2
	MOV A, #0x00
	__SelectBANK _F_DIG1_DIG2
	BTS0 _F_DIG1_DIG2
	MOV A, #0x01
	BSET _F_DIG1_DIG2
	CMPRS A, #0x00
	BCLR _F_DIG1_DIG2
.stabn 0x44,0,56,L45-_inrserv_isr
L45:
;Line#56 		P0=0u;						//扫描：正极清0；负极置1

 	;MOVU1 0xD0 ,#0
	__SelectBANKCNST 0
	CLR (0xD0 & 0xFF)
.stabn 0x44,0,57,L46-_inrserv_isr
L46:
;Line#57 		P4=0x06u;					//DIG1=1;DIG2=1;

 	;MOVU1 0xD4 ,#6
	MOV A, #0x06
	B0MOV 0xD4, A
.stabn 0x44,0,58,L47-_inrserv_isr
L47:
;Line#58 		P5=0u;	

 	;MOVU1 0xD5 ,#0
	__SelectBANKCNST 0
	CLR (0xD5 & 0xFF)
.stabn 0x44,0,61,L48-_inrserv_isr
L48:
;Line#61 		if(F_DIG1_DIG2==SET)

 	;NEX1 L4 ,_F_DIG1_DIG2 ,#1
	__SelectBANK _F_DIG1_DIG2
	BTS1 _F_DIG1_DIG2
	JMP L4
.stabn 0xC0,0,2,L49-_inrserv_isr
L49:
.stabn 0x44,0,62,L50-_inrserv_isr
L50:
;Line#62 		{

 .stabn 0x44,0,64,L51-_inrserv_isr
L51:
;Line#64 			LED_DIG1=0u;

 	;MOVX1 0xD4.2 ,#0
	B0BCLR 0xD4.2
.stabn 0x44,0,65,L52-_inrserv_isr
L52:
;Line#65 			LED_DIG2=1u;

 	;MOVX1 0xD4.1 ,#1
	B0BSET 0xD4.1
.stabn 0x44,0,68,L53-_inrserv_isr
L53:
;Line#68 			LED_A=1u;				//D1// 0℃><X

 	;MOVX1 0xD0.3 ,#1
	B0BSET 0xD0.3
.stabn 0x44,0,69,L54-_inrserv_isr
L54:
;Line#69 			if(temp>1)	LED_B=1u;	//D2// 5℃<X

 	;LE L6 ,_inrserv_isr_data@0 ,#1
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x01
	JLT L6
.stabn 0x44,0,69,L55-_inrserv_isr
L55:
;Line#69 			if(temp>1)	LED_B=1u;	//D2// 5℃<X

 	;MOVX1 0xD0.2 ,#1
	B0BSET 0xD0.2
L6:
.stabn 0x44,0,70,L56-_inrserv_isr
L56:
;Line#70 			if(temp>2)	LED_C=1u;	//D3//10℃<X

 	;LE L8 ,_inrserv_isr_data@0 ,#2
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x02
	JLT L8
.stabn 0x44,0,70,L57-_inrserv_isr
L57:
;Line#70 			if(temp>2)	LED_C=1u;	//D3//10℃<X

 	;MOVX1 0xD5.3 ,#1
	B0BSET 0xD5.3
L8:
.stabn 0x44,0,71,L58-_inrserv_isr
L58:
;Line#71 			if(temp>3)	LED_D=1u;	//D4//15℃<X

 	;LE L10 ,_inrserv_isr_data@0 ,#3
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x03
	JLT L10
.stabn 0x44,0,71,L59-_inrserv_isr
L59:
;Line#71 			if(temp>3)	LED_D=1u;	//D4//15℃<X

 	;MOVX1 0xD5.4 ,#1
	B0BSET 0xD5.4
L10:
.stabn 0x44,0,72,L60-_inrserv_isr
L60:
;Line#72 			if(temp>4)	LED_E=1u;	//D5//20℃<X

 	;LE L12 ,_inrserv_isr_data@0 ,#4
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x04
	JLT L12
.stabn 0x44,0,72,L61-_inrserv_isr
L61:
;Line#72 			if(temp>4)	LED_E=1u;	//D5//20℃<X

 	;MOVX1 0xD0.1 ,#1
	B0BSET 0xD0.1
L12:
.stabn 0x44,0,73,L62-_inrserv_isr
L62:
;Line#73 			if(temp>5)	LED_F=1u;	//D6//25℃<X

 	;LE L14 ,_inrserv_isr_data@0 ,#5
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x05
	JLT L14
.stabn 0x44,0,73,L63-_inrserv_isr
L63:
;Line#73 			if(temp>5)	LED_F=1u;	//D6//25℃<X

 	;MOVX1 0xD0.0 ,#1
	B0BSET 0xD0.0
L14:
.stabn 0x44,0,74,L64-_inrserv_isr
L64:
;Line#74 			if(temp>6)	LED_G=1u;	//D7//30℃<X

 	;LE L16 ,_inrserv_isr_data@0 ,#6
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x06
	JLT L16
.stabn 0x44,0,74,L65-_inrserv_isr
L65:
;Line#74 			if(temp>6)	LED_G=1u;	//D7//30℃<X

 	;MOVX1 0xD4.0 ,#1
	B0BSET 0xD4.0
L16:
.stabn 0x44,0,75,L66-_inrserv_isr
L66:
;Line#75 			if(temp>7)	LED_H=1u;	//D8//35℃<X

 	;LE L5 ,_inrserv_isr_data@0 ,#7
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x07
	JLT L5
.stabn 0x44,0,75,L67-_inrserv_isr
L67:
;Line#75 			if(temp>7)	LED_H=1u;	//D8//35℃<X

 	;MOVX1 0xD4.4 ,#1
	B0BSET 0xD4.4
.stabn 0xE0,0,2,L68-_inrserv_isr
L68:
.stabn 0x44,0,76,L69-_inrserv_isr
L69:
;Line#76 		}

	JMP L5
L4:
.stabn 0xC0,0,2,L70-_inrserv_isr
L70:
.stabn 0x44,0,79,L71-_inrserv_isr
L71:
;Line#79 		{

 .stabn 0x44,0,81,L72-_inrserv_isr
L72:
;Line#81 			LED_DIG1=1u;

 	;MOVX1 0xD4.2 ,#1
	B0BSET 0xD4.2
.stabn 0x44,0,82,L73-_inrserv_isr
L73:
;Line#82 			LED_DIG2=0u;

 	;MOVX1 0xD4.1 ,#0
	B0BCLR 0xD4.1
.stabn 0x44,0,84,L74-_inrserv_isr
L74:
;Line#84 			if(temp>8)	LED_A=1u;	//D9 //40℃<X

 	;LE L20 ,_inrserv_isr_data@0 ,#8
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x08
	JLT L20
.stabn 0x44,0,84,L75-_inrserv_isr
L75:
;Line#84 			if(temp>8)	LED_A=1u;	//D9 //40℃<X

 	;MOVX1 0xD0.3 ,#1
	B0BSET 0xD0.3
L20:
.stabn 0x44,0,85,L76-_inrserv_isr
L76:
;Line#85 			if(temp>9)	LED_B=1u;	//D10//45℃<X

 	;LE L22 ,_inrserv_isr_data@0 ,#9
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x09
	JLT L22
.stabn 0x44,0,85,L77-_inrserv_isr
L77:
;Line#85 			if(temp>9)	LED_B=1u;	//D10//45℃<X

 	;MOVX1 0xD0.2 ,#1
	B0BSET 0xD0.2
L22:
.stabn 0x44,0,86,L78-_inrserv_isr
L78:
;Line#86 			if(temp>10)	LED_C=1u;	//D11//50℃<X

 	;LE L24 ,_inrserv_isr_data@0 ,#10
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x0a
	JLT L24
.stabn 0x44,0,86,L79-_inrserv_isr
L79:
;Line#86 			if(temp>10)	LED_C=1u;	//D11//50℃<X

 	;MOVX1 0xD5.3 ,#1
	B0BSET 0xD5.3
L24:
.stabn 0x44,0,87,L80-_inrserv_isr
L80:
;Line#87 			if(temp>11)	LED_D=1u;	//D12//55℃<X

 	;LE L26 ,_inrserv_isr_data@0 ,#11
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x0b
	JLT L26
.stabn 0x44,0,87,L81-_inrserv_isr
L81:
;Line#87 			if(temp>11)	LED_D=1u;	//D12//55℃<X

 	;MOVX1 0xD5.4 ,#1
	B0BSET 0xD5.4
L26:
.stabn 0x44,0,88,L82-_inrserv_isr
L82:
;Line#88 			if(temp>12)	LED_E=1u;	//D13//60℃<X

 	;LE L28 ,_inrserv_isr_data@0 ,#12
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x0c
	JLT L28
.stabn 0x44,0,88,L83-_inrserv_isr
L83:
;Line#88 			if(temp>12)	LED_E=1u;	//D13//60℃<X

 	;MOVX1 0xD0.1 ,#1
	B0BSET 0xD0.1
L28:
.stabn 0x44,0,89,L84-_inrserv_isr
L84:
;Line#89 			if(temp>13)	LED_F=1u;	//D14//65℃<X

 	;LE L30 ,_inrserv_isr_data@0 ,#13
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x0d
	JLT L30
.stabn 0x44,0,89,L85-_inrserv_isr
L85:
;Line#89 			if(temp>13)	LED_F=1u;	//D14//65℃<X

 	;MOVX1 0xD0.0 ,#1
	B0BSET 0xD0.0
L30:
.stabn 0x44,0,90,L86-_inrserv_isr
L86:
;Line#90 			if(temp>14)	LED_G=1u;	//D15//70℃<X

 	;LE L32 ,_inrserv_isr_data@0 ,#14
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x0e
	JLT L32
.stabn 0x44,0,90,L87-_inrserv_isr
L87:
;Line#90 			if(temp>14)	LED_G=1u;	//D15//70℃<X

 	;MOVX1 0xD4.0 ,#1
	B0BSET 0xD4.0
L32:
.stabn 0x44,0,91,L88-_inrserv_isr
L88:
;Line#91 			if(temp>15)	LED_H=1u;	//D16//75℃<X

 	;LE L34 ,_inrserv_isr_data@0 ,#15
	__SelectBANK _inrserv_isr_data@0
	MOV A, _inrserv_isr_data@0
	CMPRS A, #0x0f
	JLT L34
.stabn 0x44,0,91,L89-_inrserv_isr
L89:
;Line#91 			if(temp>15)	LED_H=1u;	//D16//75℃<X

 	;MOVX1 0xD4.4 ,#1
	B0BSET 0xD4.4
L34:
.stabn 0xE0,0,2,L90-_inrserv_isr
L90:
.stabn 0x44,0,92,L91-_inrserv_isr
L91:
;Line#92 		}//*/

L5:
.stabn 0xE0,0,1,L92-_inrserv_isr
L92:
.stabn 0x44,0,94,L93-_inrserv_isr
L93:
;Line#94 	}

L2:
.stabn 0xE0,0,0,L94-_inrserv_isr
L94:
.stabn 0x44,0,95,L95-_inrserv_isr
L95:
;Line#95 }

L1:
	__POP_REG 2
	RETI
.stabs "main:F13",36,0,0,_main
_Function_main_code SEGMENT CODE INBANK USING _Function_main_data
_main:
.stabn 0xC0,0,0,L120-_main
L120:
.stabn 0x44,0,100,L121-_main
L121:
;Line#100 {

 .stabn 0x44,0,101,L122-_main
L122:
;Line#101 	STKP=0x07u;

 	;MOVU1 0xDF ,#7
	MOV A, #0x07
	B0MOV 0xDF, A
.stabn 0x44,0,102,L123-_main
L123:
;Line#102 	System_init();

 	;CALLV _System_init
	CALL _System_init
.stabn 0x44,0,103,L124-_main
L124:
;Line#103 	TC0_init();

 	;CALLV _TC0_init
	CALL _TC0_init
.stabn 0x44,0,104,L125-_main
L125:
;Line#104 	DELAY_US(200u);

 	;PUSH _DELAY_US_arg@0 ,#200
	MOV A, #0xc8
	__SelectBANK _DELAY_US_arg@0
	MOV _DELAY_US_arg@0, A
	;CALLV _DELAY_US
	CALL _DELAY_US
L97:
.stabn 0xC0,0,1,L126-_main
L126:
.stabn 0x44,0,106,L127-_main
L127:
;Line#106 	{

 .stabn 0x44,0,107,L128-_main
L128:
;Line#107 		WDTR=0x5Au;

 	;MOVU1 0xCC ,#90
	MOV A, #0x5a
	B0MOV 0xCC, A
.stabn 0x44,0,110,L129-_main
L129:
;Line#110 		if(AD_JUDGE_BASE==3u)	//(3ms)执行一次 **test;3.12ms**FP03=~FP03;//test_cui

 	;NEI1 L100 ,_AD_JUDGE_BASE ,#3
	__SelectBANK _AD_JUDGE_BASE
	MOV A, _AD_JUDGE_BASE
	CMPRS A, #0x03
	JMP L100
.stabn 0xC0,0,2,L130-_main
L130:
.stabn 0x44,0,111,L131-_main
L131:
;Line#111 		{

 .stabn 0x44,0,112,L132-_main
L132:
;Line#112 			AD_JUDGE_BASE=0u;

 	;MOVU1 _AD_JUDGE_BASE ,#0
	CLR _AD_JUDGE_BASE
.stabn 0x44,0,114,L133-_main
L133:
;Line#114 			AD_RCE_TURNS=AD_RCE_TURNS+1;	//AD采集次数

 	;ADDU1 _AD_RCE_TURNS ,_AD_RCE_TURNS ,#1
	__SelectBANK _AD_RCE_TURNS
	INCMS _AD_RCE_TURNS
	NOP
.stabn 0x44,0,115,L134-_main
L134:
;Line#115 			AD_NTC_IN();

 	;CALLV _AD_NTC_IN
	CALL _AD_NTC_IN
.stabn 0x44,0,116,L135-_main
L135:
;Line#116 			AD_ARRAY_ONCE[AD_RCE_TURNS-1u]=AD_LONG_BUF.AD_RESULT;

 	;SUBU1 W0 ,_AD_RCE_TURNS ,#1
	__SelectBANK _AD_RCE_TURNS
	MOV A, _AD_RCE_TURNS
	SUB A, #0x01
	B0MOV W0, A
	B0MOV Y, #(_AD_ARRAY_ONCE)$M
	B0MOV Z, #(_AD_ARRAY_ONCE)$L
	B0ADD Z, A
	B0ADD Z, A
	__SelectBANK _AD_LONG_BUF
	MOV A, _AD_LONG_BUF+0+1
	B0MOV R, A
	MOV A, _AD_LONG_BUF+0
	CALL __SetRegTo2ByteRam
.stabn 0xE0,0,2,L136-_main
L136:
.stabn 0x44,0,117,L137-_main
L137:
;Line#117 		}//*******************************************************************

L100:
.stabn 0x44,0,119,L138-_main
L138:
;Line#119 		if(AD_RCE_TURNS==5u)	//采样5次 (15ms) **test;15.2ms**FP01=~FP01;//test_cui

 	;NEI1 L103 ,_AD_RCE_TURNS ,#5
	__SelectBANK _AD_RCE_TURNS
	MOV A, _AD_RCE_TURNS
	CMPRS A, #0x05
	JMP L103
.stabn 0xC0,0,2,L139-_main
L139:
.stabn 0x44,0,120,L140-_main
L140:
;Line#120 		{						

 .stabn 0x44,0,121,L141-_main
L141:
;Line#121 			AD_RCE_TURNS=0u;							

 	;MOVU1 _AD_RCE_TURNS ,#0
	CLR _AD_RCE_TURNS
.stabn 0x44,0,123,L142-_main
L142:
;Line#123 			F_AD_SUCCESS=1u;

 	;MOVX1 _F_AD_SUCCESS ,#1
	__SelectBANK _F_AD_SUCCESS
	BSET _F_AD_SUCCESS
.stabn 0x44,0,124,L143-_main
L143:
;Line#124 			RESULT_BUBBLING();	//排序 小到大	

 	;CALLV _RESULT_BUBBLING
	CALL _RESULT_BUBBLING
.stabn 0xE0,0,2,L144-_main
L144:
.stabn 0x44,0,125,L145-_main
L145:
;Line#125 		}//*******************************************************************

L103:
.stabn 0x44,0,127,L146-_main
L146:
;Line#127 		if(F_AD_SUCCESS)

 	;EQ L105 ,_F_AD_SUCCESS ,#0
	__SelectBANK _F_AD_SUCCESS
	BTS1 _F_AD_SUCCESS
	JMP L105
.stabn 0xC0,0,2,L147-_main
L147:
.stabn 0x44,0,128,L148-_main
L148:
;Line#128 		{

 .stabn 0x44,0,129,L149-_main
L149:
;Line#129 			F_AD_SUCCESS=0u;

 	;MOVX1 _F_AD_SUCCESS ,#0
	BCLR _F_AD_SUCCESS
.stabn 0x44,0,131,L150-_main
L150:
;Line#131 			AD_8_TIMES=AD_8_TIMES+1u;

 	;ADDU1 _AD_8_TIMES ,_AD_8_TIMES ,#1
	__SelectBANK _AD_8_TIMES
	INCMS _AD_8_TIMES
	NOP
.stabn 0x44,0,132,L151-_main
L151:
;Line#132 			AD_8T_SUM=AD_8T_SUM+AD_ARRAY_ONCE[2];

 	;ADDU2 _AD_8T_SUM ,_AD_8T_SUM ,_AD_ARRAY_ONCE+4
	__SelectBANK _AD_ARRAY_ONCE
	MOV A, _AD_ARRAY_ONCE+4
	__SelectBANK _AD_8T_SUM
	ADD _AD_8T_SUM, A
	__SelectBANK _AD_ARRAY_ONCE
	MOV A, _AD_ARRAY_ONCE+4+1
	__SelectBANK _AD_8T_SUM
	ADC _AD_8T_SUM+1, A
.stabn 0xE0,0,2,L152-_main
L152:
.stabn 0x44,0,133,L153-_main
L153:
;Line#133 		}//*******************************************************************

L105:
.stabn 0x44,0,135,L154-_main
L154:
;Line#135 		if(AD_8_TIMES==8u)	//(120ms)**test;122ms**FP00=~FP00;//test_cui

 	;NEI1 L108 ,_AD_8_TIMES ,#8
	__SelectBANK _AD_8_TIMES
	MOV A, _AD_8_TIMES
	CMPRS A, #0x08
	JMP L108
.stabn 0xC0,0,2,L155-_main
L155:
.stabn 0x44,0,136,L156-_main
L156:
;Line#136 		{	

 .stabn 0x44,0,137,L157-_main
L157:
;Line#137 			AD_8_TIMES=0u;

 	;MOVU1 _AD_8_TIMES ,#0
	CLR _AD_8_TIMES
.stabn 0x44,0,139,L158-_main
L158:
;Line#139 			if(AD_8T_SUM > AD_8T_SUM_OLD) 

 	;LE L110 ,_AD_8T_SUM ,_AD_8T_SUM_OLD
	B0MOV Y, #(_AD_8T_SUM)$M
	B0MOV Z, #(_AD_8T_SUM)$L
	B0MOV R, #(_AD_8T_SUM_OLD)$M
	MOV A, #(_AD_8T_SUM_OLD)$L
	CALL __Get2ByteRamRam
	CALL __CmpULong
	JLE L110
.stabn 0xC0,0,3,L159-_main
L159:
.stabn 0x44,0,140,L160-_main
L160:
;Line#140 			{

 .stabn 0x44,0,141,L161-_main
L161:
;Line#141 				ABL_SUM = AD_8T_SUM - AD_8T_SUM_OLD;

 	;SUBU2 W0:W1 ,_AD_8T_SUM ,_AD_8T_SUM_OLD
	__SelectBANK _AD_8T_SUM
	MOV A, _AD_8T_SUM
	__SelectBANK _AD_8T_SUM_OLD
	SUB A, _AD_8T_SUM_OLD
	__SelectBANK _ABL_SUM
	MOV _ABL_SUM, A
	__SelectBANK _AD_8T_SUM
	MOV A, _AD_8T_SUM+1
	__SelectBANK _AD_8T_SUM_OLD
	SBC A, _AD_8T_SUM_OLD+1
	B0MOV W1, A
	;LODI1 _ABL_SUM ,W0:W1
.stabn 0xE0,0,3,L162-_main
L162:
.stabn 0x44,0,142,L163-_main
L163:
;Line#142 			}

	JMP L111
L110:
.stabn 0xC0,0,3,L164-_main
L164:
.stabn 0x44,0,144,L165-_main
L165:
;Line#144 			{

 .stabn 0x44,0,145,L166-_main
L166:
;Line#145 				ABL_SUM = AD_8T_SUM - AD_8T_SUM_OLD;

 	;SUBU2 W0:W1 ,_AD_8T_SUM ,_AD_8T_SUM_OLD
	__SelectBANK _AD_8T_SUM
	MOV A, _AD_8T_SUM
	__SelectBANK _AD_8T_SUM_OLD
	SUB A, _AD_8T_SUM_OLD
	__SelectBANK _ABL_SUM
	MOV _ABL_SUM, A
	__SelectBANK _AD_8T_SUM
	MOV A, _AD_8T_SUM+1
	__SelectBANK _AD_8T_SUM_OLD
	SBC A, _AD_8T_SUM_OLD+1
	B0MOV W1, A
	;LODI1 _ABL_SUM ,W0:W1
.stabn 0xE0,0,3,L167-_main
L167:
.stabn 0x44,0,146,L168-_main
L168:
;Line#146 			}

L111:
.stabn 0x44,0,148,L169-_main
L169:
;Line#148 			if(ABL_SUM > I_ABL_SUM) 

 	;LE L112 ,_ABL_SUM ,#50
	__SelectBANK _ABL_SUM
	MOV A, _ABL_SUM
	CMPRS A, #0x32
	JLT L112
.stabn 0xC0,0,3,L170-_main
L170:
.stabn 0x44,0,149,L171-_main
L171:
;Line#149 			{

 .stabn 0x44,0,150,L172-_main
L172:
;Line#150 				AD_8T_SUM_OLD = AD_8T_SUM;//数据变化跨度大则更新数据

 	;MOVI2 _AD_8T_SUM_OLD ,_AD_8T_SUM
	__SelectBANK _AD_8T_SUM
	MOV A, _AD_8T_SUM
	__SelectBANK _AD_8T_SUM_OLD
	MOV _AD_8T_SUM_OLD, A
	__SelectBANK _AD_8T_SUM
	MOV A, _AD_8T_SUM+1
	__SelectBANK _AD_8T_SUM_OLD
	MOV _AD_8T_SUM_OLD+1, A
.stabn 0xE0,0,3,L173-_main
L173:
.stabn 0x44,0,151,L174-_main
L174:
;Line#151 			}

L112:
.stabn 0x44,0,152,L175-_main
L175:
;Line#152 			AD_ONCE_VAL = AD_8T_SUM_OLD / 8u;

 	;RSH _AD_ONCE_VAL ,_AD_8T_SUM_OLD ,#3
	MOV A, #(_AD_ONCE_VAL)$M
	B0MOV H, A
	MOV A, #(_AD_ONCE_VAL)$L
	B0MOV L, A
	B0MOV Y, #(_AD_8T_SUM_OLD)$M
	B0MOV Z, #(_AD_8T_SUM_OLD)$L
	MOV A, #0x03
	CALL __Get2ByteRamToLArg
	CALL __SRULong2Ram
.stabn 0x44,0,154,L176-_main
L176:
;Line#154 			AD_8T_SUM=0u;

 	;MOVI2 _AD_8T_SUM ,#0
	__SelectBANK _AD_8T_SUM
	CLR _AD_8T_SUM
	CLR _AD_8T_SUM+1
.stabn 0xC0,0,3,L177-_main
L177:
.stabn 0x44,0,156,L178-_main
L178:
;Line#156 			for(LED_CNT=0u;LED_CNT<16u;LED_CNT++)

 	;MOVU1 _LED_CNT ,#0
	__SelectBANK _LED_CNT
	CLR _LED_CNT
	JMP L117
L114:
.stabn 0xC0,0,4,L179-_main
L179:
.stabn 0x44,0,157,L180-_main
L180:
;Line#157 			{			

 .stabn 0x44,0,158,L181-_main
L181:
	__SelectBANK _LED_CNT
	MOV A, _LED_CNT
	B0MOV Y, #(_TEMP_Table)$M
	B0MOV Z, #(_TEMP_Table)$L
;Line#158 				if(AD_ONCE_VAL > TEMP_Table[LED_CNT]) FLAG_LED_LEVEL = LED_CNT + 1u;

	CALL __Get2ByteRomUToReg
	__SelectBANK __SrcRArg0
	MOV __SrcRArg0, A
	;LE L118 ,_AD_ONCE_VAL ,W0:W1
	__SelectBANK _AD_ONCE_VAL
	MOV A, _AD_ONCE_VAL
	__SelectBANK __SrcLArg0
	MOV __SrcLArg0, A
	__SelectBANK _AD_ONCE_VAL
	MOV A, _AD_ONCE_VAL+1
	__SelectBANK __SrcLArg1
	MOV __SrcLArg1, A
	B0MOV A, R
	__SelectBANK __SrcRArg1
	MOV __SrcRArg1, A
	CALL __CmpULong
	JLE L118
.stabn 0x44,0,158,L182-_main
L182:
;Line#158 				if(AD_ONCE_VAL > TEMP_Table[LED_CNT]) FLAG_LED_LEVEL = LED_CNT + 1u;

 	;ADDU1 _FLAG_LED_LEVEL ,_LED_CNT ,#1
	MOV A, #0x01
	__SelectBANK _LED_CNT
	ADD A, _LED_CNT
	__SelectBANK _FLAG_LED_LEVEL
	MOV _FLAG_LED_LEVEL, A
L118:
.stabn 0xE0,0,4,L183-_main
L183:
.stabn 0x44,0,159,L184-_main
L184:
;Line#159 			} 

L115:
.stabn 0x44,0,156,L185-_main
L185:
;Line#156 			for(LED_CNT=0u;LED_CNT<16u;LED_CNT++)

 	;ADDU1 _LED_CNT ,_LED_CNT ,#1
	__SelectBANK _LED_CNT
	INCMS _LED_CNT
	NOP
L117:
.stabn 0x44,0,156,L186-_main
L186:
;Line#156 			for(LED_CNT=0u;LED_CNT<16u;LED_CNT++)

 	;LT L114 ,_LED_CNT ,#16
	__SelectBANK _LED_CNT
	MOV A, _LED_CNT
	SUB A, #0x10
	JLT L114
.stabn 0xE0,0,3,L187-_main
L187:
.stabn 0x44,0,161,L188-_main
L188:
;Line#161 		}

 .stabn 0xE0,0,2,L189-_main
L189:
.stabn 0x44,0,161,L190-_main
L190:
;Line#161 		}

L108:
.stabn 0xE0,0,1,L191-_main
L191:
.stabn 0x44,0,162,L192-_main
L192:
;Line#162 	}

L98:
.stabn 0x44,0,105,L193-_main
L193:
;Line#105 	while(1)

	JMP L97
.stabn 0xE0,0,0,L194-_main
L194:
.stabn 0x44,0,163,L195-_main
L195:
;Line#163 }

L96:
_main_end:
	CALL __ClearWatchDogTimer
	JMP _main_end

CALLTREE _main invoke _System_init,_TC0_init,_DELAY_US,_AD_NTC_IN,__SetRegTo2ByteRam,_RESULT_BUBBLING,__Get2ByteRamRam,__CmpULong,__Get2ByteRamToLArg,__SRULong2Ram,__Get2ByteRomUToReg

.stabs "RESULT_BUBBLING:F13",36,0,0,_RESULT_BUBBLING
_Function_RESULT_BUBBLING_code SEGMENT CODE INBANK USING _Function_RESULT_BUBBLING_data
_RESULT_BUBBLING:
.stabs "i:9",128,0,0,_RESULT_BUBBLING_data@0
.stabs "j:9",128,0,0,_RESULT_BUBBLING_data@1
.stabs "m:9",128,0,0,_RESULT_BUBBLING_data@2
.stabs "AD_ARRAY_ONCE_BUF:10",128,0,0,_RESULT_BUBBLING_data@3
.stabn 0xC0,0,0,L207-_RESULT_BUBBLING
L207:
.stabn 0x44,0,168,L208-_RESULT_BUBBLING
L208:
;Line#168 {	

 .stabn 0x44,0,171,L209-_RESULT_BUBBLING
L209:
;Line#171 	m=AD_RCE_TURNS;

 	;MOVU1 _RESULT_BUBBLING_data@2 ,_AD_RCE_TURNS
	__SelectBANK _AD_RCE_TURNS
	MOV A, _AD_RCE_TURNS
	__SelectBANK _RESULT_BUBBLING_data@2
	MOV _RESULT_BUBBLING_data@2, A
.stabn 0xC0,0,1,L210-_RESULT_BUBBLING
L210:
.stabn 0x44,0,172,L211-_RESULT_BUBBLING
L211:
;Line#172 	for(i=1;i<AD_RCE_TURNS;i++)//冒泡排序

 	;MOVU1 _RESULT_BUBBLING_data@0 ,#1
	MOV A, #0x01
	__SelectBANK _RESULT_BUBBLING_data@0
	MOV _RESULT_BUBBLING_data@0, A
	JMP L200
L197:
.stabn 0xC0,0,2,L212-_RESULT_BUBBLING
L212:
.stabn 0x44,0,173,L213-_RESULT_BUBBLING
L213:
;Line#173 	{

 .stabn 0x44,0,174,L214-_RESULT_BUBBLING
L214:
;Line#174 		m=m-1u;

 	;SUBU1 _RESULT_BUBBLING_data@2 ,_RESULT_BUBBLING_data@2 ,#1
	__SelectBANK _RESULT_BUBBLING_data@2
	DECMS _RESULT_BUBBLING_data@2
	NOP
.stabn 0xC0,0,3,L215-_RESULT_BUBBLING
L215:
.stabn 0x44,0,175,L216-_RESULT_BUBBLING
L216:
;Line#175 		for(j=0;j<m;j++)

 	;MOVU1 _RESULT_BUBBLING_data@1 ,#0
	__SelectBANK _RESULT_BUBBLING_data@1
	CLR _RESULT_BUBBLING_data@1
	JMP L204
L201:
.stabn 0xC0,0,4,L217-_RESULT_BUBBLING
L217:
.stabn 0x44,0,176,L218-_RESULT_BUBBLING
L218:
;Line#176 		{

 .stabn 0x44,0,177,L219-_RESULT_BUBBLING
L219:
;Line#177 			if(AD_ARRAY_ONCE[j]>AD_ARRAY_ONCE[j+1])

 	;LEA W0:W1 ,_AD_ARRAY_ONCE
	MOV A, #(_AD_ARRAY_ONCE)$L
	B0MOV W0, A
	MOV A, #(_AD_ARRAY_ONCE)$M
	B0MOV W1, A
	;CVUU2 W2:W3 ,_RESULT_BUBBLING_data@1
	__SelectBANK _RESULT_BUBBLING_data@1
	MOV A, _RESULT_BUBBLING_data@1
	B0MOV W2, A
	__SelectBANKCNST 0
	CLR W3
	;LSH W2:W3 ,W2:W3 ,#1
	B0BCLR FC
	__SelectBANKCNST 0
	RLCM W2
	__SelectBANKCNST 0
	RLCM W3
	;ADDP2 W2:W3 ,W0:W1 ,W2:W3
	B0MOV A, W2
	ADD A, #(_AD_ARRAY_ONCE)$L
	B0MOV Z, A
	MOV A, #(_AD_ARRAY_ONCE)$M
	ADC A, W3
	B0MOV Y, A
	;ADDU1 W4 ,_RESULT_BUBBLING_data@1 ,#1
	MOV A, #0x01
	__SelectBANK _RESULT_BUBBLING_data@1
	ADD A, _RESULT_BUBBLING_data@1
	;CVUU2 W4:W5 ,W4
	B0MOV W4, A
	__SelectBANKCNST 0
	CLR W5
	;LSH W4:W5 ,W4:W5 ,#1
	B0BCLR FC
	__SelectBANKCNST 0
	RLCM W4
	__SelectBANKCNST 0
	RLCM W5
	;ADDP2 W0:W1 ,W0:W1 ,W4:W5
	B0MOV A, W4
	B0ADD W0, A
	B0MOV A, W5
	__SelectBANKCNST 0
	ADC W1, A
	;LE L205 , *W2:W3 , *W0:W1
	B0MOV A, W1
	B0MOV R, A
	B0MOV A, W0
	CALL __Get2ByteRamRam
	CALL __CmpULong
	JLE L205
.stabn 0xC0,0,5,L220-_RESULT_BUBBLING
L220:
.stabn 0x44,0,178,L221-_RESULT_BUBBLING
L221:
;Line#178 			{

 .stabn 0x44,0,179,L222-_RESULT_BUBBLING
L222:
	__SelectBANK _RESULT_BUBBLING_data@1
	MOV A, _RESULT_BUBBLING_data@1
	B0MOV Y, #(_AD_ARRAY_ONCE)$M
	B0MOV Z, #(_AD_ARRAY_ONCE)$L
;Line#179 				AD_ARRAY_ONCE_BUF=AD_ARRAY_ONCE[j];

	CALL __Get2ByteRamToReg
	__SelectBANK _RESULT_BUBBLING_data@3
	MOV _RESULT_BUBBLING_data@3, A
	B0MOV A, R
	MOV _RESULT_BUBBLING_data@3+1, A
.stabn 0x44,0,180,L223-_RESULT_BUBBLING
L223:
;Line#180 				AD_ARRAY_ONCE[j]=AD_ARRAY_ONCE[j+1];

 	;LEA W0:W1 ,_AD_ARRAY_ONCE
	MOV A, #(_AD_ARRAY_ONCE)$L
	B0MOV W0, A
	MOV A, #(_AD_ARRAY_ONCE)$M
	B0MOV W1, A
	;CVUU2 W2:W3 ,_RESULT_BUBBLING_data@1
	__SelectBANK _RESULT_BUBBLING_data@1
	MOV A, _RESULT_BUBBLING_data@1
	B0MOV W2, A
	__SelectBANKCNST 0
	CLR W3
	;LSH W2:W3 ,W2:W3 ,#1
	B0BCLR FC
	__SelectBANKCNST 0
	RLCM W2
	__SelectBANKCNST 0
	RLCM W3
	;ADDP2 W2:W3 ,W0:W1 ,W2:W3
	B0MOV A, W2
	ADD A, #(_AD_ARRAY_ONCE)$L
	B0MOV W2, A
	MOV A, #(_AD_ARRAY_ONCE)$M
	ADC A, W3
	B0MOV W3, A
	;ADDU1 W4 ,_RESULT_BUBBLING_data@1 ,#1
	MOV A, #0x01
	__SelectBANK _RESULT_BUBBLING_data@1
	ADD A, _RESULT_BUBBLING_data@1
	;CVUU2 W4:W5 ,W4
	B0MOV W4, A
	__SelectBANKCNST 0
	CLR W5
	;LSH W4:W5 ,W4:W5 ,#1
	B0BCLR FC
	__SelectBANKCNST 0
	RLCM W4
	__SelectBANKCNST 0
	RLCM W5
	;ADDP2 W0:W1 ,W0:W1 ,W4:W5
	B0MOV A, W4
	B0ADD W0, A
	B0MOV A, W5
	__SelectBANKCNST 0
	ADC W1, A
	;MOVI2 *W2:W3 , *W0:W1
	B0MOV A, W1
	B0MOV Y, A
	B0MOV A, W0
	B0MOV Z, A
	CALL __Mov2ByteRamToReg
	B0MOV L, A
	B0MOV A, R
	B0MOV H, A
	B0MOV A, W3
	B0MOV Y, A
	B0MOV A, W2
	B0MOV Z, A
	B0MOV A, L
	B0MOV @YZ, A
	__SelectBANKCNST 0
	INCMS Z
	B0MOV A, H
	B0MOV @YZ, A
.stabn 0x44,0,181,L224-_RESULT_BUBBLING
L224:
;Line#181 				AD_ARRAY_ONCE[j+1]=AD_ARRAY_ONCE_BUF;

 	;ADDU1 W0 ,_RESULT_BUBBLING_data@1 ,#1
	MOV A, #0x01
	__SelectBANK _RESULT_BUBBLING_data@1
	ADD A, _RESULT_BUBBLING_data@1
	B0MOV W0, A
	B0MOV Y, #(_AD_ARRAY_ONCE)$M
	B0MOV Z, #(_AD_ARRAY_ONCE)$L
	B0ADD Z, A
	B0ADD Z, A
	__SelectBANK _RESULT_BUBBLING_data@3
	MOV A, _RESULT_BUBBLING_data@3+1
	B0MOV R, A
	MOV A, _RESULT_BUBBLING_data@3
	CALL __SetRegTo2ByteRam
.stabn 0xE0,0,5,L225-_RESULT_BUBBLING
L225:
.stabn 0x44,0,182,L226-_RESULT_BUBBLING
L226:
;Line#182 			}

L205:
.stabn 0xE0,0,4,L227-_RESULT_BUBBLING
L227:
.stabn 0x44,0,183,L228-_RESULT_BUBBLING
L228:
;Line#183 		}

L202:
.stabn 0x44,0,175,L229-_RESULT_BUBBLING
L229:
;Line#175 		for(j=0;j<m;j++)

 	;ADDU1 _RESULT_BUBBLING_data@1 ,_RESULT_BUBBLING_data@1 ,#1
	__SelectBANK _RESULT_BUBBLING_data@1
	INCMS _RESULT_BUBBLING_data@1
	NOP
L204:
.stabn 0x44,0,175,L230-_RESULT_BUBBLING
L230:
;Line#175 		for(j=0;j<m;j++)

 	;LT L201 ,_RESULT_BUBBLING_data@1 ,_RESULT_BUBBLING_data@2
	__SelectBANK _RESULT_BUBBLING_data@1
	MOV A, _RESULT_BUBBLING_data@1
	__SelectBANK _RESULT_BUBBLING_data@2
	SUB A, _RESULT_BUBBLING_data@2
	JLT L201
.stabn 0xE0,0,3,L231-_RESULT_BUBBLING
L231:
.stabn 0x44,0,184,L232-_RESULT_BUBBLING
L232:
;Line#184 	}

 .stabn 0xE0,0,2,L233-_RESULT_BUBBLING
L233:
.stabn 0x44,0,184,L234-_RESULT_BUBBLING
L234:
;Line#184 	}

L198:
.stabn 0x44,0,172,L235-_RESULT_BUBBLING
L235:
;Line#172 	for(i=1;i<AD_RCE_TURNS;i++)//冒泡排序

 	;ADDU1 _RESULT_BUBBLING_data@0 ,_RESULT_BUBBLING_data@0 ,#1
	__SelectBANK _RESULT_BUBBLING_data@0
	INCMS _RESULT_BUBBLING_data@0
	NOP
L200:
.stabn 0x44,0,172,L236-_RESULT_BUBBLING
L236:
;Line#172 	for(i=1;i<AD_RCE_TURNS;i++)//冒泡排序

 	;LT L197 ,_RESULT_BUBBLING_data@0 ,_AD_RCE_TURNS
	__SelectBANK _RESULT_BUBBLING_data@0
	MOV A, _RESULT_BUBBLING_data@0
	__SelectBANK _AD_RCE_TURNS
	SUB A, _AD_RCE_TURNS
	JLT L197
.stabn 0xE0,0,1,L237-_RESULT_BUBBLING
L237:
.stabn 0x44,0,185,L238-_RESULT_BUBBLING
L238:
;Line#185 }

 .stabn 0xE0,0,0,L239-_RESULT_BUBBLING
L239:
.stabn 0x44,0,185,L240-_RESULT_BUBBLING
L240:
;Line#185 }

L196:
	RET

CALLTREE _RESULT_BUBBLING invoke __Get2ByteRamRam,__CmpULong,__Get2ByteRamToReg,__Mov2ByteRamToReg,__SetRegTo2ByteRam

.stabs "AD_NTC_IN:F13",36,0,0,_AD_NTC_IN
_Function_AD_NTC_IN_code SEGMENT CODE INBANK USING _Function_AD_NTC_IN_data
_AD_NTC_IN:
.stabs "temp_hi:9",128,0,0,_AD_NTC_IN_data@0
.stabs "temp_mid:9",128,0,0,_AD_NTC_IN_data@1
.stabn 0xC0,0,0,L254-_AD_NTC_IN
L254:
.stabn 0x44,0,190,L255-_AD_NTC_IN
L255:
;Line#190 {

 .stabn 0x44,0,192,L256-_AD_NTC_IN
L256:
;Line#192 	AD_LONG_BUF.AD_RESULT=0u;//AD缓存清0

 	;MOVI2 _AD_LONG_BUF+0 ,#0
	__SelectBANK _AD_LONG_BUF
	CLR _AD_LONG_BUF+0
	CLR _AD_LONG_BUF+0+1
.stabn 0x44,0,193,L257-_AD_NTC_IN
L257:
;Line#193 	ADM=0u;

 	;MOVU1 0xB1 ,#0
	__SelectBANKCNST 0
	CLR (0xB1 & 0xFF)
.stabn 0x44,0,194,L258-_AD_NTC_IN
L258:
;Line#194 	ADR=0x10u;	//XnXn 0000-nn:00=Fcpu/16;01=Fcpu/8;10=Fcpu;11=Fcpu/2

 	;MOVU1 0xB3 ,#16
	MOV A, #0x10
	B0MOV 0xB3, A
.stabn 0x44,0,195,L259-_AD_NTC_IN
L259:
;Line#195 	P4M=0x17u;	//0001 0111-P43输入模式；1=out;0=in 

 	;MOVU1 0xC4 ,#23
	MOV A, #0x17
	B0MOV 0xC4, A
.stabn 0x44,0,196,L260-_AD_NTC_IN
L260:
;Line#196 	P4UR=0u;	//0000 0000-1=pull	0=no pull

 	;MOVU1 0xE4 ,#0
	__SelectBANKCNST 0
	CLR (0xE4 & 0xFF)
.stabn 0x44,0,198,L261-_AD_NTC_IN
L261:
;Line#198 	VREFH=0x03u;//nxxx xxmm-mm:00=2V;01=3V;10=4V;11=VDD-基准

 	;MOVU1 0xAF ,#3
	MOV A, #0x03
	B0MOV 0xAF, A
.stabn 0x44,0,199,L262-_AD_NTC_IN
L262:
;Line#199 	P4CON=0x08u;//xxx0 1000-	0=GBIO;1=ADIN

 	;MOVU1 0xAE ,#8
	MOV A, #0x08
	B0MOV 0xAE, A
.stabn 0x44,0,200,L263-_AD_NTC_IN
L263:
;Line#200 	FADENB=1u;	//EN ADENB

 	;MOVX1 0xB1.7 ,#1
	B0BSET 0xB1.7
.stabn 0x44,0,201,L264-_AD_NTC_IN
L264:
;Line#201 	ADM=0x03u|ADM;

 	;ORU1 0xB1 ,0xB1 ,#3
	MOV A, #0x03
	__SelectBANKCNST 0
	OR (0xB1 & 0xFF), A
.stabn 0x44,0,203,L265-_AD_NTC_IN
L265:
;Line#203 	FGCHS=1u;	//1=open AIN 通道;0=close

 	;MOVX1 0xB1.4 ,#1
	B0BSET 0xB1.4
.stabn 0x44,0,204,L266-_AD_NTC_IN
L266:
;Line#204 	DELAY_US(50u);

 	;PUSH _DELAY_US_arg@0 ,#50
	MOV A, #0x32
	__SelectBANK _DELAY_US_arg@0
	MOV _DELAY_US_arg@0, A
	;CALLV _DELAY_US
	CALL _DELAY_US
.stabn 0x44,0,206,L267-_AD_NTC_IN
L267:
;Line#206 	FADCIRQ=0u;	//;清ADC中断请求

 	;MOVX1 0xC8.7 ,#0
	B0BCLR 0xC8.7
.stabn 0x44,0,207,L268-_AD_NTC_IN
L268:
;Line#207 	FADCIEN=0u;	//;关闭中断使能

 	;MOVX1 0xC9.7 ,#0
	B0BCLR 0xC9.7
.stabn 0x44,0,209,L269-_AD_NTC_IN
L269:
;Line#209 	FGIE=0u;

 	;MOVX1 0xDF.7 ,#0
	B0BCLR 0xDF.7
.stabn 0x44,0,210,L270-_AD_NTC_IN
L270:
;Line#210 	FEOC=0u;	//

 	;MOVX1 0xB1.5 ,#0
	B0BCLR 0xB1.5
.stabn 0x44,0,211,L271-_AD_NTC_IN
L271:
;Line#211 	FADS=1u;	//start AD 

 	;MOVX1 0xB1.6 ,#1
	B0BSET 0xB1.6
	JMP L244
L243:
.stabn 0xC0,0,1,L272-_AD_NTC_IN
L272:
.stabn 0x44,0,213,L273-_AD_NTC_IN
L273:
;Line#213 	{

 .stabn 0x44,0,214,L274-_AD_NTC_IN
L274:
;Line#214 		WDTR=0x5Au;	//等待AD转换结束

 	;MOVU1 0xCC ,#90
	MOV A, #0x5a
	B0MOV 0xCC, A
.stabn 0xE0,0,1,L275-_AD_NTC_IN
L275:
.stabn 0x44,0,215,L276-_AD_NTC_IN
L276:
;Line#215 	}

L244:
.stabn 0x44,0,212,L277-_AD_NTC_IN
L277:
;Line#212 	while(FEOC==RESET)

 	;EQ L243 ,0xB1.5 ,#0
	B0BTS1 0xB1.5
	JMP L243
.stabn 0x44,0,216,L278-_AD_NTC_IN
L278:
;Line#216 	FGIE=1u;

 	;MOVX1 0xDF.7 ,#1
	B0BSET 0xDF.7
.stabn 0x44,0,218,L279-_AD_NTC_IN
L279:
;Line#218 	temp_mid=ADB;	//AD高8位(ADB11~ADB4)

 	;MOVU1 _AD_NTC_IN_data@1 ,0xB2
	B0MOV A, 0xB2
	__SelectBANK _AD_NTC_IN_data@1
	MOV _AD_NTC_IN_data@1, A
.stabn 0x44,0,219,L280-_AD_NTC_IN
L280:
;Line#219 	temp_hi=ADB;

 	;MOVU1 _AD_NTC_IN_data@0 ,0xB2
	__SelectBANK _AD_NTC_IN_data@0
	MOV _AD_NTC_IN_data@0, A
.stabn 0x44,0,220,L281-_AD_NTC_IN
L281:
;Line#220 	temp_hi=temp_hi>>4u;	//AD(xxxx,ADB11~ADB8)

 	;RSH _AD_NTC_IN_data@0 ,_AD_NTC_IN_data@0 ,#4
	MOV A, #(_AD_NTC_IN_data@0)$M
	B0MOV H, A
	MOV A, #(_AD_NTC_IN_data@0)$L
	B0MOV L, A
	B0MOV Y, #(_AD_NTC_IN_data@0)$M
	B0MOV Z, #(_AD_NTC_IN_data@0)$L
	MOV A, #0x04
	CALL __Get1ByteRamToLArg
	CALL __SRUInt2Ram
.stabn 0x44,0,222,L282-_AD_NTC_IN
L282:
;Line#222 	AD_LONG_BUF.AD_SHORT_BUF.AD_RESULT_LO=ADR & 0x0Fu; //取AD数据低4位(xxxx,ADB3~ADB0)

 	;ANDU1 _AD_LONG_BUF+0+0 ,0xB3 ,#15
	B0MOV A, 0xB3
	AND A, #0x0f
	__SelectBANK _AD_LONG_BUF
	MOV _AD_LONG_BUF+0+0, A
.stabn 0x44,0,224,L283-_AD_NTC_IN
L283:
;Line#224 	temp_mid=temp_mid<<4u;	//AD(ADB7~ADB4,xxxx)

 	;LSH _AD_NTC_IN_data@1 ,_AD_NTC_IN_data@1 ,#4
	B0BCLR FC
	__SelectBANK _AD_NTC_IN_data@1
	RLCM _AD_NTC_IN_data@1
	B0BCLR FC
	RLCM _AD_NTC_IN_data@1
	B0BCLR FC
	RLCM _AD_NTC_IN_data@1
	B0BCLR FC
	RLCM _AD_NTC_IN_data@1
.stabn 0x44,0,225,L284-_AD_NTC_IN
L284:
;Line#225 	AD_LONG_BUF.AD_SHORT_BUF.AD_RESULT_LO=AD_LONG_BUF.AD_SHORT_BUF.AD_RESULT_LO |(temp_mid & 0xF0u);	//(ADB7~ADB0)

 	;ANDU1 W0 ,_AD_NTC_IN_data@1 ,#240
	MOV A, _AD_NTC_IN_data@1
	AND A, #0xf0
	;ORU1 _AD_LONG_BUF+0+0 ,W0 ,_AD_LONG_BUF+0+0
	__SelectBANK _AD_LONG_BUF
	OR _AD_LONG_BUF+0+0, A
.stabn 0x44,0,227,L285-_AD_NTC_IN
L285:
;Line#227 	AD_LONG_BUF.AD_SHORT_BUF.AD_RESULT_HI=temp_hi & 0x0Fu;												//(ADB11~ADB8)	

 	;ANDU1 _AD_LONG_BUF+0+1 ,_AD_NTC_IN_data@0 ,#15
	__SelectBANK _AD_NTC_IN_data@0
	MOV A, _AD_NTC_IN_data@0
	AND A, #0x0f
	__SelectBANK _AD_LONG_BUF
	MOV _AD_LONG_BUF+0+1, A
.stabn 0xE0,0,0,L286-_AD_NTC_IN
L286:
.stabn 0x44,0,228,L287-_AD_NTC_IN
L287:
;Line#228 }

L241:
	RET

CALLTREE _AD_NTC_IN invoke _DELAY_US,__Get1ByteRamToLArg,__SRUInt2Ram

.stabs "System_init:F13",36,0,0,_System_init
_Function_System_init_code SEGMENT CODE INBANK USING _Function_System_init_data
_System_init:
.stabn 0xC0,0,0,L289-_System_init
L289:
.stabn 0x44,0,233,L290-_System_init
L290:
;Line#233 {

 .stabn 0x44,0,235,L291-_System_init
L291:
;Line#235 	P0=0x00u;	//0000 0000

 	;MOVU1 0xD0 ,#0
	__SelectBANKCNST 0
	CLR (0xD0 & 0xFF)
.stabn 0x44,0,236,L292-_System_init
L292:
;Line#236 	P0M=0x0fu;	//0000 1111  1:out 	;0:in

 	;MOVU1 0xB8 ,#15
	MOV A, #0x0f
	B0MOV 0xB8, A
.stabn 0x44,0,237,L293-_System_init
L293:
;Line#237 	P0UR=0x00u;	//0000 0000  1:en	;0:dis pull

 	;MOVU1 0xE0 ,#0
	__SelectBANKCNST 0
	CLR (0xE0 & 0xFF)
.stabn 0x44,0,238,L294-_System_init
L294:
;Line#238 	P0=0x00u;	//0000 0000

 	;MOVU1 0xD0 ,#0
	__SelectBANKCNST 0
	CLR (0xD0 & 0xFF)
.stabn 0x44,0,241,L295-_System_init
L295:
;Line#241 	P4=0x00u;	//0000 0000

 	;MOVU1 0xD4 ,#0
	__SelectBANKCNST 0
	CLR (0xD4 & 0xFF)
.stabn 0x44,0,242,L296-_System_init
L296:
;Line#242 	P4M=0x17u;	//0001 0111  1:out 	;0:in

 	;MOVU1 0xC4 ,#23
	MOV A, #0x17
	B0MOV 0xC4, A
.stabn 0x44,0,243,L297-_System_init
L297:
;Line#243 	P4UR=0x00u;	//0000 0000  1:en	;0:dis pull

 	;MOVU1 0xE4 ,#0
	__SelectBANKCNST 0
	CLR (0xE4 & 0xFF)
.stabn 0x44,0,244,L298-_System_init
L298:
;Line#244 	P4=0x00u;	//0000 0000

 	;MOVU1 0xD4 ,#0
	__SelectBANKCNST 0
	CLR (0xD4 & 0xFF)
.stabn 0x44,0,247,L299-_System_init
L299:
;Line#247 	P5=0x00u;	//0000 0000

 	;MOVU1 0xD5 ,#0
	__SelectBANKCNST 0
	CLR (0xD5 & 0xFF)
.stabn 0x44,0,248,L300-_System_init
L300:
;Line#248 	P5M=0x18u;	//0001 1000  1:out 	;0:in

 	;MOVU1 0xC5 ,#24
	MOV A, #0x18
	B0MOV 0xC5, A
.stabn 0x44,0,249,L301-_System_init
L301:
;Line#249 	P5UR=0x00u;	//0000 0000  1:en	;0:dis pull

 	;MOVU1 0xE5 ,#0
	__SelectBANKCNST 0
	CLR (0xE5 & 0xFF)
.stabn 0x44,0,250,L302-_System_init
L302:
;Line#250 	P5=0x00u;	//0000 0000

 	;MOVU1 0xD5 ,#0
	__SelectBANKCNST 0
	CLR (0xD5 & 0xFF)
.stabn 0x44,0,252,L303-_System_init
L303:
;Line#252 	F_DIG1_DIG2=0u;		//两个公共端扫描标志位

 	;MOVX1 _F_DIG1_DIG2 ,#0
	__SelectBANK _F_DIG1_DIG2
	BCLR _F_DIG1_DIG2
.stabn 0x44,0,253,L304-_System_init
L304:
;Line#253 	AD_JUDGE_BASE=0u;	//AD采样时间计数器

 	;MOVU1 _AD_JUDGE_BASE ,#0
	__SelectBANK _AD_JUDGE_BASE
	CLR _AD_JUDGE_BASE
.stabn 0x44,0,254,L305-_System_init
L305:
;Line#254 	AD_RCE_TURNS=0u;

 	;MOVU1 _AD_RCE_TURNS ,#0
	__SelectBANK _AD_RCE_TURNS
	CLR _AD_RCE_TURNS
.stabn 0x44,0,255,L306-_System_init
L306:
;Line#255 	F_AD_SUCCESS=0u;

 	;MOVX1 _F_AD_SUCCESS ,#0
	__SelectBANK _F_AD_SUCCESS
	BCLR _F_AD_SUCCESS
.stabn 0x44,0,256,L307-_System_init
L307:
;Line#256 	AD_8_TIMES=0u;

 	;MOVU1 _AD_8_TIMES ,#0
	__SelectBANK _AD_8_TIMES
	CLR _AD_8_TIMES
.stabn 0x44,0,257,L308-_System_init
L308:
;Line#257 	AD_8T_SUM=0u;

 	;MOVI2 _AD_8T_SUM ,#0
	__SelectBANK _AD_8T_SUM
	CLR _AD_8T_SUM
	CLR _AD_8T_SUM+1
.stabn 0x44,0,258,L309-_System_init
L309:
;Line#258 	AD_8T_SUM_OLD=0u;

 	;MOVI2 _AD_8T_SUM_OLD ,#0
	__SelectBANK _AD_8T_SUM_OLD
	CLR _AD_8T_SUM_OLD
	CLR _AD_8T_SUM_OLD+1
.stabn 0x44,0,259,L310-_System_init
L310:
;Line#259 	AD_ONCE_VAL=0u;

 	;MOVI2 _AD_ONCE_VAL ,#0
	__SelectBANK _AD_ONCE_VAL
	CLR _AD_ONCE_VAL
	CLR _AD_ONCE_VAL+1
.stabn 0x44,0,260,L311-_System_init
L311:
;Line#260 	FLAG_LED_LEVEL=0u;

 	;MOVU1 _FLAG_LED_LEVEL ,#0
	__SelectBANK _FLAG_LED_LEVEL
	CLR _FLAG_LED_LEVEL
.stabn 0xE0,0,0,L312-_System_init
L312:
.stabn 0x44,0,262,L313-_System_init
L313:
;Line#262 }

L288:
	RET
.stabs "TC0_init:F13",36,0,0,_TC0_init
_Function_TC0_init_code SEGMENT CODE INBANK USING _Function_TC0_init_data
_TC0_init:
.stabn 0xC0,0,0,L315-_TC0_init
L315:
.stabn 0x44,0,267,L316-_TC0_init
L316:
;Line#267 {

 .stabn 0x44,0,271,L317-_TC0_init
L317:
;Line#271 	INTEN=0x00u;//中断使能

 	;MOVU1 0xC9 ,#0
	__SelectBANKCNST 0
	CLR (0xC9 & 0xFF)
.stabn 0x44,0,272,L318-_TC0_init
L318:
;Line#272 	T0M=0x0Cu;	//TC0时钟为Fosc

 	;MOVU1 0xD8 ,#12
	MOV A, #0x0c
	B0MOV 0xD8, A
.stabn 0x44,0,273,L319-_TC0_init
L319:
;Line#273   	TC0M=0x14u;	//;自动装载  TC0RATE=Fosc/64

 	;MOVU1 0xDA ,#20
	MOV A, #0x14
	B0MOV 0xDA, A
.stabn 0x44,0,275,L320-_TC0_init
L320:
;Line#275 	TC0C=0x00u;	//

 	;MOVU1 0xDB ,#0
	__SelectBANKCNST 0
	CLR (0xDB & 0xFF)
.stabn 0x44,0,276,L321-_TC0_init
L321:
;Line#276 	TC0R=0x00u;	//

 	;MOVU1 0xCD ,#0
	__SelectBANKCNST 0
	CLR (0xCD & 0xFF)
.stabn 0x44,0,278,L322-_TC0_init
L322:
;Line#278 	FTC0IRQ=0u;

 	;MOVX1 0xC8.5 ,#0
	B0BCLR 0xC8.5
.stabn 0x44,0,279,L323-_TC0_init
L323:
;Line#279 	FTC0IEN=1u;

 	;MOVX1 0xC9.5 ,#1
	B0BSET 0xC9.5
.stabn 0x44,0,280,L324-_TC0_init
L324:
;Line#280 	FTC0ENB=1u;

 	;MOVX1 0xDA.7 ,#1
	B0BSET 0xDA.7
.stabn 0x44,0,281,L325-_TC0_init
L325:
;Line#281 	FGIE=1u;

 	;MOVX1 0xDF.7 ,#1
	B0BSET 0xDF.7
.stabn 0xE0,0,0,L326-_TC0_init
L326:
.stabn 0x44,0,282,L327-_TC0_init
L327:
;Line#282 }

L314:
	RET
.stabs "SEND_DAT_TO_PC:F13",36,0,0,_SEND_DAT_TO_PC
_Function_SEND_DAT_TO_PC_code SEGMENT CODE INBANK USING _Function_SEND_DAT_TO_PC_data
_SEND_DAT_TO_PC:
.stabs "SEND_DAT:p10",160,0,0,_SEND_DAT_TO_PC_arg@0
.stabs "TXCNT:9",128,0,0,_SEND_DAT_TO_PC_data@0
.stabs "TXDATA:9",128,0,0,_SEND_DAT_TO_PC_data@1
.stabn 0xC0,0,0,L342-_SEND_DAT_TO_PC
L342:
.stabn 0x44,0,288,L343-_SEND_DAT_TO_PC
L343:
;Line#288 {

 .stabn 0x44,0,290,L344-_SEND_DAT_TO_PC
L344:
;Line#290 	TXDATA = HIBYTE(SEND_DAT);

 	;MOVU1 _SEND_DAT_TO_PC_data@1 ,_SEND_DAT_TO_PC_arg@0+1
	__SelectBANK _SEND_DAT_TO_PC_arg@0
	MOV A, _SEND_DAT_TO_PC_arg@0+1
	__SelectBANK _SEND_DAT_TO_PC_data@1
	MOV _SEND_DAT_TO_PC_data@1, A
.stabn 0xC0,0,1,L345-_SEND_DAT_TO_PC
L345:
.stabn 0x44,0,291,L346-_SEND_DAT_TO_PC
L346:
;Line#291 	for(TXCNT=0u;TXCNT<8u;TXCNT++)

 	;MOVU1 _SEND_DAT_TO_PC_data@0 ,#0
	__SelectBANK _SEND_DAT_TO_PC_data@0
	CLR _SEND_DAT_TO_PC_data@0
	JMP L333
L330:
.stabn 0xC0,0,2,L347-_SEND_DAT_TO_PC
L347:
.stabn 0x44,0,292,L348-_SEND_DAT_TO_PC
L348:
;Line#292 	{

 .stabn 0x44,0,293,L349-_SEND_DAT_TO_PC
L349:
;Line#293 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

 	;ANDU1 W0 ,_SEND_DAT_TO_PC_data@1 ,#128
	__SelectBANK _SEND_DAT_TO_PC_data@1
	MOV A, _SEND_DAT_TO_PC_data@1
	AND A, #0x80
	;EQ L334 ,W0 ,#0
	AND A, #0xFF
	JEQ L334
.stabn 0xC0,0,3,L350-_SEND_DAT_TO_PC
L350:
.stabn 0x44,0,293,L351-_SEND_DAT_TO_PC
L351:
;Line#293 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

 .stabn 0x44,0,293,L352-_SEND_DAT_TO_PC
L352:
;Line#293 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

 	;MOVX1 0xD4.4 ,#1
	B0BSET 0xD4.4
.stabn 0x44,0,293,L353-_SEND_DAT_TO_PC
L353:
;Line#293 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

 	;PUSH _DELAY_US_arg@0 ,#10
	MOV A, #0x0a
	__SelectBANK _DELAY_US_arg@0
	MOV _DELAY_US_arg@0, A
	;CALLV _DELAY_US
	CALL _DELAY_US
.stabn 0x44,0,293,L354-_SEND_DAT_TO_PC
L354:
;Line#293 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

 	;MOVX1 0xD4.4 ,#0
	B0BCLR 0xD4.4
.stabn 0x44,0,293,L355-_SEND_DAT_TO_PC
L355:
;Line#293 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

 	;PUSH _DELAY_US_arg@0 ,#4
	MOV A, #0x04
	__SelectBANK _DELAY_US_arg@0
	MOV _DELAY_US_arg@0, A
	;CALLV _DELAY_US
	CALL _DELAY_US
.stabn 0xE0,0,3,L356-_SEND_DAT_TO_PC
L356:
.stabn 0x44,0,293,L357-_SEND_DAT_TO_PC
L357:
;Line#293 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

	JMP L335
L334:
.stabn 0xC0,0,3,L358-_SEND_DAT_TO_PC
L358:
.stabn 0x44,0,294,L359-_SEND_DAT_TO_PC
L359:
;Line#294 		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}

 .stabn 0x44,0,294,L360-_SEND_DAT_TO_PC
L360:
;Line#294 		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}

 	;MOVX1 0xD4.4 ,#1
	B0BSET 0xD4.4
.stabn 0x44,0,294,L361-_SEND_DAT_TO_PC
L361:
;Line#294 		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}

 	;PUSH _DELAY_US_arg@0 ,#4
	MOV A, #0x04
	__SelectBANK _DELAY_US_arg@0
	MOV _DELAY_US_arg@0, A
	;CALLV _DELAY_US
	CALL _DELAY_US
.stabn 0x44,0,294,L362-_SEND_DAT_TO_PC
L362:
;Line#294 		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}

 	;MOVX1 0xD4.4 ,#0
	B0BCLR 0xD4.4
.stabn 0x44,0,294,L363-_SEND_DAT_TO_PC
L363:
;Line#294 		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}

 	;PUSH _DELAY_US_arg@0 ,#10
	MOV A, #0x0a
	__SelectBANK _DELAY_US_arg@0
	MOV _DELAY_US_arg@0, A
	;CALLV _DELAY_US
	CALL _DELAY_US
.stabn 0xE0,0,3,L364-_SEND_DAT_TO_PC
L364:
.stabn 0x44,0,294,L365-_SEND_DAT_TO_PC
L365:
;Line#294 		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}

L335:
.stabn 0x44,0,295,L366-_SEND_DAT_TO_PC
L366:
;Line#295 		TXDATA=TXDATA<<1u;	//左移1位

 	;LSH _SEND_DAT_TO_PC_data@1 ,_SEND_DAT_TO_PC_data@1 ,#1
	B0BCLR FC
	__SelectBANK _SEND_DAT_TO_PC_data@1
	RLCM _SEND_DAT_TO_PC_data@1
.stabn 0xE0,0,2,L367-_SEND_DAT_TO_PC
L367:
.stabn 0x44,0,296,L368-_SEND_DAT_TO_PC
L368:
;Line#296 	}

L331:
.stabn 0x44,0,291,L369-_SEND_DAT_TO_PC
L369:
;Line#291 	for(TXCNT=0u;TXCNT<8u;TXCNT++)

 	;ADDU1 _SEND_DAT_TO_PC_data@0 ,_SEND_DAT_TO_PC_data@0 ,#1
	__SelectBANK _SEND_DAT_TO_PC_data@0
	INCMS _SEND_DAT_TO_PC_data@0
	NOP
L333:
.stabn 0x44,0,291,L370-_SEND_DAT_TO_PC
L370:
;Line#291 	for(TXCNT=0u;TXCNT<8u;TXCNT++)

 	;LT L330 ,_SEND_DAT_TO_PC_data@0 ,#8
	__SelectBANK _SEND_DAT_TO_PC_data@0
	MOV A, _SEND_DAT_TO_PC_data@0
	SUB A, #0x08
	JLT L330
.stabn 0xE0,0,1,L371-_SEND_DAT_TO_PC
L371:
.stabn 0x44,0,297,L372-_SEND_DAT_TO_PC
L372:
;Line#297 	TXDATA = SEND_DAT;

 .stabn 0x44,0,297,L373-_SEND_DAT_TO_PC
L373:
;Line#297 	TXDATA = SEND_DAT;

 	;LODI1 _SEND_DAT_TO_PC_data@1 ,_SEND_DAT_TO_PC_arg@0
	__SelectBANK _SEND_DAT_TO_PC_arg@0
	MOV A, _SEND_DAT_TO_PC_arg@0
	__SelectBANK _SEND_DAT_TO_PC_data@1
	MOV _SEND_DAT_TO_PC_data@1, A
.stabn 0xC0,0,1,L374-_SEND_DAT_TO_PC
L374:
.stabn 0x44,0,298,L375-_SEND_DAT_TO_PC
L375:
;Line#298 	for(TXCNT=0u;TXCNT<8u;TXCNT++)

 	;MOVU1 _SEND_DAT_TO_PC_data@0 ,#0
	__SelectBANK _SEND_DAT_TO_PC_data@0
	CLR _SEND_DAT_TO_PC_data@0
	JMP L339
L336:
.stabn 0xC0,0,2,L376-_SEND_DAT_TO_PC
L376:
.stabn 0x44,0,299,L377-_SEND_DAT_TO_PC
L377:
;Line#299 	{

 .stabn 0x44,0,300,L378-_SEND_DAT_TO_PC
L378:
;Line#300 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

 	;ANDU1 W0 ,_SEND_DAT_TO_PC_data@1 ,#128
	__SelectBANK _SEND_DAT_TO_PC_data@1
	MOV A, _SEND_DAT_TO_PC_data@1
	AND A, #0x80
	;EQ L340 ,W0 ,#0
	AND A, #0xFF
	JEQ L340
.stabn 0xC0,0,3,L379-_SEND_DAT_TO_PC
L379:
.stabn 0x44,0,300,L380-_SEND_DAT_TO_PC
L380:
;Line#300 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

 .stabn 0x44,0,300,L381-_SEND_DAT_TO_PC
L381:
;Line#300 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

 	;MOVX1 0xD4.4 ,#1
	B0BSET 0xD4.4
.stabn 0x44,0,300,L382-_SEND_DAT_TO_PC
L382:
;Line#300 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

 	;PUSH _DELAY_US_arg@0 ,#10
	MOV A, #0x0a
	__SelectBANK _DELAY_US_arg@0
	MOV _DELAY_US_arg@0, A
	;CALLV _DELAY_US
	CALL _DELAY_US
.stabn 0x44,0,300,L383-_SEND_DAT_TO_PC
L383:
;Line#300 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

 	;MOVX1 0xD4.4 ,#0
	B0BCLR 0xD4.4
.stabn 0x44,0,300,L384-_SEND_DAT_TO_PC
L384:
;Line#300 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

 	;PUSH _DELAY_US_arg@0 ,#4
	MOV A, #0x04
	__SelectBANK _DELAY_US_arg@0
	MOV _DELAY_US_arg@0, A
	;CALLV _DELAY_US
	CALL _DELAY_US
.stabn 0xE0,0,3,L385-_SEND_DAT_TO_PC
L385:
.stabn 0x44,0,300,L386-_SEND_DAT_TO_PC
L386:
;Line#300 		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1

	JMP L341
L340:
.stabn 0xC0,0,3,L387-_SEND_DAT_TO_PC
L387:
.stabn 0x44,0,301,L388-_SEND_DAT_TO_PC
L388:
;Line#301 		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}

 .stabn 0x44,0,301,L389-_SEND_DAT_TO_PC
L389:
;Line#301 		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}

 	;MOVX1 0xD4.4 ,#1
	B0BSET 0xD4.4
.stabn 0x44,0,301,L390-_SEND_DAT_TO_PC
L390:
;Line#301 		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}

 	;PUSH _DELAY_US_arg@0 ,#4
	MOV A, #0x04
	__SelectBANK _DELAY_US_arg@0
	MOV _DELAY_US_arg@0, A
	;CALLV _DELAY_US
	CALL _DELAY_US
.stabn 0x44,0,301,L391-_SEND_DAT_TO_PC
L391:
;Line#301 		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}

 	;MOVX1 0xD4.4 ,#0
	B0BCLR 0xD4.4
.stabn 0x44,0,301,L392-_SEND_DAT_TO_PC
L392:
;Line#301 		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}

 	;PUSH _DELAY_US_arg@0 ,#10
	MOV A, #0x0a
	__SelectBANK _DELAY_US_arg@0
	MOV _DELAY_US_arg@0, A
	;CALLV _DELAY_US
	CALL _DELAY_US
.stabn 0xE0,0,3,L393-_SEND_DAT_TO_PC
L393:
.stabn 0x44,0,301,L394-_SEND_DAT_TO_PC
L394:
;Line#301 		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}

L341:
.stabn 0x44,0,302,L395-_SEND_DAT_TO_PC
L395:
;Line#302 		TXDATA=TXDATA<<1u;	//左移1位

 	;LSH _SEND_DAT_TO_PC_data@1 ,_SEND_DAT_TO_PC_data@1 ,#1
	B0BCLR FC
	__SelectBANK _SEND_DAT_TO_PC_data@1
	RLCM _SEND_DAT_TO_PC_data@1
.stabn 0xE0,0,2,L396-_SEND_DAT_TO_PC
L396:
.stabn 0x44,0,303,L397-_SEND_DAT_TO_PC
L397:
;Line#303 	}

L337:
.stabn 0x44,0,298,L398-_SEND_DAT_TO_PC
L398:
;Line#298 	for(TXCNT=0u;TXCNT<8u;TXCNT++)

 	;ADDU1 _SEND_DAT_TO_PC_data@0 ,_SEND_DAT_TO_PC_data@0 ,#1
	__SelectBANK _SEND_DAT_TO_PC_data@0
	INCMS _SEND_DAT_TO_PC_data@0
	NOP
L339:
.stabn 0x44,0,298,L399-_SEND_DAT_TO_PC
L399:
;Line#298 	for(TXCNT=0u;TXCNT<8u;TXCNT++)

 	;LT L336 ,_SEND_DAT_TO_PC_data@0 ,#8
	__SelectBANK _SEND_DAT_TO_PC_data@0
	MOV A, _SEND_DAT_TO_PC_data@0
	SUB A, #0x08
	JLT L336
.stabn 0xE0,0,1,L400-_SEND_DAT_TO_PC
L400:
.stabn 0x44,0,304,L401-_SEND_DAT_TO_PC
L401:
;Line#304 }

 .stabn 0xE0,0,0,L402-_SEND_DAT_TO_PC
L402:
.stabn 0x44,0,304,L403-_SEND_DAT_TO_PC
L403:
;Line#304 }

L328:
	RET

CALLTREE _SEND_DAT_TO_PC invoke _DELAY_US

.stabs "DELAY_US:F13",36,0,0,_DELAY_US
_Function_DELAY_US_code SEGMENT CODE INBANK USING _Function_DELAY_US_data
_DELAY_US:
.stabs "DELAY_CNT:p9",160,0,0,_DELAY_US_arg@0
.stabn 0xC0,0,0,L408-_DELAY_US
L408:
.stabn 0x44,0,309,L409-_DELAY_US
L409:
;Line#309 {

L405:
.stabn 0x44,0,310,L410-_DELAY_US
L410:
;Line#310     while(DELAY_CNT--);

L406:
.stabn 0x44,0,310,L411-_DELAY_US
L411:
;Line#310     while(DELAY_CNT--);

 	;MOVI1 W0 ,_DELAY_US_arg@0
	__SelectBANK _DELAY_US_arg@0
	MOV A, _DELAY_US_arg@0
	B0MOV W0, A
	;SUBU1 _DELAY_US_arg@0 ,W0 ,#1
	SUB A, #0x01
	MOV _DELAY_US_arg@0, A
	;NEI1 L405 ,W0 ,#0
	B0MOV A, W0
	CMPRS A, #0x00
	JMP L405
.stabn 0xE0,0,0,L412-_DELAY_US
L412:
.stabn 0x44,0,311,L413-_DELAY_US
L413:
;Line#311 }//End of  DELAY_US();

L404:
	RET
.stabs "_AD_Struct_RESULT_:T16=s2AD_RESULT_LO:9,0,8;AD_RESULT_HI:9,8,8;;",128,0,0,0
.stabs "_AD_Union_RESULT_:T17=u2AD_SHORT_BUF:16,0,16;AD_RESULT:10,0,16;;",128,0,0,0
.stabs "bitRegister:T18=s1bit0:12,0,1;bit1:12,1,1;bit2:12,2,1;\\",128,0,0,0
.stabs "bit3:12,3,1;bit4:12,4,1;bit5:12,5,1;bit6:12,6,1;bit7:12,7,1;;",128,0,0,0
.stabs "_intrinsicbitfield:T19=s1bit0:12,0,1;bit1:12,1,1;bit2:12,2,1;\\",128,0,0,0
.stabs "bit3:12,3,1;bit4:12,4,1;bit5:12,5,1;bit6:12,6,1;bit7:12,7,1;;",128,0,0,0
.stabs "DWORD:t3",128,0,0,0
.stabs "WORD:t10",128,0,0,0
.stabs "BYTE:t9",128,0,0,0
.stabs "", 100, 0, 0,Letext
Letext:
.stabs "LED_CNT:G9",32,0,0,_LED_CNT
.stabs "FLAG_LED_LEVEL:G9",32,0,0,_FLAG_LED_LEVEL
.stabs "AD_ONCE_VAL:G10",32,0,0,_AD_ONCE_VAL
.stabs "ABL_SUM:G9",32,0,0,_ABL_SUM
.stabs "AD_8T_SUM_OLD:G10",32,0,0,_AD_8T_SUM_OLD
.stabs "AD_8T_SUM:G10",32,0,0,_AD_8T_SUM
.stabs ":t20=ar1;0;4;10",128,0,0,0
.stabs "AD_ARRAY_ONCE:G20",32,0,0,_AD_ARRAY_ONCE
.stabs "AD_8_TIMES:G9",32,0,0,_AD_8_TIMES
.stabs "AD_RCE_TURNS:G9",32,0,0,_AD_RCE_TURNS
.stabs "AD_JUDGE_BASE:G9",32,0,0,_AD_JUDGE_BASE
.stabs "F_AD_SUCCESS:G300",32,0,0,_F_AD_SUCCESS
.stabs "F_DIG1_DIG2:G301",32,0,0,_F_DIG1_DIG2
.stabs "F_LED:G302",32,0,0,_F_LED
.stabs "AD_LONG_BUF:G17",32,0,0,_AD_LONG_BUF
extern data __SrcRArg1
extern data __SrcRArg0
extern data __SrcLArg1
extern data __SrcLArg0
EXTERN CODE __SRUInt2Ram
EXTERN CODE __Get1ByteRamToLArg
EXTERN CODE __Mov2ByteRamToReg
EXTERN CODE __Get2ByteRamToReg
EXTERN CODE __Get2ByteRomUToReg
EXTERN CODE __SRULong2Ram
EXTERN CODE __Get2ByteRamToLArg
EXTERN CODE __CmpULong
EXTERN CODE __Get2ByteRamRam
EXTERN CODE __SetRegTo2ByteRam
EXTERN CODE __ClearWatchDogTimer
