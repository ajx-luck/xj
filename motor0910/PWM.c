#include "X8P1101B.h"
#define DISI()  _asm{disi}
#define WDTC()  _asm{wdtc}
#define NOP()   _asm{nop}
#define ENI()   _asm{eni}
#define SLEP()  _asm{slep}

typedef unsigned char u8t;
typedef unsigned int u16t;

#define	PB5ON() P65 = 1
#define	PB5OFF() P65 = 0
#define L1ON() P51 = 1
#define L1OFF() P51 = 0
#define L2ON() P52 = 1
#define L2OFF() P5 = 0
#define L3ON() P53 = 1
#define L3OFF() P53 = 0
#define L4ON() P60 = 1
#define L4OFF() P60 = 0
#define L5ON() P61 = 1
#define L5OFF() P61 = 0
#define L6ON() P62 = 1
#define L6OFF() P62 = 0
#define LAOFF()	PORT5 &= 0xF1
#define	LBOFF() PORT6 &= 0xF8

u8t Status @0X20:bank 0;
u8t intCount = 0;
u8t duty = 0;
u8t int2Count = 0;
u8t	count1s = 0;
u16t    count900s = 0;		//60*15
u8t workStep = 0;
u8t keyCount = 0;
u8t pwmCount = 0;

static bit IntFlag @0X20@0:bank 0;
static bit	longPressFlag @0X20@1:bank 0;


void IO_Init();
void keyCtr();
char keyRead(u8t keyStatus);
void workCtr();
void keyCtr();
void gotoSleep();

void main()
{

    unsigned int i;

	WDTC();
	DISI();
	WDTCR=0x80;				
	
	IO_Init();	            //IO初始化

	TCC=206;					//timer=1/8*2*(256-6)*16=1ms,TCC中断1ms定时		主频8M/2T
	ISR=0;
	IMR=1;
	duty = 0;	
	ENI();
	
	
	for(;;)
	 {   
		if(pwmCount < duty)		//400us
		{
			P65 = 1;
		}
		else
		{
			P65 = 0;
		}
		if(++pwmCount >= 20)
		{
			pwmCount = 0;
		}
		WDTC(); //清狗
		if(!IntFlag)
			continue;
		IntFlag = 0;
		keyCtr(); 
		workCtr();
	 }

}


void keyCtr()
{
	char kclick = keyRead(0x80 & (~PORT6));
	
	if(kclick == 1)
	{
		
	//Key1单击
		if(++workStep >= 7)
    		workStep = 0;
		
	}
	else if(kclick == 2)
	{
		workStep = 0;
	}
	
	
	
}

void workCtr()
{
	switch(workStep)
	{
		case 0:
		duty = 0;
		LAOFF();
		LBOFF();
		PB5OFF();
		if(keyCount == 0)
			gotoSleep();
		break;
		case 1:
		duty = 14;
		L1ON();
		break;
		case 2:
		duty = 15;
		L2ON();
		break;
		case 3:
		duty = 16;
		L3ON();
		break;
		case 4:
		duty = 17;
		L4ON();
		break;
		case 5:
		duty = 18;
		L5ON();
		break;
		case 6:
		duty = 19;
		L6ON();
		break;
	}
		
	if(count900s >= 900 && keyCount == 0)
		gotoSleep();
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
	P65 = 0;
	count900s = 0;
	workStep = 0;
	WDTCR=0x80;//禁止WDT
	ICIECR = 0x80;
	IMR = 0x02;
	ISR&=0XF0;
	DISI();
	SLEP();
	ENI();
	ICIECR = 0x00;
	ISR=0;
	IMR=1;
}


void IO_Init(void)
{
	//IO初始化
	PORT5 = 0x00;
	P5CR = 0x00;			//PORT5设为输出(0 输出,1 输入)	    
	PORT6 = 0x00;           	
	P6CR = 0x80;			//PORT6设为输出(0 输出,1 输入)
	PHCR = 0x7F;
	_asm{
		mov	a,@0x02			//TCC分频比设为1：8
		contw					
	}
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

				if(workStep)
				{
					if(++count1s>= 100)
					{
						count1s = 0;
						count900s++;
					}
				}
			
		}
		//P65口输出500HZ波形	
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


