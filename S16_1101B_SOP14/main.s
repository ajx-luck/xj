.autoimport
EM78P153B EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\mcuproject\xj\S16_1101B_SOP14\main.c",100,0,3,0
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
public _count10s
.align 1
_count10s:
.SYMDEF "_count10s" LEN:2
dw 0x0
.stabs "count10s:G13",32,0,0,_count10s
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
public _keyNub
.align 1
_keyNub:
.SYMDEF "_keyNub" LEN:1
db 0x0
.stabs "keyNub:G10",32,0,0,_keyNub
public _workStatus
.align 1
_workStatus:
.SYMDEF "_workStatus" LEN:1
db 0x0
.stabs "workStatus:G10",32,0,0,_workStatus
public _workTime
.align 1
_workTime:
.SYMDEF "_workTime" LEN:2
dw 0x0
.stabs "workTime:G13",32,0,0,_workTime
public _tempWorkTime
.align 1
_tempWorkTime:
.SYMDEF "_tempWorkTime" LEN:2
dw 0x0
.stabs "tempWorkTime:G13",32,0,0,_tempWorkTime
public _tempTime
.align 1
_tempTime:
.SYMDEF "_tempTime" LEN:1
db 0x0
.stabs "tempTime:G10",32,0,0,_tempTime
public _main
public main_bp
.section ".code"
.stabs "main:F15",36,0,0,_main
.section ".S0",C_CODE
.SYMDEF ".S0" 
_main:
.SYMDEF "_main" 
.stabs "i:14",128,0,0,main_bp-1
.stabn 192,0,0,L18
L18:
.stabn 68,0,44,L20
L20:
.stabn 68,0,48,L21
L21:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(48):"
wdtc
.stabn 68,0,48,L22
L22:
.stabn 68,0,49,L23
L23:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(49):"
disi
.stabn 68,0,49,L24
L24:
.stabn 68,0,50,L25
L25:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,51,L26
L26:
clr _workStep
.stabn 68,0,53,L27
L27:
call _IO_Init
.stabn 68,0,54,L28
L28:
mov a,@206
STA _TCC,0,0
.stabn 68,0,55,L29
L29:
clr _ISR
.stabn 68,0,56,L30
L30:
mov a,@1
STA _IMR,0,2
.stabn 68,0,57,L31
L31:
clr _duty
.stabn 68,0,58,L32
L32:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(58):"
eni
.stabn 68,0,58,L33
L33:
.stabn 68,0,61,L34
L34:
L$2:
.stabn 192,0,1,L35
L35:
.stabn 68,0,62,L36
L36:
.stabn 68,0,64,L37
L37:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(64):"
wdtc
.stabn 68,0,64,L38
L38:
.stabn 68,0,65,L39
L39:
jbc _IntFlag,0
EXTJMP @L$6
.stabn 68,0,66,L40
L40:
jmp @L$2
L$6:
.stabn 68,0,67,L41
L41:
bc _IntFlag,0
.stabn 68,0,68,L42
L42:
EQNEPRIB _workStatus,1
jbs STATUS,zf
EXTJMP @L$8
jbc _P53,3
EXTJMP @L$8
.stabn 192,0,2,L43
L43:
.stabn 68,0,69,L44
L44:
.stabn 68,0,70,L45
L45:
clr _workStatus
.stabn 68,0,71,L46
L46:
call _PWM_Stop
.stabn 68,0,73,L47
L47:
.stabn 224,0,2,L48
L48:
L$8:
.stabn 68,0,74,L49
L49:
call _keyCtr
.stabn 68,0,75,L50
L50:
call _workCtr
.stabn 68,0,76,L51
L51:
EQNEPRIB _workStatus,1
jbs STATUS,zf
EXTJMP @L$10
.stabn 192,0,2,L52
L52:
.stabn 68,0,77,L53
L53:
.stabn 68,0,78,L54
L54:
jbs _pwmFlag,1
EXTJMP @L$12
.stabn 192,0,3,L55
L55:
.stabn 68,0,79,L56
L56:
.stabn 68,0,80,L57
L57:
call _ledCtr
.stabn 68,0,81,L58
L58:
.stabn 224,0,3,L59
L59:
jmp @L$2
L$12:
.stabn 192,0,3,L60
L60:
.stabn 68,0,83,L61
L61:
.stabn 68,0,85,L62
L62:
LDA _PORT6,0,0
or a,@224
STA _PORT6,0,0
.stabn 68,0,86,L63
L63:
bs _P50,0
.stabn 68,0,87,L64
L64:
.stabn 224,0,3,L65
L65:
.stabn 68,0,88,L66
L66:
.stabn 224,0,2,L67
L67:
jmp @L$2
L$10:
.stabn 68,0,89,L68
L68:
UGTRIB _workStatus,0x1
jbc STATUS, cf
EXTJMP L$14
.stabn 192,0,2,L69
L69:
.stabn 68,0,90,L70
L70:
.stabn 68,0,91,L71
L71:
call _ledCtr
.stabn 68,0,92,L72
L72:
.stabn 224,0,2,L73
L73:
jmp @L$2
L$14:
.stabn 68,0,93,L74
L74:
EQNEPRIB _workStatus,0
jbs STATUS,zf
EXTJMP @L$2
.stabn 192,0,2,L75
L75:
.stabn 68,0,94,L76
L76:
.stabn 68,0,96,L77
L77:
LDA _PORT6,0,0
or a,@224
STA _PORT6,0,0
.stabn 68,0,97,L78
L78:
bs _P50,0
.stabn 68,0,98,L79
L79:
.stabn 224,0,2,L80
L80:
.stabn 68,0,99,L81
L81:
.stabn 224,0,1,L82
L82:
.stabn 68,0,61,L83
L83:
.stabn 68,0,61,L84
L84:
jmp @L$2
.stabn 68,0,101,L85
L85:
.stabn 224,0,0,L86
L86:
L$1:
ret
.STACK main_bp,local,1
public _keyCtr
public keyCtr_bp
.stabs "keyCtr:F15",36,0,0,_keyCtr
.section ".S1",C_CODE
.SYMDEF ".S1" 
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
.stabn 192,0,0,L108
L108:
.stabn 68,0,105,L109
L109:
.stabn 68,0,106,L110
L110:
LDA _PORT6,0,0
mov ecx,a
com ecx
mov a,@11
and ecx,a
mov a,ecx
mov keyRead_bp+0,a
.STACK keyRead_bp,parameter,1
call _keyRead
mov a,eax
STA keyCtr_bp-5,0,0
.stabn 68,0,108,L111
L111:
EQNEPRIB keyCtr_bp-5,1
jbs STATUS,zf
EXTJMP @L$88
.stabn 192,0,1,L112
L112:
.stabn 68,0,109,L113
L113:
.stabn 68,0,112,L114
L114:
EQNEPRIB _keyNub,8
jbs STATUS,zf
EXTJMP @L$90
.stabn 192,0,2,L115
L115:
.stabn 68,0,113,L116
L116:
.stabn 68,0,114,L117
L117:
EQNEPRIB _workStatus,0
jbs STATUS,zf
EXTJMP @L$92
.stabn 192,0,3,L118
L118:
.stabn 68,0,115,L119
L119:
.stabn 68,0,116,L120
L120:
mov a,@2
STA _workStatus,0,0
.stabn 68,0,117,L121
L121:
EQNEPRIB _workStep,0
jbs STATUS,zf
EXTJMP @L$94
.stabn 192,0,4,L122
L122:
.stabn 68,0,118,L123
L123:
.stabn 68,0,119,L124
L124:
mov a,@1
STA _workStep,0,0
.stabn 68,0,120,L125
L125:
.stabn 224,0,4,L126
L126:
L$94:
.stabn 68,0,121,L127
L127:
mov a,@.b0.10000
STA _count10s,0,0
mov a,@.b1.10000
STA _count10s,1,0
.stabn 68,0,122,L128
L128:
.stabn 224,0,3,L129
L129:
jmp @L$91
L$92:
.stabn 192,0,3,L130
L130:
.stabn 68,0,124,L131
L131:
.stabn 68,0,125,L132
L132:
mov a,@1
STA _workStatus,0,0
.stabn 68,0,126,L133
L133:
EQNEPRIB _workStep,0
jbs STATUS,zf
EXTJMP @L$91
.stabn 192,0,4,L134
L134:
.stabn 68,0,127,L135
L135:
.stabn 68,0,128,L136
L136:
mov a,@1
STA _workStep,0,0
.stabn 68,0,129,L137
L137:
.stabn 224,0,4,L138
L138:
.stabn 68,0,130,L139
L139:
.stabn 224,0,3,L140
L140:
.stabn 68,0,131,L141
L141:
.stabn 224,0,2,L142
L142:
jmp @L$91
L$90:
.stabn 68,0,132,L143
L143:
EQNEPRIB _keyNub,2
jbs STATUS,zf
EXTJMP @L$98
.stabn 192,0,2,L144
L144:
.stabn 68,0,133,L145
L145:
.stabn 68,0,135,L146
L146:
EQNEPRIB _workStatus,1
jbs STATUS,zf
EXTJMP @L$100
.stabn 192,0,3,L147
L147:
.stabn 68,0,136,L148
L148:
.stabn 68,0,137,L149
L149:
mov a,@2
STA _workStatus,0,0
.stabn 68,0,138,L150
L150:
mov a,@.b0.10000
STA _count10s,0,0
mov a,@.b1.10000
STA _count10s,1,0
.stabn 68,0,139,L151
L151:
.stabn 224,0,3,L152
L152:
jmp @L$99
L$100:
.stabn 192,0,3,L153
L153:
.stabn 68,0,141,L154
L154:
.stabn 68,0,142,L155
L155:
clr _workStatus
.stabn 68,0,143,L156
L156:
.stabn 224,0,3,L157
L157:
.stabn 68,0,145,L158
L158:
.stabn 224,0,2,L159
L159:
jmp @L$99
L$98:
.stabn 68,0,146,L160
L160:
EQNEPRIB _keyNub,1
jbs STATUS,zf
EXTJMP @L$102
.stabn 192,0,2,L161
L161:
.stabn 68,0,147,L162
L162:
.stabn 68,0,149,L163
L163:
mov a,@.b0.10000
STA _count10s,0,0
mov a,@.b1.10000
STA _count10s,1,0
.stabn 68,0,150,L164
L164:
EQNEPRIB _workStatus,0
jbc STATUS, zf
EXTJMP L$104
.stabn 192,0,3,L165
L165:
.stabn 68,0,151,L166
L166:
.stabn 68,0,152,L167
L167:
mov a,@2
STA _workStatus,0,0
.stabn 68,0,153,L168
L168:
LDA _workStep,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _workStep,0,0
UGTRIB ecx,0x6
jbc STATUS, cf
EXTJMP L$106
.stabn 192,0,4,L169
L169:
.stabn 68,0,154,L170
L170:
.stabn 68,0,155,L171
L171:
mov a,@1
STA _workStep,0,0
.stabn 68,0,156,L172
L172:
.stabn 224,0,4,L173
L173:
L$106:
.stabn 68,0,157,L174
L174:
.stabn 224,0,3,L175
L175:
L$104:
.stabn 68,0,158,L176
L176:
.stabn 224,0,2,L177
L177:
L$102:
L$99:
L$91:
.stabn 68,0,160,L178
L178:
.stabn 224,0,1,L179
L179:
L$88:
.stabn 68,0,165,L180
L180:
.stabn 224,0,0,L181
L181:
L$87:
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
public _PWM_Init
public PWM_Init_bp
.stabs "PWM_Init:F15",36,0,0,_PWM_Init
.section ".S2",C_CODE
.SYMDEF ".S2" 
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
.stabn 192,0,0,L183
L183:
.stabn 68,0,168,L184
L184:
.stabn 68,0,170,L185
L185:
mov a,@128
STA _PRD,0,0
.stabn 68,0,171,L186
L186:
mov a,@115
STA _PDC1,0,0
.stabn 68,0,172,L187
L187:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,173,L188
L188:
mov a,@25
STA _PWMCON,0,0
.stabn 68,0,174,L189
L189:
bs _pwmFlag,1
.stabn 68,0,175,L190
L190:
.stabn 224,0,0,L191
L191:
L$182:
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
public _PWM_Stop
public PWM_Stop_bp
.stabs "PWM_Stop:F15",36,0,0,_PWM_Stop
.section ".S3",C_CODE
.SYMDEF ".S3" 
_PWM_Stop:
.SYMDEF "_PWM_Stop" 
mov a,ecx
mov PWM_Stop_bp-4,a
mov a,ecx+1
mov PWM_Stop_bp-3,a
mov a,ecx+2
mov PWM_Stop_bp-2,a
mov a,ecx+3
mov PWM_Stop_bp-1,a
.stabn 192,0,0,L195
L195:
.stabn 68,0,178,L196
L196:
.stabn 68,0,179,L197
L197:
LDA _PWMCON,0,0
mov ecx,a
mov a,@16
and ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$193
.stabn 192,0,1,L198
L198:
.stabn 68,0,180,L199
L199:
.stabn 68,0,181,L200
L200:
bs _P64,4
.stabn 68,0,182,L201
L201:
.stabn 224,0,1,L202
L202:
jmp @L$194
L$193:
.stabn 192,0,1,L203
L203:
.stabn 68,0,184,L204
L204:
.stabn 68,0,185,L205
L205:
bc _P64,4
.stabn 68,0,186,L206
L206:
.stabn 224,0,1,L207
L207:
L$194:
.stabn 68,0,187,L208
L208:
clr _PWMCON
.stabn 68,0,188,L209
L209:
bc _pwmFlag,1
.stabn 68,0,190,L210
L210:
.stabn 224,0,0,L211
L211:
L$192:
mov a,PWM_Stop_bp-4
mov ecx,a
mov a,PWM_Stop_bp-3
mov ecx+1,a
mov a,PWM_Stop_bp-2
mov ecx+2,a
mov a,PWM_Stop_bp-1
mov ecx+3,a
ret
.STACK PWM_Stop_bp,local,4
public _ledCtr
public ledCtr_bp
.stabs "ledCtr:F15",36,0,0,_ledCtr
.section ".S4",C_CODE
.SYMDEF ".S4" 
_ledCtr:
.SYMDEF "_ledCtr" 
mov a,ecx
mov ledCtr_bp-4,a
mov a,ecx+1
mov ledCtr_bp-3,a
mov a,ecx+2
mov ledCtr_bp-2,a
mov a,ecx+3
mov ledCtr_bp-1,a
.stabn 192,0,0,L224
L224:
.stabn 68,0,194,L225
L225:
.stabn 68,0,195,L226
L226:
EQNEPRIB _workStatus,0
jbc STATUS, zf
EXTJMP L$213
.stabn 192,0,1,L227
L227:
.stabn 68,0,196,L228
L228:
.stabn 68,0,197,L229
L229:
LDA _workStep,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$217
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$218
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$219
EQNEPRIB ecx,3
jbc STATUS,zf
EXTJMP @L$220
EQNEPRIB ecx,4
jbc STATUS,zf
EXTJMP @L$221
EQNEPRIB ecx,5
jbc STATUS,zf
EXTJMP @L$222
EQNEPRIB ecx,6
jbc STATUS,zf
EXTJMP @L$223
jmp @L$215
.stabn 192,0,2,L230
L230:
.stabn 68,0,198,L231
L231:
L$217:
.stabn 68,0,200,L232
L232:
LDA _PORT6,0,0
or a,@224
STA _PORT6,0,0
.stabn 68,0,201,L233
L233:
bs _P50,0
.stabn 68,0,202,L234
L234:
jmp @L$216
L$218:
.stabn 68,0,204,L235
L235:
bc _P65,5
.stabn 68,0,205,L236
L236:
bs _P66,6
.stabn 68,0,206,L237
L237:
bs _P67,7
.stabn 68,0,207,L238
L238:
bs _P50,0
.stabn 68,0,208,L239
L239:
jmp @L$216
L$219:
.stabn 68,0,210,L240
L240:
bs _P65,5
.stabn 68,0,211,L241
L241:
bc _P66,6
.stabn 68,0,212,L242
L242:
bs _P67,7
.stabn 68,0,213,L243
L243:
bs _P50,0
.stabn 68,0,214,L244
L244:
jmp @L$216
L$220:
.stabn 68,0,216,L245
L245:
bc _P65,5
.stabn 68,0,217,L246
L246:
bc _P66,6
.stabn 68,0,218,L247
L247:
bs _P67,7
.stabn 68,0,219,L248
L248:
bs _P50,0
.stabn 68,0,220,L249
L249:
jmp @L$216
L$221:
.stabn 68,0,222,L250
L250:
bs _P65,5
.stabn 68,0,223,L251
L251:
bs _P66,6
.stabn 68,0,224,L252
L252:
bc _P67,7
.stabn 68,0,225,L253
L253:
bs _P50,0
.stabn 68,0,226,L254
L254:
jmp @L$216
L$222:
.stabn 68,0,228,L255
L255:
bs _P65,5
.stabn 68,0,229,L256
L256:
bs _P66,6
.stabn 68,0,230,L257
L257:
bs _P67,7
.stabn 68,0,231,L258
L258:
bc _P50,0
.stabn 68,0,232,L259
L259:
jmp @L$216
L$223:
.stabn 68,0,234,L260
L260:
bs _P65,5
.stabn 68,0,235,L261
L261:
bs _P66,6
.stabn 68,0,236,L262
L262:
bc _P67,7
.stabn 68,0,237,L263
L263:
bc _P50,0
.stabn 68,0,238,L264
L264:
.stabn 68,0,239,L265
L265:
.stabn 224,0,2,L266
L266:
L$215:
L$216:
.stabn 68,0,240,L267
L267:
.stabn 224,0,1,L268
L268:
L$213:
.stabn 68,0,241,L269
L269:
.stabn 224,0,0,L270
L270:
L$212:
mov a,ledCtr_bp-4
mov ecx,a
mov a,ledCtr_bp-3
mov ecx+1,a
mov a,ledCtr_bp-2
mov ecx+2,a
mov a,ledCtr_bp-1
mov ecx+3,a
ret
.STACK ledCtr_bp,local,4
public _step1
public step1_bp
.stabs "step1:F15",36,0,0,_step1
.section ".S5",C_CODE
.SYMDEF ".S5" 
_step1:
.SYMDEF "_step1" 
mov a,ecx
mov step1_bp-4,a
mov a,ecx+1
mov step1_bp-3,a
mov a,ecx+2
mov step1_bp-2,a
mov a,ecx+3
mov step1_bp-1,a
.stabn 192,0,0,L276
L276:
.stabn 68,0,244,L277
L277:
.stabn 68,0,245,L278
L278:
UGTRIW _workTime,0x11f
jbc STATUS, cf
EXTJMP L$272
.stabn 192,0,1,L279
L279:
.stabn 68,0,246,L280
L280:
.stabn 68,0,247,L281
L281:
clr _workTime+1
clr _workTime
.stabn 68,0,248,L282
L282:
.stabn 224,0,1,L283
L283:
L$272:
.stabn 68,0,249,L284
L284:
ULTRIW _workTime,0xa
jbc STATUS, cf
EXTJMP L$274
.stabn 192,0,1,L285
L285:
.stabn 68,0,250,L286
L286:
.stabn 68,0,251,L287
L287:
call _PWM_Init
.stabn 68,0,252,L288
L288:
.stabn 224,0,1,L289
L289:
jmp @L$275
L$274:
.stabn 192,0,1,L290
L290:
.stabn 68,0,254,L291
L291:
.stabn 68,0,255,L292
L292:
call _PWM_Stop
.stabn 68,0,256,L293
L293:
.stabn 224,0,1,L294
L294:
L$275:
.stabn 68,0,257,L295
L295:
.stabn 224,0,0,L296
L296:
L$271:
mov a,step1_bp-4
mov ecx,a
mov a,step1_bp-3
mov ecx+1,a
mov a,step1_bp-2
mov ecx+2,a
mov a,step1_bp-1
mov ecx+3,a
ret
.STACK step1_bp,local,4
public _step2
public step2_bp
.stabs "step2:F15",36,0,0,_step2
.section ".S6",C_CODE
.SYMDEF ".S6" 
_step2:
.SYMDEF "_step2" 
mov a,ecx
mov step2_bp-4,a
mov a,ecx+1
mov step2_bp-3,a
mov a,ecx+2
mov step2_bp-2,a
mov a,ecx+3
mov step2_bp-1,a
.stabn 192,0,0,L304
L304:
.stabn 68,0,260,L305
L305:
.stabn 68,0,261,L306
L306:
UGTRIW _workTime,0x3e8
jbc STATUS, cf
EXTJMP L$298
.stabn 192,0,1,L307
L307:
.stabn 68,0,262,L308
L308:
.stabn 68,0,263,L309
L309:
clr _workTime+1
clr _workTime
.stabn 68,0,264,L310
L310:
.stabn 224,0,1,L311
L311:
L$298:
.stabn 68,0,265,L312
L312:
ULTRIW _workTime,0x172
jbc STATUS, cf
EXTJMP L$300
.stabn 192,0,1,L313
L313:
.stabn 68,0,266,L314
L314:
.stabn 68,0,267,L315
L315:
LDA _workTime,0,0
mov ecx,a
LDA _workTime,1,0
mov ecx+1,a
mov a,@ecx
mov pr0,a
mov a,@.b0.37
mov pr1,a
mov a,@.b1.37
mov pr1+1,a
call udivriw
mov a,pr0
mov ecx,a
mov a,pr0+1
mov ecx+1,a
mov a,ecx
STA _tempTime,0,0
.stabn 68,0,268,L316
L316:
ULTRIB _tempTime,0x3
jbc STATUS, cf
EXTJMP L$302
.stabn 192,0,2,L317
L317:
.stabn 68,0,269,L318
L318:
.stabn 68,0,270,L319
L319:
call _PWM_Init
.stabn 68,0,271,L320
L320:
.stabn 224,0,2,L321
L321:
jmp @L$301
L$302:
.stabn 192,0,2,L322
L322:
.stabn 68,0,273,L323
L323:
.stabn 68,0,274,L324
L324:
call _PWM_Stop
.stabn 68,0,275,L325
L325:
.stabn 224,0,2,L326
L326:
.stabn 68,0,276,L327
L327:
.stabn 224,0,1,L328
L328:
jmp @L$301
L$300:
.stabn 192,0,1,L329
L329:
.stabn 68,0,278,L330
L330:
.stabn 68,0,279,L331
L331:
call _PWM_Stop
.stabn 68,0,280,L332
L332:
.stabn 224,0,1,L333
L333:
L$301:
.stabn 68,0,282,L334
L334:
.stabn 224,0,0,L335
L335:
L$297:
mov a,step2_bp-4
mov ecx,a
mov a,step2_bp-3
mov ecx+1,a
mov a,step2_bp-2
mov ecx+2,a
mov a,step2_bp-1
mov ecx+3,a
ret
.STACK step2_bp,local,4
public _step3
public step3_bp
.stabs "step3:F15",36,0,0,_step3
.section ".S7",C_CODE
.SYMDEF ".S7" 
_step3:
.SYMDEF "_step3" 
mov a,ecx
mov step3_bp-4,a
mov a,ecx+1
mov step3_bp-3,a
mov a,ecx+2
mov step3_bp-2,a
mov a,ecx+3
mov step3_bp-1,a
.stabn 192,0,0,L343
L343:
.stabn 68,0,285,L344
L344:
.stabn 68,0,286,L345
L345:
UGTRIW _workTime,0x1c3e
jbc STATUS, cf
EXTJMP L$337
.stabn 192,0,1,L346
L346:
.stabn 68,0,287,L347
L347:
.stabn 68,0,288,L348
L348:
clr _workTime+1
clr _workTime
.stabn 68,0,289,L349
L349:
.stabn 224,0,1,L350
L350:
L$337:
.stabn 68,0,290,L351
L351:
ULTRIW _workTime,0x1388
jbc STATUS, cf
EXTJMP L$339
.stabn 192,0,1,L352
L352:
.stabn 68,0,291,L353
L353:
.stabn 68,0,292,L354
L354:
LDA _workTime,0,0
mov ecx,a
LDA _workTime,1,0
mov ecx+1,a
mov a,@ecx
mov pr0,a
mov a,@.b0.37
mov pr1,a
mov a,@.b1.37
mov pr1+1,a
call udivriw
mov a,pr0
mov ecx,a
mov a,pr0+1
mov ecx+1,a
mov a,ecx
STA _tempTime,0,0
.stabn 68,0,293,L355
L355:
ULTRIB _tempTime,0x3
jbc STATUS, cf
EXTJMP L$341
.stabn 192,0,2,L356
L356:
.stabn 68,0,294,L357
L357:
.stabn 68,0,295,L358
L358:
call _PWM_Init
.stabn 68,0,296,L359
L359:
.stabn 224,0,2,L360
L360:
jmp @L$340
L$341:
.stabn 192,0,2,L361
L361:
.stabn 68,0,298,L362
L362:
.stabn 68,0,299,L363
L363:
call _PWM_Stop
.stabn 68,0,300,L364
L364:
.stabn 224,0,2,L365
L365:
.stabn 68,0,301,L366
L366:
.stabn 224,0,1,L367
L367:
jmp @L$340
L$339:
.stabn 192,0,1,L368
L368:
.stabn 68,0,303,L369
L369:
.stabn 68,0,304,L370
L370:
call _PWM_Stop
.stabn 68,0,305,L371
L371:
.stabn 224,0,1,L372
L372:
L$340:
.stabn 68,0,307,L373
L373:
.stabn 224,0,0,L374
L374:
L$336:
mov a,step3_bp-4
mov ecx,a
mov a,step3_bp-3
mov ecx+1,a
mov a,step3_bp-2
mov ecx+2,a
mov a,step3_bp-1
mov ecx+3,a
ret
.STACK step3_bp,local,4
public _step4
public step4_bp
.stabs "step4:F15",36,0,0,_step4
.section ".S8",C_CODE
.SYMDEF ".S8" 
_step4:
.SYMDEF "_step4" 
mov a,ecx
mov step4_bp-4,a
mov a,ecx+1
mov step4_bp-3,a
mov a,ecx+2
mov step4_bp-2,a
mov a,ecx+3
mov step4_bp-1,a
.stabn 192,0,0,L397
L397:
.stabn 68,0,310,L398
L398:
.stabn 68,0,311,L399
L399:
UGTRIW _workTime,0x8ca0
jbc STATUS, cf
EXTJMP L$376
.stabn 192,0,1,L400
L400:
.stabn 68,0,312,L401
L401:
.stabn 68,0,313,L402
L402:
clr _workTime+1
clr _workTime
.stabn 68,0,314,L403
L403:
.stabn 224,0,1,L404
L404:
L$376:
.stabn 68,0,315,L405
L405:
LDA _workTime,0,0
mov ecx,a
LDA _workTime,1,0
mov ecx+1,a
ULTRIW ecx,0x92e
jbs STATUS, cf
EXTJMP L$381
UGTRIW ecx,0x125c
jbc STATUS, cf
EXTJMP L$382
ULTRIW ecx,0x1b8a
jbs STATUS, cf
EXTJMP L$381
L$382:
LDA _workTime,0,0
mov ecx,a
LDA _workTime,1,0
mov ecx+1,a
UGTRIW ecx,0x24b8
jbc STATUS, cf
EXTJMP L$378
ULTRIW ecx,0x2de6
jbc STATUS, cf
EXTJMP L$378
L$381:
.stabn 192,0,1,L406
L406:
.stabn 68,0,316,L407
L407:
.stabn 68,0,317,L408
L408:
LDA _workTime,0,0
mov ecx,a
LDA _workTime,1,0
mov ecx+1,a
mov a,@ecx
mov pr0,a
mov a,@.b0.59
mov pr1,a
mov a,@.b1.59
mov pr1+1,a
call udivriw
mov a,pr0
mov ecx,a
mov a,pr0+1
mov ecx+1,a
mov a,ecx
STA _tempTime,0,0
.stabn 68,0,318,L409
L409:
ULTRIB _tempTime,0x3
jbc STATUS, cf
EXTJMP L$383
.stabn 192,0,2,L410
L410:
.stabn 68,0,319,L411
L411:
.stabn 68,0,320,L412
L412:
call _PWM_Init
.stabn 68,0,321,L413
L413:
.stabn 224,0,2,L414
L414:
jmp @L$379
L$383:
.stabn 192,0,2,L415
L415:
.stabn 68,0,323,L416
L416:
.stabn 68,0,324,L417
L417:
call _PWM_Stop
.stabn 68,0,325,L418
L418:
.stabn 224,0,2,L419
L419:
.stabn 68,0,326,L420
L420:
.stabn 224,0,1,L421
L421:
jmp @L$379
L$378:
.stabn 68,0,327,L422
L422:
UGTRIW _workTime,0x3714
jbc STATUS, cf
EXTJMP L$385
.stabn 192,0,1,L423
L423:
.stabn 68,0,328,L424
L424:
.stabn 68,0,329,L425
L425:
LDA _workTime,0,0
mov ecx,a
LDA _workTime,1,0
mov ecx+1,a
mov a,@.b0.14100
sub ecx,a
mov a,@.b1.14100
jbs STATUS,cf
dec ecx+1
sub ecx+1,a
mov a,ecx
STA _tempWorkTime,0,0
mov a,ecx+1
STA _tempWorkTime,1,0
.stabn 68,0,330,L426
L426:
ULTRIW _tempWorkTime,0x1258
jbc STATUS, cf
EXTJMP L$387
.stabn 192,0,2,L427
L427:
.stabn 68,0,331,L428
L428:
.stabn 68,0,332,L429
L429:
LDA _tempWorkTime,0,0
mov ecx,a
LDA _tempWorkTime,1,0
mov ecx+1,a
mov a,@ecx
mov pr0,a
mov a,@.b0.587
mov pr1,a
mov a,@.b1.587
mov pr1+1,a
call udivriw
mov a,@.b0.1
and ecx,a
mov a,@.b1.1
and ecx+1,a
NEPRIW ecx,0,@L$389
.stabn 192,0,3,L430
L430:
.stabn 68,0,333,L431
L431:
.stabn 68,0,334,L432
L432:
LDA _tempWorkTime,0,0
mov ecx,a
LDA _tempWorkTime,1,0
mov ecx+1,a
mov a,@ecx
mov pr0,a
mov a,@.b0.59
mov pr1,a
mov a,@.b1.59
mov pr1+1,a
call udivriw
mov a,pr0
mov ecx,a
mov a,pr0+1
mov ecx+1,a
mov a,ecx
STA _tempTime,0,0
.stabn 68,0,335,L433
L433:
ULTRIB _tempTime,0x3
jbc STATUS, cf
EXTJMP L$391
.stabn 192,0,4,L434
L434:
.stabn 68,0,336,L435
L435:
.stabn 68,0,337,L436
L436:
call _PWM_Init
.stabn 68,0,338,L437
L437:
.stabn 224,0,4,L438
L438:
jmp @L$386
L$391:
.stabn 192,0,4,L439
L439:
.stabn 68,0,340,L440
L440:
.stabn 68,0,341,L441
L441:
call _PWM_Stop
.stabn 68,0,342,L442
L442:
.stabn 224,0,4,L443
L443:
.stabn 68,0,343,L444
L444:
.stabn 224,0,3,L445
L445:
jmp @L$386
L$389:
.stabn 192,0,3,L446
L446:
.stabn 68,0,345,L447
L447:
.stabn 68,0,346,L448
L448:
call _PWM_Stop
.stabn 68,0,347,L449
L449:
.stabn 224,0,3,L450
L450:
.stabn 68,0,348,L451
L451:
.stabn 224,0,2,L452
L452:
jmp @L$386
L$387:
.stabn 192,0,2,L453
L453:
.stabn 68,0,350,L454
L454:
.stabn 68,0,351,L455
L455:
LDA _tempWorkTime,0,0
mov ecx,a
LDA _tempWorkTime,1,0
mov ecx+1,a
mov a,@ecx
mov pr0,a
mov a,@.b0.1100
mov pr1,a
mov a,@.b1.1100
mov pr1+1,a
call udivriw
mov a,@.b0.1
and ecx,a
mov a,@.b1.1
and ecx+1,a
NEPRIW ecx,0,@L$393
.stabn 192,0,3,L456
L456:
.stabn 68,0,352,L457
L457:
.stabn 68,0,353,L458
L458:
LDA _tempWorkTime,0,0
mov ecx,a
LDA _tempWorkTime,1,0
mov ecx+1,a
mov a,@ecx
mov pr0,a
mov a,@.b0.59
mov pr1,a
mov a,@.b1.59
mov pr1+1,a
call udivriw
mov a,pr0
mov ecx,a
mov a,pr0+1
mov ecx+1,a
mov a,ecx
STA _tempTime,0,0
.stabn 68,0,354,L459
L459:
ULTRIB _tempTime,0x3
jbc STATUS, cf
EXTJMP L$395
.stabn 192,0,4,L460
L460:
.stabn 68,0,355,L461
L461:
.stabn 68,0,356,L462
L462:
call _PWM_Init
.stabn 68,0,357,L463
L463:
.stabn 224,0,4,L464
L464:
jmp @L$386
L$395:
.stabn 192,0,4,L465
L465:
.stabn 68,0,359,L466
L466:
.stabn 68,0,360,L467
L467:
call _PWM_Stop
.stabn 68,0,361,L468
L468:
.stabn 224,0,4,L469
L469:
.stabn 68,0,362,L470
L470:
.stabn 224,0,3,L471
L471:
jmp @L$386
L$393:
.stabn 192,0,3,L472
L472:
.stabn 68,0,364,L473
L473:
.stabn 68,0,365,L474
L474:
call _PWM_Stop
.stabn 68,0,366,L475
L475:
.stabn 224,0,3,L476
L476:
.stabn 68,0,367,L477
L477:
.stabn 224,0,2,L478
L478:
.stabn 68,0,368,L479
L479:
.stabn 224,0,1,L480
L480:
jmp @L$386
L$385:
.stabn 192,0,1,L481
L481:
.stabn 68,0,370,L482
L482:
.stabn 68,0,371,L483
L483:
call _PWM_Stop
.stabn 68,0,372,L484
L484:
.stabn 224,0,1,L485
L485:
L$386:
L$379:
.stabn 68,0,373,L486
L486:
.stabn 224,0,0,L487
L487:
L$375:
mov a,step4_bp-4
mov ecx,a
mov a,step4_bp-3
mov ecx+1,a
mov a,step4_bp-2
mov ecx+2,a
mov a,step4_bp-1
mov ecx+3,a
ret
.STACK step4_bp,local,4
public _step5
public step5_bp
.stabs "step5:F15",36,0,0,_step5
.section ".S9",C_CODE
.SYMDEF ".S9" 
_step5:
.SYMDEF "_step5" 
mov a,ecx
mov step5_bp-4,a
mov a,ecx+1
mov step5_bp-3,a
mov a,ecx+2
mov step5_bp-2,a
mov a,ecx+3
mov step5_bp-1,a
.stabn 192,0,0,L499
L499:
.stabn 68,0,377,L500
L500:
.stabn 68,0,378,L501
L501:
UGTRIW _workTime,0x906e
jbc STATUS, cf
EXTJMP L$489
.stabn 192,0,1,L502
L502:
.stabn 68,0,379,L503
L503:
.stabn 68,0,380,L504
L504:
mov a,@.b0.0x8fc0
STA _workTime,0,0
mov a,@.b1.0x8fc0
STA _workTime,1,0
.stabn 68,0,381,L505
L505:
.stabn 224,0,1,L506
L506:
L$489:
.stabn 68,0,382,L507
L507:
ULTRIW _workTime,0x8fc0
jbc STATUS, cf
EXTJMP L$491
.stabn 192,0,1,L508
L508:
.stabn 68,0,383,L509
L509:
.stabn 68,0,384,L510
L510:
LDA _workTime,0,0
mov ecx,a
LDA _workTime,1,0
mov ecx+1,a
mov a,@ecx
mov pr0,a
mov a,@.b0.2300
mov pr1,a
mov a,@.b1.2300
mov pr1+1,a
call udivriw
mov a,@.b0.1
and ecx,a
mov a,@.b1.1
and ecx+1,a
NEPRIW ecx,0,@L$493
.stabn 192,0,2,L511
L511:
.stabn 68,0,385,L512
L512:
.stabn 68,0,386,L513
L513:
LDA _workTime,0,0
mov ecx,a
LDA _workTime,1,0
mov ecx+1,a
mov a,@ecx
mov pr0,a
mov a,@.b0.37
mov pr1,a
mov a,@.b1.37
mov pr1+1,a
call udivriw
mov a,pr0
mov ecx,a
mov a,pr0+1
mov ecx+1,a
mov a,ecx
STA _tempTime,0,0
.stabn 68,0,387,L514
L514:
ULTRIB _tempTime,0x3
jbc STATUS, cf
EXTJMP L$495
.stabn 192,0,3,L515
L515:
.stabn 68,0,388,L516
L516:
.stabn 68,0,389,L517
L517:
call _PWM_Init
.stabn 68,0,390,L518
L518:
.stabn 224,0,3,L519
L519:
jmp @L$492
L$495:
.stabn 192,0,3,L520
L520:
.stabn 68,0,392,L521
L521:
.stabn 68,0,393,L522
L522:
call _PWM_Stop
.stabn 68,0,394,L523
L523:
.stabn 224,0,3,L524
L524:
.stabn 68,0,395,L525
L525:
.stabn 224,0,2,L526
L526:
jmp @L$492
L$493:
.stabn 192,0,2,L527
L527:
.stabn 68,0,397,L528
L528:
.stabn 68,0,398,L529
L529:
call _PWM_Stop
.stabn 68,0,399,L530
L530:
.stabn 224,0,2,L531
L531:
.stabn 68,0,400,L532
L532:
.stabn 224,0,1,L533
L533:
jmp @L$492
L$491:
.stabn 192,0,1,L534
L534:
.stabn 68,0,402,L535
L535:
.stabn 68,0,403,L536
L536:
LDA _workTime,0,0
mov ecx,a
LDA _workTime,1,0
mov ecx+1,a
mov a,@.b0.0x8fc0
sub ecx,a
mov a,@.b1.0x8fc0
jbs STATUS,cf
dec ecx+1
sub ecx+1,a
mov a,ecx
STA _tempWorkTime,0,0
mov a,ecx+1
STA _tempWorkTime,1,0
.stabn 68,0,404,L537
L537:
LDA _tempWorkTime,0,0
mov ecx,a
LDA _tempWorkTime,1,0
mov ecx+1,a
mov a,@ecx
mov pr0,a
mov a,@.b0.173
mov pr1,a
mov a,@.b1.173
mov pr1+1,a
call udivriw
mov a,pr0
mov ecx,a
mov a,pr0+1
mov ecx+1,a
mov a,ecx
STA _tempTime,0,0
.stabn 68,0,405,L538
L538:
ULTRIB _tempTime,0x3
jbc STATUS, cf
EXTJMP L$497
.stabn 192,0,2,L539
L539:
.stabn 68,0,406,L540
L540:
.stabn 68,0,407,L541
L541:
call _PWM_Init
.stabn 68,0,408,L542
L542:
.stabn 224,0,2,L543
L543:
jmp @L$498
L$497:
.stabn 192,0,2,L544
L544:
.stabn 68,0,410,L545
L545:
.stabn 68,0,411,L546
L546:
call _PWM_Stop
.stabn 68,0,412,L547
L547:
.stabn 224,0,2,L548
L548:
L$498:
.stabn 68,0,413,L549
L549:
.stabn 224,0,1,L550
L550:
L$492:
.stabn 68,0,414,L551
L551:
.stabn 224,0,0,L552
L552:
L$488:
mov a,step5_bp-4
mov ecx,a
mov a,step5_bp-3
mov ecx+1,a
mov a,step5_bp-2
mov ecx+2,a
mov a,step5_bp-1
mov ecx+3,a
ret
.STACK step5_bp,local,4
public _step6
public step6_bp
.stabs "step6:F15",36,0,0,_step6
.section ".S10",C_CODE
.SYMDEF ".S10" 
_step6:
.SYMDEF "_step6" 
mov a,ecx
mov step6_bp-4,a
mov a,ecx+1
mov step6_bp-3,a
mov a,ecx+2
mov step6_bp-2,a
mov a,ecx+3
mov step6_bp-1,a
.stabn 192,0,0,L558
L558:
.stabn 68,0,418,L559
L559:
.stabn 68,0,419,L560
L560:
UGTRIW _workTime,0x48
jbc STATUS, cf
EXTJMP L$554
.stabn 192,0,1,L561
L561:
.stabn 68,0,420,L562
L562:
.stabn 68,0,421,L563
L563:
clr _workTime+1
clr _workTime
.stabn 68,0,422,L564
L564:
.stabn 224,0,1,L565
L565:
L$554:
.stabn 68,0,423,L566
L566:
ULTRIW _workTime,0x3
jbc STATUS, cf
EXTJMP L$556
.stabn 192,0,1,L567
L567:
.stabn 68,0,424,L568
L568:
.stabn 68,0,425,L569
L569:
call _PWM_Init
.stabn 68,0,426,L570
L570:
.stabn 224,0,1,L571
L571:
jmp @L$557
L$556:
.stabn 192,0,1,L572
L572:
.stabn 68,0,428,L573
L573:
.stabn 68,0,429,L574
L574:
call _PWM_Stop
.stabn 68,0,430,L575
L575:
.stabn 224,0,1,L576
L576:
L$557:
.stabn 68,0,431,L577
L577:
.stabn 224,0,0,L578
L578:
L$553:
mov a,step6_bp-4
mov ecx,a
mov a,step6_bp-3
mov ecx+1,a
mov a,step6_bp-2
mov ecx+2,a
mov a,step6_bp-1
mov ecx+3,a
ret
.STACK step6_bp,local,4
public _workCtr
public workCtr_bp
.stabs "workCtr:F15",36,0,0,_workCtr
.section ".S11",C_CODE
.SYMDEF ".S11" 
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
.stabn 192,0,0,L600
L600:
.stabn 68,0,436,L601
L601:
.stabn 68,0,438,L602
L602:
UGTRIB _workStatus,0x1
jbc STATUS, cf
EXTJMP L$580
.stabn 192,0,1,L603
L603:
.stabn 68,0,439,L604
L604:
.stabn 68,0,440,L605
L605:
EQNEPRIW _count10s,0
jbc STATUS, zf
EXTJMP L$581
.stabn 192,0,2,L606
L606:
.stabn 68,0,441,L607
L607:
.stabn 68,0,442,L608
L608:
LDA _count10s,0,0
mov ecx,a
LDA _count10s,1,0
mov ecx+1,a
mov a,@.b0.1
sub ecx,a
mov a,@.b1.1
jbs STATUS,cf
dec ecx+1
sub ecx+1,a
mov a,ecx
STA _count10s,0,0
mov a,ecx+1
STA _count10s,1,0
NEPRIW ecx,0,@L$581
.stabn 192,0,3,L609
L609:
.stabn 68,0,443,L610
L610:
.stabn 68,0,444,L611
L611:
call _gotoSleep
.stabn 68,0,445,L612
L612:
.stabn 224,0,3,L613
L613:
.stabn 68,0,446,L614
L614:
.stabn 224,0,2,L615
L615:
.stabn 68,0,447,L616
L616:
.stabn 224,0,1,L617
L617:
jmp @L$581
L$580:
.stabn 68,0,448,L618
L618:
EQNEPRIB _workStatus,1
jbs STATUS,zf
EXTJMP @L$586
.stabn 192,0,1,L619
L619:
.stabn 68,0,449,L620
L620:
.stabn 68,0,450,L621
L621:
INCMW _workTime,0
.stabn 68,0,451,L622
L622:
EQNEPRIB _workStep,1
jbs STATUS,zf
EXTJMP @L$588
.stabn 192,0,2,L623
L623:
.stabn 68,0,452,L624
L624:
.stabn 68,0,453,L625
L625:
call _step1
.stabn 68,0,454,L626
L626:
.stabn 224,0,2,L627
L627:
jmp @L$589
L$588:
.stabn 68,0,455,L628
L628:
EQNEPRIB _workStep,2
jbs STATUS,zf
EXTJMP @L$590
.stabn 192,0,2,L629
L629:
.stabn 68,0,456,L630
L630:
.stabn 68,0,457,L631
L631:
call _step2
.stabn 68,0,458,L632
L632:
.stabn 224,0,2,L633
L633:
jmp @L$591
L$590:
.stabn 68,0,459,L634
L634:
EQNEPRIB _workStep,3
jbs STATUS,zf
EXTJMP @L$592
.stabn 192,0,2,L635
L635:
.stabn 68,0,460,L636
L636:
.stabn 68,0,461,L637
L637:
call _step3
.stabn 68,0,462,L638
L638:
.stabn 224,0,2,L639
L639:
jmp @L$593
L$592:
.stabn 68,0,463,L640
L640:
EQNEPRIB _workStep,4
jbs STATUS,zf
EXTJMP @L$594
.stabn 192,0,2,L641
L641:
.stabn 68,0,464,L642
L642:
.stabn 68,0,465,L643
L643:
call _step4
.stabn 68,0,466,L644
L644:
.stabn 224,0,2,L645
L645:
jmp @L$595
L$594:
.stabn 68,0,467,L646
L646:
EQNEPRIB _workStep,5
jbs STATUS,zf
EXTJMP @L$596
.stabn 192,0,2,L647
L647:
.stabn 68,0,468,L648
L648:
.stabn 68,0,469,L649
L649:
call _step5
.stabn 68,0,470,L650
L650:
.stabn 224,0,2,L651
L651:
jmp @L$597
L$596:
.stabn 68,0,471,L652
L652:
EQNEPRIB _workStep,6
jbs STATUS,zf
EXTJMP @L$598
.stabn 192,0,2,L653
L653:
.stabn 68,0,472,L654
L654:
.stabn 68,0,473,L655
L655:
call _step6
.stabn 68,0,474,L656
L656:
.stabn 224,0,2,L657
L657:
L$598:
L$597:
L$595:
L$593:
L$591:
L$589:
.stabn 68,0,475,L658
L658:
.stabn 224,0,1,L659
L659:
L$586:
L$581:
.stabn 68,0,477,L660
L660:
.stabn 224,0,0,L661
L661:
L$579:
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
.section ".S12",C_CODE
.SYMDEF ".S12" 
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
.stabn 192,0,0,L669
L669:
.stabn 68,0,481,L670
L670:
.stabn 68,0,482,L671
L671:
EQNEPRIB keyRead_bp+0,0
jbc STATUS,zf
EXTJMP @L$663
.stabn 192,0,1,L672
L672:
.stabn 68,0,483,L673
L673:
.stabn 68,0,485,L674
L674:
LDA keyRead_bp+0,0,0
STA _keyNub,0,0
.stabn 68,0,486,L675
L675:
LDA _keyCount,0,0
add a,@1
STA _keyCount,0,0
.stabn 68,0,487,L676
L676:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$664
.stabn 192,0,2,L677
L677:
.stabn 68,0,488,L678
L678:
.stabn 68,0,489,L679
L679:
mov a,@200
STA _keyCount,0,0
.stabn 68,0,490,L680
L680:
.stabn 224,0,2,L681
L681:
.stabn 68,0,491,L682
L682:
.stabn 224,0,1,L683
L683:
jmp @L$664
L$663:
.stabn 192,0,1,L684
L684:
.stabn 68,0,493,L685
L685:
.stabn 68,0,494,L686
L686:
ULTRIB _keyCount,0x32
jbs STATUS, cf
EXTJMP L$667
.stabn 192,0,2,L687
L687:
.stabn 68,0,495,L688
L688:
.stabn 68,0,496,L689
L689:
clr _keyCount
.stabn 68,0,497,L690
L690:
mov a,@1
mov eax,a
jmp @L$662
.stabn 68,0,498,L691
L691:
.stabn 224,0,2,L692
L692:
L$667:
.stabn 68,0,499,L693
L693:
clr _keyCount
.stabn 68,0,500,L694
L694:
clr _keyNub
.stabn 68,0,501,L695
L695:
.stabn 224,0,1,L696
L696:
L$664:
.stabn 68,0,502,L697
L697:
mov a,@0
mov eax,a
.stabn 68,0,503,L698
L698:
.stabn 224,0,0,L699
L699:
L$662:
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
.section ".S13",C_CODE
.SYMDEF ".S13" 
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
.stabn 192,0,0,L701
L701:
.stabn 68,0,506,L702
L702:
.stabn 68,0,509,L703
L703:
LDA _PORT6,0,0
or a,@224
STA _PORT6,0,0
.stabn 68,0,510,L704
L704:
bs _P50,0
.stabn 68,0,511,L705
L705:
clr _workStatus
.stabn 68,0,512,L706
L706:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,513,L707
L707:
mov a,@11
STA _ICIECR,0,0
.stabn 68,0,514,L708
L708:
mov a,@2
STA _IMR,0,2
.stabn 68,0,515,L709
L709:
LDA _ISR,0,0
and a,@240
STA _ISR,0,0
.stabn 68,0,516,L710
L710:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(516):"
disi
.stabn 68,0,516,L711
L711:
.stabn 68,0,517,L712
L712:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(517):"
slep
.stabn 68,0,517,L713
L713:
.stabn 68,0,518,L714
L714:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(518):"
eni
.stabn 68,0,518,L715
L715:
.stabn 68,0,519,L716
L716:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,520,L717
L717:
clr _ICIECR
.stabn 68,0,521,L718
L718:
clr _ISR
.stabn 68,0,522,L719
L719:
mov a,@1
STA _IMR,0,2
.stabn 68,0,523,L720
L720:
.stabn 224,0,0,L721
L721:
L$700:
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
.section ".S14",C_CODE
.SYMDEF ".S14" 
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
.stabn 192,0,0,L723
L723:
.stabn 68,0,527,L724
L724:
.stabn 68,0,529,L725
L725:
clr _PORT5
.stabn 68,0,530,L726
L726:
mov a,@8
STA _P5CR,0,2
.stabn 68,0,531,L727
L727:
clr _PORT6
.stabn 68,0,532,L728
L728:
mov a,@11
STA _P6CR,0,2
.stabn 68,0,533,L729
L729:
mov a,@244
STA _PHCR,0,2
.stabn 68,0,535,L730
L730:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(535):"
mov	a,@0x02
.stabn 68,0,536,L731
L731:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(536):"
contw
.stabn 68,0,538,L732
L732:
.stabn 224,0,0,L733
L733:
L$722:
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
.section ".S15",C_CODE
.SYMDEF ".S15" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L739
L739:
.stabn 68,0,542,L740
L740:
.stabn 68,0,545,L741
L741:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(545):"
MOV 0x3D,A ;保存 A
.stabn 68,0,546,L742
L742:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(546):"
MOV A,0x03
.stabn 68,0,547,L743
L743:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(547):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,548,L744
L744:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(548):"
MOV A,0x04
.stabn 68,0,549,L745
L745:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(549):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,552,L746
L746:
jbs _TCIF,0
EXTJMP @L$735
.stabn 192,0,1,L747
L747:
.stabn 68,0,553,L748
L748:
.stabn 68,0,555,L749
L749:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,556,L750
L750:
LDA _TCC,0,0
add a,@206
STA _TCC,0,0
.stabn 68,0,558,L751
L751:
LDA _intCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _intCount,0,0
ULTRIB ecx,0xa
jbs STATUS, cf
EXTJMP L$737
.stabn 192,0,2,L752
L752:
.stabn 68,0,559,L753
L753:
.stabn 68,0,560,L754
L754:
clr _intCount
.stabn 68,0,561,L755
L755:
bs _IntFlag,0
.stabn 68,0,565,L756
L756:
.stabn 224,0,2,L757
L757:
L$737:
.stabn 68,0,568,L758
L758:
.stabn 224,0,1,L759
L759:
L$735:
.stabn 68,0,572,L760
L760:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(572):"
MOV A,0x3F ;返回 R4
.stabn 68,0,573,L761
L761:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(573):"
MOV 0x04,A
.stabn 68,0,574,L762
L762:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(574):"
MOV A,0x3E ;返回 R3
.stabn 68,0,575,L763
L763:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(575):"
MOV 0x03,A
.stabn 68,0,576,L764
L764:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(576):"
SWAP 0x3D  ;返回 A
.stabn 68,0,577,L765
L765:
.cfile "C:\mcuproject\xj\S16_1101B_SOP14\main.c(577):"
SWAPA 0x3D
.stabn 68,0,579,L766
L766:
.stabn 224,0,0,L767
L767:
L$734:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S16",C_CODE
.SYMDEF ".S16" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L769
L769:
.stabn 68,0,584,L770
L770:
.stabn 68,0,586,L771
L771:
.stabn 224,0,0,L772
L772:
L$768:
reti
.STACK interrupt_l_bp,local,0
.section ".bss"
.align 1
_pwmFlag:
.SYMDEF "_pwmFlag" BANK:0,BIT:1,32,LEN:1
ds 1
.stabs "pwmFlag:S16",40,0,0,_pwmFlag
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
.stabs "u16t:t13",128,0,0,0
.stabs "u8t:t10",128,0,0,0
.section ".code"
end
