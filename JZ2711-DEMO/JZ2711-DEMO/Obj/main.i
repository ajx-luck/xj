#line 1 ".\Src\main.c"
#line 1 "C:\Sonix\SN8_C_~1.209\C\include\SonixDef.h"



unsigned long GetRollingCode(unsigned int offset);








struct _intrinsicbitfield
{
	unsigned bit0:1;
	unsigned bit1:1;
	unsigned bit2:1;
	unsigned bit3:1;
	unsigned bit4:1;
	unsigned bit5:1;
	unsigned bit6:1;
	unsigned bit7:1;
};













#line 1 ".\Src\main.c"



















#line 1 "C:\Sonix\SN8_C_~1.209\C\include\SN8P2711B.h"



void _ClearWatchDogTimer(void);
void _ClrRAM(void);



sfr	R = 0x82;
sfr	Z = 0x83;
sfr	Y = 0x84;
sfr	PFLAG = 0x86;
sbit	FZ = 0x86:0;
sbit	FDC = 0x86:1;
sbit	FC = 0x86:2;
sbit	FLVD24 = 0x86:4;
sbit	FLVD36 = 0x86:5;
sbit	FNPD = 0x86:6;
sbit	FNT0 = 0x86:7;
sfr	P4CON = 0xae;
sfr	VREFH = 0xaf;
sbit	FVHS0 = 0xaf:0;
sbit	FVHS1 = 0xaf:1;
sbit	FEVHENB = 0xaf:7;
sfr	ADM = 0xB1;
sbit	FADENB = 0xB1:7;
sbit	FADS = 0xB1:6;
sbit	FEOC = 0xB1:5;
sbit	FGCHS = 0xB1:4;
sbit	FCHS2 = 0xB1:2;
sbit	FCHS1 = 0xB1:1;
sbit	FCHS0 = 0xB1:0;
sfr	ADB = 0xb2;
sfr	ADR = 0xb3;
sbit	FADCKS1 = 0xb3:6;
sbit	FADCKS0 = 0xb3:4;
sbit	FADB3 = 0xb3:3;
sbit	FADB2 = 0xb3:2;
sbit	FADB1 = 0xb3:1;
sbit	FADB0 = 0xb3:0;
sfr	ADT = 0xb4;
sbit	FADTS1 = 0xb4:7;
sbit	FADTS0 = 0xb4:6;
sbit	FADT4 = 0xb4:4;
sbit	FADT3 = 0xb4:3;
sbit	FADT2 = 0xb4:2;
sbit	FADT1 = 0xb4:1;
sbit	FADT0 = 0xb4:0;
sfr	P0M = 0xb8;
sbit	FP00M = 0xb8:0;
sbit	FP01M = 0xb8:1;
sbit	FP02M = 0xb8:2;
sbit	FP03M = 0xb8:3;
sfr	PEDGE = 0xbf;
sbit	FP00G1 = 0xbf:4;
sbit	FP00G0 = 0xbf:3;
sfr	P4M = 0xc4;
sbit	FP40M = 0xc4:0;
sbit	FP41M = 0xc4:1;
sbit	FP42M = 0xc4:2;
sbit	FP43M = 0xc4:3;
sbit	FP44M = 0xc4:4;
sfr	P5M = 0xc5;
sbit	FP53M = 0xc5:3;
sbit	FP54M = 0xc5:4;
sfr	INTRQ = 0xc8;
sbit	FP00IRQ = 0xc8:0;
sbit	FP01IRQ = 0xc8:1;
sbit	FTC0IRQ = 0xc8:5;
sbit	FTC1IRQ = 0xc8:6;
sbit	FADCIRQ = 0xc8:7;
sfr	INTEN = 0xc9;
sbit	FP00IEN = 0xc9:0;
sbit	FP01IEN = 0xc9:1;
sbit	FTC0IEN = 0xc9:5;
sbit	FTC1IEN = 0xc9:6;
sbit	FADCIEN = 0xc9:7;
sfr	OSCM = 0xca;
sbit	FCPUM1 = 0xca:4;
sbit	FCPUM0 = 0xca:3;
sbit	FCLKMD = 0xca:2;
sbit	FSTPHX = 0xca:1;
sfr	WDTR = 0xcc;
sfr	PCL = 0xce;
sfr	PCH = 0xcf;
sfr	P0 = 0xd0;
sbit	FP00 = 0xd0:0;
sbit	FP01 = 0xd0:1;
sbit	FP02 = 0xd0:2;
sbit	FP03 = 0xd0:3;
sbit	FP04 = 0xd0:4;
sfr	P4 = 0xd4;
sbit	FP40 = 0xd4:0;
sbit	FP41 = 0xd4:1;
sbit	FP42 = 0xd4:2;
sbit	FP43 = 0xd4:3;
sbit	FP44 = 0xd4:4;
sfr	P5 = 0xd5;
sbit	FP53 = 0xd5:3;
sbit	FP54 = 0xd5:4;
sfr	T0M = 0xd8;
sbit	FTC0GN = 0xd8:1;
sbit	FTC0X8 = 0xd8:2;
sbit	FTC1X8 = 0xd8:3;
sfr	TC0M = 0xda;
sbit	FTC0ENB = 0xda:7;
sbit	FTC0RATE2 = 0xda:6;
sbit	FTC0RATE1 = 0xda:5;
sbit	FTC0RATE0 = 0xda:4;
sbit	FTC0CKS = 0xda:3;
sbit	FALOAD0 = 0xda:2;
sbit	FTC0OUT = 0xda:1;
sbit	FPWM0OUT = 0xda:0;
sfr	TC0C = 0xdb;
sfr	TC0R = 0xcd;
sfr	TC1M = 0xdc;
sbit	FTC1ENB = 0xdc:7;
sbit	FTC1RATE2 = 0xdc:6;
sbit	FTC1RATE1 = 0xdc:5;
sbit	FTC1RATE0 = 0xdc:4;
sbit	FTC1CKS = 0xdc:3;
sbit	FALOAD1 = 0xdc:2;
sbit	FTC1OUT = 0xdc:1;
sbit	FPWM1OUT = 0xdc:0;
sfr	TC1C = 0xdd;
sfr	TC1R = 0xde;
sfr	STKP = 0xdf;
sbit	FGIE = 0xdf:7;
sbit	FSTKPB2 = 0xdf:2;
sbit	FSTKPB1 = 0xdf:1;
sbit	FSTKPB0 = 0xdf:0;
sfr	P0UR = 0xe0;
sfr	P4UR = 0xe4;
sfr	P5UR = 0xe5;
sfr	_YZ = 0xe7;
sfr	STK3L = 0xf8;
sfr	STK3H = 0xf9;
sfr	STK2L = 0xfa;
sfr	STK2H = 0xfb;
sfr	STK1L = 0xfc;
sfr	STK1H = 0xfd;
sfr	STK0L = 0xfe;
sfr	STK0H = 0xff;





