#include "X8P1001B.h"
#define DISI()  _asm{disi}
#define WDTC()  _asm{wdtc}
#define NOP()   _asm{nop}
#define ENI()   _asm{eni}
#define SLEP()  _asm{slep}

#define L1ON() 	P64 = 0
#define L1OFF() P64 = 1
#define L2ON() 	P61 = 0
#define L2OFF() P61 = 1
#define L3ON() 	P60 = 0
#define L3OFF() P60 = 1

typedef unsigned char u8t;
typedef unsigned int u16t;


void IO_Init();
void PWM_Init();
void keyCtr();
char keyRead(u8t keyStatus);
void gotoSleep();
void pwmOn();
void pwmOff();


u8t Status @0X20:bank 0;
u8t intCount = 0;
u8t workStep = 0;
u8t keyCount = 0;
u8t pwmCount = 0;
u8t ledCount = 0;

static bit IntFlag @0X20@0:bank 0;
static bit	longPressFlag @0X20@1:bank 0;
static bit	cleanFlag @0X20@1:bank 0;

void main()
{

    unsigned int i;

	WDTC();
	DISI();
	WDTCR=0;				//禁止WDT
	
	IO_Init();	            //IO初始化

	TCC=206;					//
	ISR=0;
	IMR=1;
		
	ENI();
	
	PWM_Init();
	
	while(1)
	 {     
		WDTC(); //清狗
		if(!IntFlag)
			continue;
		IntFlag = 0;
		keyCtr();
			
		if(cleanFlag)
		{	
			ledCount++;
			if(ledCount < 25)
			{
				pwmOn();
				P60 = 0;
			}
			else if(ledCount < 64)
			{
				pwmOff();
				P60 = 0;
			}
			else if(ledCount < 90)
			{
				pwmOn();
				P60 = 1;
			}
			else if(ledCount < 118)
			{
				pwmOff();
				P60 = 0;
			}
			else if(ledCount < 120)
			{
				pwmOn();
				P60 = 0;
			}
			else
			{
				ledCount = 0;
				pwmOff();
				P60 = 0;
				cleanFlag = 0;
			}
		}
		else
		{
			PWMCON &= 0xEF;		//关闭PWM
			if(keyCount == 0)
				gotoSleep();
		}
		
	 }

}



void pwmOn()
{
	if((PWMCON & 0x10) == 0)
	{
		PWMCON |= 0x10;		//开启PWM
	}
}

void pwmOff()
{
	PWMCON &= 0xEF;		//关闭PWM
}



void PWM_Init(void)
{
	//P62输出108K，占空比50%
	PRD = 126;				//设置周期		1/8*1*128=16us = 62.5K
	PDC1 = 69;				//设置占空比
	CPUCON = 0B01000000;	//PWM选择系统时钟8M
	PWMCON = 0B00000000;	
}




void IO_Init(void)
{
	//IO初始化   
	PORT6 = 0x00;           	
	P6CR = 0x10;			//PORT6设为输出(0 输出,1 输入)
	PHCR = 0xEF;
	_asm{
		mov	a,@0x02			//TCC分频比设为1：8
		contw					
	}
}

void keyCtr()
{
	char kclick = keyRead(0x10 & (~PORT6));
	
	if(kclick == 1)
	{
		
	//Key1单击
		cleanFlag = 1;
		
	}
	else if(kclick == 2)
	{
		cleanFlag = 1;
	}
	
	
	
}

char keyRead(u8t keyStatus)	
{ 
	if(keyStatus)
	{
		keyCount++;
		if(keyCount >= 200)
		{
			keyCount = 200;
			if(!longPressFlag)
			{
				longPressFlag = 1;
				return 2;
			}
		}
	}
	else
	{
		if(keyCount >= 200)
		{
			keyCount = 0;
			longPressFlag = 0;
			return	0;
		}
		else if(keyCount >= 8)
		{
			keyCount = 0;
			return	1;
		}
		keyCount = 0;
	}
	return 0;
}

void gotoSleep()
{

	workStep = 0;
	WDTCR=0x00;//禁止WDT
	ICIECR = 0x10;
	IMR = 0x02;
	ISR&=0XF0;
	DISI();
	SLEP();
	ENI();
    WDTCR=0x80;
	ICIECR = 0x00;
	ISR=0;
	IMR=1;
}



void _intcall interrupt(void) @ int 
{

  	_asm{
          MOV 0x3D,A ;保存 A
          MOV A,0x03
          MOV 0x3E,A ;保存 R3
          MOV A,0x04
          MOV 0x3F,A ;保存 R4
	}
	
	if	(TCIF==1)
	{
		
		ISR&=0XFE;				//清TCC中断标志位
		TCC+=206;					//TCC赋初值 0.2ms
		
		if(++intCount >= 100)
		{
			intCount = 0;		//10ms
			IntFlag = 1;

			
		}
	}
   
   //恢复A,R3,R4寄存器值,存在高位空间0x3D,0x3E,0x3F
	_asm{          
          MOV A,0x3F ;返回 R4
          MOV 0x04,A
          MOV A,0x3E ;返回 R3
          MOV 0x03,A
          SWAP 0x3D  ;返回 A
          SWAPA 0x3D 
	}
}



void _intcall interrupt_l(void) @ 0x08:low_int 0
{
	
}


