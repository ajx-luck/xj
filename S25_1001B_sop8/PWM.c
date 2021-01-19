#include "X8P1001B.h"
#define DISI()  _asm{disi}
#define WDTC()  _asm{wdtc}
#define NOP()   _asm{nop}
#define ENI()   _asm{eni}
#define SLEP()  _asm{slep}



typedef unsigned char u8t;
typedef unsigned short u16t;


void IO_Init();

void gotoSleep();
void ledOn();
void ledOff();

u8t Status @0X20:bank 0;
u8t intCount = 0;
u8t chrgFlag = 0;
u8t sleepTime = 0;

static bit IntFlag @0X20@0:bank 0;
static bit	longPressFlag @0X20@1:bank 0;

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
	
	
	
	while(1)
	 {     
		WDTC(); //清狗

		if(!IntFlag)			//10ms执行一次
			continue;		
		IntFlag = 0;
		if(P63)
		{
			//充电中
			chrgFlag = 1;
			P61 = 0;
			sleepTime = 0;
			if(P62)
			{
				ledOn();
			}
			else
			{
				ledOff();
			}
		}
		else
		{
			chrgFlag = 0;
			if(P65 == 0)	//低电平有效
			{
				if(P60 == 0)
				{
					P61 = 1;
					ledOn();
					sleepTime = 0;
				}
				else
				{
					P61 = 0;
					ledOff();
					if(++sleepTime > 200)
						gotoSleep();
				}	
			}
			else
			{
					P61 = 0;
					ledOff();
					if(++sleepTime > 200)
						gotoSleep();
			}
		}
	}
}


void ledOn()
{
		P6CR &= 0xEF;	//P64输出低电平
		P64 = 0;
}


void ledOff()
{
		P6CR |= 0x10;
		P64 = 1;			//灭绿灯
			
}


void IO_Init(void)
{
	//IO初始化   
	PORT6 = 0x00;           	
	P6CR = 0x3D;			//PORT6设为输出(0 输出,1 输入)
	PHCR = 0xDA;			//P61上拉 P63上拉 P65上拉
	PRD = 0xFF;
	
	_asm{
		mov	a,@0x02			//TCC分频比设为1：8
		contw					
	}
}

void gotoSleep()
{
	
	sleepTime = 0;
	chrgFlag = 0;
	WDTCR=0x00;//禁止WDT
	ICIECR = 0x09;
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