#line 21 ".\Src\main.c"
#line 1 ".\Include\define.h"

#line 5 ".\Include\define.h"



struct bitRegister{
	unsigned bit0:1;
	unsigned bit1:1;
	unsigned bit2:1;
	unsigned bit3:1;
	unsigned bit4:1;
	unsigned bit5:1;
	unsigned bit6:1;
	unsigned bit7:1;
};

typedef unsigned char BYTE;
typedef unsigned long WORD;
typedef double DWORD;

union _AD_Union_RESULT_
{
	struct _AD_Struct_RESULT_
	{
		unsigned char AD_RESULT_LO;
		unsigned char AD_RESULT_HI;
	}AD_SHORT_BUF;
	unsigned long AD_RESULT;
}AD_LONG_BUF;































bit F_LED;
bit	F_DIG1_DIG2;
bit	F_AD_SUCCESS;



unsigned char AD_JUDGE_BASE;
unsigned char AD_RCE_TURNS;
unsigned char AD_8_TIMES;
unsigned long AD_ARRAY_ONCE[5u];
unsigned long AD_8T_SUM;
unsigned long AD_8T_SUM_OLD;
unsigned char ABL_SUM;
unsigned long AD_ONCE_VAL;
unsigned char FLAG_LED_LEVEL;
unsigned char LED_CNT;

















#line 22 ".\Src\main.c"



void System_init(void);
void TC0_init(void);
void DELAY_US(unsigned char DELAY_CNT);
void AD_NTC_IN(void);
void RESULT_BUBBLING(void);
void SEND_DAT_TO_PC(unsigned long SEND_DAT);



unsigned long __ROM TEMP_Table[]=
{

	0x03BE,0x0483,0x0558,0x0637,0x071C,0x0800,0x8DD,0x09AF,

	0x0A72,0x0b25,0x0BC6,0x0C55,0x0CD3,0x0d41,0x0DA1,0x0DF4
};



void __interrupt[0x08] inrserv(void)
{
	unsigned char temp;
	if(FTC0IRQ== 1u)
	{
		FTC0IRQ=0u;

		AD_JUDGE_BASE++;
		temp = FLAG_LED_LEVEL;

		F_DIG1_DIG2=~F_DIG1_DIG2;

		P0=0u;
		P4=0x06u;
		P5=0u;


		if(F_DIG1_DIG2== 1u)
		{

 FP42 =0u;
 FP41 =1u;


 FP03 =1u;
			if(temp>1)FP02 =1u;
			if(temp>2)FP53 =1u;
			if(temp>3)FP54 =1u;
			if(temp>4)FP01 =1u;
			if(temp>5)FP00 =1u;
			if(temp>6)FP40 =1u;
			if(temp>7)FP44 =1u;
		}

		else
		{

 FP42 =1u;
 FP41 =0u;

			if(temp>8)FP03 =1u;
			if(temp>9)FP02 =1u;
			if(temp>10)FP53 =1u;
			if(temp>11)FP54 =1u;
			if(temp>12)FP01 =1u;
			if(temp>13)FP00 =1u;
			if(temp>14)FP40 =1u;
			if(temp>15)FP44 =1u;
		}

	}
}



