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
	WDTCR=0;				//禁止WDT
	
	IO_Init();	            //IO初始化

	TCC=6;					//timer=1/8*2*(256-6)*16=1ms,TCC中断1ms定时		主频8M/2T
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
		NOP(); //延时  
	 }

}

void PWM_Init_108K(void)
{
	//P62输出108K，占空比50%
	PRD = 74;				//设置周期		1/8*1*74=9.25us = 108.1K
	PDC1 = 37;				//设置占空比
	CPUCON = 0B01000000;	//PWM选择系统时钟8M
	PWMCON = 0B00010000;
}

void PWM_Init_190K(void)
{
	//P62输出190K，占空比50%
	PRD = 42;				//设置周期		1/8*1*42=5.25us = 190.5K
	PDC1 = 21;				//设置占空比
	CPUCON = 0B01000000;	//PWM选择系统时钟8M
	PWMCON = 0B00010000;	//不分频
}

void PWM_Init_1467K_84P(void)	//14.67K-84%
{
	//P62输出14.67K，占空比84%
	PRD = 136;				//设置周期		1/8*4*136=68us = 14.7K
	PDC1 = 114;				//设置占空比
	CPUCON = 0B01000000;	//PWM选择系统时钟8M
	PWMCON = 0B00011001;	//4分频
}

void PWM_Init_1467K_87P(void)	//14.67K-87%
{
	//P62输出14.67K，占空比87%
	PRD = 136;				//设置周期		1/8*4*136=68us = 14.7K
	PDC1 = 118;				//设置占空比
	CPUCON = 0B01000000;	//PWM选择系统时钟8M
	PWMCON = 0B00011001;	//4分频
}

void PWM_Init_1467K_90P(void)	//14.67K-90%
{
	//P62输出14.67K，占空比90%
	PRD = 136;				//设置周期		1/8*4*136=68us = 14.7K
	PDC1 = 122;				//设置占空比
	CPUCON = 0B01000000;	//PWM选择系统时钟8M
	PWMCON = 0B00011001;	//4分频
}

void PWM_Init_1467K_93P(void)	//14.67K-93%
{
	//P62输出14.67K，占空比93%
	PRD = 136;				//设置周期		1/8*4*136=68us = 14.7K
	PDC1 = 126;				//设置占空比
	CPUCON = 0B01000000;	//PWM选择系统时钟8M
	PWMCON = 0B00011001;	//4分频
}

void PWM_Init_1467K_96P(void)	//14.67K-96%
{
	//P62输出14.67K，占空比96%
	PRD = 136;				//设置周期		1/8*4*136=68us = 14.7K
	PDC1 = 130;				//设置占空比
	CPUCON = 0B01000000;	//PWM选择系统时钟8M
	PWMCON = 0B00011001;	//4分频
}

void PWM_Init_1467K_100P(void)	//14.67K-100%
{
	//P62输出14.67K，占空比100%
	PRD = 136;				//设置周期		1/8*4*136=68us = 14.7K
	PDC1 = 136;				//设置占空比
	CPUCON = 0B01000000;	//PWM选择系统时钟8M
	PWMCON = 0B00011001;	//4分频
}

void IO_Init(void)
{
	//IO初始化
	PORT5 = 0x00;
	P5CR = 0x00;			//PORT5设为输出(0 输出,1 输入)	    
	PORT6 = 0x00;           	
	P6CR = 0x00;			//PORT6设为输出(0 输出,1 输入)
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
		TCC=6;					//TCC赋初值

		PORT5^=0XFF;			//PORT5口输出500HZ波形	
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


