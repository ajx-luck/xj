#include "X8P1101B.h"
#define DISI()  _asm{disi}
#define WDTC()  _asm{wdtc}
#define NOP()   _asm{nop}
#define ENI()   _asm{eni}
#define SLEP()  _asm{slep}

void IO_Init();
void PWM_Init_108K(void);
void PWM_Init_190K(void);
void PWM_Init_1467K_84P(void);
void PWM_Init_1467K_87P(void);
void PWM_Init_1467K_90P(void);
void PWM_Init_1467K_93P(void);
void PWM_Init_1467K_96P(void);
void PWM_Init_1467K_100P(void);

void main()
{

    unsigned int i;

	WDTC();
	DISI();
	WDTCR=0;				//��ֹWDT
	
	IO_Init();	            //IO��ʼ��

	TCC=6;					//timer=1/8*2*(256-6)*16=1ms,TCC�ж�1ms��ʱ		��Ƶ8M/2T
	ISR=0;
	IMR=1;
		
	ENI();
	
	//PWM_Init_108K();
	PWM_Init_190K();
	//PWM_Init_1467K_84P();
	//PWM_Init_1467K_87P();
	//PWM_Init_1467K_90P();
	//PWM_Init_1467K_93P();
	//PWM_Init_1467K_96P();
	//PWM_Init_1467K_100P();
	
	while(1)
	 {   
		NOP(); //��ʱ  
	 }

}

void PWM_Init_108K(void)
{
	//P62���108K��ռ�ձ�50%
	PRD = 74;				//��������		1/8*1*74=9.25us = 108.1K
	PDC1 = 37;				//����ռ�ձ�
	CPUCON = 0B01000000;	//PWMѡ��ϵͳʱ��8M
	PWMCON = 0B00010000;
}

void PWM_Init_190K(void)
{
	//P62���190K��ռ�ձ�50%
	PRD = 42;				//��������		1/8*1*42=5.25us = 190.5K
	PDC1 = 21;				//����ռ�ձ�
	CPUCON = 0B01000000;	//PWMѡ��ϵͳʱ��8M
	PWMCON = 0B00010000;	//����Ƶ
}

void PWM_Init_1467K_84P(void)	//14.67K-84%
{
	//P62���14.67K��ռ�ձ�84%
	PRD = 136;				//��������		1/8*4*136=68us = 14.7K
	PDC1 = 114;				//����ռ�ձ�
	CPUCON = 0B01000000;	//PWMѡ��ϵͳʱ��8M
	PWMCON = 0B00011001;	//4��Ƶ
}

void PWM_Init_1467K_87P(void)	//14.67K-87%
{
	//P62���14.67K��ռ�ձ�87%
	PRD = 136;				//��������		1/8*4*136=68us = 14.7K
	PDC1 = 118;				//����ռ�ձ�
	CPUCON = 0B01000000;	//PWMѡ��ϵͳʱ��8M
	PWMCON = 0B00011001;	//4��Ƶ
}

void PWM_Init_1467K_90P(void)	//14.67K-90%
{
	//P62���14.67K��ռ�ձ�90%
	PRD = 136;				//��������		1/8*4*136=68us = 14.7K
	PDC1 = 122;				//����ռ�ձ�
	CPUCON = 0B01000000;	//PWMѡ��ϵͳʱ��8M
	PWMCON = 0B00011001;	//4��Ƶ
}

void PWM_Init_1467K_93P(void)	//14.67K-93%
{
	//P62���14.67K��ռ�ձ�93%
	PRD = 136;				//��������		1/8*4*136=68us = 14.7K
	PDC1 = 126;				//����ռ�ձ�
	CPUCON = 0B01000000;	//PWMѡ��ϵͳʱ��8M
	PWMCON = 0B00011001;	//4��Ƶ
}

void PWM_Init_1467K_96P(void)	//14.67K-96%
{
	//P62���14.67K��ռ�ձ�96%
	PRD = 136;				//��������		1/8*4*136=68us = 14.7K
	PDC1 = 130;				//����ռ�ձ�
	CPUCON = 0B01000000;	//PWMѡ��ϵͳʱ��8M
	PWMCON = 0B00011001;	//4��Ƶ
}

void PWM_Init_1467K_100P(void)	//14.67K-100%
{
	//P62���14.67K��ռ�ձ�100%
	PRD = 136;				//��������		1/8*4*136=68us = 14.7K
	PDC1 = 136;				//����ռ�ձ�
	CPUCON = 0B01000000;	//PWMѡ��ϵͳʱ��8M
	PWMCON = 0B00011001;	//4��Ƶ
}

void IO_Init(void)
{
	//IO��ʼ��
	PORT5 = 0x00;
	P5CR = 0x00;			//PORT5��Ϊ���(0 ���,1 ����)	    
	PORT6 = 0x00;           	
	P6CR = 0x00;			//PORT6��Ϊ���(0 ���,1 ����)
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
		TCC=6;					//TCC����ֵ

		PORT5^=0XFF;			//PORT5�����500HZ����	
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


