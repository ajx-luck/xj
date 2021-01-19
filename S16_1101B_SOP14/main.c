//S16电疗仪

#include "X8P1101B.h"
#define DISI()  _asm{disi}
#define WDTC()  _asm{wdtc}
#define NOP()   _asm{nop}
#define ENI()   _asm{eni}
#define SLEP()  _asm{slep}

typedef unsigned char u8t;
typedef unsigned short u16t;


u8t Status @0X20:bank 0;
u8t intCount = 0;
u8t duty = 0;
u8t int2Count = 0;
u8t	count1s = 0;
u16t count10s = 0;		
u8t count900s = 0;
u8t workStep = 0;
u8t keyCount = 0;
u8t keyNub = 0;
u8t workStatus = 0;//0关机状态 1开机状态 2暂停状态 3预备开机状态
u16t workTime = 0;//工作计时
u16t tempWorkTime = 0;//
u8t tempTime = 0;

static bit IntFlag @0X20@0:bank 0;
static bit pwmFlag @0X20@1:bank 0;


void IO_Init();
void keyCtr();
char keyRead(u8t keyStatus);
void workCtr();
void keyCtr();
void gotoSleep();
void ledCtr();
void PWM_Init(void);
void PWM_Stop(void);

void main()
{

    unsigned int i;

	WDTC();
	DISI();
	WDTCR=0x80;	
	workStep = 0;			
	
	IO_Init();	            //IO初始化
	TCC=206;					//timer=1/8*2*(256-6)*16=1ms,TCC中断1ms定时		主频8M/2T
	ISR=0;
	IMR=1;
	duty = 0;	
	ENI();
	
	
	for(;;)
	 {   
		
		WDTC(); //清狗
		if(!IntFlag)
			continue;
		IntFlag = 0;
		if(workStatus == 1 && P53 == 0)
		{
			workStatus = 0;
			PWM_Stop();
			
		}
		keyCtr(); 
		workCtr();
		if(workStatus == 1)
		{
			if(pwmFlag == 1)
			{
				ledCtr();
			}
			else
			{
				//灭灯
				PORT6 |= 0xE0;
				P50 = 1;
			}
		}
		else if(workStatus > 1)
		{
			ledCtr();
		}
		else if(workStatus == 0)
		{
			//灭灯
			PORT6 |= 0xE0;
			P50 = 1;
		}
	 }

}


void keyCtr()
{
	char kclick = keyRead(0x0B & (~PORT6));
	
	if(kclick == 1)
	{
		
		//开机键
		if(keyNub == 0x08)
    	{
    		if(workStatus == 0)
    		{
    			workStatus = 2;
    			if(workStep == 0)
    			{
    				workStep = 1;
    			}
    			count10s = 10000;
    		}
    		else
    		{
    			workStatus = 1;
    			if(workStep == 0)
    			{
    				workStep = 1;
    			}
    		}
    	}
    	else if(keyNub == 0x02)
    	{
    		//关机键
    		if(workStatus == 1)
    		{
    			workStatus = 2;		//暂停功能
    			count10s = 10000;
    		}
    		else
    		{
    			workStatus = 0;
    		}
    		
    	}
    	else if(keyNub == 0x01)
    	{
    		//功能键
    		count10s = 10000;
    		if(workStatus > 0)
    		{
    			workStatus = 2;
    			if(++workStep > 6)
    			{
    				workStep = 1;
    			}
    		}
    	}
		
	}

	
	
	
}

void PWM_Init(void)	
{
	//P62输出14.67K，占空比1%
	PRD = 128;				//设置周期		1/8*4*128=64us = 15.6K
	PDC1 = 115;				//设置占空比
	CPUCON = 0B01000000;	//PWM选择系统时钟8M
	PWMCON = 0B00011001;	//4分频
	pwmFlag = 1;
}

void PWM_Stop(void)	
{
	if(PWMCON & 0x10)
	{
		P64 = 1;
	}
	else
	{
		P64 = 0;
	}
	PWMCON = 0x00;	//
	pwmFlag = 0;
	
}


void ledCtr()
{
	if(workStatus > 0)
	{
		switch(workStep)
		{
			case 0:
			PORT6 |= 0xE0;
			P50 = 1;
			break;
			case 1:
			P65 = 0;
			P66 = 1;
			P67 = 1;
			P50 = 1;
			break;
			case 2:
			P65 = 1;
			P66 = 0;
			P67 = 1;
			P50 = 1;
			break;
			case 3:
			P65 = 0;
			P66 = 0;
			P67 = 1;
			P50 = 1;
			break;
			case 4:
			P65 = 1;
			P66 = 1;
			P67 = 0;
			P50 = 1;
			break;
			case 5:
			P65 = 1;
			P66 = 1;
			P67 = 1;
			P50 = 0;
			break;
			case 6:
			P65 = 1;
			P66 = 1;
			P67 = 0;
			P50 = 0;
			break;
		}
	}
}

