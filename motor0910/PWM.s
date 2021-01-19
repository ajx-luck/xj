.autoimport
EM78P153B EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\mcuproject\xj\motor0910\PWM.c",100,0,3,0
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
public _main
public main_bp
.section ".code"
.stabs "main:F15",36,0,0,_main
.section ".S0",C_CODE
.SYMDEF ".S0" 
_main:
.SYMDEF "_main" 
.stabs "i:14",128,0,0,main_bp-1
.stabn 192,0,0,L22
L22:
.stabn 68,0,51,L24
L24:
.stabn 68,0,55,L25
L25:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(55):"
wdtc
.stabn 68,0,55,L26
L26:
.stabn 68,0,56,L27
L27:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(56):"
disi
.stabn 68,0,56,L28
L28:
.stabn 68,0,57,L29
L29:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,58,L30
L30:
clr _workStep
.stabn 68,0,60,L31
L31:
call _IO_Init
.stabn 68,0,61,L32
L32:
mov a,@206
STA _TCC,0,0
.stabn 68,0,62,L33
L33:
clr _ISR
.stabn 68,0,63,L34
L34:
mov a,@1
STA _IMR,0,2
.stabn 68,0,64,L35
L35:
clr _duty
.stabn 68,0,65,L36
L36:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(65):"
eni
.stabn 68,0,65,L37
L37:
.stabn 68,0,68,L38
L38:
L$2:
.stabn 192,0,1,L39
L39:
.stabn 68,0,69,L40
L40:
.stabn 68,0,70,L41
L41:
bc _P50,0
.stabn 68,0,71,L42
L42:
ULTRIB _workStep,0x5
jbc STATUS, cf
EXTJMP L$6
.stabn 192,0,2,L43
L43:
.stabn 68,0,72,L44
L44:
.stabn 68,0,73,L45
L45:
bc _P50,0
.stabn 68,0,74,L46
L46:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(74):"
nop
.stabn 68,0,74,L47
L47:
.stabn 68,0,75,L48
L48:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(75):"
nop
.stabn 68,0,75,L49
L49:
.stabn 68,0,76,L50
L50:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(76):"
nop
.stabn 68,0,76,L51
L51:
.stabn 68,0,77,L52
L52:
.stabn 224,0,2,L53
L53:
L$6:
.stabn 68,0,78,L54
L54:
clr main_bp-1
jmp @L$11
L$8:
.stabn 192,0,2,L55
L55:
.stabn 68,0,79,L56
L56:
.stabn 68,0,80,L57
L57:
bs _P50,0
.stabn 68,0,81,L58
L58:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(81):"
nop
.stabn 68,0,81,L59
L59:
.stabn 68,0,82,L60
L60:
.stabn 224,0,2,L61
L61:
L$9:
.stabn 68,0,78,L62
L62:
LDA main_bp-1,0,0
add a,@1
STA main_bp-1,0,0
L$11:
.stabn 68,0,78,L63
L63:
ULTRRB main_bp-1,_duty
jbs STATUS,cf
EXTJMP @L$8
.stabn 68,0,83,L64
L64:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(83):"
wdtc
.stabn 68,0,83,L65
L65:
.stabn 68,0,84,L66
L66:
jbc _IntFlag,0
EXTJMP @L$12
.stabn 68,0,85,L67
L67:
jmp @L$2
L$12:
.stabn 68,0,86,L68
L68:
bc _IntFlag,0
.stabn 68,0,87,L69
L69:
call _keyCtr
.stabn 68,0,88,L70
L70:
call _workCtr
.stabn 68,0,89,L71
L71:
EQNEPRIB _workStep,0
jbc STATUS,zf
EXTJMP @L$2
.stabn 192,0,2,L72
L72:
.stabn 68,0,90,L73
L73:
.stabn 68,0,91,L74
L74:
LDA _count1s,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _count1s,0,0
ULTRIB ecx,0x64
jbs STATUS, cf
EXTJMP L$16
.stabn 192,0,3,L75
L75:
.stabn 68,0,92,L76
L76:
.stabn 68,0,93,L77
L77:
clr _count1s
.stabn 68,0,94,L78
L78:
LDA _count1min,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _count1min,0,0
ULTRIB ecx,0x3c
jbs STATUS, cf
EXTJMP L$18
.stabn 192,0,4,L79
L79:
.stabn 68,0,95,L80
L80:
.stabn 68,0,96,L81
L81:
clr _count1min
.stabn 68,0,97,L82
L82:
LDA _count900s,0,0
add a,@1
STA _count900s,0,0
.stabn 68,0,98,L83
L83:
.stabn 224,0,4,L84
L84:
L$18:
.stabn 68,0,100,L85
L85:
.stabn 224,0,3,L86
L86:
L$16:
.stabn 68,0,102,L87
L87:
ULTRIB _count900s,0xf
jbs STATUS, cf
EXTJMP L$2
EQNEPRIB _keyCount,0
jbs STATUS,zf
EXTJMP @L$2
.stabn 68,0,103,L88
L88:
call _gotoSleep
.stabn 68,0,104,L89
L89:
.stabn 224,0,2,L90
L90:
.stabn 68,0,107,L91
L91:
.stabn 224,0,1,L92
L92:
.stabn 68,0,68,L93
L93:
.stabn 68,0,68,L94
L94:
jmp @L$2
.stabn 68,0,109,L95
L95:
.stabn 224,0,0,L96
L96:
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
.stabn 192,0,0,L104
L104:
.stabn 68,0,113,L105
L105:
.stabn 68,0,114,L106
L106:
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
.stabn 68,0,116,L107
L107:
EQNEPRIB keyCtr_bp-5,1
jbs STATUS,zf
EXTJMP @L$98
.stabn 192,0,1,L108
L108:
.stabn 68,0,117,L109
L109:
.stabn 68,0,120,L110
L110:
LDA _workStep,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _workStep,0,0
ULTRIB ecx,0x7
jbs STATUS, cf
EXTJMP L$99
.stabn 68,0,121,L111
L111:
clr _workStep
.stabn 68,0,123,L112
L112:
.stabn 224,0,1,L113
L113:
jmp @L$99
L$98:
.stabn 68,0,124,L114
L114:
EQNEPRIB keyCtr_bp-5,2
jbs STATUS,zf
EXTJMP @L$102
.stabn 192,0,1,L115
L115:
.stabn 68,0,125,L116
L116:
.stabn 68,0,126,L117
L117:
clr _workStep
.stabn 68,0,127,L118
L118:
.stabn 224,0,1,L119
L119:
L$102:
L$99:
.stabn 68,0,131,L120
L120:
.stabn 224,0,0,L121
L121:
L$97:
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
.stabn 192,0,0,L134
L134:
.stabn 68,0,134,L135
L135:
.stabn 68,0,135,L136
L136:
LDA _workStep,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$125
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$128
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$129
EQNEPRIB ecx,3
jbc STATUS,zf
EXTJMP @L$130
EQNEPRIB ecx,4
jbc STATUS,zf
EXTJMP @L$131
EQNEPRIB ecx,5
jbc STATUS,zf
EXTJMP @L$132
EQNEPRIB ecx,6
jbc STATUS,zf
EXTJMP @L$133
jmp @L$123
.stabn 192,0,1,L137
L137:
.stabn 68,0,136,L138
L138:
L$125:
.stabn 68,0,138,L139
L139:
clr _duty
.stabn 68,0,139,L140
L140:
LDA _PORT5,0,0
and a,@241
STA _PORT5,0,0
.stabn 68,0,140,L141
L141:
LDA _PORT6,0,0
and a,@248
STA _PORT6,0,0
.stabn 68,0,141,L142
L142:
bc _P50,0
.stabn 68,0,142,L143
L143:
EQNEPRIB _keyCount,0
jbs STATUS,zf
EXTJMP @L$124
.stabn 68,0,143,L144
L144:
call _gotoSleep
.stabn 68,0,144,L145
L145:
jmp @L$124
L$128:
.stabn 68,0,146,L146
L146:
mov a,@9
STA _duty,0,0
.stabn 68,0,147,L147
L147:
bs _P51,1
.stabn 68,0,148,L148
L148:
jmp @L$124
L$129:
.stabn 68,0,150,L149
L149:
mov a,@13
STA _duty,0,0
.stabn 68,0,151,L150
L150:
bs _P52,2
.stabn 68,0,152,L151
L151:
jmp @L$124
L$130:
.stabn 68,0,154,L152
L152:
mov a,@17
STA _duty,0,0
.stabn 68,0,155,L153
L153:
bs _P53,3
.stabn 68,0,156,L154
L154:
jmp @L$124
L$131:
.stabn 68,0,158,L155
L155:
mov a,@20
STA _duty,0,0
.stabn 68,0,159,L156
L156:
bs _P60,0
.stabn 68,0,160,L157
L157:
jmp @L$124
L$132:
.stabn 68,0,162,L158
L158:
mov a,@24
STA _duty,0,0
.stabn 68,0,163,L159
L159:
bs _P61,1
.stabn 68,0,164,L160
L160:
jmp @L$124
L$133:
.stabn 68,0,166,L161
L161:
mov a,@45
STA _duty,0,0
.stabn 68,0,167,L162
L162:
bs _P62,2
.stabn 68,0,168,L163
L163:
.stabn 68,0,169,L164
L164:
.stabn 224,0,1,L165
L165:
L$123:
L$124:
.stabn 68,0,171,L166
L166:
.stabn 224,0,0,L167
L167:
L$122:
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
.section ".S3",C_CODE
.SYMDEF ".S3" 
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
.stabn 192,0,0,L179
L179:
.stabn 68,0,175,L180
L180:
.stabn 68,0,176,L181
L181:
EQNEPRIB keyRead_bp+0,0
jbc STATUS,zf
EXTJMP @L$169
.stabn 192,0,1,L182
L182:
.stabn 68,0,177,L183
L183:
.stabn 68,0,178,L184
L184:
LDA _keyCount,0,0
add a,@1
STA _keyCount,0,0
.stabn 68,0,179,L185
L185:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$170
.stabn 192,0,2,L186
L186:
.stabn 68,0,180,L187
L187:
.stabn 68,0,181,L188
L188:
mov a,@200
STA _keyCount,0,0
.stabn 68,0,182,L189
L189:
jbc _longPressFlag,1
EXTJMP @L$170
.stabn 192,0,3,L190
L190:
.stabn 68,0,183,L191
L191:
.stabn 68,0,184,L192
L192:
bs _longPressFlag,1
.stabn 68,0,185,L193
L193:
mov a,@2
mov eax,a
jmp @L$168
.stabn 68,0,186,L194
L194:
.stabn 224,0,3,L195
L195:
.stabn 68,0,187,L196
L196:
.stabn 224,0,2,L197
L197:
.stabn 68,0,188,L198
L198:
.stabn 224,0,1,L199
L199:
L$169:
.stabn 192,0,1,L200
L200:
.stabn 68,0,190,L201
L201:
.stabn 68,0,191,L202
L202:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$175
.stabn 192,0,2,L203
L203:
.stabn 68,0,192,L204
L204:
.stabn 68,0,193,L205
L205:
clr _keyCount
.stabn 68,0,194,L206
L206:
bc _longPressFlag,1
.stabn 68,0,195,L207
L207:
mov a,@0
mov eax,a
jmp @L$168
.stabn 68,0,196,L208
L208:
.stabn 224,0,2,L209
L209:
L$175:
.stabn 68,0,197,L210
L210:
ULTRIB _keyCount,0x8
jbs STATUS, cf
EXTJMP L$177
.stabn 192,0,2,L211
L211:
.stabn 68,0,198,L212
L212:
.stabn 68,0,199,L213
L213:
clr _keyCount
.stabn 68,0,200,L214
L214:
mov a,@1
mov eax,a
jmp @L$168
.stabn 68,0,201,L215
L215:
.stabn 224,0,2,L216
L216:
L$177:
.stabn 68,0,202,L217
L217:
clr _keyCount
.stabn 68,0,203,L218
L218:
.stabn 224,0,1,L219
L219:
L$170:
.stabn 68,0,204,L220
L220:
mov a,@0
mov eax,a
.stabn 68,0,205,L221
L221:
.stabn 224,0,0,L222
L222:
L$168:
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
.stabn 192,0,0,L224
L224:
.stabn 68,0,208,L225
L225:
.stabn 68,0,209,L226
L226:
bc _P65,5
.stabn 68,0,210,L227
L227:
bc _P50,0
.stabn 68,0,211,L228
L228:
LDA _PORT5,0,0
and a,@241
STA _PORT5,0,0
.stabn 68,0,212,L229
L229:
LDA _PORT6,0,0
and a,@248
STA _PORT6,0,0
.stabn 68,0,213,L230
L230:
clr _count900s
.stabn 68,0,214,L231
L231:
clr _workStep
.stabn 68,0,215,L232
L232:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,216,L233
L233:
mov a,@128
STA _ICIECR,0,0
.stabn 68,0,217,L234
L234:
mov a,@2
STA _IMR,0,2
.stabn 68,0,218,L235
L235:
LDA _ISR,0,0
and a,@240
STA _ISR,0,0
.stabn 68,0,219,L236
L236:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(219):"
disi
.stabn 68,0,219,L237
L237:
.stabn 68,0,220,L238
L238:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(220):"
slep
.stabn 68,0,220,L239
L239:
.stabn 68,0,221,L240
L240:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(221):"
eni
.stabn 68,0,221,L241
L241:
.stabn 68,0,222,L242
L242:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,223,L243
L243:
clr _ICIECR
.stabn 68,0,224,L244
L244:
clr _ISR
.stabn 68,0,225,L245
L245:
mov a,@1
STA _IMR,0,2
.stabn 68,0,226,L246
L246:
.stabn 224,0,0,L247
L247:
L$223:
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
.section ".S5",C_CODE
.SYMDEF ".S5" 
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
.stabn 192,0,0,L249
L249:
.stabn 68,0,230,L250
L250:
.stabn 68,0,232,L251
L251:
clr _PORT5
.stabn 68,0,233,L252
L252:
mov a,@0
STA _P5CR,0,2
.stabn 68,0,234,L253
L253:
clr _PORT6
.stabn 68,0,235,L254
L254:
mov a,@128
STA _P6CR,0,2
.stabn 68,0,236,L255
L255:
mov a,@127
STA _PHCR,0,2
.stabn 68,0,238,L256
L256:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(238):"
mov	a,@0x02
.stabn 68,0,239,L257
L257:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(239):"
contw
.stabn 68,0,241,L258
L258:
.stabn 224,0,0,L259
L259:
L$248:
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
.section ".S6",C_CODE
.SYMDEF ".S6" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L265
L265:
.stabn 68,0,245,L266
L266:
.stabn 68,0,248,L267
L267:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(248):"
MOV 0x3D,A ;保存 A
.stabn 68,0,249,L268
L268:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(249):"
MOV A,0x03
.stabn 68,0,250,L269
L269:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(250):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,251,L270
L270:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(251):"
MOV A,0x04
.stabn 68,0,252,L271
L271:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(252):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,255,L272
L272:
jbs _TCIF,0
EXTJMP @L$261
.stabn 192,0,1,L273
L273:
.stabn 68,0,256,L274
L274:
.stabn 68,0,258,L275
L275:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,259,L276
L276:
LDA _TCC,0,0
add a,@206
STA _TCC,0,0
.stabn 68,0,261,L277
L277:
LDA _intCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _intCount,0,0
ULTRIB ecx,0x64
jbs STATUS, cf
EXTJMP L$263
.stabn 192,0,2,L278
L278:
.stabn 68,0,262,L279
L279:
.stabn 68,0,263,L280
L280:
clr _intCount
.stabn 68,0,264,L281
L281:
bs _IntFlag,0
.stabn 68,0,268,L282
L282:
.stabn 224,0,2,L283
L283:
L$263:
.stabn 68,0,271,L284
L284:
.stabn 224,0,1,L285
L285:
L$261:
.stabn 68,0,275,L286
L286:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(275):"
MOV A,0x3F ;返回 R4
.stabn 68,0,276,L287
L287:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(276):"
MOV 0x04,A
.stabn 68,0,277,L288
L288:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(277):"
MOV A,0x3E ;返回 R3
.stabn 68,0,278,L289
L289:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(278):"
MOV 0x03,A
.stabn 68,0,279,L290
L290:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(279):"
SWAP 0x3D  ;返回 A
.stabn 68,0,280,L291
L291:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(280):"
SWAPA 0x3D
.stabn 68,0,282,L292
L292:
.stabn 224,0,0,L293
L293:
L$260:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S7",C_CODE
.SYMDEF ".S7" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L295
L295:
.stabn 68,0,287,L296
L296:
.stabn 68,0,289,L297
L297:
.stabn 224,0,0,L298
L298:
L$294:
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
.stabs "u16t:t14",128,0,0,0
.stabs "u8t:t10",128,0,0,0
.section ".code"
end
