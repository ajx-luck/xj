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
u8t	keyCount = 0;//��������
u8t workStep = 0;
u8t ledStep = 0;
u8t keyNub = 0;
u8t count64ms = 0;
u16t count5s = 0;
u8t sleepTime = 0;

static bit IntFlag @0X20@0:bank 0;
static bit	longPressFlag @0X20@1:bank 0;
static bit	lvdFlag @0X20@2:bank 0;

void IO_Init();
void PWM_Init(void);
void keyCtr();
char keyRead(u8t keyStatus);
void PWM_Stop(void);
void lvdCheck();
void delay(u8t time);
void cloesAll();
void gotoSleep();

void main()
{

    unsigned int i;

	WDTC();
	DISI();
	WDTCR=0;				//��ֹWDT
	
	IO_Init();	            //IO��ʼ��

	TCC=206;					//timer=1/8*2*(256-6)*16=1ms,TCC�ж�1ms��ʱ		��Ƶ8M/2T
	ISR=0;
	IMR=1;
		
	ENI();
	
	
	while(1)
	 {   
		WDTC(); //�幷
		if(!IntFlag)
			continue;
		IntFlag = 0;
		keyCtr();
		if(ledStep || workStep)
		{
			P52 = 1;
			lvdCheck();
		}
		else
		{
			P52 = 0;
			P53 = 0;
			if(keyCount == 0 && P66 == 1)
			{
				if(++sleepTime >= 200)
					gotoSleep();
			}
		}
		
		if(workStep == 0)
		{
			if(P66)
			{
				PWM_Stop();
			}
			else
			{
				PWM_Init();	
			}
		}
		
	 }

}


void lvdCheck()
{
	LVDCON = 0x8A;
	delay(100);
	if(LVDCON & 0x40)
	{
		//���ڼ���ѹ
		lvdFlag = 1;
		count5s++;
		if(count5s > 50)
		{
			P53 = 1;
		}
		if(count5s > 550)
		{
			count5s = 0;
			cloesAll();
		}
	}
	else
	{
		//���ڼ���ѹ
		lvdFlag = 0;
		count5s = 0;
		P53 = 0;
	}
}

void cloesAll()
{
	workStep = 0;
	ledStep = 0;
	PWM_Stop();
	PORT5 = 0x00;
	P67 = 0;
}


void keyCtr()
{
	char kclick = keyRead(0x03 & (~PORT6));
	if(kclick == 1)
	{
		if(keyNub & 0x01)
		{
			//Key2����
			if(++workStep > 2)
				workStep = 0;
			if(workStep)
			{
				P51 = 1;
				PWM_Init();
			}
			else
			{
				PWM_Stop();
				P51 = 0;
			}
			switch(workStep)
			{
				case 0:
				PDC1 = 0;
				break;
				case 1:
				PDC1 = 17;
				break;
				case 2:
				PDC1 = 27;
				break;
			
			}
		}
		else
		{
			//Key1����
			if(++ledStep > 2)
				ledStep = 0;
			if(ledStep)
			{
				P67 = 1;
			}
			else
			{
				P67 = 0;
			}
		}
	}
	
}

void gotoSleep()
{
	count5s = 0;
	sleepTime = 0;
	WDTCR=0;//��ֹWDT
	ICIECR = 0x43;
	IMR = 0x02;
	ISR&=0XF0;
	DISI();
	SLEP();
	ENI();
	ICIECR = 0x00;
	ISR=0;
	IMR=1;
}


char keyRead(u8t keyStatus)	
{ 
	if(keyStatus)
	{
		keyNub = keyStatus;
		keyCount++;
		if(keyCount >= 200)
		{
			keyCount = 200;
		}
	}
	else
	{
		if(keyCount >= 8)
		{
			keyCount = 0;
			return	1;
		}
		keyCount = 0;
		keyNub = 0;
	}
	return 0;
}


void delay(u8t time)
{
	u8t i = 0;
	for(;i<time;i++)
		NOP();
}


void PWM_Init(void)	
{
	//P62���14.67K��ռ�ձ�1%
	PRD = 49;				//��������		1/8*4*136=68us = 14.7K
	PDC1 = 17;				//����ռ�ձ�
	CPUCON = 0B01000000;	//PWMѡ��ϵͳʱ��8M
	PWMCON = 0B00010000;	//����Ƶ��Ƶ
}

void PWM_Stop(void)	
{
	PWMCON = 0x00;	//
}


void IO_Init(void)
{
	//IO��ʼ��
	PORT5 = 0x00;
	P5CR = 0x00;			//PORT5��Ϊ���(0 ���,1 ����)
	PORT6 = 0x00;           	
	P6CR = 0x43;			//PORT6��Ϊ���(0 ���,1 ����)	P60 61 66 ���� 
	PHCR = 0xBC;				//������
	_asm{
		mov	a,@0x03			//TCC��Ƶ����Ϊ1��16
		contw					
	}
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
		
		if(++intCount >= 50)
		{
			intCount = 0;		//10ms
			IntFlag = 1;
			if(++count500ms >=50)
				count500ms = 0;
		}
		if(ledStep == 1)
		{
			if(++count64ms >= 32)
			{
				count64ms = 0;
			}
			if(count64ms < 16)
				P50 = 1;
			else
				P50 = 0;
		}
		else if(ledStep == 2)
		{
			P50 = 1;
		}
		else
		{
			P50 = 0;
		}
		//PORT5^=0XFF;			//PORT5�����500HZ����	
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
