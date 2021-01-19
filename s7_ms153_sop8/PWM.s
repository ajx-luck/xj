.autoimport
EM78P153B EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\mcuproject\xj\s7_ms153_sop8\PWM.c",100,0,3,0
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
.stabn 192,0,0,L17
L17:
.stabn 68,0,39,L19
L19:
.stabn 68,0,43,L20
L20:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(43):"
wdtc
.stabn 68,0,43,L21
L21:
.stabn 68,0,44,L22
L22:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(44):"
disi
.stabn 68,0,44,L23
L23:
.stabn 68,0,45,L24
L24:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,47,L25
L25:
call _IO_Init
.stabn 68,0,49,L26
L26:
mov a,@206
STA _TCC,0,0
.stabn 68,0,50,L27
L27:
clr _ISR
.stabn 68,0,51,L28
L28:
mov a,@1
STA _IMR,0,2
.stabn 68,0,53,L29
L29:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(53):"
eni
.stabn 68,0,53,L30
L30:
.stabn 68,0,55,L31
L31:
call _PWM_Init_500
jmp @L$3
L$2:
.stabn 192,0,1,L32
L32:
.stabn 68,0,58,L33
L33:
.stabn 68,0,59,L34
L34:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(59):"
wdtc
.stabn 68,0,59,L35
L35:
.stabn 68,0,60,L36
L36:
jbc _IntFlag,0
EXTJMP @L$5
.stabn 68,0,61,L37
L37:
jmp @L$3
L$5:
.stabn 68,0,62,L38
L38:
bc _IntFlag,0
.stabn 68,0,63,L39
L39:
call _keyCtr
.stabn 68,0,64,L40
L40:
jbs _P63,3
EXTJMP @L$7
.stabn 68,0,65,L41
L41:
call _workCtr
jmp @L$8
L$7:
.stabn 68,0,67,L42
L42:
call _chrgCtr
L$8:
.stabn 68,0,69,L43
L43:
EQNEPRIB _workStep,0
jbc STATUS,zf
EXTJMP @L$9
.stabn 192,0,2,L44
L44:
.stabn 68,0,70,L45
L45:
.stabn 68,0,71,L46
L46:
LDA _PWMCON,0,0
mov ecx,a
mov a,@16
and ecx,a
EQNEPRIB ecx,0
jbs STATUS,zf
EXTJMP @L$10
.stabn 192,0,3,L47
L47:
.stabn 68,0,72,L48
L48:
.stabn 68,0,73,L49
L49:
LDA _PWMCON,0,0
or a,@16
STA _PWMCON,0,0
.stabn 68,0,74,L50
L50:
.stabn 224,0,3,L51
L51:
.stabn 68,0,75,L52
L52:
.stabn 224,0,2,L53
L53:
jmp @L$10
L$9:
.stabn 192,0,2,L54
L54:
.stabn 68,0,77,L55
L55:
.stabn 68,0,78,L56
L56:
LDA _PWMCON,0,0
and a,@239
STA _PWMCON,0,0
.stabn 68,0,79,L57
L57:
.stabn 224,0,2,L58
L58:
L$10:
.stabn 68,0,80,L59
L59:
EQNEPRIB _ledCount,0
jbc STATUS, zf
EXTJMP L$13
.stabn 192,0,2,L60
L60:
.stabn 68,0,81,L61
L61:
.stabn 68,0,82,L62
L62:
DECMB _ledCount,0
.stabn 68,0,83,L63
L63:
UGTRIB _ledCount,0x32
jbc STATUS, cf
EXTJMP L$15
.stabn 192,0,3,L64
L64:
.stabn 68,0,84,L65
L65:
.stabn 68,0,85,L66
L66:
bc _P64,4
.stabn 68,0,86,L67
L67:
bc _P61,1
.stabn 68,0,87,L68
L68:
bc _P60,0
.stabn 68,0,88,L69
L69:
.stabn 224,0,3,L70
L70:
jmp @L$16
L$15:
.stabn 192,0,3,L71
L71:
.stabn 68,0,90,L72
L72:
.stabn 68,0,91,L73
L73:
bs _P64,4
.stabn 68,0,92,L74
L74:
bs _P61,1
.stabn 68,0,93,L75
L75:
bs _P60,0
.stabn 68,0,94,L76
L76:
.stabn 224,0,3,L77
L77:
L$16:
.stabn 68,0,96,L78
L78:
.stabn 224,0,2,L79
L79:
L$13:
.stabn 68,0,97,L80
L80:
.stabn 224,0,1,L81
L81:
L$3:
.stabn 68,0,57,L82
L82:
jmp @L$2
.stabn 68,0,99,L83
L83:
.stabn 224,0,0,L84
L84:
L$1:
ret
.STACK main_bp,local,1
public _chrgCtr
public chrgCtr_bp
.stabs "chrgCtr:F15",36,0,0,_chrgCtr
.section ".S1",C_CODE
.SYMDEF ".S1" 
_chrgCtr:
.SYMDEF "_chrgCtr" 
mov a,ecx
mov chrgCtr_bp-4,a
mov a,ecx+1
mov chrgCtr_bp-3,a
mov a,ecx+2
mov chrgCtr_bp-2,a
mov a,ecx+3
mov chrgCtr_bp-1,a
.stabn 192,0,0,L88
L88:
.stabn 68,0,103,L89
L89:
.stabn 68,0,104,L90
L90:
EQNEPRIB _ledCount,0
jbs STATUS,zf
EXTJMP @L$86
.stabn 68,0,105,L91
L91:
mov a,@100
STA _ledCount,0,0
L$86:
.stabn 68,0,107,L92
L92:
.stabn 224,0,0,L93
L93:
L$85:
mov a,chrgCtr_bp-4
mov ecx,a
mov a,chrgCtr_bp-3
mov ecx+1,a
mov a,chrgCtr_bp-2
mov ecx+2,a
mov a,chrgCtr_bp-1
mov ecx+3,a
ret
.STACK chrgCtr_bp,local,4
public _workCtr
public workCtr_bp
.stabs "workCtr:F15",36,0,0,_workCtr
.section ".S2",C_CODE
.SYMDEF ".S2" 
_workCtr:
.SYMDEF "_workCtr" 
mov a,ecx
mov workCtr_bp-4,a
mov a,ecx+1
mov workCtr_bp-3,a
mov a,ecx+2
mov workCtr_bp-2,a
mov a,ecx+3
mov workCtr_bp-1,a
.stabn 192,0,0,L109
L109:
.stabn 68,0,111,L110
L110:
.stabn 68,0,112,L111
L111:
LDA _workStep,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$97
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$100
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$103
EQNEPRIB ecx,3
jbc STATUS,zf
EXTJMP @L$106
jmp @L$95
.stabn 192,0,1,L112
L112:
.stabn 68,0,113,L113
L113:
L$97:
.stabn 68,0,115,L114
L114:
mov a,@100
STA _PDC1,0,0
.stabn 68,0,116,L115
L115:
EQNEPRIB _keyCount,0
jbs STATUS,zf
EXTJMP @L$96
EQNEPRIB _ledCount,0
jbs STATUS,zf
EXTJMP @L$96
.stabn 68,0,117,L116
L116:
call _gotoSleep
.stabn 68,0,118,L117
L117:
jmp @L$96
L$100:
.stabn 68,0,120,L118
L118:
mov a,@100
STA _PDC1,0,0
.stabn 68,0,121,L119
L119:
EQNEPRIB _ledCount,0
jbs STATUS,zf
EXTJMP @L$96
.stabn 192,0,2,L120
L120:
.stabn 68,0,122,L121
L121:
.stabn 68,0,123,L122
L122:
bc _P64,4
.stabn 68,0,124,L123
L123:
bs _P61,1
.stabn 68,0,125,L124
L124:
bs _P60,0
.stabn 68,0,126,L125
L125:
.stabn 224,0,2,L126
L126:
.stabn 68,0,127,L127
L127:
jmp @L$96
L$103:
.stabn 68,0,129,L128
L128:
mov a,@112
STA _PDC1,0,0
.stabn 68,0,130,L129
L129:
EQNEPRIB _ledCount,0
jbs STATUS,zf
EXTJMP @L$96
.stabn 192,0,2,L130
L130:
.stabn 68,0,131,L131
L131:
.stabn 68,0,132,L132
L132:
bc _P61,1
.stabn 68,0,133,L133
L133:
bs _P64,4
.stabn 68,0,134,L134
L134:
bs _P60,0
.stabn 68,0,135,L135
L135:
.stabn 224,0,2,L136
L136:
.stabn 68,0,136,L137
L137:
jmp @L$96
L$106:
.stabn 68,0,138,L138
L138:
mov a,@124
STA _PDC1,0,0
.stabn 68,0,139,L139
L139:
EQNEPRIB _ledCount,0
jbs STATUS,zf
EXTJMP @L$96
.stabn 192,0,2,L140
L140:
.stabn 68,0,140,L141
L141:
.stabn 68,0,141,L142
L142:
bc _P60,0
.stabn 68,0,142,L143
L143:
bs _P64,4
.stabn 68,0,143,L144
L144:
bs _P61,1
.stabn 68,0,144,L145
L145:
.stabn 224,0,2,L146
L146:
.stabn 68,0,145,L147
L147:
.stabn 68,0,146,L148
L148:
.stabn 224,0,1,L149
L149:
L$95:
L$96:
.stabn 68,0,148,L150
L150:
.stabn 224,0,0,L151
L151:
L$94:
mov a,workCtr_bp-4
mov ecx,a
mov a,workCtr_bp-3
mov ecx+1,a
mov a,workCtr_bp-2
mov ecx+2,a
mov a,workCtr_bp-1
mov ecx+3,a
ret
.STACK workCtr_bp,local,4
public _PWM_Init_500
public PWM_Init_500_bp
.stabs "PWM_Init_500:F15",36,0,0,_PWM_Init_500
.section ".S3",C_CODE
.SYMDEF ".S3" 
_PWM_Init_500:
.SYMDEF "_PWM_Init_500" 
mov a,ecx
mov PWM_Init_500_bp-4,a
mov a,ecx+1
mov PWM_Init_500_bp-3,a
mov a,ecx+2
mov PWM_Init_500_bp-2,a
mov a,ecx+3
mov PWM_Init_500_bp-1,a
.stabn 192,0,0,L153
L153:
.stabn 68,0,152,L154
L154:
.stabn 68,0,154,L155
L155:
mov a,@124
STA _PRD,0,0
.stabn 68,0,155,L156
L156:
mov a,@100
STA _PDC1,0,0
.stabn 68,0,156,L157
L157:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,157,L158
L158:
mov a,@14
STA _PWMCON,0,0
.stabn 68,0,158,L159
L159:
.stabn 224,0,0,L160
L160:
L$152:
mov a,PWM_Init_500_bp-4
mov ecx,a
mov a,PWM_Init_500_bp-3
mov ecx+1,a
mov a,PWM_Init_500_bp-2
mov ecx+2,a
mov a,PWM_Init_500_bp-1
mov ecx+3,a
ret
.STACK PWM_Init_500_bp,local,4
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
.stabn 192,0,0,L162
L162:
.stabn 68,0,164,L163
L163:
.stabn 68,0,166,L164
L164:
clr _PORT6
.stabn 68,0,167,L165
L165:
mov a,@40
STA _P6CR,0,2
.stabn 68,0,168,L166
L166:
mov a,@215
STA _PHCR,0,2
.stabn 68,0,170,L167
L167:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(170):"
mov	a,@0x02
.stabn 68,0,171,L168
L168:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(171):"
contw
.stabn 68,0,173,L169
L169:
.stabn 224,0,0,L170
L170:
L$161:
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
.stabn 192,0,0,L180
L180:
.stabn 68,0,176,L181
L181:
.stabn 68,0,177,L182
L182:
LDA _PORT6,0,0
mov ecx,a
com ecx
mov a,@32
and ecx,a
mov a,ecx
mov keyRead_bp+0,a
.STACK keyRead_bp,parameter,1
call _keyRead
mov a,eax
STA keyCtr_bp-5,0,0
.stabn 68,0,179,L183
L183:
EQNEPRIB keyCtr_bp-5,1
jbs STATUS,zf
EXTJMP @L$172
.stabn 192,0,1,L184
L184:
.stabn 68,0,180,L185
L185:
.stabn 68,0,183,L186
L186:
EQNEPRIB _workStep,0
jbs STATUS,zf
EXTJMP @L$174
.stabn 192,0,2,L187
L187:
.stabn 68,0,184,L188
L188:
.stabn 68,0,185,L189
L189:
mov a,@100
STA _ledCount,0,0
.stabn 68,0,186,L190
L190:
.stabn 224,0,2,L191
L191:
L$174:
.stabn 68,0,187,L192
L192:
LDA _workStep,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _workStep,0,0
UGTRIB ecx,0x3
jbc STATUS, cf
EXTJMP L$173
.stabn 68,0,188,L193
L193:
mov a,@1
STA _workStep,0,0
.stabn 68,0,190,L194
L194:
.stabn 224,0,1,L195
L195:
jmp @L$173
L$172:
.stabn 68,0,191,L196
L196:
EQNEPRIB keyCtr_bp-5,2
jbs STATUS,zf
EXTJMP @L$178
.stabn 192,0,1,L197
L197:
.stabn 68,0,192,L198
L198:
.stabn 68,0,193,L199
L199:
clr _workStep
.stabn 68,0,194,L200
L200:
mov a,@100
STA _ledCount,0,0
.stabn 68,0,195,L201
L201:
.stabn 224,0,1,L202
L202:
L$178:
L$173:
.stabn 68,0,199,L203
L203:
.stabn 224,0,0,L204
L204:
L$171:
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
.stabn 192,0,0,L216
L216:
.stabn 68,0,202,L217
L217:
.stabn 68,0,203,L218
L218:
EQNEPRIB keyRead_bp+0,0
jbc STATUS,zf
EXTJMP @L$206
.stabn 192,0,1,L219
L219:
.stabn 68,0,204,L220
L220:
.stabn 68,0,205,L221
L221:
LDA _keyCount,0,0
add a,@1
STA _keyCount,0,0
.stabn 68,0,206,L222
L222:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$207
.stabn 192,0,2,L223
L223:
.stabn 68,0,207,L224
L224:
.stabn 68,0,208,L225
L225:
mov a,@200
STA _keyCount,0,0
.stabn 68,0,209,L226
L226:
jbc _longPressFlag,1
EXTJMP @L$207
.stabn 192,0,3,L227
L227:
.stabn 68,0,210,L228
L228:
.stabn 68,0,211,L229
L229:
bs _longPressFlag,1
.stabn 68,0,212,L230
L230:
mov a,@2
mov eax,a
jmp @L$205
.stabn 68,0,213,L231
L231:
.stabn 224,0,3,L232
L232:
.stabn 68,0,214,L233
L233:
.stabn 224,0,2,L234
L234:
.stabn 68,0,215,L235
L235:
.stabn 224,0,1,L236
L236:
L$206:
.stabn 192,0,1,L237
L237:
.stabn 68,0,217,L238
L238:
.stabn 68,0,218,L239
L239:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$212
.stabn 192,0,2,L240
L240:
.stabn 68,0,219,L241
L241:
.stabn 68,0,220,L242
L242:
clr _keyCount
.stabn 68,0,221,L243
L243:
bc _longPressFlag,1
.stabn 68,0,222,L244
L244:
mov a,@0
mov eax,a
jmp @L$205
.stabn 68,0,223,L245
L245:
.stabn 224,0,2,L246
L246:
L$212:
.stabn 68,0,224,L247
L247:
ULTRIB _keyCount,0x8
jbs STATUS, cf
EXTJMP L$214
.stabn 192,0,2,L248
L248:
.stabn 68,0,225,L249
L249:
.stabn 68,0,226,L250
L250:
clr _keyCount
.stabn 68,0,227,L251
L251:
mov a,@1
mov eax,a
jmp @L$205
.stabn 68,0,228,L252
L252:
.stabn 224,0,2,L253
L253:
L$214:
.stabn 68,0,229,L254
L254:
clr _keyCount
.stabn 68,0,230,L255
L255:
.stabn 224,0,1,L256
L256:
L$207:
.stabn 68,0,231,L257
L257:
mov a,@0
mov eax,a
.stabn 68,0,232,L258
L258:
.stabn 224,0,0,L259
L259:
L$205:
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
.stabn 192,0,0,L261
L261:
.stabn 68,0,235,L262
L262:
.stabn 68,0,236,L263
L263:
bs _P64,4
.stabn 68,0,237,L264
L264:
bs _P61,1
.stabn 68,0,238,L265
L265:
bs _P60,0
.stabn 68,0,239,L266
L266:
clr _workStep
.stabn 68,0,240,L267
L267:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,241,L268
L268:
mov a,@40
STA _ICIECR,0,0
.stabn 68,0,242,L269
L269:
mov a,@2
STA _IMR,0,2
.stabn 68,0,243,L270
L270:
LDA _ISR,0,0
and a,@240
STA _ISR,0,0
.stabn 68,0,244,L271
L271:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(244):"
disi
.stabn 68,0,244,L272
L272:
.stabn 68,0,245,L273
L273:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(245):"
slep
.stabn 68,0,245,L274
L274:
.stabn 68,0,246,L275
L275:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(246):"
eni
.stabn 68,0,246,L276
L276:
.stabn 68,0,247,L277
L277:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,248,L278
L278:
clr _ICIECR
.stabn 68,0,249,L279
L279:
clr _ISR
.stabn 68,0,250,L280
L280:
mov a,@1
STA _IMR,0,2
.stabn 68,0,251,L281
L281:
.stabn 224,0,0,L282
L282:
L$260:
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
.stabn 192,0,0,L288
L288:
.stabn 68,0,256,L289
L289:
.stabn 68,0,259,L290
L290:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(259):"
MOV 0x3D,A ;保存 A
.stabn 68,0,260,L291
L291:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(260):"
MOV A,0x03
.stabn 68,0,261,L292
L292:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(261):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,262,L293
L293:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(262):"
MOV A,0x04
.stabn 68,0,263,L294
L294:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(263):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,266,L295
L295:
jbs _TCIF,0
EXTJMP @L$284
.stabn 192,0,1,L296
L296:
.stabn 68,0,267,L297
L297:
.stabn 68,0,269,L298
L298:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,270,L299
L299:
LDA _TCC,0,0
add a,@206
STA _TCC,0,0
.stabn 68,0,272,L300
L300:
LDA _intCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _intCount,0,0
ULTRIB ecx,0x64
jbs STATUS, cf
EXTJMP L$286
.stabn 192,0,2,L301
L301:
.stabn 68,0,273,L302
L302:
.stabn 68,0,274,L303
L303:
clr _intCount
.stabn 68,0,275,L304
L304:
bs _IntFlag,0
.stabn 68,0,278,L305
L305:
.stabn 224,0,2,L306
L306:
L$286:
.stabn 68,0,279,L307
L307:
.stabn 224,0,1,L308
L308:
L$284:
.stabn 68,0,283,L309
L309:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(283):"
MOV A,0x3F ;返回 R4
.stabn 68,0,284,L310
L310:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(284):"
MOV 0x04,A
.stabn 68,0,285,L311
L311:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(285):"
MOV A,0x3E ;返回 R3
.stabn 68,0,286,L312
L312:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(286):"
MOV 0x03,A
.stabn 68,0,287,L313
L313:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(287):"
SWAP 0x3D  ;返回 A
.stabn 68,0,288,L314
L314:
.cfile "C:\mcuproject\xj\s7_ms153_sop8\PWM.c(288):"
SWAPA 0x3D
.stabn 68,0,290,L315
L315:
.stabn 224,0,0,L316
L316:
L$283:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S9",C_CODE
.SYMDEF ".S9" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L318
L318:
.stabn 68,0,295,L319
L319:
.stabn 68,0,297,L320
L320:
.stabn 224,0,0,L321
L321:
L$317:
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
.stabs "u16t:t14",128,0,0,0
.stabs "u8t:t10",128,0,0,0
.section ".code"
end
