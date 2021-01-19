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

u8t	lvdFlag = 0;//�͵�ѹ���
u8t timeCount = 0;
u8t timeStep = 0;	//0Ϊ���죬1Ϊҹ��
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
	
	IO_Init();	            //IO��ʼ��
	TCC=206;					//timer=1/8*2*(256-6)*16=1ms,TCC�ж�1ms��ʱ		��Ƶ8M/2T
	ISR=0;
	IMR=1;
	ENI();
	
	
	for(;;)
	 {   
		WDTC(); //�幷
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
		//�ߵ�ƽ��ҹ��
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
			PORT6 &= 0xEF;		//B4�ص�
			return;
		}
	}
	else
	{
		//�͵�ƽ������
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
		PORT6 |= 0x04;		//B2����ߵ�ƽ
		PORT6 &= 0xEF;		//B4�ص�
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
			//��������
			gotoSleep();
		}
		PORT6 &= 0xDB;
	}
}

//���͵�ѹ
void checkLVD()
{
	LVDCON = 0x88;		//2.8V
	delay(80);
	//����Ƿ����2.8V
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
	WDTCR=0x00;//��ֹWDT
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
	//IO��ʼ��
	PORT5 = 0x00;
	P5CR = 0x00;			//PORT5��Ϊ���(0 ���,1 ����)	    
	PORT6 = 0x00;           	
	P6CR = 0x02;			//PORT6��Ϊ���(0 ���,1 ����)
	PHCR = 0xFD;
	_asm{
		mov	a,@0x02			//TCC��Ƶ����Ϊ1��8
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
		
		if(++intCount >= 100)
		{
			intCount = 0;		//10ms
			IntFlag = 1;

				
			
		}
		//P65�����500HZ����
		//PORT6 ^= 0x20;	
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

