/******************************************************************
file name:define.h

******************************************************************/
#ifndef _DEFINE_H
#define _DEFINE_H
/////////////////////////////////////////
struct bitRegister{
	unsigned bit0:1;
	unsigned bit1:1;
	unsigned bit2:1;
	unsigned bit3:1;
	unsigned bit4:1;
	unsigned bit5:1;
	unsigned bit6:1;
	unsigned bit7:1;
};
//////////////////////////////////////////
typedef unsigned char BYTE;
typedef unsigned long WORD;
typedef double DWORD;
///////////////////////////////////////////
union _AD_Union_RESULT_
{
	struct _AD_Struct_RESULT_
	{
		unsigned char AD_RESULT_LO;
		unsigned char AD_RESULT_HI;
	}AD_SHORT_BUF;
	unsigned long AD_RESULT;
}AD_LONG_BUF;

///////////////////////////////////////////
//******************************************************************
//管脚定义**********************************************************
//******************************************************************
#define 	LED_A   	FP03  //;SEG_A
#define 	LED_B   	FP02  //;SEG_B

#define 	LED_C   	FP53  //;SEG_C
#define 	LED_D    	FP54  //;SEG_D

#define 	LED_E   	FP01  //;SEG_E
#define 	LED_F   	FP00  //;SEG_F

#define 	LED_G   	FP40  //;SEG_G
#define 	LED_H   	FP44  //;SEG_H

#define 	LED_DIG2   	FP41  //;SEG_DIG2
#define 	LED_DIG1   	FP42  //;SEG_DIG1

#define 	ADIN_NTC   	FP43  //;5V电源采样脚

//******************************************************************
//常量定义**********************************************************
//******************************************************************
#define	RESET			0u		//
#define	SET			  	1u		//
#define I_ABL_SUM		50u		//8次 SUM 的绝对值比较的窗口
//******************************************************************
//标志位定义********************************************************
//******************************************************************
bit F_LED;			//LED标志位
bit	F_DIG1_DIG2;
bit	F_AD_SUCCESS;
//******************************************************************
//寄存器定义********************************************************
//******************************************************************
unsigned char AD_JUDGE_BASE;
unsigned char AD_RCE_TURNS;
unsigned char AD_8_TIMES;
unsigned long AD_ARRAY_ONCE[5u];
unsigned long AD_8T_SUM;
unsigned long AD_8T_SUM_OLD;
unsigned char ABL_SUM;
unsigned long AD_ONCE_VAL;
unsigned char FLAG_LED_LEVEL;
unsigned char LED_CNT;
//unsigned char BUF0_TEMP;
//unsigned char BUF1_TEMP;
//******************************************************************
//******************************************************************
/////////////////////////////////////////////////////
#define HIBYTE(wval)		*(((BYTE*)(&wval))+1)
#define LWBYTE(wval)		*(((BYTE*)(&wval))+0)

#define HIWORD(wval)		*(((WORD*)(&wval))+1)
#define LWWORD(wval)		*(((WORD*)(&wval))+0)
//******************************************************************
//******************************************************************
//******************************************************************
//******************************************************************
#endif


