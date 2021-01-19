//*******************************************************************
//项目编号：08060
//程序编号：v1
//更新版本：
//更新日期：2018.8.24
//作    者：CYN	
//*******************************************************************
//========================================================
//              ----------------------------------
//         3V   |1    VDD             VSS     14 |  GND
//        SEG_A |2  P0.3/XIN       P4.4/AIN4  13 | SEG_H
//        SEG_B |3  P0.2/XOUT      P4.3/AIN3  12 |  NTC
//         NC   |4  P0.4/RST       P4.2/AIN2  11 | SEG_DIG1
//        SEG_C |5  P5.3/PWM1      P4.1/AIN1  10 | SEG_DIG2
//        SEG_D |6  P5.4/PWM0      P4.0/AIN0  9  | SEG_G
//        SEG_E |7  P0.1           P0.0       8  | SEG_F
//              ----------------------------------
//                         MCU-SN8P2711
//========================================================
#include<SN8P2711B.h>
#include"define.h"
//****************************************************************** 
//函数*声明*********************************************************
//******************************************************************
void System_init(void);	//初始化函数
void TC0_init(void);	//TC0初始化函数
void DELAY_US(unsigned char DELAY_CNT);//延时函数
void AD_NTC_IN(void);	//AD初始化函数
void RESULT_BUBBLING(void);
void SEND_DAT_TO_PC(unsigned long SEND_DAT);
//******************************************************************
//ROM_TABLE
//******************************************************************
unsigned long __ROM TEMP_Table[]=
{
	//0℃	  5	    10	  15	 20		25	   30	 35	   
	0x03BE,0x0483,0x0558,0x0637,0x071C,0x0800,0x8DD,0x09AF,
	//40	  45	 50	  55	   60	  65	70	  75
	0x0A72,0x0b25,0x0BC6,0x0C55,0x0CD3,0x0d41,0x0DA1,0x0DF4
};
//******************************************************************
//中断函数:1ms******************************************************
//******************************************************************
void __interrupt[0x08] inrserv(void)//
{
	unsigned char temp;
	if(FTC0IRQ==SET)//TC0:1ms中断//FP44=~FP44;//test_cui
	{
		FTC0IRQ=0u;
		
		AD_JUDGE_BASE++;			//AD采样计时计数器
		temp = FLAG_LED_LEVEL;			//
		
		F_DIG1_DIG2=~F_DIG1_DIG2;	//两段扫描

		P0=0u;						//扫描：正极清0；负极置1
		P4=0x06u;					//DIG1=1;DIG2=1;
		P5=0u;	
		
		//--------------------------------------------------------------------
		if(F_DIG1_DIG2==SET)
		{
			//**********************************************************
			LED_DIG1=0u;
			LED_DIG2=1u;
			//**********************************************************
			//if(temp>0)	LED_A=1u;//0℃<X<5℃
			LED_A=1u;				//D1// 0℃><X
			if(temp>1)	LED_B=1u;	//D2// 5℃<X
			if(temp>2)	LED_C=1u;	//D3//10℃<X
			if(temp>3)	LED_D=1u;	//D4//15℃<X
			if(temp>4)	LED_E=1u;	//D5//20℃<X
			if(temp>5)	LED_F=1u;	//D6//25℃<X
			if(temp>6)	LED_G=1u;	//D7//30℃<X
			if(temp>7)	LED_H=1u;	//D8//35℃<X
		}
		//--------------------------------------------------------------------
		else
		{
			//**********************************************************
			LED_DIG1=1u;
			LED_DIG2=0u;
			//**********************************************************
			if(temp>8)	LED_A=1u;	//D9 //40℃<X
			if(temp>9)	LED_B=1u;	//D10//45℃<X
			if(temp>10)	LED_C=1u;	//D11//50℃<X
			if(temp>11)	LED_D=1u;	//D12//55℃<X
			if(temp>12)	LED_E=1u;	//D13//60℃<X
			if(temp>13)	LED_F=1u;	//D14//65℃<X
			if(temp>14)	LED_G=1u;	//D15//70℃<X
			if(temp>15)	LED_H=1u;	//D16//75℃<X
		}//*/
		//--------------------------------------------------------------------
	}
}
//******************************************************************
//主函数************************************************************
//******************************************************************
void main(void)//;IRC=16M/4=4M
{
	STKP=0x07u;
	System_init();
	TC0_init();
	DELAY_US(200u);
	while(1)
	{
		WDTR=0x5Au;
		//*******************************************************************
		//TC0定时 AD采样时间定3ms采样一次
		if(AD_JUDGE_BASE==3u)	//(3ms)执行一次 **test;3.12ms**FP03=~FP03;//test_cui
		{
			AD_JUDGE_BASE=0u;

			AD_RCE_TURNS=AD_RCE_TURNS+1;	//AD采集次数
			AD_NTC_IN();
			AD_ARRAY_ONCE[AD_RCE_TURNS-1u]=AD_LONG_BUF.AD_RESULT;
		}//*******************************************************************
		//AD采样5次数据 则排列大小：小到大
		if(AD_RCE_TURNS==5u)	//采样5次 (15ms) **test;15.2ms**FP01=~FP01;//test_cui
		{						
			AD_RCE_TURNS=0u;							

			F_AD_SUCCESS=1u;
			RESULT_BUBBLING();	//排序 小到大	
		}//*******************************************************************
		//每5个数据 则取中间值
		if(F_AD_SUCCESS)
		{
			F_AD_SUCCESS=0u;

			AD_8_TIMES=AD_8_TIMES+1u;
			AD_8T_SUM=AD_8T_SUM+AD_ARRAY_ONCE[2];
		}//*******************************************************************
		//40个数据取8个有效数据 然后8个数据和
		if(AD_8_TIMES==8u)	//(120ms)**test;122ms**FP00=~FP00;//test_cui
		{	
			AD_8_TIMES=0u;
			//当前8个有效AD数据的SUM 与 上一次有效数据的 SUM 的差值
			if(AD_8T_SUM > AD_8T_SUM_OLD) 
			{
				ABL_SUM = AD_8T_SUM - AD_8T_SUM_OLD;
			}
			else	
			{
				ABL_SUM = AD_8T_SUM - AD_8T_SUM_OLD;
			}
			//两次值对比，差值大于窗口 则更新
			if(ABL_SUM > I_ABL_SUM) 
			{
				AD_8T_SUM_OLD = AD_8T_SUM;//数据变化跨度大则更新数据
			}
			AD_ONCE_VAL = AD_8T_SUM_OLD / 8u;
			//SEND_DAT_TO_PC(AD_ONCE_VAL);
			AD_8T_SUM=0u;
			//*******************************************************************
			for(LED_CNT=0u;LED_CNT<16u;LED_CNT++)
			{			
				if(AD_ONCE_VAL > TEMP_Table[LED_CNT]) FLAG_LED_LEVEL = LED_CNT + 1u;
			} 
			//*******************************************************************
		}
	}
}
//******************************************************************
//冒泡排序函数**从小到大********************************************
//******************************************************************
void RESULT_BUBBLING(void)
{	
	unsigned char i,j,m;
	unsigned long AD_ARRAY_ONCE_BUF;
	m=AD_RCE_TURNS;
	for(i=1;i<AD_RCE_TURNS;i++)//冒泡排序
	{
		m=m-1u;
		for(j=0;j<m;j++)
		{
			if(AD_ARRAY_ONCE[j]>AD_ARRAY_ONCE[j+1])
			{
				AD_ARRAY_ONCE_BUF=AD_ARRAY_ONCE[j];
				AD_ARRAY_ONCE[j]=AD_ARRAY_ONCE[j+1];
				AD_ARRAY_ONCE[j+1]=AD_ARRAY_ONCE_BUF;
			}
		}
	}
}
//******************************************************************
//AD初始化函数******************************************************
//******************************************************************
void AD_NTC_IN(void)
{
	unsigned char temp_hi,temp_mid;
	AD_LONG_BUF.AD_RESULT=0u;//AD缓存清0
	ADM=0u;
	ADR=0x10u;	//XnXn 0000-nn:00=Fcpu/16;01=Fcpu/8;10=Fcpu;11=Fcpu/2
	P4M=0x17u;	//0001 0111-P43输入模式；1=out;0=in 
	P4UR=0u;	//0000 0000-1=pull	0=no pull

	VREFH=0x03u;//nxxx xxmm-mm:00=2V;01=3V;10=4V;11=VDD-基准
	P4CON=0x08u;//xxx0 1000-	0=GBIO;1=ADIN
	FADENB=1u;	//EN ADENB
	ADM=0x03u|ADM;

	FGCHS=1u;	//1=open AIN 通道;0=close
	DELAY_US(50u);

	FADCIRQ=0u;	//;清ADC中断请求
	FADCIEN=0u;	//;关闭中断使能
	//******************************************************************
	FGIE=0u;
	FEOC=0u;	//
	FADS=1u;	//start AD 
	while(FEOC==RESET)
	{
		WDTR=0x5Au;	//等待AD转换结束
	}
	FGIE=1u;
 	//******************************************************************
	temp_mid=ADB;	//AD高8位(ADB11~ADB4)
	temp_hi=ADB;
	temp_hi=temp_hi>>4u;	//AD(xxxx,ADB11~ADB8)

	AD_LONG_BUF.AD_SHORT_BUF.AD_RESULT_LO=ADR & 0x0Fu; //取AD数据低4位(xxxx,ADB3~ADB0)

	temp_mid=temp_mid<<4u;	//AD(ADB7~ADB4,xxxx)
	AD_LONG_BUF.AD_SHORT_BUF.AD_RESULT_LO=AD_LONG_BUF.AD_SHORT_BUF.AD_RESULT_LO |(temp_mid & 0xF0u);	//(ADB7~ADB0)

	AD_LONG_BUF.AD_SHORT_BUF.AD_RESULT_HI=temp_hi & 0x0Fu;												//(ADB11~ADB8)	
}
//******************************************************************
//初始化函数********************************************************
//******************************************************************
void System_init(void)
{
	//P0
	P0=0x00u;	//0000 0000
	P0M=0x0fu;	//0000 1111  1:out 	;0:in
	P0UR=0x00u;	//0000 0000  1:en	;0:dis pull
	P0=0x00u;	//0000 0000

	//P4
	P4=0x00u;	//0000 0000
	P4M=0x17u;	//0001 0111  1:out 	;0:in
	P4UR=0x00u;	//0000 0000  1:en	;0:dis pull
	P4=0x00u;	//0000 0000

	//P5
	P5=0x00u;	//0000 0000
	P5M=0x18u;	//0001 1000  1:out 	;0:in
	P5UR=0x00u;	//0000 0000  1:en	;0:dis pull
	P5=0x00u;	//0000 0000
	//***************************************************************
	F_DIG1_DIG2=0u;		//两个公共端扫描标志位
	AD_JUDGE_BASE=0u;	//AD采样时间计数器
	AD_RCE_TURNS=0u;
	F_AD_SUCCESS=0u;
	AD_8_TIMES=0u;
	AD_8T_SUM=0u;
	AD_8T_SUM_OLD=0u;
	AD_ONCE_VAL=0u;
	FLAG_LED_LEVEL=0u;
	//***************************************************************
}
//******************************************************************
//TC0函数初始化*****************************************************
//******************************************************************
void TC0_init(void)
{
//;--------------------------------------------------------    
//;TC0 定时基准  时钟Fosc=16M/预分频64 溢出时间2048us
//;--------------------------------------------------------
	INTEN=0x00u;//中断使能
	T0M=0x0Cu;	//TC0时钟为Fosc
  	TC0M=0x14u;	//;自动装载  TC0RATE=Fosc/64
	
	TC0C=0x00u;	//
	TC0R=0x00u;	//

	FTC0IRQ=0u;
	FTC0IEN=1u;
	FTC0ENB=1u;
	FGIE=1u;
}
//******************************************************************
//测试函数**********************************************************
//******************************************************************
//定义	:先发高位~最后低位
void SEND_DAT_TO_PC(unsigned long SEND_DAT)
{
	unsigned char TXCNT,TXDATA;
	TXDATA = HIBYTE(SEND_DAT);
	for(TXCNT=0u;TXCNT<8u;TXCNT++)
	{
		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1
		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}
		TXDATA=TXDATA<<1u;	//左移1位
	}
	TXDATA = SEND_DAT;
	for(TXCNT=0u;TXCNT<8u;TXCNT++)
	{
		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }//BIT1
		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}
		TXDATA=TXDATA<<1u;	//左移1位
	}
}
//******************************************************************
//延时函数：函数定义*******16MHz  4'**(4MHz)************************
//******************************************************************
void DELAY_US(unsigned char DELAY_CNT)    // ;(2*cnt+3.5)us
{
    while(DELAY_CNT--);
}//End of  DELAY_US();
//******************************************************************
//Code_ending
//******************************************************************