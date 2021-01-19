#include "X8P1101B.h"
#define DISI()  _asm{disi}
#define WDTC()  _asm{wdtc}
#define NOP()   _asm{nop}
#define ENI()   _asm{eni}
#define SLEP()  _asm{slep}

typedef unsigned char u8t;
typedef unsigned int u16t;

u8t Status @0X20:bank 0;
u8t intCount = 0;

static bit IntFlag @0X20@0:bank 0;
static bit	longPressFlag @0X20@1:bank 0;

u8t	lvdFlag = 0;//低电压标记
u8t timeCount = 0;
u8t timeStep = 0;	//0为白天，1为夜晚
u16t count7s = 700;
u8t lvdCount = 0;

void checkLVD();
void gotoSleep();
void workCtr();
void delay(u16t time);



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
	ENI();
	
	
	for(;;)
	 {   
		WDTC(); //清狗
		if(!IntFlag)
			continue;
		IntFlag = 0;
		lvdFlag = 0;
		//checkLVD();
		if(lvdFlag)
		{
			gotoSleep();
		}
		else
		{
			workCtr();
		}
		

	 }

}

void workCtr()
{
	if(PORT6 & 0x02)
	{
		//高电平，夜晚
		if(++timeCount > 200)
		{
			if(timeStep == 0)
			{
				count7s = 700;
			}
			timeStep = 1;
			timeCount = 200;
		}
		else
		{
			PORT6 &= 0xEF;		//B4关灯
			return;
		}
	}
	else
	{
		//低电平，白天
		if(timeStep == 1)
		{
			count7s = 700;
		}
		timeStep = 0;
		timeCount = 0;
	}
	
	if(timeStep)
	{
		if(count7s > 0)
		{
			--count7s;
			PORT6 |= 0x20;
		}
		else
		{
			PORT6 &= 0xDF;
		}
		PORT6 |= 0x04;		//B2输出高电平
		PORT6 &= 0xEF;		//B4关灯
	}
	else
	{
		if(count7s > 0)
		{
			--count7s;
			PORT6 |= 0x10;
		}
		else
		{
			PORT6 &= 0xEF;
			//进入休眠
			gotoSleep();
		}
		PORT6 &= 0xDB;
	}
}

//检测低电压
void checkLVD()
{
	LVDCON = 0x88;		//2.8V
	delay(80);
	//检测是否大于2.8V
	if((LVDCON >> 6)&1)
	{
		
		if(lvdFlag == 0 && (++lvdCount >= 200))
		{
			lvdFlag = 1;
			lvdCount = 0;
		}
	}
	else
	{
		lvdCount = 0;
	
	}
	
}


void delay(u16t time)
{
	u16t i;
	for(i=0;i<time;i++);
}


void gotoSleep()
{
	lvdFlag = 0;
	lvdCount = 0;
	count7s = 700;
	PORT6 = 0x00;
	WDTCR=0x00;//禁止WDT
	ICIECR = 0x02;
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


void IO_Init(void)
{
	//IO初始化
	PORT5 = 0x00;
	P5CR = 0x00;			//PORT5设为输出(0 输出,1 输入)	    
	PORT6 = 0x00;           	
	P6CR = 0x02;			//PORT6设为输出(0 输出,1 输入)
	PHCR = 0xFD;
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

				
			
		}
		//P65口输出500HZ波形
		//PORT6 ^= 0x20;	
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

