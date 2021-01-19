.autoimport
EM78P153B EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\mcuproject\xj\s1_ms153_sop8\PWM.c",100,0,3,0
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
public _workStep
.align 1
_workStep:
.SYMDEF "_workStep" LEN:1
db 0x0
.stabs "workStep:G10",32,0,0,_workStep
public _keyCount
.align 1
_keyCount:
.SYMDEF "_keyCount" LEN:1
db 0x0
.stabs "keyCount:G10",32,0,0,_keyCount
public _pwmCount
.align 1
_pwmCount:
.SYMDEF "_pwmCount" LEN:1
db 0x0
.stabs "pwmCount:G10",32,0,0,_pwmCount
public _ledCount
.align 1
_ledCount:
.SYMDEF "_ledCount" LEN:1
db 0x0
.stabs "ledCount:G10",32,0,0,_ledCount
public _main
public main_bp
.section ".code"
.stabs "main:F15",36,0,0,_main
.section ".S0",C_CODE
.SYMDEF ".S0" 
_main:
.SYMDEF "_main" 
.stabs "i:14",128,0,0,main_bp-1
.stabn 192,0,0,L21
L21:
.stabn 68,0,40,L23
L23:
.stabn 68,0,44,L24
L24:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(44):"
wdtc
.stabn 68,0,44,L25
L25:
.stabn 68,0,45,L26
L26:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(45):"
disi
.stabn 68,0,45,L27
L27:
.stabn 68,0,46,L28
L28:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,48,L29
L29:
call _IO_Init
.stabn 68,0,50,L30
L30:
mov a,@206
STA _TCC,0,0
.stabn 68,0,51,L31
L31:
clr _ISR
.stabn 68,0,52,L32
L32:
mov a,@1
STA _IMR,0,2
.stabn 68,0,54,L33
L33:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(54):"
eni
.stabn 68,0,54,L34
L34:
.stabn 68,0,56,L35
L35:
call _PWM_Init
jmp @L$3
L$2:
.stabn 192,0,1,L36
L36:
.stabn 68,0,59,L37
L37:
.stabn 68,0,60,L38
L38:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(60):"
wdtc
.stabn 68,0,60,L39
L39:
.stabn 68,0,61,L40
L40:
jbc _IntFlag,0
EXTJMP @L$5
.stabn 68,0,62,L41
L41:
jmp @L$3
L$5:
.stabn 68,0,63,L42
L42:
bc _IntFlag,0
.stabn 68,0,64,L43
L43:
call _keyCtr
.stabn 68,0,66,L44
L44:
jbs _cleanFlag,1
EXTJMP @L$7
.stabn 192,0,2,L45
L45:
.stabn 68,0,67,L46
L46:
.stabn 68,0,68,L47
L47:
LDA _ledCount,0,0
add a,@1
STA _ledCount,0,0
.stabn 68,0,69,L48
L48:
ULTRIB _ledCount,0x19
jbc STATUS, cf
EXTJMP L$9
.stabn 192,0,3,L49
L49:
.stabn 68,0,70,L50
L50:
.stabn 68,0,71,L51
L51:
call _pwmOn
.stabn 68,0,72,L52
L52:
bc _P60,0
.stabn 68,0,73,L53
L53:
.stabn 224,0,3,L54
L54:
jmp @L$8
L$9:
.stabn 68,0,74,L55
L55:
ULTRIB _ledCount,0x40
jbc STATUS, cf
EXTJMP L$11
.stabn 192,0,3,L56
L56:
.stabn 68,0,75,L57
L57:
.stabn 68,0,76,L58
L58:
call _pwmOff
.stabn 68,0,77,L59
L59:
bc _P60,0
.stabn 68,0,78,L60
L60:
.stabn 224,0,3,L61
L61:
jmp @L$8
L$11:
.stabn 68,0,79,L62
L62:
ULTRIB _ledCount,0x5a
jbc STATUS, cf
EXTJMP L$13
.stabn 192,0,3,L63
L63:
.stabn 68,0,80,L64
L64:
.stabn 68,0,81,L65
L65:
call _pwmOn
.stabn 68,0,82,L66
L66:
bs _P60,0
.stabn 68,0,83,L67
L67:
.stabn 224,0,3,L68
L68:
jmp @L$8
L$13:
.stabn 68,0,84,L69
L69:
ULTRIB _ledCount,0x76
jbc STATUS, cf
EXTJMP L$15
.stabn 192,0,3,L70
L70:
.stabn 68,0,85,L71
L71:
.stabn 68,0,86,L72
L72:
call _pwmOff
.stabn 68,0,87,L73
L73:
bc _P60,0
.stabn 68,0,88,L74
L74:
.stabn 224,0,3,L75
L75:
jmp @L$8
L$15:
.stabn 68,0,89,L76
L76:
ULTRIB _ledCount,0x78
jbc STATUS, cf
EXTJMP L$17
.stabn 192,0,3,L77
L77:
.stabn 68,0,90,L78
L78:
.stabn 68,0,91,L79
L79:
call _pwmOn
.stabn 68,0,92,L80
L80:
bc _P60,0
.stabn 68,0,93,L81
L81:
.stabn 224,0,3,L82
L82:
jmp @L$8
L$17:
.stabn 192,0,3,L83
L83:
.stabn 68,0,95,L84
L84:
.stabn 68,0,96,L85
L85:
clr _ledCount
.stabn 68,0,97,L86
L86:
call _pwmOff
.stabn 68,0,98,L87
L87:
bc _P60,0
.stabn 68,0,99,L88
L88:
bc _cleanFlag,1
.stabn 68,0,100,L89
L89:
.stabn 224,0,3,L90
L90:
.stabn 68,0,101,L91
L91:
.stabn 224,0,2,L92
L92:
jmp @L$8
L$7:
.stabn 192,0,2,L93
L93:
.stabn 68,0,103,L94
L94:
.stabn 68,0,104,L95
L95:
LDA _PWMCON,0,0
and a,@239
STA _PWMCON,0,0
.stabn 68,0,105,L96
L96:
EQNEPRIB _keyCount,0
jbs STATUS,zf
EXTJMP @L$19
.stabn 68,0,106,L97
L97:
call _gotoSleep
L$19:
.stabn 68,0,107,L98
L98:
.stabn 224,0,2,L99
L99:
L$8:
.stabn 68,0,109,L100
L100:
.stabn 224,0,1,L101
L101:
L$3:
.stabn 68,0,58,L102
L102:
jmp @L$2
.stabn 68,0,111,L103
L103:
.stabn 224,0,0,L104
L104:
L$1:
ret
.STACK main_bp,local,1
public _pwmOn
public pwmOn_bp
.stabs "pwmOn:F15",36,0,0,_pwmOn
.section ".S1",C_CODE
.SYMDEF ".S1" 
_pwmOn:
.SYMDEF "_pwmOn" 
mov a,ecx
mov pwmOn_bp-4,a
mov a,ecx+1
mov pwmOn_bp-3,a
mov a,ecx+2
mov pwmOn_bp-2,a
mov a,ecx+3
mov pwmOn_bp-1,a
.stabn 192,0,0,L108
L108:
.stabn 68,0,116,L109
L109:
.stabn 68,0,117,L110
L110:
LDA _PWMCON,0,0
mov ecx,a
mov a,@16
and ecx,a
EQNEPRIB ecx,0
jbs STATUS,zf
EXTJMP @L$106
.stabn 192,0,1,L111
L111:
.stabn 68,0,118,L112
L112:
.stabn 68,0,119,L113
L113:
LDA _PWMCON,0,0
or a,@16
STA _PWMCON,0,0
.stabn 68,0,120,L114
L114:
.stabn 224,0,1,L115
L115:
L$106:
.stabn 68,0,121,L116
L116:
.stabn 224,0,0,L117
L117:
L$105:
mov a,pwmOn_bp-4
mov ecx,a
mov a,pwmOn_bp-3
mov ecx+1,a
mov a,pwmOn_bp-2
mov ecx+2,a
mov a,pwmOn_bp-1
mov ecx+3,a
ret
.STACK pwmOn_bp,local,4
public _pwmOff
public pwmOff_bp
.stabs "pwmOff:F15",36,0,0,_pwmOff
.section ".S2",C_CODE
.SYMDEF ".S2" 
_pwmOff:
.SYMDEF "_pwmOff" 
mov a,ecx
mov pwmOff_bp-4,a
mov a,ecx+1
mov pwmOff_bp-3,a
mov a,ecx+2
mov pwmOff_bp-2,a
mov a,ecx+3
mov pwmOff_bp-1,a
.stabn 192,0,0,L119
L119:
.stabn 68,0,124,L120
L120:
.stabn 68,0,125,L121
L121:
LDA _PWMCON,0,0
and a,@239
STA _PWMCON,0,0
.stabn 68,0,126,L122
L122:
.stabn 224,0,0,L123
L123:
L$118:
mov a,pwmOff_bp-4
mov ecx,a
mov a,pwmOff_bp-3
mov ecx+1,a
mov a,pwmOff_bp-2
mov ecx+2,a
mov a,pwmOff_bp-1
mov ecx+3,a
ret
.STACK pwmOff_bp,local,4
public _PWM_Init
public PWM_Init_bp
.stabs "PWM_Init:F15",36,0,0,_PWM_Init
.section ".S3",C_CODE
.SYMDEF ".S3" 
_PWM_Init:
.SYMDEF "_PWM_Init" 
mov a,ecx
mov PWM_Init_bp-4,a
mov a,ecx+1
mov PWM_Init_bp-3,a
mov a,ecx+2
mov PWM_Init_bp-2,a
mov a,ecx+3
mov PWM_Init_bp-1,a
.stabn 192,0,0,L125
L125:
.stabn 68,0,131,L126
L126:
.stabn 68,0,133,L127
L127:
mov a,@126
STA _PRD,0,0
.stabn 68,0,134,L128
L128:
mov a,@69
STA _PDC1,0,0
.stabn 68,0,135,L129
L129:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,136,L130
L130:
clr _PWMCON
.stabn 68,0,137,L131
L131:
.stabn 224,0,0,L132
L132:
L$124:
mov a,PWM_Init_bp-4
mov ecx,a
mov a,PWM_Init_bp-3
mov ecx+1,a
mov a,PWM_Init_bp-2
mov ecx+2,a
mov a,PWM_Init_bp-1
mov ecx+3,a
ret
.STACK PWM_Init_bp,local,4
public _IO_Init
public IO_Init_bp
.stabs "IO_Init:F15",36,0,0,_IO_Init
.section ".S4",C_CODE
.SYMDEF ".S4" 
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
.stabn 192,0,0,L134
L134:
.stabn 68,0,143,L135
L135:
.stabn 68,0,145,L136
L136:
clr _PORT6
.stabn 68,0,146,L137
L137:
mov a,@16
STA _P6CR,0,2
.stabn 68,0,147,L138
L138:
mov a,@239
STA _PHCR,0,2
.stabn 68,0,149,L139
L139:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(149):"
mov	a,@0x02
.stabn 68,0,150,L140
L140:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(150):"
contw
.stabn 68,0,152,L141
L141:
.stabn 224,0,0,L142
L142:
L$133:
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
public _keyCtr
public keyCtr_bp
.stabs "keyCtr:F15",36,0,0,_keyCtr
.section ".S5",C_CODE
.SYMDEF ".S5" 
_keyCtr:
.SYMDEF "_keyCtr" 
mov a,ecx
mov keyCtr_bp-4,a
mov a,ecx+1
mov keyCtr_bp-3,a
mov a,ecx+2
mov keyCtr_bp-2,a
mov a,ecx+3
mov keyCtr_bp-1,a
.stabs "kclick:2",128,0,0,keyCtr_bp-5
.stabn 192,0,0,L148
L148:
.stabn 68,0,155,L149
L149:
.stabn 68,0,156,L150
L150:
LDA _PORT6,0,0
mov ecx,a
com ecx
mov a,@16
and ecx,a
mov a,ecx
mov keyRead_bp+0,a
.STACK keyRead_bp,parameter,1
call _keyRead
mov a,eax
STA keyCtr_bp-5,0,0
.stabn 68,0,158,L151
L151:
EQNEPRIB keyCtr_bp-5,1
jbs STATUS,zf
EXTJMP @L$144
.stabn 192,0,1,L152
L152:
.stabn 68,0,159,L153
L153:
.stabn 68,0,162,L154
L154:
bs _cleanFlag,1
.stabn 68,0,164,L155
L155:
.stabn 224,0,1,L156
L156:
jmp @L$145
L$144:
.stabn 68,0,165,L157
L157:
EQNEPRIB keyCtr_bp-5,2
jbs STATUS,zf
EXTJMP @L$146
.stabn 192,0,1,L158
L158:
.stabn 68,0,166,L159
L159:
.stabn 68,0,167,L160
L160:
bs _cleanFlag,1
.stabn 68,0,168,L161
L161:
.stabn 224,0,1,L162
L162:
L$146:
L$145:
.stabn 68,0,172,L163
L163:
.stabn 224,0,0,L164
L164:
L$143:
mov a,keyCtr_bp-4
mov ecx,a
mov a,keyCtr_bp-3
mov ecx+1,a
mov a,keyCtr_bp-2
mov ecx+2,a
mov a,keyCtr_bp-1
mov ecx+3,a
ret
.STACK keyCtr_bp,local,5
public _keyRead
public keyRead_bp
.stabs "keyRead:F2",36,0,0,_keyRead
.section ".S6",C_CODE
.SYMDEF ".S6" 
_keyRead:
.SYMDEF "_keyRead" 
mov a,ecx
mov keyRead_bp-4,a
mov a,ecx+1
mov keyRead_bp-3,a
mov a,ecx+2
mov keyRead_bp-2,a
mov a,ecx+3
mov keyRead_bp-1,a
.stabs "keyStatus:10",160,0,0,keyRead_bp+0
.stabn 192,0,0,L176
L176:
.stabn 68,0,175,L177
L177:
.stabn 68,0,176,L178
L178:
EQNEPRIB keyRead_bp+0,0
jbc STATUS,zf
EXTJMP @L$166
.stabn 192,0,1,L179
L179:
.stabn 68,0,177,L180
L180:
.stabn 68,0,178,L181
L181:
LDA _keyCount,0,0
add a,@1
STA _keyCount,0,0
.stabn 68,0,179,L182
L182:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$167
.stabn 192,0,2,L183
L183:
.stabn 68,0,180,L184
L184:
.stabn 68,0,181,L185
L185:
mov a,@200
STA _keyCount,0,0
.stabn 68,0,182,L186
L186:
jbc _longPressFlag,1
EXTJMP @L$167
.stabn 192,0,3,L187
L187:
.stabn 68,0,183,L188
L188:
.stabn 68,0,184,L189
L189:
bs _longPressFlag,1
.stabn 68,0,185,L190
L190:
mov a,@2
mov eax,a
jmp @L$165
.stabn 68,0,186,L191
L191:
.stabn 224,0,3,L192
L192:
.stabn 68,0,187,L193
L193:
.stabn 224,0,2,L194
L194:
.stabn 68,0,188,L195
L195:
.stabn 224,0,1,L196
L196:
L$166:
.stabn 192,0,1,L197
L197:
.stabn 68,0,190,L198
L198:
.stabn 68,0,191,L199
L199:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$172
.stabn 192,0,2,L200
L200:
.stabn 68,0,192,L201
L201:
.stabn 68,0,193,L202
L202:
clr _keyCount
.stabn 68,0,194,L203
L203:
bc _longPressFlag,1
.stabn 68,0,195,L204
L204:
mov a,@0
mov eax,a
jmp @L$165
.stabn 68,0,196,L205
L205:
.stabn 224,0,2,L206
L206:
L$172:
.stabn 68,0,197,L207
L207:
ULTRIB _keyCount,0x8
jbs STATUS, cf
EXTJMP L$174
.stabn 192,0,2,L208
L208:
.stabn 68,0,198,L209
L209:
.stabn 68,0,199,L210
L210:
clr _keyCount
.stabn 68,0,200,L211
L211:
mov a,@1
mov eax,a
jmp @L$165
.stabn 68,0,201,L212
L212:
.stabn 224,0,2,L213
L213:
L$174:
.stabn 68,0,202,L214
L214:
clr _keyCount
.stabn 68,0,203,L215
L215:
.stabn 224,0,1,L216
L216:
L$167:
.stabn 68,0,204,L217
L217:
mov a,@0
mov eax,a
.stabn 68,0,205,L218
L218:
.stabn 224,0,0,L219
L219:
L$165:
mov a,keyRead_bp-4
mov ecx,a
mov a,keyRead_bp-3
mov ecx+1,a
mov a,keyRead_bp-2
mov ecx+2,a
mov a,keyRead_bp-1
mov ecx+3,a
ret
.STACK keyRead_bp,local,4
public _gotoSleep
public gotoSleep_bp
.stabs "gotoSleep:F15",36,0,0,_gotoSleep
.section ".S7",C_CODE
.SYMDEF ".S7" 
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
.stabn 192,0,0,L221
L221:
.stabn 68,0,208,L222
L222:
.stabn 68,0,210,L223
L223:
clr _workStep
.stabn 68,0,211,L224
L224:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,212,L225
L225:
mov a,@16
STA _ICIECR,0,0
.stabn 68,0,213,L226
L226:
mov a,@2
STA _IMR,0,2
.stabn 68,0,214,L227
L227:
LDA _ISR,0,0
and a,@240
STA _ISR,0,0
.stabn 68,0,215,L228
L228:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(215):"
disi
.stabn 68,0,215,L229
L229:
.stabn 68,0,216,L230
L230:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(216):"
slep
.stabn 68,0,216,L231
L231:
.stabn 68,0,217,L232
L232:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(217):"
eni
.stabn 68,0,217,L233
L233:
.stabn 68,0,218,L234
L234:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,219,L235
L235:
clr _ICIECR
.stabn 68,0,220,L236
L236:
clr _ISR
.stabn 68,0,221,L237
L237:
mov a,@1
STA _IMR,0,2
.stabn 68,0,222,L238
L238:
.stabn 224,0,0,L239
L239:
L$220:
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
.section ".S8",C_CODE
.SYMDEF ".S8" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L245
L245:
.stabn 68,0,227,L246
L246:
.stabn 68,0,230,L247
L247:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(230):"
MOV 0x3D,A ;保存 A
.stabn 68,0,231,L248
L248:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(231):"
MOV A,0x03
.stabn 68,0,232,L249
L249:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(232):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,233,L250
L250:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(233):"
MOV A,0x04
.stabn 68,0,234,L251
L251:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(234):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,237,L252
L252:
jbs _TCIF,0
EXTJMP @L$241
.stabn 192,0,1,L253
L253:
.stabn 68,0,238,L254
L254:
.stabn 68,0,240,L255
L255:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,241,L256
L256:
LDA _TCC,0,0
add a,@206
STA _TCC,0,0
.stabn 68,0,243,L257
L257:
LDA _intCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _intCount,0,0
ULTRIB ecx,0x64
jbs STATUS, cf
EXTJMP L$243
.stabn 192,0,2,L258
L258:
.stabn 68,0,244,L259
L259:
.stabn 68,0,245,L260
L260:
clr _intCount
.stabn 68,0,246,L261
L261:
bs _IntFlag,0
.stabn 68,0,249,L262
L262:
.stabn 224,0,2,L263
L263:
L$243:
.stabn 68,0,250,L264
L264:
.stabn 224,0,1,L265
L265:
L$241:
.stabn 68,0,254,L266
L266:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(254):"
MOV A,0x3F ;返回 R4
.stabn 68,0,255,L267
L267:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(255):"
MOV 0x04,A
.stabn 68,0,256,L268
L268:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(256):"
MOV A,0x3E ;返回 R3
.stabn 68,0,257,L269
L269:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(257):"
MOV 0x03,A
.stabn 68,0,258,L270
L270:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(258):"
SWAP 0x3D  ;返回 A
.stabn 68,0,259,L271
L271:
.cfile "C:\mcuproject\xj\s1_ms153_sop8\PWM.c(259):"
SWAPA 0x3D
.stabn 68,0,261,L272
L272:
.stabn 224,0,0,L273
L273:
L$240:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S9",C_CODE
.SYMDEF ".S9" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L275
L275:
.stabn 68,0,266,L276
L276:
.stabn 68,0,268,L277
L277:
.stabn 224,0,0,L278
L278:
L$274:
reti
.STACK interrupt_l_bp,local,0
.section ".bss"
.align 1
_cleanFlag:
.SYMDEF "_cleanFlag" BANK:0,BIT:1,32,LEN:1
ds 1
.stabs "cleanFlag:S16",40,0,0,_cleanFlag
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
.stabs "u16t:t14",128,0,0,0
.stabs "u8t:t10",128,0,0,0
.section ".code"
end
