#include "X8P1001B.h"
#define DISI()  _asm{disi}
#define WDTC()  _asm{wdtc}
#define NOP()   _asm{nop}
#define ENI()   _asm{eni}
#define SLEP()  _asm{slep}



typedef unsigned char u8t;
typedef unsigned short u16t;


void IO_Init();
void PWM_Init_500();
void keyCtr();
char keyRead(u8t keyStatus);
void workCtr();
void keyCtr();
void gotoSleep();
void chrgCtr();
void ledBreath();
void motorWork();
void breathCtr();
void motorWork2();

u8t Status @0X20:bank 0;
u8t intCount = 0;
u8t workStep = 0;
u8t keyCount = 0;
u8t pwmCount = 0;
u8t ledCount = 0;
u8t chrgFlag = 0;
u8t motorFlag = 0;
u8t motorCount = 0;
u8t duty = 0;
u16t breathCount = 0;

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
	
	
	
	while(1)
	 {     
		WDTC(); //�幷
		if(chrgFlag)
			ledBreath();
		if(motorFlag)
		{
			motorWork2();
		}
		if(!IntFlag)			//10msִ��һ��
			continue;		
		IntFlag = 0;
		keyCtr();
		if(P62) 	//����ж�	
			chrgCtr();
		else
		{
			chrgFlag = 0;	//�������Ʊ�־
			workCtr();
		}
		if(chrgFlag)
			breathCtr();
	
	}
}


//������
void ledBreath()
{
	if(ledCount >= duty)
	{
		P63 = 1;
	}
	else
	{
		P63 = 0;
	}
	if(++ledCount > 100)
		ledCount = 0;
}


//��������
void breathCtr()
{
	if(breathCount < 10)
	{
		duty = 0;
	}
	else if(breathCount < 200)
	{
		if(breathCount % 2 == 0 && duty < 100)
			duty++;
	}
	else if(breathCount < 210)
	{
		duty = 101;
	}
	else if(breathCount < 410)
	{
		if(breathCount % 2 == 0 && duty > 0)
			duty--;
	}
	if(++breathCount > 410)
	{
		breathCount = 0;
	}
}


void chrgCtr()
{
	workStep = 0;
	if(P65)
	{
		chrgFlag = 0;
		P63 = 1;
	}
	else
	{
		chrgFlag = 1;
	}

}

//��﹤��
void motorWork2()
{
	if(motorCount > 30)
	{
		P60 = 0;
	}
	else
	{
		P60 = 1;
	}
	
	if(++motorCount > 100)
		motorCount = 0;
}

//��﹤��
void motorWork()
{
	if(motorCount > 12)
	{
		P60 = 0;
	}
	else
	{
		P60 = 1;
	}
	
	if(++motorCount > 22)
		motorCount = 0;
}


void workCtr()
{
	switch(workStep)
	{
		case 0:
		motorFlag = 0;
		P63 = 1;
		PWMCON = 0B00001111;	//1:256��Ƶ
		P60 = 0;
		P61 = 0;
		if(keyCount == 0)
			gotoSleep();
		break;
		case 1:
		motorFlag = 1;
		P61 = 0;
		P63 = 0;
		break;
		case 2:
		motorFlag = 0;
		motorWork();
		P61 = 0;
		P63 = 0;
		break;
		case 3:
		P60 = 0;
		P61 = 1;
		P63 = 0;
		break;
		case 4:
		P60 = 1;
		P61 = 1;
		P63 = 0;
		break;
	}

}





void PWM_Init_500(void)
{
	//P62���108K��ռ�ձ�50%
	PRD = 250;				//��������		1/8*256*250=4000us = 125
	PDC1 = 100;				//����ռ�ձ�
	CPUCON = 0B01000000;	//PWMѡ��ϵͳʱ��8M
	PWMCON = 0B11001111;	//1:256��Ƶ
}




void IO_Init(void)
{
	//IO��ʼ��   
	PORT6 = 0x00;           	
	P6CR = 0x34;			//PORT6��Ϊ���(0 ���,1 ����)
	PHCR = 0xEF;			//P64����
	_asm{
		mov	a,@0x02			//TCC��Ƶ����Ϊ1��8
		contw					
	}
}

void keyCtr()
{
	char kclick = keyRead(0x10 & (~PORT6));
	
	if(kclick == 1)
	{
		
	//Key1����
		if(workStep > 0)
		{
			if(++workStep > 4)
	    		workStep = 1;
    	}
		
	}
	else if(kclick == 2)
	{
		if(workStep == 0)
			workStep = 1;
		else
			workStep = 0;
		
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
	motorFlag = 0;
	chrgFlag = 0;
	workStep = 0;
	WDTCR=0x00;//��ֹWDT
	ICIECR = 0x14;
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


