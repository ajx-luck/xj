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
	WDTCR=0;				//��ֹWDT
	
	IO_Init();	            //IO��ʼ��

	TCC=206;					//
	ISR=0;
	IMR=1;
		
	ENI();
	
	
	
	while(1)
	 {     
		WDTC(); //�幷

		if(!IntFlag)			//10msִ��һ��
			continue;		
		IntFlag = 0;
		if(P63)
		{
			//�����
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
			if(P65 == 0)	//�͵�ƽ��Ч
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
		P6CR &= 0xEF;	//P64����͵�ƽ
		P64 = 0;
}


void ledOff()
{
		P6CR |= 0x10;
		P64 = 1;			//���̵�
			
}


void IO_Init(void)
{
	//IO��ʼ��   
	PORT6 = 0x00;           	
	P6CR = 0x3D;			//PORT6��Ϊ���(0 ���,1 ����)
	PHCR = 0xDA;			//P61���� P63���� P65����
	PRD = 0xFF;
	
	_asm{
		mov	a,@0x02			//TCC��Ƶ����Ϊ1��8
		contw					
	}
}

void gotoSleep()
{
	
	sleepTime = 0;
	chrgFlag = 0;
	WDTCR=0x00;//��ֹWDT
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


