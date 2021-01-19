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
void PWM_Init_500();
void keyCtr();
char keyRead(u8t keyStatus);
void workCtr();
void keyCtr();
void gotoSleep();
void chrgCtr();

u8t Status @0X20:bank 0;
u8t intCount = 0;
u8t workStep = 0;
u8t keyCount = 0;
u8t pwmCount = 0;
u8t ledCount = 0;

static bit IntFlag @0X20@0:bank 0;
static bit	longPressFlag @0X20@1:bank 0;

void main()
{

    unsigned int i;

	WDTC();
	DISI();
	WDTCR=0;				//��ֹWDT
	
	IO_Init();	            //IO��ʼ��

	TCC=206;					//
	ISR=0;
	IMR=1;
		
	ENI();
	
	PWM_Init_500();
	
	while(1)
	 {     
		WDTC(); //�幷
		if(!IntFlag)
			continue;
		IntFlag = 0;
		keyCtr();
		if(P63) 
			workCtr();
		else
			chrgCtr();
			
		if(workStep)
		{	
			if((PWMCON & 0x10) == 0)
			{
				PWMCON |= 0x10;		//����PWM
			}
		}
		else
		{
			PWMCON &= 0xEF;		//�ر�PWM
		}
		if(ledCount > 0)
		{
			--ledCount;
			if(ledCount > 50)
			{
				L1ON();
				L2ON();
				L3ON();
			}
			else
			{
				L1OFF();
				L2OFF();
				L3OFF();
			}
			
		}
	 }

}


void chrgCtr()
{
	if(ledCount == 0)
		ledCount = 100;

}


void workCtr()
{
	switch(workStep)
	{
		case 0:
		PDC1 = 100;
		if(keyCount == 0 && ledCount == 0)
			gotoSleep();
		break;
		case 1:
		PDC1 = 100;
		if(ledCount == 0)
		{
			L1ON();
			L2OFF();
			L3OFF();
		}
		break;
		case 2:
		PDC1 = 112;
		if(ledCount == 0)
		{
			L2ON();
			L1OFF();
			L3OFF();
		}
		break;
		case 3:
		PDC1 = 124;
		if(ledCount == 0)
		{
			L3ON();
			L1OFF();
			L2OFF();
		}
		break;
	}

}


void PWM_Init_500(void)
{
	//P62���108K��ռ�ձ�50%
	PRD = 124;				//��������		1/8*128*125=2000us = 500
	PDC1 = 100;				//����ռ�ձ�
	CPUCON = 0B01000000;	//PWMѡ��ϵͳʱ��8M
	PWMCON = 0B00001110;	//1:128��Ƶ
}




void IO_Init(void)
{
	//IO��ʼ��   
	PORT6 = 0x00;           	
	P6CR = 0x28;			//PORT6��Ϊ���(0 ���,1 ����)
	PHCR = 0xD7;			//P63 P65����
	_asm{
		mov	a,@0x02			//TCC��Ƶ����Ϊ1��8
		contw					
	}
}

void keyCtr()
{
	char kclick = keyRead(0x20 & (~PORT6));
	
	if(kclick == 1)
	{
		
	//Key1����
		if(workStep == 0)
		{
			ledCount = 100;	
		}
		if(++workStep > 3)
    		workStep = 1;
		
	}
	else if(kclick == 2)
	{
		workStep = 0;
		ledCount = 100;	
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
	L1OFF();
	L2OFF();
	L3OFF();
	workStep = 0;
	WDTCR=0x00;//��ֹWDT
	ICIECR = 0x28;
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
          MOV 0x3D,A ;���� A
          MOV A,0x03
          MOV 0x3E,A ;���� R3
          MOV A,0x04
          MOV 0x3F,A ;���� R4
	}
	
	if	(TCIF==1)
	{
		
		ISR&=0XFE;				//��TCC�жϱ�־λ
		TCC+=206;					//TCC����ֵ 0.2ms
		
		if(++intCount >= 100)
		{
			intCount = 0;		//10ms
			IntFlag = 1;

			
		}
	}
   
   //�ָ�A,R3,R4�Ĵ���ֵ,���ڸ�λ�ռ�0x3D,0x3E,0x3F
	_asm{          
          MOV A,0x3F ;���� R4
          MOV 0x04,A
          MOV A,0x3E ;���� R3
          MOV 0x03,A
          SWAP 0x3D  ;���� A
          SWAPA 0x3D 
	}
}



void _intcall interrupt_l(void) @ 0x08:low_int 0
{
	
}


