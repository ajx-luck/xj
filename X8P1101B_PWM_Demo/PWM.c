#include "X8P1101B.h"
#define DISI()  _asm{disi}
#define WDTC()  _asm{wdtc}
#define NOP()   _asm{nop}
#define ENI()   _asm{eni}
#define SLEP()  _asm{slep}

#define LED1ON()	P61=1
#define LED2ON()	P60=1
#define LED3ON()	P66=1
#define LED4ON()	P65=1
#define LED1OFF()	P61=0
#define LED2OFF()	P60=0
#define LED3OFF()	P66=0
#define LED4OFF()	P65=0

typedef unsigned char u8t;
typedef unsigned short u16t;

u8t Status @0X20:bank 0;
u16t duty = 0;
u8t intCount = 0;
u8t count500ms = 0;
u8t	keyCount = 0;//消抖计数
u8t workStep = 0;
u8t ledStep = 0;

static bit IntFlag @0X20@0:bank 0;
static bit	longPressFlag @0X20@1:bank 0;


void IO_Init();
void PWM_Init(void);
void chrgCtr();
void keyCtr();
char keyRead();
void ledCtr();
void PWM_Stop(void);
void workCtr();

void main()
{

    unsigned int i;

	WDTC();
	DISI();
	WDTCR=0;				//禁止WDT
	
	IO_Init();	            //IO初始化

	TCC=6;					//timer=1/8*2*(256-6)*16=1ms,TCC中断1ms定时		主频8M/2T
	ISR=0;
	IMR=1;
		
	ENI();
	
	
	while(1)
	 {   
		WDTC(); //清狗
		if(!IntFlag)
			continue;
		IntFlag = 0;
		chrgCtr();
		if(count500ms == 0)
		{
			ledCtr();
		}
		workCtr();
	 }

}


void workCtr()
{
	if(++duty > 120)
		duty = 120;
	if(duty < 120)
		PDC1 = duty;
}

void ledCtr()
{
	if(ledStep)
	{
		
		if(ledStep == 4)
		{
			LED1ON();
		}
		else if(ledStep == 3)
		{
			LED2ON();
		}
		else if(ledStep == 2)
		{
			LED3ON();
		}
		else if(ledStep == 1)
		{
			LED4ON();
		}
		ledStep--;	

	}
	else
	{
		switch(workStep)
		{
			case 0:
			P60=0;
			P61=0;
			P65=0;
			P66=0;
			break;
			case 1:
			LED1ON();
			LED2OFF();
			LED3OFF();
			LED4OFF();
			break;
			case 2:
			LED2ON();
			break;
			case 3:
			LED3ON();
			break;
			case 4:
			LED4ON();
			break;
		}
	}

}


void keyCtr()
{
	char kclick = keyRead();
	if(kclick == 1 && workStep > 0)
	{
		count500ms = 0;
		if(++workStep > 4)
			workStep = 1;
		PWM_Init();
		duty = 1;
	
	}
	else if(kclick == 2)
	{
		if(workStep > 0)
		{
			workStep = 0;
			PWM_Stop();
		}
		else
		{
			workStep = 1;
			ledStep = 4;
			count500ms = 0;
			PWM_Init();
			duty = 1;
		}
		
	}
}


char keyRead()	
{ 
	if(P67 == 0)
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



void chrgCtr()
{
	if(P50)
	{
		//充电中
		if(P50)
		{
			//充满了
			P51 = 1;
			P53 = 0;
		}
		else
		{
			P51 = 0;
			//充电中
			P53 = !P53;
		}
	}
	else
	{
			P51 = 0;
			P53 = 0;
			keyCtr();
	}
}

void PWM_Init(void)	
{
	//P62输出14.67K，占空比1%
	PRD = 128;				//设置周期		1/8*4*136=68us = 14.7K
	PDC1 = 1;				//设置占空比
	CPUCON = 0B01000000;	//PWM选择系统时钟8M
	PWMCON = 0B00011001;	//4分频
}

void PWM_Stop(void)	
{
	PWMCON = 0x00;	//
}


void IO_Init(void)
{
	//IO初始化
	PORT5 = 0x00;
	P5CR = 0x05;			//PORT5设为输出(0 输出,1 输入)	 P50 P52  输入 
	PORT6 = 0x00;           	
	P6CR = 0x90;			//PORT6设为输出(0 输出,1 输入)	P64 67 输入 
	PDCR = 0xFE;			//P50d打开下拉
	PHCR = 0x7F;				//67打开上拉
	_asm{
		mov	a,@0x03			//TCC分频比设为1：16
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
		TCC+=6;					//TCC赋初值
		if(++intCount >= 10)
		{
			intCount = 0;		//10ms
			IntFlag = 1;
			if(++count500ms >=50)
				count500ms = 0;
		}
		//PORT5^=0XFF;			//PORT5口输出500HZ波形	
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


