.autoimport
EM78P153B EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\mcuproject\xj\S25_1001B_sop8\PWM.c",100,0,3,0
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
.section ".data"
public _intCount
.align 1
_intCount:
.SYMDEF "_intCount" LEN:1
db 0x0
.stabs "intCount:G10",32,0,0,_intCount
public _chrgFlag
.align 1
_chrgFlag:
.SYMDEF "_chrgFlag" LEN:1
db 0x0
.stabs "chrgFlag:G10",32,0,0,_chrgFlag
public _sleepTime
.align 1
_sleepTime:
.SYMDEF "_sleepTime" LEN:1
db 0x0
.stabs "sleepTime:G10",32,0,0,_sleepTime
public _main
public main_bp
.section ".code"
.stabs "main:F15",36,0,0,_main
.section ".S0",C_CODE
.SYMDEF ".S0" 
_main:
.SYMDEF "_main" 
.stabs "i:14",128,0,0,main_bp-1
.stabn 192,0,0,L19
L19:
.stabn 68,0,29,L21
L21:
.stabn 68,0,33,L22
L22:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(33):"
wdtc
.stabn 68,0,33,L23
L23:
.stabn 68,0,34,L24
L24:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(34):"
disi
.stabn 68,0,34,L25
L25:
.stabn 68,0,35,L26
L26:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,37,L27
L27:
call _IO_Init
.stabn 68,0,39,L28
L28:
mov a,@206
STA _TCC,0,0
.stabn 68,0,40,L29
L29:
clr _ISR
.stabn 68,0,41,L30
L30:
mov a,@1
STA _IMR,0,2
.stabn 68,0,43,L31
L31:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(43):"
eni
.stabn 68,0,43,L32
L32:
jmp @L$3
L$2:
.stabn 192,0,1,L33
L33:
.stabn 68,0,48,L34
L34:
.stabn 68,0,49,L35
L35:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(49):"
wdtc
.stabn 68,0,49,L36
L36:
.stabn 68,0,51,L37
L37:
jbc _IntFlag,0
EXTJMP @L$5
.stabn 68,0,52,L38
L38:
jmp @L$3
L$5:
.stabn 68,0,53,L39
L39:
bc _IntFlag,0
.stabn 68,0,54,L40
L40:
jbs _P63,3
EXTJMP @L$7
.stabn 192,0,2,L41
L41:
.stabn 68,0,55,L42
L42:
.stabn 68,0,57,L43
L43:
mov a,@1
STA _chrgFlag,0,0
.stabn 68,0,58,L44
L44:
bc _P61,1
.stabn 68,0,59,L45
L45:
clr _sleepTime
.stabn 68,0,60,L46
L46:
jbs _P62,2
EXTJMP @L$9
.stabn 192,0,3,L47
L47:
.stabn 68,0,61,L48
L48:
.stabn 68,0,62,L49
L49:
call _ledOn
.stabn 68,0,63,L50
L50:
.stabn 224,0,3,L51
L51:
jmp @L$8
L$9:
.stabn 192,0,3,L52
L52:
.stabn 68,0,65,L53
L53:
.stabn 68,0,66,L54
L54:
call _ledOff
.stabn 68,0,67,L55
L55:
.stabn 224,0,3,L56
L56:
.stabn 68,0,68,L57
L57:
.stabn 224,0,2,L58
L58:
jmp @L$8
L$7:
.stabn 192,0,2,L59
L59:
.stabn 68,0,70,L60
L60:
.stabn 68,0,71,L61
L61:
clr _chrgFlag
.stabn 68,0,72,L62
L62:
jbc _P65,5
EXTJMP @L$11
.stabn 192,0,3,L63
L63:
.stabn 68,0,73,L64
L64:
.stabn 68,0,74,L65
L65:
jbc _P60,0
EXTJMP @L$13
.stabn 192,0,4,L66
L66:
.stabn 68,0,75,L67
L67:
.stabn 68,0,76,L68
L68:
bs _P61,1
.stabn 68,0,77,L69
L69:
call _ledOn
.stabn 68,0,78,L70
L70:
clr _sleepTime
.stabn 68,0,79,L71
L71:
.stabn 224,0,4,L72
L72:
jmp @L$12
L$13:
.stabn 192,0,4,L73
L73:
.stabn 68,0,81,L74
L74:
.stabn 68,0,82,L75
L75:
bc _P61,1
.stabn 68,0,83,L76
L76:
call _ledOff
.stabn 68,0,84,L77
L77:
LDA _sleepTime,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _sleepTime,0,0
UGTRIB ecx,0xc8
jbc STATUS, cf
EXTJMP L$12
.stabn 68,0,85,L78
L78:
call _gotoSleep
.stabn 68,0,86,L79
L79:
.stabn 224,0,4,L80
L80:
.stabn 68,0,87,L81
L81:
.stabn 224,0,3,L82
L82:
jmp @L$12
L$11:
.stabn 192,0,3,L83
L83:
.stabn 68,0,89,L84
L84:
.stabn 68,0,90,L85
L85:
bc _P61,1
.stabn 68,0,91,L86
L86:
call _ledOff
.stabn 68,0,92,L87
L87:
LDA _sleepTime,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _sleepTime,0,0
UGTRIB ecx,0xc8
jbc STATUS, cf
EXTJMP L$17
.stabn 68,0,93,L88
L88:
call _gotoSleep
L$17:
.stabn 68,0,94,L89
L89:
.stabn 224,0,3,L90
L90:
L$12:
.stabn 68,0,95,L91
L91:
.stabn 224,0,2,L92
L92:
L$8:
.stabn 68,0,96,L93
L93:
.stabn 224,0,1,L94
L94:
L$3:
.stabn 68,0,47,L95
L95:
jmp @L$2
.stabn 68,0,97,L96
L96:
.stabn 224,0,0,L97
L97:
L$1:
ret
.STACK main_bp,local,1
public _ledOn
public ledOn_bp
.stabs "ledOn:F15",36,0,0,_ledOn
.section ".S1",C_CODE
.SYMDEF ".S1" 
_ledOn:
.SYMDEF "_ledOn" 
mov a,ecx
mov ledOn_bp-4,a
mov a,ecx+1
mov ledOn_bp-3,a
mov a,ecx+2
mov ledOn_bp-2,a
mov a,ecx+3
mov ledOn_bp-1,a
.stabn 192,0,0,L99
L99:
.stabn 68,0,101,L100
L100:
.stabn 68,0,102,L101
L101:
LDA _P6CR,0,2
and a,@239
STA _P6CR,0,2
.stabn 68,0,103,L102
L102:
bc _P64,4
.stabn 68,0,104,L103
L103:
.stabn 224,0,0,L104
L104:
L$98:
mov a,ledOn_bp-4
mov ecx,a
mov a,ledOn_bp-3
mov ecx+1,a
mov a,ledOn_bp-2
mov ecx+2,a
mov a,ledOn_bp-1
mov ecx+3,a
ret
.STACK ledOn_bp,local,4
public _ledOff
public ledOff_bp
.stabs "ledOff:F15",36,0,0,_ledOff
.section ".S2",C_CODE
.SYMDEF ".S2" 
_ledOff:
.SYMDEF "_ledOff" 
mov a,ecx
mov ledOff_bp-4,a
mov a,ecx+1
mov ledOff_bp-3,a
mov a,ecx+2
mov ledOff_bp-2,a
mov a,ecx+3
mov ledOff_bp-1,a
.stabn 192,0,0,L106
L106:
.stabn 68,0,108,L107
L107:
.stabn 68,0,109,L108
L108:
LDA _P6CR,0,2
or a,@16
STA _P6CR,0,2
.stabn 68,0,110,L109
L109:
bs _P64,4
.stabn 68,0,112,L110
L110:
.stabn 224,0,0,L111
L111:
L$105:
mov a,ledOff_bp-4
mov ecx,a
mov a,ledOff_bp-3
mov ecx+1,a
mov a,ledOff_bp-2
mov ecx+2,a
mov a,ledOff_bp-1
mov ecx+3,a
ret
.STACK ledOff_bp,local,4
public _IO_Init
public IO_Init_bp
.stabs "IO_Init:F15",36,0,0,_IO_Init
.section ".S3",C_CODE
.SYMDEF ".S3" 
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
.stabn 192,0,0,L113
L113:
.stabn 68,0,116,L114
L114:
.stabn 68,0,118,L115
L115:
clr _PORT6
.stabn 68,0,119,L116
L116:
mov a,@61
STA _P6CR,0,2
.stabn 68,0,120,L117
L117:
mov a,@218
STA _PHCR,0,2
.stabn 68,0,121,L118
L118:
mov a,@255
STA _PRD,0,0
.stabn 68,0,124,L119
L119:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(124):"
mov	a,@0x02
.stabn 68,0,125,L120
L120:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(125):"
contw
.stabn 68,0,127,L121
L121:
.stabn 224,0,0,L122
L122:
L$112:
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
public _gotoSleep
public gotoSleep_bp
.stabs "gotoSleep:F15",36,0,0,_gotoSleep
.section ".S4",C_CODE
.SYMDEF ".S4" 
_gotoSleep:
.SYMDEF "_gotoSleep" 
mov a,ecx
mov gotoSleep_bp-4,a
mov a,ecx+1
mov gotoSleep_bp-3,a
mov a,ecx+2
mov gotoSleep_bp-2,a
mov a,ecx+3
mov gotoSleep_bp-1,a
.stabn 192,0,0,L124
L124:
.stabn 68,0,130,L125
L125:
.stabn 68,0,132,L126
L126:
clr _sleepTime
.stabn 68,0,133,L127
L127:
clr _chrgFlag
.stabn 68,0,134,L128
L128:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,135,L129
L129:
mov a,@9
STA _ICIECR,0,0
.stabn 68,0,136,L130
L130:
mov a,@2
STA _IMR,0,2
.stabn 68,0,137,L131
L131:
LDA _ISR,0,0
and a,@240
STA _ISR,0,0
.stabn 68,0,138,L132
L132:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(138):"
disi
.stabn 68,0,138,L133
L133:
.stabn 68,0,139,L134
L134:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(139):"
slep
.stabn 68,0,139,L135
L135:
.stabn 68,0,140,L136
L136:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(140):"
eni
.stabn 68,0,140,L137
L137:
.stabn 68,0,141,L138
L138:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,142,L139
L139:
clr _ICIECR
.stabn 68,0,143,L140
L140:
clr _ISR
.stabn 68,0,144,L141
L141:
mov a,@1
STA _IMR,0,2
.stabn 68,0,145,L142
L142:
.stabn 224,0,0,L143
L143:
L$123:
mov a,gotoSleep_bp-4
mov ecx,a
mov a,gotoSleep_bp-3
mov ecx+1,a
mov a,gotoSleep_bp-2
mov ecx+2,a
mov a,gotoSleep_bp-1
mov ecx+3,a
ret
.STACK gotoSleep_bp,local,4
public _interrupt
public interrupt_bp
.stabs "interrupt:F15",36,0,0,_interrupt
.section ".S5",C_CODE
.SYMDEF ".S5" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L149
L149:
.stabn 68,0,150,L150
L150:
.stabn 68,0,153,L151
L151:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(153):"
MOV 0x3D,A ;保存 A
.stabn 68,0,154,L152
L152:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(154):"
MOV A,0x03
.stabn 68,0,155,L153
L153:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(155):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,156,L154
L154:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(156):"
MOV A,0x04
.stabn 68,0,157,L155
L155:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(157):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,160,L156
L156:
jbs _TCIF,0
EXTJMP @L$145
.stabn 192,0,1,L157
L157:
.stabn 68,0,161,L158
L158:
.stabn 68,0,163,L159
L159:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,164,L160
L160:
LDA _TCC,0,0
add a,@206
STA _TCC,0,0
.stabn 68,0,166,L161
L161:
LDA _intCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _intCount,0,0
ULTRIB ecx,0x64
jbs STATUS, cf
EXTJMP L$147
.stabn 192,0,2,L162
L162:
.stabn 68,0,167,L163
L163:
.stabn 68,0,168,L164
L164:
clr _intCount
.stabn 68,0,169,L165
L165:
bs _IntFlag,0
.stabn 68,0,172,L166
L166:
.stabn 224,0,2,L167
L167:
L$147:
.stabn 68,0,173,L168
L168:
.stabn 224,0,1,L169
L169:
L$145:
.stabn 68,0,177,L170
L170:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(177):"
MOV A,0x3F ;返回 R4
.stabn 68,0,178,L171
L171:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(178):"
MOV 0x04,A
.stabn 68,0,179,L172
L172:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(179):"
MOV A,0x3E ;返回 R3
.stabn 68,0,180,L173
L173:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(180):"
MOV 0x03,A
.stabn 68,0,181,L174
L174:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(181):"
SWAP 0x3D  ;返回 A
.stabn 68,0,182,L175
L175:
.cfile "C:\mcuproject\xj\S25_1001B_sop8\PWM.c(182):"
SWAPA 0x3D
.stabn 68,0,184,L176
L176:
.stabn 224,0,0,L177
L177:
L$144:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S6",C_CODE
.SYMDEF ".S6" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L179
L179:
.stabn 68,0,189,L180
L180:
.stabn 68,0,191,L181
L181:
.stabn 224,0,0,L182
L182:
L$178:
reti
.STACK interrupt_l_bp,local,0
.section ".bss"
.align 1
_longPressFlag:
.SYMDEF "_longPressFlag" BANK:0,BIT:1,32,LEN:1
ds 1
.stabs "longPressFlag:S16",40,0,0,_longPressFlag
.align 1
_IntFlag:
.SYMDEF "_IntFlag" BANK:0,BIT:0,32,LEN:1
ds 1
.stabs "IntFlag:S16",40,0,0,_IntFlag
public _Status
.align 1
_Status:
.SYMDEF "_Status" BANK:0,32,LEN:1
ds 1
.stabs "Status:G10",32,0,0,_Status
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
_PORT6:
.SYMDEF "_PORT6" REG:0,6,LEN:1
ds 1
.stabs "PORT6:S14",40,0,0,_PORT6
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
.stabs "u16t:t13",128,0,0,0
.stabs "u8t:t10",128,0,0,0
.section ".code"
end
