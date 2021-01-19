.autoimport
EM78P153B EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c",100,0,3,0
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
public _duty
.align 1
_duty:
.SYMDEF "_duty" LEN:1
db 0x0
.stabs "duty:G10",32,0,0,_duty
public _int2Count
.align 1
_int2Count:
.SYMDEF "_int2Count" LEN:1
db 0x0
.stabs "int2Count:G10",32,0,0,_int2Count
public _count1s
.align 1
_count1s:
.SYMDEF "_count1s" LEN:1
db 0x0
.stabs "count1s:G10",32,0,0,_count1s
public _count1min
.align 1
_count1min:
.SYMDEF "_count1min" LEN:1
db 0x0
.stabs "count1min:G10",32,0,0,_count1min
public _count900s
.align 1
_count900s:
.SYMDEF "_count900s" LEN:1
db 0x0
.stabs "count900s:G10",32,0,0,_count900s
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
public _ledStep
.align 1
_ledStep:
.SYMDEF "_ledStep" LEN:1
db 0x0
.stabs "ledStep:G10",32,0,0,_ledStep
public _ledCount
.align 1
_ledCount:
.SYMDEF "_ledCount" LEN:1
db 0x0
.stabs "ledCount:G10",32,0,0,_ledCount
public _chrgCount
.align 1
_chrgCount:
.SYMDEF "_chrgCount" LEN:1
db 0x0
.stabs "chrgCount:G10",32,0,0,_chrgCount
public _main
public main_bp
.section ".code"
.stabs "main:F15",36,0,0,_main
.section ".S0",C_CODE
.SYMDEF ".S0" 
_main:
.SYMDEF "_main" 
.stabs "i:14",128,0,0,main_bp-1
.stabn 192,0,0,L24
L24:
.stabn 68,0,55,L26
L26:
.stabn 68,0,59,L27
L27:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(59):"
wdtc
.stabn 68,0,59,L28
L28:
.stabn 68,0,60,L29
L29:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(60):"
disi
.stabn 68,0,60,L30
L30:
.stabn 68,0,61,L31
L31:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,62,L32
L32:
clr _workStep
.stabn 68,0,63,L33
L33:
mov a,@173
STA _LVDCON,0,0
.stabn 68,0,64,L34
L34:
call _IO_Init
.stabn 68,0,65,L35
L35:
mov a,@206
STA _TCC,0,0
.stabn 68,0,66,L36
L36:
clr _ISR
.stabn 68,0,67,L37
L37:
mov a,@1
STA _IMR,0,2
.stabn 68,0,68,L38
L38:
clr _duty
.stabn 68,0,69,L39
L39:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(69):"
eni
.stabn 68,0,69,L40
L40:
.stabn 68,0,72,L41
L41:
L$2:
.stabn 192,0,1,L42
L42:
.stabn 68,0,73,L43
L43:
.stabn 68,0,75,L44
L44:
ULTRIB _workStep,0x6
jbc STATUS, cf
EXTJMP L$6
.stabn 192,0,2,L45
L45:
.stabn 68,0,76,L46
L46:
.stabn 68,0,77,L47
L47:
bc _P50,0
.stabn 68,0,78,L48
L48:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(78):"
nop
.stabn 68,0,78,L49
L49:
.stabn 68,0,79,L50
L50:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(79):"
nop
.stabn 68,0,79,L51
L51:
.stabn 68,0,80,L52
L52:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(80):"
nop
.stabn 68,0,80,L53
L53:
.stabn 68,0,81,L54
L54:
bc _P50,0
.stabn 68,0,82,L55
L55:
.stabn 224,0,2,L56
L56:
L$6:
.stabn 68,0,83,L57
L57:
clr main_bp-1
jmp @L$11
L$8:
.stabn 192,0,2,L58
L58:
.stabn 68,0,84,L59
L59:
.stabn 68,0,85,L60
L60:
bs _P50,0
.stabn 68,0,86,L61
L61:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(86):"
nop
.stabn 68,0,86,L62
L62:
.stabn 68,0,87,L63
L63:
.stabn 224,0,2,L64
L64:
L$9:
.stabn 68,0,83,L65
L65:
LDA main_bp-1,0,0
add a,@1
STA main_bp-1,0,0
L$11:
.stabn 68,0,83,L66
L66:
ULTRRB main_bp-1,_duty
jbs STATUS,cf
EXTJMP @L$8
.stabn 68,0,88,L67
L67:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(88):"
wdtc
.stabn 68,0,88,L68
L68:
.stabn 68,0,89,L69
L69:
jbc _IntFlag,0
EXTJMP @L$12
.stabn 68,0,90,L70
L70:
jmp @L$2
L$12:
.stabn 68,0,91,L71
L71:
bc _IntFlag,0
.stabn 68,0,92,L72
L72:
jbc _P64,4
EXTJMP @L$14
.stabn 192,0,2,L73
L73:
.stabn 68,0,93,L74
L74:
.stabn 68,0,94,L75
L75:
call _keyCtr
.stabn 68,0,95,L76
L76:
call _workCtr
.stabn 68,0,97,L77
L77:
.stabn 224,0,2,L78
L78:
jmp @L$15
L$14:
.stabn 192,0,2,L79
L79:
.stabn 68,0,99,L80
L80:
.stabn 68,0,100,L81
L81:
bc _P50,0
.stabn 68,0,101,L82
L82:
clr _duty
.stabn 68,0,102,L83
L83:
clr _workStep
.stabn 68,0,103,L84
L84:
clr _count900s
.stabn 68,0,105,L85
L85:
call _chrgCtr
.stabn 68,0,106,L86
L86:
.stabn 224,0,2,L87
L87:
L$15:
.stabn 68,0,108,L88
L88:
EQNEPRIB _workStep,0
jbc STATUS,zf
EXTJMP @L$2
.stabn 192,0,2,L89
L89:
.stabn 68,0,109,L90
L90:
.stabn 68,0,110,L91
L91:
LDA _count1s,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _count1s,0,0
ULTRIB ecx,0x64
jbs STATUS, cf
EXTJMP L$18
.stabn 192,0,3,L92
L92:
.stabn 68,0,111,L93
L93:
.stabn 68,0,112,L94
L94:
clr _count1s
.stabn 68,0,113,L95
L95:
LDA _count1min,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _count1min,0,0
ULTRIB ecx,0x3c
jbs STATUS, cf
EXTJMP L$20
.stabn 192,0,4,L96
L96:
.stabn 68,0,114,L97
L97:
.stabn 68,0,115,L98
L98:
clr _count1min
.stabn 68,0,116,L99
L99:
LDA _count900s,0,0
add a,@1
STA _count900s,0,0
.stabn 68,0,117,L100
L100:
.stabn 224,0,4,L101
L101:
L$20:
.stabn 68,0,119,L102
L102:
.stabn 224,0,3,L103
L103:
L$18:
.stabn 68,0,121,L104
L104:
ULTRIB _count900s,0xf
jbs STATUS, cf
EXTJMP L$2
EQNEPRIB _keyCount,0
jbs STATUS,zf
EXTJMP @L$2
.stabn 68,0,122,L105
L105:
call _gotoSleep
.stabn 68,0,123,L106
L106:
.stabn 224,0,2,L107
L107:
.stabn 68,0,126,L108
L108:
.stabn 224,0,1,L109
L109:
.stabn 68,0,72,L110
L110:
.stabn 68,0,72,L111
L111:
jmp @L$2
.stabn 68,0,128,L112
L112:
.stabn 224,0,0,L113
L113:
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
.stabn 192,0,0,L132
L132:
.stabn 68,0,131,L133
L133:
.stabn 68,0,133,L134
L134:
LDA _LVDCON,0,0
mov ecx,a
mov a,@64
and ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$115
.stabn 192,0,1,L135
L135:
.stabn 68,0,134,L136
L136:
.stabn 68,0,135,L137
L137:
bs _P65,5
.stabn 68,0,136,L138
L138:
LDA _ledCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _ledCount,0,0
UGTRIB ecx,0x32
jbc STATUS, cf
EXTJMP L$117
.stabn 192,0,2,L139
L139:
.stabn 68,0,137,L140
L140:
.stabn 68,0,138,L141
L141:
clr _ledCount
.stabn 68,0,139,L142
L142:
LDA _ledStep,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _ledStep,0,0
UGTRIB ecx,0x6
jbc STATUS, cf
EXTJMP L$119
.stabn 192,0,3,L143
L143:
.stabn 68,0,140,L144
L144:
.stabn 68,0,141,L145
L145:
clr _ledStep
.stabn 68,0,142,L146
L146:
.stabn 224,0,3,L147
L147:
L$119:
.stabn 68,0,143,L148
L148:
.stabn 224,0,2,L149
L149:
L$117:
.stabn 68,0,144,L150
L150:
clr _chrgCount
.stabn 68,0,145,L151
L151:
.stabn 224,0,1,L152
L152:
jmp @L$116
L$115:
.stabn 192,0,1,L153
L153:
.stabn 68,0,147,L154
L154:
.stabn 68,0,148,L155
L155:
LDA _chrgCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _chrgCount,0,0
UGTRIB ecx,0xfa
jbc STATUS, cf
EXTJMP L$121
.stabn 192,0,2,L156
L156:
.stabn 68,0,149,L157
L157:
.stabn 68,0,150,L158
L158:
bc _P65,5
.stabn 68,0,151,L159
L159:
mov a,@250
STA _chrgCount,0,0
.stabn 68,0,152,L160
L160:
LDA _PORT5,0,0
or a,@14
STA _PORT5,0,0
.stabn 68,0,153,L161
L161:
LDA _PORT6,0,0
or a,@7
STA _PORT6,0,0
.stabn 68,0,154,L162
L162:
.stabn 224,0,2,L163
L163:
L$121:
.stabn 68,0,155,L164
L164:
.stabn 224,0,1,L165
L165:
L$116:
.stabn 68,0,156,L166
L166:
LDA _ledStep,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$125
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$126
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$127
EQNEPRIB ecx,3
jbc STATUS,zf
EXTJMP @L$128
EQNEPRIB ecx,4
jbc STATUS,zf
EXTJMP @L$129
EQNEPRIB ecx,5
jbc STATUS,zf
EXTJMP @L$130
EQNEPRIB ecx,6
jbc STATUS,zf
EXTJMP @L$131
jmp @L$123
.stabn 192,0,1,L167
L167:
.stabn 68,0,157,L168
L168:
L$125:
.stabn 68,0,159,L169
L169:
LDA _PORT5,0,0
and a,@241
STA _PORT5,0,0
.stabn 68,0,160,L170
L170:
LDA _PORT6,0,0
and a,@248
STA _PORT6,0,0
.stabn 68,0,161,L171
L171:
jmp @L$124
L$126:
.stabn 68,0,163,L172
L172:
bs _P51,1
.stabn 68,0,164,L173
L173:
jmp @L$124
L$127:
.stabn 68,0,166,L174
L174:
bs _P52,2
.stabn 68,0,167,L175
L175:
jmp @L$124
L$128:
.stabn 68,0,169,L176
L176:
bs _P53,3
.stabn 68,0,170,L177
L177:
jmp @L$124
L$129:
.stabn 68,0,172,L178
L178:
bs _P60,0
.stabn 68,0,173,L179
L179:
jmp @L$124
L$130:
.stabn 68,0,175,L180
L180:
bs _P61,1
.stabn 68,0,176,L181
L181:
jmp @L$124
L$131:
.stabn 68,0,178,L182
L182:
bs _P62,2
.stabn 68,0,179,L183
L183:
.stabn 68,0,180,L184
L184:
.stabn 224,0,1,L185
L185:
L$123:
L$124:
.stabn 68,0,181,L186
L186:
.stabn 224,0,0,L187
L187:
L$114:
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
public _keyCtr
public keyCtr_bp
.stabs "keyCtr:F15",36,0,0,_keyCtr
.section ".S2",C_CODE
.SYMDEF ".S2" 
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
.stabn 192,0,0,L195
L195:
.stabn 68,0,185,L196
L196:
.stabn 68,0,186,L197
L197:
LDA _PORT6,0,0
mov ecx,a
com ecx
mov a,@128
and ecx,a
mov a,ecx
mov keyRead_bp+0,a
.STACK keyRead_bp,parameter,1
call _keyRead
mov a,eax
STA keyCtr_bp-5,0,0
.stabn 68,0,188,L198
L198:
EQNEPRIB keyCtr_bp-5,1
jbs STATUS,zf
EXTJMP @L$189
.stabn 192,0,1,L199
L199:
.stabn 68,0,189,L200
L200:
.stabn 68,0,192,L201
L201:
LDA _workStep,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _workStep,0,0
ULTRIB ecx,0x7
jbs STATUS, cf
EXTJMP L$190
.stabn 68,0,193,L202
L202:
clr _workStep
.stabn 68,0,195,L203
L203:
.stabn 224,0,1,L204
L204:
jmp @L$190
L$189:
.stabn 68,0,196,L205
L205:
EQNEPRIB keyCtr_bp-5,2
jbs STATUS,zf
EXTJMP @L$193
.stabn 192,0,1,L206
L206:
.stabn 68,0,197,L207
L207:
.stabn 68,0,198,L208
L208:
clr _workStep
.stabn 68,0,199,L209
L209:
.stabn 224,0,1,L210
L210:
L$193:
L$190:
.stabn 68,0,203,L211
L211:
.stabn 224,0,0,L212
L212:
L$188:
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
public _workCtr
public workCtr_bp
.stabs "workCtr:F15",36,0,0,_workCtr
.section ".S3",C_CODE
.SYMDEF ".S3" 
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
.stabn 192,0,0,L225
L225:
.stabn 68,0,206,L226
L226:
.stabn 68,0,207,L227
L227:
LDA _workStep,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$216
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$219
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$220
EQNEPRIB ecx,3
jbc STATUS,zf
EXTJMP @L$221
EQNEPRIB ecx,4
jbc STATUS,zf
EXTJMP @L$222
EQNEPRIB ecx,5
jbc STATUS,zf
EXTJMP @L$223
EQNEPRIB ecx,6
jbc STATUS,zf
EXTJMP @L$224
jmp @L$214
.stabn 192,0,1,L228
L228:
.stabn 68,0,208,L229
L229:
L$216:
.stabn 68,0,210,L230
L230:
clr _duty
.stabn 68,0,211,L231
L231:
LDA _PORT5,0,0
and a,@241
STA _PORT5,0,0
.stabn 68,0,212,L232
L232:
LDA _PORT6,0,0
and a,@248
STA _PORT6,0,0
.stabn 68,0,213,L233
L233:
bc _P65,5
.stabn 68,0,214,L234
L234:
EQNEPRIB _keyCount,0
jbs STATUS,zf
EXTJMP @L$215
.stabn 68,0,215,L235
L235:
call _gotoSleep
.stabn 68,0,216,L236
L236:
jmp @L$215
L$219:
.stabn 68,0,218,L237
L237:
mov a,@9
STA _duty,0,0
.stabn 68,0,219,L238
L238:
bs _P51,1
.stabn 68,0,220,L239
L239:
jmp @L$215
L$220:
.stabn 68,0,222,L240
L240:
mov a,@11
STA _duty,0,0
.stabn 68,0,223,L241
L241:
bs _P52,2
.stabn 68,0,224,L242
L242:
jmp @L$215
L$221:
.stabn 68,0,226,L243
L243:
mov a,@14
STA _duty,0,0
.stabn 68,0,227,L244
L244:
bs _P53,3
.stabn 68,0,228,L245
L245:
jmp @L$215
L$222:
.stabn 68,0,230,L246
L246:
mov a,@19
STA _duty,0,0
.stabn 68,0,231,L247
L247:
bs _P60,0
.stabn 68,0,232,L248
L248:
jmp @L$215
L$223:
.stabn 68,0,234,L249
L249:
mov a,@35
STA _duty,0,0
.stabn 68,0,235,L250
L250:
bs _P61,1
.stabn 68,0,236,L251
L251:
jmp @L$215
L$224:
.stabn 68,0,238,L252
L252:
mov a,@45
STA _duty,0,0
.stabn 68,0,239,L253
L253:
bs _P62,2
.stabn 68,0,240,L254
L254:
.stabn 68,0,241,L255
L255:
.stabn 224,0,1,L256
L256:
L$214:
L$215:
.stabn 68,0,243,L257
L257:
.stabn 224,0,0,L258
L258:
L$213:
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
public _keyRead
public keyRead_bp
.stabs "keyRead:F2",36,0,0,_keyRead
.section ".S4",C_CODE
.SYMDEF ".S4" 
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
.stabn 192,0,0,L270
L270:
.stabn 68,0,247,L271
L271:
.stabn 68,0,248,L272
L272:
EQNEPRIB keyRead_bp+0,0
jbc STATUS,zf
EXTJMP @L$260
.stabn 192,0,1,L273
L273:
.stabn 68,0,249,L274
L274:
.stabn 68,0,250,L275
L275:
LDA _keyCount,0,0
add a,@1
STA _keyCount,0,0
.stabn 68,0,251,L276
L276:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$261
.stabn 192,0,2,L277
L277:
.stabn 68,0,252,L278
L278:
.stabn 68,0,253,L279
L279:
mov a,@200
STA _keyCount,0,0
.stabn 68,0,254,L280
L280:
jbc _longPressFlag,1
EXTJMP @L$261
.stabn 192,0,3,L281
L281:
.stabn 68,0,255,L282
L282:
.stabn 68,0,256,L283
L283:
bs _longPressFlag,1
.stabn 68,0,257,L284
L284:
mov a,@2
mov eax,a
jmp @L$259
.stabn 68,0,258,L285
L285:
.stabn 224,0,3,L286
L286:
.stabn 68,0,259,L287
L287:
.stabn 224,0,2,L288
L288:
.stabn 68,0,260,L289
L289:
.stabn 224,0,1,L290
L290:
L$260:
.stabn 192,0,1,L291
L291:
.stabn 68,0,262,L292
L292:
.stabn 68,0,263,L293
L293:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$266
.stabn 192,0,2,L294
L294:
.stabn 68,0,264,L295
L295:
.stabn 68,0,265,L296
L296:
clr _keyCount
.stabn 68,0,266,L297
L297:
bc _longPressFlag,1
.stabn 68,0,267,L298
L298:
mov a,@0
mov eax,a
jmp @L$259
.stabn 68,0,268,L299
L299:
.stabn 224,0,2,L300
L300:
L$266:
.stabn 68,0,269,L301
L301:
ULTRIB _keyCount,0x8
jbs STATUS, cf
EXTJMP L$268
.stabn 192,0,2,L302
L302:
.stabn 68,0,270,L303
L303:
.stabn 68,0,271,L304
L304:
clr _keyCount
.stabn 68,0,272,L305
L305:
mov a,@1
mov eax,a
jmp @L$259
.stabn 68,0,273,L306
L306:
.stabn 224,0,2,L307
L307:
L$268:
.stabn 68,0,274,L308
L308:
clr _keyCount
.stabn 68,0,275,L309
L309:
.stabn 224,0,1,L310
L310:
L$261:
.stabn 68,0,276,L311
L311:
mov a,@0
mov eax,a
.stabn 68,0,277,L312
L312:
.stabn 224,0,0,L313
L313:
L$259:
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
.section ".S5",C_CODE
.SYMDEF ".S5" 
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
.stabn 192,0,0,L315
L315:
.stabn 68,0,280,L316
L316:
.stabn 68,0,281,L317
L317:
bc _P65,5
.stabn 68,0,282,L318
L318:
bc _P50,0
.stabn 68,0,283,L319
L319:
LDA _PORT5,0,0
and a,@241
STA _PORT5,0,0
.stabn 68,0,284,L320
L320:
LDA _PORT6,0,0
and a,@248
STA _PORT6,0,0
.stabn 68,0,285,L321
L321:
clr _count900s
.stabn 68,0,286,L322
L322:
clr _workStep
.stabn 68,0,287,L323
L323:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,288,L324
L324:
mov a,@224
STA _ICIECR,0,0
.stabn 68,0,289,L325
L325:
mov a,@2
STA _IMR,0,2
.stabn 68,0,290,L326
L326:
LDA _ISR,0,0
and a,@240
STA _ISR,0,0
.stabn 68,0,291,L327
L327:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(291):"
disi
.stabn 68,0,291,L328
L328:
.stabn 68,0,292,L329
L329:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(292):"
slep
.stabn 68,0,292,L330
L330:
.stabn 68,0,293,L331
L331:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(293):"
eni
.stabn 68,0,293,L332
L332:
.stabn 68,0,294,L333
L333:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,295,L334
L334:
clr _ICIECR
.stabn 68,0,296,L335
L335:
clr _ISR
.stabn 68,0,297,L336
L336:
mov a,@1
STA _IMR,0,2
.stabn 68,0,298,L337
L337:
.stabn 224,0,0,L338
L338:
L$314:
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
public _IO_Init
public IO_Init_bp
.stabs "IO_Init:F15",36,0,0,_IO_Init
.section ".S6",C_CODE
.SYMDEF ".S6" 
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
.stabn 192,0,0,L340
L340:
.stabn 68,0,302,L341
L341:
.stabn 68,0,304,L342
L342:
clr _PORT5
.stabn 68,0,305,L343
L343:
mov a,@0
STA _P5CR,0,2
.stabn 68,0,306,L344
L344:
clr _PORT6
.stabn 68,0,307,L345
L345:
mov a,@208
STA _P6CR,0,2
.stabn 68,0,308,L346
L346:
mov a,@127
STA _PHCR,0,2
.stabn 68,0,309,L347
L347:
mov a,@255
STA _PHDCR,0,2
.stabn 68,0,311,L348
L348:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(311):"
mov	a,@0x02
.stabn 68,0,312,L349
L349:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(312):"
contw
.stabn 68,0,314,L350
L350:
.stabn 224,0,0,L351
L351:
L$339:
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
.section ".S7",C_CODE
.SYMDEF ".S7" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L357
L357:
.stabn 68,0,318,L358
L358:
.stabn 68,0,321,L359
L359:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(321):"
MOV 0x3D,A ;保存 A
.stabn 68,0,322,L360
L360:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(322):"
MOV A,0x03
.stabn 68,0,323,L361
L361:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(323):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,324,L362
L362:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(324):"
MOV A,0x04
.stabn 68,0,325,L363
L363:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(325):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,328,L364
L364:
jbs _TCIF,0
EXTJMP @L$353
.stabn 192,0,1,L365
L365:
.stabn 68,0,329,L366
L366:
.stabn 68,0,331,L367
L367:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,332,L368
L368:
LDA _TCC,0,0
add a,@206
STA _TCC,0,0
.stabn 68,0,334,L369
L369:
LDA _intCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _intCount,0,0
ULTRIB ecx,0x64
jbs STATUS, cf
EXTJMP L$355
.stabn 192,0,2,L370
L370:
.stabn 68,0,335,L371
L371:
.stabn 68,0,336,L372
L372:
clr _intCount
.stabn 68,0,337,L373
L373:
bs _IntFlag,0
.stabn 68,0,341,L374
L374:
.stabn 224,0,2,L375
L375:
L$355:
.stabn 68,0,344,L376
L376:
.stabn 224,0,1,L377
L377:
L$353:
.stabn 68,0,348,L378
L378:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(348):"
MOV A,0x3F ;返回 R4
.stabn 68,0,349,L379
L379:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(349):"
MOV 0x04,A
.stabn 68,0,350,L380
L380:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(350):"
MOV A,0x3E ;返回 R3
.stabn 68,0,351,L381
L381:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(351):"
MOV 0x03,A
.stabn 68,0,352,L382
L382:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(352):"
SWAP 0x3D  ;返回 A
.stabn 68,0,353,L383
L383:
.cfile "C:\mcuproject\xj\S21_1101B_SOP14\PWM.c(353):"
SWAPA 0x3D
.stabn 68,0,355,L384
L384:
.stabn 224,0,0,L385
L385:
L$352:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S8",C_CODE
.SYMDEF ".S8" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L387
L387:
.stabn 68,0,360,L388
L388:
.stabn 68,0,362,L389
L389:
.stabn 224,0,0,L390
L390:
L$386:
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
.SYMDEF "_LVDCON" REG:0,7,LEN:1
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
.stabs "u16t:t14",128,0,0,0
.stabs "u8t:t10",128,0,0,0
.section ".code"
end