void main(void)
{
	STKP=0x07u;
	System_init();
	TC0_init();
	DELAY_US(200u);
	while(1)
	{
		WDTR=0x5Au;


		if(AD_JUDGE_BASE==3u)
		{
			AD_JUDGE_BASE=0u;

			AD_RCE_TURNS=AD_RCE_TURNS+1;
			AD_NTC_IN();
			AD_ARRAY_ONCE[AD_RCE_TURNS-1u]=AD_LONG_BUF.AD_RESULT;
		}

		if(AD_RCE_TURNS==5u)
		{
			AD_RCE_TURNS=0u;

			F_AD_SUCCESS=1u;
			RESULT_BUBBLING();
		}

		if(F_AD_SUCCESS)
		{
			F_AD_SUCCESS=0u;

			AD_8_TIMES=AD_8_TIMES+1u;
			AD_8T_SUM=AD_8T_SUM+AD_ARRAY_ONCE[2];
		}

		if(AD_8_TIMES==8u)
		{
			AD_8_TIMES=0u;

			if(AD_8T_SUM > AD_8T_SUM_OLD)
			{
				ABL_SUM = AD_8T_SUM - AD_8T_SUM_OLD;
			}
			else
			{
				ABL_SUM = AD_8T_SUM - AD_8T_SUM_OLD;
			}

			if(ABL_SUM > 50u)
			{
				AD_8T_SUM_OLD = AD_8T_SUM;
			}
			AD_ONCE_VAL = AD_8T_SUM_OLD / 8u;

			AD_8T_SUM=0u;

			for(LED_CNT=0u;LED_CNT<16u;LED_CNT++)
			{
				if(AD_ONCE_VAL > TEMP_Table[LED_CNT]) FLAG_LED_LEVEL = LED_CNT + 1u;
			}

		}
	}
}



void RESULT_BUBBLING(void)
{
	unsigned char i,j,m;
	unsigned long AD_ARRAY_ONCE_BUF;
	m=AD_RCE_TURNS;
	for(i=1;i<AD_RCE_TURNS;i++)
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



void AD_NTC_IN(void)
{
	unsigned char temp_hi,temp_mid;
	AD_LONG_BUF.AD_RESULT=0u;
	ADM=0u;
	ADR=0x10u;
	P4M=0x17u;
	P4UR=0u;

	VREFH=0x03u;
	P4CON=0x08u;
	FADENB=1u;
	ADM=0x03u|ADM;

	FGCHS=1u;
	DELAY_US(50u);

	FADCIRQ=0u;
	FADCIEN=0u;

	FGIE=0u;
	FEOC=0u;
	FADS=1u;
	while(FEOC== 0u)
	{
		WDTR=0x5Au;
	}
	FGIE=1u;

	temp_mid=ADB;
	temp_hi=ADB;
	temp_hi=temp_hi>>4u;

	AD_LONG_BUF.AD_SHORT_BUF.AD_RESULT_LO=ADR & 0x0Fu;

	temp_mid=temp_mid<<4u;
	AD_LONG_BUF.AD_SHORT_BUF.AD_RESULT_LO=AD_LONG_BUF.AD_SHORT_BUF.AD_RESULT_LO |(temp_mid & 0xF0u);

	AD_LONG_BUF.AD_SHORT_BUF.AD_RESULT_HI=temp_hi & 0x0Fu;
}



void System_init(void)
{

	P0=0x00u;
	P0M=0x0fu;
	P0UR=0x00u;
	P0=0x00u;


	P4=0x00u;
	P4M=0x17u;
	P4UR=0x00u;
	P4=0x00u;


	P5=0x00u;
	P5M=0x18u;
	P5UR=0x00u;
	P5=0x00u;

	F_DIG1_DIG2=0u;
	AD_JUDGE_BASE=0u;
	AD_RCE_TURNS=0u;
	F_AD_SUCCESS=0u;
	AD_8_TIMES=0u;
	AD_8T_SUM=0u;
	AD_8T_SUM_OLD=0u;
	AD_ONCE_VAL=0u;
	FLAG_LED_LEVEL=0u;

}



void TC0_init(void)
{



	INTEN=0x00u;
	T0M=0x0Cu;
  	TC0M=0x14u;

	TC0C=0x00u;
	TC0R=0x00u;

	FTC0IRQ=0u;
	FTC0IEN=1u;
	FTC0ENB=1u;
	FGIE=1u;
}




void SEND_DAT_TO_PC(unsigned long SEND_DAT)
{
	unsigned char TXCNT,TXDATA;
	TXDATA = *(((BYTE*)(& SEND_DAT))+1);
	for(TXCNT=0u;TXCNT<8u;TXCNT++)
	{
		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }
		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}
		TXDATA=TXDATA<<1u;
	}
	TXDATA = SEND_DAT;
	for(TXCNT=0u;TXCNT<8u;TXCNT++)
	{
		if(TXDATA & 0x80u)	{FP44=1u; DELAY_US(10u);FP44=0u; DELAY_US(4u); }
		else				{FP44=1u; DELAY_US(4u); FP44=0u; DELAY_US(10u);}
		TXDATA=TXDATA<<1u;
	}
}



void DELAY_US(unsigned char DELAY_CNT)
{
    while(DELAY_CNT--);
}


