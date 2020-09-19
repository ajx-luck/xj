.autoimport
EM78P153B EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\mcuproject\xj\jinmoqiang\PWM.c",100,0,3,0
.stabs "int:t1=r1;-128;127;",128,0,0,0
.stabs "char:t2=r2;-128;127;",128,0,0,0
.stabs "double:t3=r1;3;0;",128,0,0,0
.stabs "float:t4=r1;3;0;",128,0,0,0
.stabs "long double:t5=r1;3;0;",128,0,0,0
.stabs "long:t6=r1;-2147483648;2147483647;",128,0,0,0
.stabs "long long:t7=r1;-2147483648;2147483647;",128,0,0,0
.stabs "short:t8=r1;-32768;32767;",128,0,0,0
.stabs "signed char:t9=r1;-128;127;",128,0,0,0
.stabs "unsigned char:t10=r1;0;255;",128,0,0,0
.stabs "unsigned long:t11=r1;0;4294967295;",128,0,0,0
.stabs "unsigned long long:t12=r1;0;4294967295;",128,0,0,0
.stabs "unsigned short:t13=r1;0;65535;",128,0,0,0
.stabs "unsigned int:t14=r1;0;255;",128,0,0,0
.stabs "void:t15=15",128,0,0,0
.stabs "bit:t16=r16;0;1;",128,0,0,0
public _main
public main_bp
.section ".code"
.stabs "main:F15",36,0,0,_main
.section ".S0",C_CODE
.SYMDEF ".S0" 
_main:
.SYMDEF "_main" 
.stabs "i:14",128,0,0,main_bp-1
.stabn 192,0,0,L5
L5:
.stabn 68,0,19,L7
L7:
.stabn 68,0,23,L8
L8:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(23):"
wdtc
.stabn 68,0,23,L9
L9:
.stabn 68,0,24,L10
L10:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(24):"
disi
.stabn 68,0,24,L11
L11:
.stabn 68,0,25,L12
L12:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,27,L13
L13:
call _IO_Init
.stabn 68,0,29,L14
L14:
mov a,@6
STA _TCC,0,0
.stabn 68,0,30,L15
L15:
clr _ISR
.stabn 68,0,31,L16
L16:
mov a,@1
STA _IMR,0,2
.stabn 68,0,33,L17
L17:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(33):"
eni
.stabn 68,0,33,L18
L18:
.stabn 68,0,36,L19
L19:
call _PWM_Init_190K
jmp @L$3
L$2:
.stabn 192,0,1,L20
L20:
.stabn 68,0,45,L21
L21:
.stabn 68,0,46,L22
L22:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(46):"
nop
.stabn 68,0,46,L23
L23:
.stabn 68,0,47,L24
L24:
.stabn 224,0,1,L25
L25:
L$3:
.stabn 68,0,44,L26
L26:
jmp @L$2
.stabn 68,0,49,L27
L27:
.stabn 224,0,0,L28
L28:
L$1:
ret
.STACK main_bp,local,1
public _PWM_Init_108K
public PWM_Init_108K_bp
.stabs "PWM_Init_108K:F15",36,0,0,_PWM_Init_108K
.section ".S1",C_CODE
.SYMDEF ".S1" 
_PWM_Init_108K:
.SYMDEF "_PWM_Init_108K" 
mov a,ecx
mov PWM_Init_108K_bp-4,a
mov a,ecx+1
mov PWM_Init_108K_bp-3,a
mov a,ecx+2
mov PWM_Init_108K_bp-2,a
mov a,ecx+3
mov PWM_Init_108K_bp-1,a
.stabn 192,0,0,L30
L30:
.stabn 68,0,52,L31
L31:
.stabn 68,0,54,L32
L32:
mov a,@74
STA _PRD,0,0
.stabn 68,0,55,L33
L33:
mov a,@37
STA _PDC1,0,0
.stabn 68,0,56,L34
L34:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,57,L35
L35:
mov a,@16
STA _PWMCON,0,0
.stabn 68,0,58,L36
L36:
.stabn 224,0,0,L37
L37:
L$29:
mov a,PWM_Init_108K_bp-4
mov ecx,a
mov a,PWM_Init_108K_bp-3
mov ecx+1,a
mov a,PWM_Init_108K_bp-2
mov ecx+2,a
mov a,PWM_Init_108K_bp-1
mov ecx+3,a
ret
.STACK PWM_Init_108K_bp,local,4
public _PWM_Init_190K
public PWM_Init_190K_bp
.stabs "PWM_Init_190K:F15",36,0,0,_PWM_Init_190K
.section ".S2",C_CODE
.SYMDEF ".S2" 
_PWM_Init_190K:
.SYMDEF "_PWM_Init_190K" 
mov a,ecx
mov PWM_Init_190K_bp-4,a
mov a,ecx+1
mov PWM_Init_190K_bp-3,a
mov a,ecx+2
mov PWM_Init_190K_bp-2,a
mov a,ecx+3
mov PWM_Init_190K_bp-1,a
.stabn 192,0,0,L39
L39:
.stabn 68,0,61,L40
L40:
.stabn 68,0,63,L41
L41:
mov a,@42
STA _PRD,0,0
.stabn 68,0,64,L42
L42:
mov a,@21
STA _PDC1,0,0
.stabn 68,0,65,L43
L43:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,66,L44
L44:
mov a,@16
STA _PWMCON,0,0
.stabn 68,0,67,L45
L45:
.stabn 224,0,0,L46
L46:
L$38:
mov a,PWM_Init_190K_bp-4
mov ecx,a
mov a,PWM_Init_190K_bp-3
mov ecx+1,a
mov a,PWM_Init_190K_bp-2
mov ecx+2,a
mov a,PWM_Init_190K_bp-1
mov ecx+3,a
ret
.STACK PWM_Init_190K_bp,local,4
public _PWM_Init_1467K_84P
public PWM_Init_1467K_84P_bp
.stabs "PWM_Init_1467K_84P:F15",36,0,0,_PWM_Init_1467K_84P
.section ".S3",C_CODE
.SYMDEF ".S3" 
_PWM_Init_1467K_84P:
.SYMDEF "_PWM_Init_1467K_84P" 
mov a,ecx
mov PWM_Init_1467K_84P_bp-4,a
mov a,ecx+1
mov PWM_Init_1467K_84P_bp-3,a
mov a,ecx+2
mov PWM_Init_1467K_84P_bp-2,a
mov a,ecx+3
mov PWM_Init_1467K_84P_bp-1,a
.stabn 192,0,0,L48
L48:
.stabn 68,0,70,L49
L49:
.stabn 68,0,72,L50
L50:
mov a,@136
STA _PRD,0,0
.stabn 68,0,73,L51
L51:
mov a,@114
STA _PDC1,0,0
.stabn 68,0,74,L52
L52:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,75,L53
L53:
mov a,@25
STA _PWMCON,0,0
.stabn 68,0,76,L54
L54:
.stabn 224,0,0,L55
L55:
L$47:
mov a,PWM_Init_1467K_84P_bp-4
mov ecx,a
mov a,PWM_Init_1467K_84P_bp-3
mov ecx+1,a
mov a,PWM_Init_1467K_84P_bp-2
mov ecx+2,a
mov a,PWM_Init_1467K_84P_bp-1
mov ecx+3,a
ret
.STACK PWM_Init_1467K_84P_bp,local,4
public _PWM_Init_1467K_87P
public PWM_Init_1467K_87P_bp
.stabs "PWM_Init_1467K_87P:F15",36,0,0,_PWM_Init_1467K_87P
.section ".S4",C_CODE
.SYMDEF ".S4" 
_PWM_Init_1467K_87P:
.SYMDEF "_PWM_Init_1467K_87P" 
mov a,ecx
mov PWM_Init_1467K_87P_bp-4,a
mov a,ecx+1
mov PWM_Init_1467K_87P_bp-3,a
mov a,ecx+2
mov PWM_Init_1467K_87P_bp-2,a
mov a,ecx+3
mov PWM_Init_1467K_87P_bp-1,a
.stabn 192,0,0,L57
L57:
.stabn 68,0,79,L58
L58:
.stabn 68,0,81,L59
L59:
mov a,@136
STA _PRD,0,0
.stabn 68,0,82,L60
L60:
mov a,@118
STA _PDC1,0,0
.stabn 68,0,83,L61
L61:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,84,L62
L62:
mov a,@25
STA _PWMCON,0,0
.stabn 68,0,85,L63
L63:
.stabn 224,0,0,L64
L64:
L$56:
mov a,PWM_Init_1467K_87P_bp-4
mov ecx,a
mov a,PWM_Init_1467K_87P_bp-3
mov ecx+1,a
mov a,PWM_Init_1467K_87P_bp-2
mov ecx+2,a
mov a,PWM_Init_1467K_87P_bp-1
mov ecx+3,a
ret
.STACK PWM_Init_1467K_87P_bp,local,4
public _PWM_Init_1467K_90P
public PWM_Init_1467K_90P_bp
.stabs "PWM_Init_1467K_90P:F15",36,0,0,_PWM_Init_1467K_90P
.section ".S5",C_CODE
.SYMDEF ".S5" 
_PWM_Init_1467K_90P:
.SYMDEF "_PWM_Init_1467K_90P" 
mov a,ecx
mov PWM_Init_1467K_90P_bp-4,a
mov a,ecx+1
mov PWM_Init_1467K_90P_bp-3,a
mov a,ecx+2
mov PWM_Init_1467K_90P_bp-2,a
mov a,ecx+3
mov PWM_Init_1467K_90P_bp-1,a
.stabn 192,0,0,L66
L66:
.stabn 68,0,88,L67
L67:
.stabn 68,0,90,L68
L68:
mov a,@136
STA _PRD,0,0
.stabn 68,0,91,L69
L69:
mov a,@122
STA _PDC1,0,0
.stabn 68,0,92,L70
L70:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,93,L71
L71:
mov a,@25
STA _PWMCON,0,0
.stabn 68,0,94,L72
L72:
.stabn 224,0,0,L73
L73:
L$65:
mov a,PWM_Init_1467K_90P_bp-4
mov ecx,a
mov a,PWM_Init_1467K_90P_bp-3
mov ecx+1,a
mov a,PWM_Init_1467K_90P_bp-2
mov ecx+2,a
mov a,PWM_Init_1467K_90P_bp-1
mov ecx+3,a
ret
.STACK PWM_Init_1467K_90P_bp,local,4
public _PWM_Init_1467K_93P
public PWM_Init_1467K_93P_bp
.stabs "PWM_Init_1467K_93P:F15",36,0,0,_PWM_Init_1467K_93P
.section ".S6",C_CODE
.SYMDEF ".S6" 
_PWM_Init_1467K_93P:
.SYMDEF "_PWM_Init_1467K_93P" 
mov a,ecx
mov PWM_Init_1467K_93P_bp-4,a
mov a,ecx+1
mov PWM_Init_1467K_93P_bp-3,a
mov a,ecx+2
mov PWM_Init_1467K_93P_bp-2,a
mov a,ecx+3
mov PWM_Init_1467K_93P_bp-1,a
.stabn 192,0,0,L75
L75:
.stabn 68,0,97,L76
L76:
.stabn 68,0,99,L77
L77:
mov a,@136
STA _PRD,0,0
.stabn 68,0,100,L78
L78:
mov a,@126
STA _PDC1,0,0
.stabn 68,0,101,L79
L79:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,102,L80
L80:
mov a,@25
STA _PWMCON,0,0
.stabn 68,0,103,L81
L81:
.stabn 224,0,0,L82
L82:
L$74:
mov a,PWM_Init_1467K_93P_bp-4
mov ecx,a
mov a,PWM_Init_1467K_93P_bp-3
mov ecx+1,a
mov a,PWM_Init_1467K_93P_bp-2
mov ecx+2,a
mov a,PWM_Init_1467K_93P_bp-1
mov ecx+3,a
ret
.STACK PWM_Init_1467K_93P_bp,local,4
public _PWM_Init_1467K_96P
public PWM_Init_1467K_96P_bp
.stabs "PWM_Init_1467K_96P:F15",36,0,0,_PWM_Init_1467K_96P
.section ".S7",C_CODE
.SYMDEF ".S7" 
_PWM_Init_1467K_96P:
.SYMDEF "_PWM_Init_1467K_96P" 
mov a,ecx
mov PWM_Init_1467K_96P_bp-4,a
mov a,ecx+1
mov PWM_Init_1467K_96P_bp-3,a
mov a,ecx+2
mov PWM_Init_1467K_96P_bp-2,a
mov a,ecx+3
mov PWM_Init_1467K_96P_bp-1,a
.stabn 192,0,0,L84
L84:
.stabn 68,0,106,L85
L85:
.stabn 68,0,108,L86
L86:
mov a,@136
STA _PRD,0,0
.stabn 68,0,109,L87
L87:
mov a,@130
STA _PDC1,0,0
.stabn 68,0,110,L88
L88:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,111,L89
L89:
mov a,@25
STA _PWMCON,0,0
.stabn 68,0,112,L90
L90:
.stabn 224,0,0,L91
L91:
L$83:
mov a,PWM_Init_1467K_96P_bp-4
mov ecx,a
mov a,PWM_Init_1467K_96P_bp-3
mov ecx+1,a
mov a,PWM_Init_1467K_96P_bp-2
mov ecx+2,a
mov a,PWM_Init_1467K_96P_bp-1
mov ecx+3,a
ret
.STACK PWM_Init_1467K_96P_bp,local,4
public _PWM_Init_1467K_100P
public PWM_Init_1467K_100P_bp
.stabs "PWM_Init_1467K_100P:F15",36,0,0,_PWM_Init_1467K_100P
.section ".S8",C_CODE
.SYMDEF ".S8" 
_PWM_Init_1467K_100P:
.SYMDEF "_PWM_Init_1467K_100P" 
mov a,ecx
mov PWM_Init_1467K_100P_bp-4,a
mov a,ecx+1
mov PWM_Init_1467K_100P_bp-3,a
mov a,ecx+2
mov PWM_Init_1467K_100P_bp-2,a
mov a,ecx+3
mov PWM_Init_1467K_100P_bp-1,a
.stabn 192,0,0,L93
L93:
.stabn 68,0,115,L94
L94:
.stabn 68,0,117,L95
L95:
mov a,@136
STA _PRD,0,0
.stabn 68,0,118,L96
L96:
mov a,@136
STA _PDC1,0,0
.stabn 68,0,119,L97
L97:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,120,L98
L98:
mov a,@25
STA _PWMCON,0,0
.stabn 68,0,121,L99
L99:
.stabn 224,0,0,L100
L100:
L$92:
mov a,PWM_Init_1467K_100P_bp-4
mov ecx,a
mov a,PWM_Init_1467K_100P_bp-3
mov ecx+1,a
mov a,PWM_Init_1467K_100P_bp-2
mov ecx+2,a
mov a,PWM_Init_1467K_100P_bp-1
mov ecx+3,a
ret
.STACK PWM_Init_1467K_100P_bp,local,4
public _IO_Init
public IO_Init_bp
.stabs "IO_Init:F15",36,0,0,_IO_Init
.section ".S9",C_CODE
.SYMDEF ".S9" 
_IO_Init:
.SYMDEF "_IO_Init" 
mov a,ecx
mov IO_Init_bp-4,a
mov a,ecx+1
mov IO_Init_bp-3,a
mov a,ecx+2
mov IO_Init_bp-2,a
mov a,ecx+3
mov IO_Init_bp-1,a
.stabn 192,0,0,L102
L102:
.stabn 68,0,124,L103
L103:
.stabn 68,0,126,L104
L104:
clr _PORT5
.stabn 68,0,127,L105
L105:
mov a,@0
STA _P5CR,0,2
.stabn 68,0,128,L106
L106:
clr _PORT6
.stabn 68,0,129,L107
L107:
mov a,@0
STA _P6CR,0,2
.stabn 68,0,131,L108
L108:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(131):"
mov	a,@0x03
.stabn 68,0,132,L109
L109:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(132):"
contw
.stabn 68,0,134,L110
L110:
.stabn 224,0,0,L111
L111:
L$101:
mov a,IO_Init_bp-4
mov ecx,a
mov a,IO_Init_bp-3
mov ecx+1,a
mov a,IO_Init_bp-2
mov ecx+2,a
mov a,IO_Init_bp-1
mov ecx+3,a
ret
.STACK IO_Init_bp,local,4
public _interrupt
public interrupt_bp
.stabs "interrupt:F15",36,0,0,_interrupt
.section ".S10",C_CODE
.SYMDEF ".S10" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L115
L115:
.stabn 68,0,138,L116
L116:
.stabn 68,0,141,L117
L117:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(141):"
MOV 0x3D,A ;保存 A
.stabn 68,0,142,L118
L118:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(142):"
MOV A,0x03
.stabn 68,0,143,L119
L119:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(143):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,144,L120
L120:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(144):"
MOV A,0x04
.stabn 68,0,145,L121
L121:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(145):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,148,L122
L122:
jbs _TCIF,0
EXTJMP @L$113
.stabn 192,0,1,L123
L123:
.stabn 68,0,149,L124
L124:
.stabn 68,0,151,L125
L125:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,152,L126
L126:
mov a,@6
STA _TCC,0,0
.stabn 68,0,154,L127
L127:
LDA _PORT5,0,0
xor a,@255
STA _PORT5,0,0
.stabn 68,0,155,L128
L128:
.stabn 224,0,1,L129
L129:
L$113:
.stabn 68,0,159,L130
L130:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(159):"
MOV A,0x3F ;返回 R4
.stabn 68,0,160,L131
L131:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(160):"
MOV 0x04,A
.stabn 68,0,161,L132
L132:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(161):"
MOV A,0x3E ;返回 R3
.stabn 68,0,162,L133
L133:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(162):"
MOV 0x03,A
.stabn 68,0,163,L134
L134:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(163):"
SWAP 0x3D  ;返回 A
.stabn 68,0,164,L135
L135:
.cfile "C:\mcuproject\xj\jinmoqiang\PWM.c(164):"
SWAPA 0x3D
.stabn 68,0,166,L136
L136:
.stabn 224,0,0,L137
L137:
L$112:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S11",C_CODE
.SYMDEF ".S11" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L139
L139:
.stabn 68,0,171,L140
L140:
.stabn 68,0,173,L141
L141:
.stabn 224,0,0,L142
L142:
L$138:
reti
.STACK interrupt_l_bp,local,0
.section ".bss"
.align 1
_TCIF:
.SYMDEF "_TCIF" REG:0,BIT:0,15,LEN:1
ds 1
.stabs "TCIF:S16",40,0,0,_TCIF
.align 1
_ICIF:
.SYMDEF "_ICIF" REG:0,BIT:1,15,LEN:1
ds 1
.stabs "ICIF:S16",40,0,0,_ICIF
.align 1
_EXIF:
.SYMDEF "_EXIF" REG:0,BIT:2,15,LEN:1
ds 1
.stabs "EXIF:S16",40,0,0,_EXIF
.align 1
_P60:
.SYMDEF "_P60" REG:0,BIT:0,6,LEN:1
ds 1
.stabs "P60:S16",40,0,0,_P60
.align 1
_P61:
.SYMDEF "_P61" REG:0,BIT:1,6,LEN:1
ds 1
.stabs "P61:S16",40,0,0,_P61
.align 1
_P62:
.SYMDEF "_P62" REG:0,BIT:2,6,LEN:1
ds 1
.stabs "P62:S16",40,0,0,_P62
.align 1
_P63:
.SYMDEF "_P63" REG:0,BIT:3,6,LEN:1
ds 1
.stabs "P63:S16",40,0,0,_P63
.align 1
_P64:
.SYMDEF "_P64" REG:0,BIT:4,6,LEN:1
ds 1
.stabs "P64:S16",40,0,0,_P64
.align 1
_P65:
.SYMDEF "_P65" REG:0,BIT:5,6,LEN:1
ds 1
.stabs "P65:S16",40,0,0,_P65
.align 1
_P66:
.SYMDEF "_P66" REG:0,BIT:6,6,LEN:1
ds 1
.stabs "P66:S16",40,0,0,_P66
.align 1
_P67:
.SYMDEF "_P67" REG:0,BIT:7,6,LEN:1
ds 1
.stabs "P67:S16",40,0,0,_P67
.align 1
_P50:
.SYMDEF "_P50" REG:0,BIT:0,5,LEN:1
ds 1
.stabs "P50:S16",40,0,0,_P50
.align 1
_P51:
.SYMDEF "_P51" REG:0,BIT:1,5,LEN:1
ds 1
.stabs "P51:S16",40,0,0,_P51
.align 1
_P52:
.SYMDEF "_P52" REG:0,BIT:2,5,LEN:1
ds 1
.stabs "P52:S16",40,0,0,_P52
.align 1
_P53:
.SYMDEF "_P53" REG:0,BIT:3,5,LEN:1
ds 1
.stabs "P53:S16",40,0,0,_P53
.align 1
_C:
.SYMDEF "_C" REG:0,BIT:0,3,LEN:1
ds 1
.stabs "C:S16",40,0,0,_C
.align 1
_DC:
.SYMDEF "_DC" REG:0,BIT:1,3,LEN:1
ds 1
.stabs "DC:S16",40,0,0,_DC
.align 1
_Z:
.SYMDEF "_Z" REG:0,BIT:2,3,LEN:1
ds 1
.stabs "Z:S16",40,0,0,_Z
.align 1
_P:
.SYMDEF "_P" REG:0,BIT:3,3,LEN:1
ds 1
.stabs "P:S16",40,0,0,_P
.align 1
_T:
.SYMDEF "_T" REG:0,BIT:4,3,LEN:1
ds 1
.stabs "T:S16",40,0,0,_T
.align 1
_GP0:
.SYMDEF "_GP0" REG:0,BIT:5,3,LEN:1
ds 1
.stabs "GP0:S16",40,0,0,_GP0
.align 1
_GP1:
.SYMDEF "_GP1" REG:0,BIT:6,3,LEN:1
ds 1
.stabs "GP1:S16",40,0,0,_GP1
.align 1
_RST:
.SYMDEF "_RST" REG:0,BIT:7,3,LEN:1
ds 1
.stabs "RST:S16",40,0,0,_RST
.align 1
_IMR:
.SYMDEF "_IMR" IO:0,15,LEN:1
ds 1
.stabs "IMR:S14",40,0,0,_IMR
.align 1
_WDTCR:
.SYMDEF "_WDTCR" IO:0,14,LEN:1
ds 1
.stabs "WDTCR:S14",40,0,0,_WDTCR
.align 1
_PHCR:
.SYMDEF "_PHCR" IO:0,13,LEN:1
ds 1
.stabs "PHCR:S14",40,0,0,_PHCR
.align 1
_PDCR:
.SYMDEF "_PDCR" IO:0,11,LEN:1
ds 1
.stabs "PDCR:S14",40,0,0,_PDCR
.align 1
_PHDCR:
.SYMDEF "_PHDCR" IO:0,9,LEN:1
ds 1
.stabs "PHDCR:S14",40,0,0,_PHDCR
.align 1
_P6CR:
.SYMDEF "_P6CR" IO:0,6,LEN:1
ds 1
.stabs "P6CR:S14",40,0,0,_P6CR
.align 1
_P5CR:
.SYMDEF "_P5CR" IO:0,5,LEN:1
ds 1
.stabs "P5CR:S14",40,0,0,_P5CR
.align 1
_ISR:
.SYMDEF "_ISR" REG:0,15,LEN:1
ds 1
.stabs "ISR:S14",40,0,0,_ISR
.align 1
_CPUCON:
.SYMDEF "_CPUCON" REG:0,14,LEN:1
ds 1
.stabs "CPUCON:S14",40,0,0,_CPUCON
.align 1
_ICIECR:
.SYMDEF "_ICIECR" REG:0,13,LEN:1
ds 1
.stabs "ICIECR:S14",40,0,0,_ICIECR
.align 1
_PDC3:
.SYMDEF "_PDC3" REG:0,12,LEN:1
ds 1
.stabs "PDC3:S14",40,0,0,_PDC3
.align 1
_PDC2:
.SYMDEF "_PDC2" REG:0,11,LEN:1
ds 1
.stabs "PDC2:S14",40,0,0,_PDC2
.align 1
_PDC1:
.SYMDEF "_PDC1" REG:0,10,LEN:1
ds 1
.stabs "PDC1:S14",40,0,0,_PDC1
.align 1
_PRD:
.SYMDEF "_PRD" REG:0,9,LEN:1
ds 1
.stabs "PRD:S14",40,0,0,_PRD
.align 1
_PWMCON:
.SYMDEF "_PWMCON" REG:0,8,LEN:1
ds 1
.stabs "PWMCON:S14",40,0,0,_PWMCON
.align 1
_LVDCON:
.SYMDEF "_LVDCON" REG:0,6,LEN:1
ds 1
.stabs "LVDCON:S14",40,0,0,_LVDCON
.align 1
_PORT6:
.SYMDEF "_PORT6" REG:0,6,LEN:1
ds 1
.stabs "PORT6:S14",40,0,0,_PORT6
.align 1
_PORT5:
.SYMDEF "_PORT5" REG:0,5,LEN:1
ds 1
.stabs "PORT5:S14",40,0,0,_PORT5
.align 1
_RSR:
.SYMDEF "_RSR" REG:0,4,LEN:1
ds 1
.stabs "RSR:S14",40,0,0,_RSR
.align 1
_STATUS:
.SYMDEF "_STATUS" REG:0,3,LEN:1
ds 1
.stabs "STATUS:S14",40,0,0,_STATUS
.align 1
_PC:
.SYMDEF "_PC" REG:0,2,LEN:1
ds 1
.stabs "PC:S14",40,0,0,_PC
.align 1
_TCC:
.SYMDEF "_TCC" REG:0,1,LEN:1
ds 1
.stabs "TCC:S14",40,0,0,_TCC
.align 1
_R0:
.SYMDEF "_R0" REG:0,0,LEN:1
ds 1
.stabs "R0:S14",40,0,0,_R0
.section ".code"
end
