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
u8t count1min = 0;		
u8t count900s = 0;
u8t workStep = 0;
u8t keyCount = 0;
u8t pwmCount = 0;
u8t ledStep = 0;
u8t ledCount = 0;
u8t chrgCount = 0;

static bit IntFlag @0X20@0:bank 0;
static bit	longPressFlag @0X20@1:bank 0;


void IO_Init();
void keyCtr();
char keyRead(u8t keyStatus);
void workCtr();
void keyCtr();
void gotoSleep();
void chrgCtr();

void main()
{

    unsigned int i;

	WDTC();
	DISI();
	WDTCR=0x80;	
	workStep = 0;			
	LVDCON = 0xAD;
	IO_Init();	            //IO��ʼ��
	TCC=206;					//timer=1/8*2*(256-6)*16=1ms,TCC�ж�1ms��ʱ		��Ƶ8M/2T
	ISR=0;
	IMR=1;
	duty = 0;	
	ENI();
	
	
	for(;;)
	 {   
		
		if(workStep < 6)
		{
			P50 = 0;
			NOP();
			NOP();
			NOP();
			P50 = 0;
		}
		for(i=0;i<duty;i++)
		{
			P50 = 1;
			NOP();
		}
		WDTC(); //�幷
		if(!IntFlag)
			continue;
		IntFlag = 0;
		if(P64 == 0)
		{
			keyCtr(); 
			workCtr();
			
		}
		else
		{
			P50 = 0;
			duty = 0;
			workStep = 0;
			count900s = 0;
			//�����
			chrgCtr();
		}
		
		if(workStep)
		{
			if(++count1s>= 100)
			{
				count1s = 0;
				if(++count1min >= 60)
				{
					count1min = 0;
					count900s++;
				}
				
			}
			
			if(count900s >= 15 && keyCount == 0)
				gotoSleep();
		}
		

	 }

}

void chrgCtr()
{
	
	if(LVDCON & 0x40)
	{
		P65 = 1;
		if(++ledCount > 50)
		{
			ledCount = 0;
			if(++ledStep > 6)
			{
				ledStep = 0;
			}
		}
		chrgCount = 0;
	}
	else
	{
		if(++chrgCount > 250)
		{
			P65 = 0;
			chrgCount = 250;
			PORT5 |= 0x0E;
			PORT6 |= 0x07;
		}
	}
	switch(ledStep)
	{
		case 0:
		LAOFF();
		LBOFF();
		break;
		case 1:
		L1ON();
		break;
		case 2:
		L2ON();
		break;
		case 3:
		L3ON();
		break;
		case 4:
		L4ON();
		break;
		case 5:
		L5ON();
		break;
		case 6:
		L6ON();
		break;
	}
}


void keyCtr()
{
	char kclick = keyRead(0x80 & (~PORT6));
	
	if(kclick == 1)
	{
		
	//Key1����
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
		duty = 9;
		L1ON();
		break;
		case 2:
		duty = 11;
		L2ON();
		break;
		case 3:
		duty = 14;
		L3ON();
		break;
		case 4:
		duty = 19;
		L4ON();
		break;
		case 5:
		duty = 35;
		L5ON();
		break;
		case 6:
		duty = 45;
		L6ON();
		break;
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
	P65 = 0;
	P50 = 0;
	LAOFF();
	LBOFF();
	count900s = 0;
	workStep = 0;
	WDTCR=0x00;//��ֹWDT
	ICIECR = 0xE0;
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
	P6CR = 0xD0;			//PORT6��Ϊ���(0 ���,1 ����)
	PHCR = 0x7F;
	PHDCR = 0xFF;
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