void step1()
{
	if(workTime > 287)
	{
		workTime = 0;
	}
	if(workTime < 10)
	{
		PWM_Init();
	}
	else
	{
		PWM_Stop();
	}
}

void step2()
{
	if(workTime > 1000)
	{
		workTime = 0;
	}
	if(workTime < 370)
	{
		tempTime = workTime % 37;
		if(tempTime < 3)
		{
			PWM_Init();
		}
		else
		{
			PWM_Stop();
		}
	}
	else
	{
		PWM_Stop();
	}

}

void step3()
{
	if(workTime > 7230)
	{
		workTime = 0;
	}
	if(workTime < 5000)
	{
		tempTime = workTime % 37;
		if(tempTime < 3)
		{
			PWM_Init();
		}
		else
		{
			PWM_Stop();
		}
	}
	else
	{
		PWM_Stop();
	}

}

void step4()
{
	if(workTime > 36000)
	{
		workTime = 0;
	}
	if(workTime < 2350 || (workTime > 2350*2 && workTime < 2350*3) || (workTime > 2350*4 && workTime < 2350*5))
	{
		tempTime = workTime % 59;
		if(tempTime < 3)
		{
			PWM_Init();
		}
		else
		{
			PWM_Stop();
		}
	}
	else if(workTime > 2350*6)
	{
		tempWorkTime = workTime - 2350*6;
		if(tempWorkTime < 587*8)
		{
			if((tempWorkTime/587)%2 == 0)
			{
				tempTime = tempWorkTime % 59;
				if(tempTime < 3)
				{
					PWM_Init();
				}
				else
				{
					PWM_Stop();
				}
			}
			else
			{
				PWM_Stop();
			}
		}
		else
		{
			if((tempWorkTime/1100)%2 == 0)
			{
				tempTime = tempWorkTime % 59;
				if(tempTime < 3)
				{
					PWM_Init();
				}
				else
				{
					PWM_Stop();
				}
			}
			else
			{
				PWM_Stop();
			}
		}
	}
	else 
	{
		PWM_Stop();
	}
}


void step5()
{
	if(workTime > 36974)
	{
		workTime = 36800;
	}
	if(workTime < 36800)
	{
		if((workTime/2300)%2 == 0)
		{
			tempTime = workTime % 37;
			if(tempTime < 3)
			{
				PWM_Init();
			}
			else
			{
				PWM_Stop();
			}
		}
		else
		{
			PWM_Stop();
		}
	}
	else
	{
		tempWorkTime = workTime - 36800;
		tempTime = tempWorkTime % 173;
		if(tempTime < 3)
		{
			PWM_Init();
		}
		else
		{
			PWM_Stop();
		}
	}
}


void step6()
{
	if(workTime > 72)
	{
		workTime = 0;
	}
	if(workTime < 3)
	{
		PWM_Init();
	}
	else
	{
		PWM_Stop();
	}
}


//工作控制
void workCtr()
{
	//倒计时10s
	if(workStatus > 1)
	{
		if(count10s > 0)
		{
			if(--count10s == 0)
			{
				gotoSleep();
			}
		}
	}
	else if(workStatus == 1)
	{
		++workTime;
		if(workStep == 1)
		{
			step1();
		}
		else if(workStep == 2)
		{	
			step2();
		}
		else if(workStep == 3)
		{
			step3();
		}
			else if(workStep == 4)
		{	
			step4();
		}
		else if(workStep == 5)
		{
			step5();
		}
		else if(workStep == 6)
		{
			step6();
		}
	}
		
}


char keyRead(u8t keyStatus)	
{ 
	if(keyStatus)
	{
		//PORT5 ^= 0X02;
		keyNub = keyStatus;
		keyCount++;
		if(keyCount >= 200)
		{
			keyCount = 200;
		}
	}
	else
	{
		if(keyCount >= 50)
		{
			keyCount = 0;
			return	1;
		}
		keyCount = 0;
		keyNub = 0;
	}
	return 0;
}

void gotoSleep()
{
	
	//灭灯
	PORT6 |= 0xE0;
	P50 = 1;
	workStatus = 0;
	WDTCR=0x00;//禁止WDT
	ICIECR = 0x0B;
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
	P5CR = 0x08;			//PORT5设为输出(0 输出,1 输入)	    
	PORT6 = 0x00;           	
	P6CR = 0x0B;			//PORT6设为输出(0 输出,1 输入)
	PHCR = 0xF4;
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
		
		if(++intCount >= 10)
		{
			intCount = 0;		//1ms
			IntFlag = 1;

		//	PORT5^=0x04;	
			
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