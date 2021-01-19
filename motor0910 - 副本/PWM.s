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
public _count900s
.align 1
_count900s:
.SYMDEF "_count900s" LEN:1
db 0x0
.stabs "count900s:G14",32,0,0,_count900s
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
.stabn 192,0,0,L12
L12:
.stabn 68,0,50,L14
L14:
.stabn 68,0,54,L15
L15:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(54):"
wdtc
.stabn 68,0,54,L16
L16:
.stabn 68,0,55,L17
L17:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(55):"
disi
.stabn 68,0,55,L18
L18:
.stabn 68,0,56,L19
L19:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,57,L20
L20:
clr _workStep
.stabn 68,0,59,L21
L21:
call _IO_Init
.stabn 68,0,60,L22
L22:
mov a,@206
STA _TCC,0,0
.stabn 68,0,61,L23
L23:
clr _ISR
.stabn 68,0,62,L24
L24:
mov a,@1
STA _IMR,0,2
.stabn 68,0,63,L25
L25:
clr _duty
.stabn 68,0,64,L26
L26:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(64):"
eni
.stabn 68,0,64,L27
L27:
.stabn 68,0,67,L28
L28:
L$2:
.stabn 192,0,1,L29
L29:
.stabn 68,0,68,L30
L30:
.stabn 68,0,69,L31
L31:
bc _P50,0
.stabn 68,0,70,L32
L32:
clr main_bp-1
jmp @L$9
L$6:
.stabn 192,0,2,L33
L33:
.stabn 68,0,71,L34
L34:
.stabn 68,0,72,L35
L35:
bs _P50,0
.stabn 68,0,73,L36
L36:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(73):"
nop
.stabn 68,0,73,L37
L37:
.stabn 68,0,74,L38
L38:
.stabn 224,0,2,L39
L39:
L$7:
.stabn 68,0,70,L40
L40:
LDA main_bp-1,0,0
add a,@1
STA main_bp-1,0,0
L$9:
.stabn 68,0,70,L41
L41:
ULTRRB main_bp-1,_duty
jbs STATUS,cf
EXTJMP @L$6
.stabn 68,0,75,L42
L42:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(75):"
wdtc
.stabn 68,0,75,L43
L43:
.stabn 68,0,76,L44
L44:
jbc _IntFlag,0
EXTJMP @L$10
.stabn 68,0,77,L45
L45:
jmp @L$2
L$10:
.stabn 68,0,78,L46
L46:
bc _IntFlag,0
.stabn 68,0,79,L47
L47:
call _keyCtr
.stabn 68,0,80,L48
L48:
call _workCtr
.stabn 68,0,81,L49
L49:
.stabn 224,0,1,L50
L50:
.stabn 68,0,67,L51
L51:
.stabn 68,0,67,L52
L52:
jmp @L$2
.stabn 68,0,83,L53
L53:
.stabn 224,0,0,L54
L54:
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
.stabn 192,0,0,L62
L62:
.stabn 68,0,87,L63
L63:
.stabn 68,0,88,L64
L64:
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
.stabn 68,0,90,L65
L65:
EQNEPRIB keyCtr_bp-5,1
jbs STATUS,zf
EXTJMP @L$56
.stabn 192,0,1,L66
L66:
.stabn 68,0,91,L67
L67:
.stabn 68,0,94,L68
L68:
LDA _workStep,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _workStep,0,0
ULTRIB ecx,0x7
jbs STATUS, cf
EXTJMP L$57
.stabn 68,0,95,L69
L69:
clr _workStep
.stabn 68,0,97,L70
L70:
.stabn 224,0,1,L71
L71:
jmp @L$57
L$56:
.stabn 68,0,98,L72
L72:
EQNEPRIB keyCtr_bp-5,2
jbs STATUS,zf
EXTJMP @L$60
.stabn 192,0,1,L73
L73:
.stabn 68,0,99,L74
L74:
.stabn 68,0,100,L75
L75:
clr _workStep
.stabn 68,0,101,L76
L76:
.stabn 224,0,1,L77
L77:
L$60:
L$57:
.stabn 68,0,105,L78
L78:
.stabn 224,0,0,L79
L79:
L$55:
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
.stabn 192,0,0,L94
L94:
.stabn 68,0,108,L95
L95:
.stabn 68,0,109,L96
L96:
LDA _workStep,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$83
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$86
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$87
EQNEPRIB ecx,3
jbc STATUS,zf
EXTJMP @L$88
EQNEPRIB ecx,4
jbc STATUS,zf
EXTJMP @L$89
EQNEPRIB ecx,5
jbc STATUS,zf
EXTJMP @L$90
EQNEPRIB ecx,6
jbc STATUS,zf
EXTJMP @L$91
jmp @L$81
.stabn 192,0,1,L97
L97:
.stabn 68,0,110,L98
L98:
L$83:
.stabn 68,0,112,L99
L99:
clr _duty
.stabn 68,0,113,L100
L100:
LDA _PORT5,0,0
and a,@241
STA _PORT5,0,0
.stabn 68,0,114,L101
L101:
LDA _PORT6,0,0
and a,@248
STA _PORT6,0,0
.stabn 68,0,115,L102
L102:
bc _P50,0
.stabn 68,0,116,L103
L103:
EQNEPRIB _keyCount,0
jbs STATUS,zf
EXTJMP @L$82
.stabn 68,0,117,L104
L104:
call _gotoSleep
.stabn 68,0,118,L105
L105:
jmp @L$82
L$86:
.stabn 68,0,120,L106
L106:
mov a,@6
STA _duty,0,0
.stabn 68,0,121,L107
L107:
bs _P51,1
.stabn 68,0,122,L108
L108:
jmp @L$82
L$87:
.stabn 68,0,124,L109
L109:
mov a,@9
STA _duty,0,0
.stabn 68,0,125,L110
L110:
bs _P52,2
.stabn 68,0,126,L111
L111:
jmp @L$82
L$88:
.stabn 68,0,128,L112
L112:
mov a,@13
STA _duty,0,0
.stabn 68,0,129,L113
L113:
bs _P53,3
.stabn 68,0,130,L114
L114:
jmp @L$82
L$89:
.stabn 68,0,132,L115
L115:
mov a,@17
STA _duty,0,0
.stabn 68,0,133,L116
L116:
bs _P60,0
.stabn 68,0,134,L117
L117:
jmp @L$82
L$90:
.stabn 68,0,136,L118
L118:
mov a,@22
STA _duty,0,0
.stabn 68,0,137,L119
L119:
bs _P61,1
.stabn 68,0,138,L120
L120:
jmp @L$82
L$91:
.stabn 68,0,140,L121
L121:
mov a,@28
STA _duty,0,0
.stabn 68,0,141,L122
L122:
bs _P62,2
.stabn 68,0,142,L123
L123:
.stabn 68,0,143,L124
L124:
.stabn 224,0,1,L125
L125:
L$81:
L$82:
.stabn 68,0,145,L126
L126:
LDA _count900s,0,0
mov ecx,a
mov a,ecx
mov ecx,a
clr ecx+1
ILTRIW ecx,0x8384
jbs STATUS, cf
EXTJMP L$92
EQNEPRIB _keyCount,0
jbs STATUS,zf
EXTJMP @L$92
.stabn 68,0,146,L127
L127:
call _gotoSleep
L$92:
.stabn 68,0,147,L128
L128:
.stabn 224,0,0,L129
L129:
L$80:
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
.stabn 192,0,0,L141
L141:
.stabn 68,0,151,L142
L142:
.stabn 68,0,152,L143
L143:
EQNEPRIB keyRead_bp+0,0
jbc STATUS,zf
EXTJMP @L$131
.stabn 192,0,1,L144
L144:
.stabn 68,0,153,L145
L145:
.stabn 68,0,154,L146
L146:
LDA _keyCount,0,0
add a,@1
STA _keyCount,0,0
.stabn 68,0,155,L147
L147:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$132
.stabn 192,0,2,L148
L148:
.stabn 68,0,156,L149
L149:
.stabn 68,0,157,L150
L150:
mov a,@200
STA _keyCount,0,0
.stabn 68,0,158,L151
L151:
jbc _longPressFlag,1
EXTJMP @L$132
.stabn 192,0,3,L152
L152:
.stabn 68,0,159,L153
L153:
.stabn 68,0,160,L154
L154:
bs _longPressFlag,1
.stabn 68,0,161,L155
L155:
mov a,@2
mov eax,a
jmp @L$130
.stabn 68,0,162,L156
L156:
.stabn 224,0,3,L157
L157:
.stabn 68,0,163,L158
L158:
.stabn 224,0,2,L159
L159:
.stabn 68,0,164,L160
L160:
.stabn 224,0,1,L161
L161:
L$131:
.stabn 192,0,1,L162
L162:
.stabn 68,0,166,L163
L163:
.stabn 68,0,167,L164
L164:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$137
.stabn 192,0,2,L165
L165:
.stabn 68,0,168,L166
L166:
.stabn 68,0,169,L167
L167:
clr _keyCount
.stabn 68,0,170,L168
L168:
bc _longPressFlag,1
.stabn 68,0,171,L169
L169:
mov a,@0
mov eax,a
jmp @L$130
.stabn 68,0,172,L170
L170:
.stabn 224,0,2,L171
L171:
L$137:
.stabn 68,0,173,L172
L172:
ULTRIB _keyCount,0x8
jbs STATUS, cf
EXTJMP L$139
.stabn 192,0,2,L173
L173:
.stabn 68,0,174,L174
L174:
.stabn 68,0,175,L175
L175:
clr _keyCount
.stabn 68,0,176,L176
L176:
mov a,@1
mov eax,a
jmp @L$130
.stabn 68,0,177,L177
L177:
.stabn 224,0,2,L178
L178:
L$139:
.stabn 68,0,178,L179
L179:
clr _keyCount
.stabn 68,0,179,L180
L180:
.stabn 224,0,1,L181
L181:
L$132:
.stabn 68,0,180,L182
L182:
mov a,@0
mov eax,a
.stabn 68,0,181,L183
L183:
.stabn 224,0,0,L184
L184:
L$130:
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
.stabn 192,0,0,L186
L186:
.stabn 68,0,184,L187
L187:
.stabn 68,0,185,L188
L188:
bc _P65,5
.stabn 68,0,186,L189
L189:
bc _P50,0
.stabn 68,0,187,L190
L190:
clr _count900s
.stabn 68,0,188,L191
L191:
clr _workStep
.stabn 68,0,189,L192
L192:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,190,L193
L193:
mov a,@128
STA _ICIECR,0,0
.stabn 68,0,191,L194
L194:
mov a,@2
STA _IMR,0,2
.stabn 68,0,192,L195
L195:
LDA _ISR,0,0
and a,@240
STA _ISR,0,0
.stabn 68,0,193,L196
L196:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(193):"
disi
.stabn 68,0,193,L197
L197:
.stabn 68,0,194,L198
L198:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(194):"
slep
.stabn 68,0,194,L199
L199:
.stabn 68,0,195,L200
L200:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(195):"
eni
.stabn 68,0,195,L201
L201:
.stabn 68,0,196,L202
L202:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,197,L203
L203:
clr _ICIECR
.stabn 68,0,198,L204
L204:
clr _ISR
.stabn 68,0,199,L205
L205:
mov a,@1
STA _IMR,0,2
.stabn 68,0,200,L206
L206:
.stabn 224,0,0,L207
L207:
L$185:
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
.stabn 192,0,0,L209
L209:
.stabn 68,0,204,L210
L210:
.stabn 68,0,206,L211
L211:
clr _PORT5
.stabn 68,0,207,L212
L212:
mov a,@0
STA _P5CR,0,2
.stabn 68,0,208,L213
L213:
clr _PORT6
.stabn 68,0,209,L214
L214:
mov a,@128
STA _P6CR,0,2
.stabn 68,0,210,L215
L215:
mov a,@127
STA _PHCR,0,2
.stabn 68,0,212,L216
L216:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(212):"
mov	a,@0x02
.stabn 68,0,213,L217
L217:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(213):"
contw
.stabn 68,0,215,L218
L218:
.stabn 224,0,0,L219
L219:
L$208:
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
.stabn 192,0,0,L229
L229:
.stabn 68,0,219,L230
L230:
.stabn 68,0,222,L231
L231:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(222):"
MOV 0x3D,A ;保存 A
.stabn 68,0,223,L232
L232:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(223):"
MOV A,0x03
.stabn 68,0,224,L233
L233:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(224):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,225,L234
L234:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(225):"
MOV A,0x04
.stabn 68,0,226,L235
L235:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(226):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,229,L236
L236:
jbs _TCIF,0
EXTJMP @L$221
.stabn 192,0,1,L237
L237:
.stabn 68,0,230,L238
L238:
.stabn 68,0,232,L239
L239:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,233,L240
L240:
LDA _TCC,0,0
add a,@206
STA _TCC,0,0
.stabn 68,0,235,L241
L241:
LDA _intCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _intCount,0,0
ULTRIB ecx,0x64
jbs STATUS, cf
EXTJMP L$223
.stabn 192,0,2,L242
L242:
.stabn 68,0,236,L243
L243:
.stabn 68,0,237,L244
L244:
clr _intCount
.stabn 68,0,238,L245
L245:
bs _IntFlag,0
.stabn 68,0,240,L246
L246:
EQNEPRIB _workStep,0
jbc STATUS,zf
EXTJMP @L$225
.stabn 192,0,3,L247
L247:
.stabn 68,0,241,L248
L248:
.stabn 68,0,242,L249
L249:
LDA _count1s,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _count1s,0,0
ULTRIB ecx,0x64
jbs STATUS, cf
EXTJMP L$227
.stabn 192,0,4,L250
L250:
.stabn 68,0,243,L251
L251:
.stabn 68,0,244,L252
L252:
clr _count1s
.stabn 68,0,245,L253
L253:
LDA _count900s,0,0
add a,@1
STA _count900s,0,0
.stabn 68,0,246,L254
L254:
.stabn 224,0,4,L255
L255:
L$227:
.stabn 68,0,247,L256
L256:
.stabn 224,0,3,L257
L257:
L$225:
.stabn 68,0,249,L258
L258:
.stabn 224,0,2,L259
L259:
L$223:
.stabn 68,0,252,L260
L260:
.stabn 224,0,1,L261
L261:
L$221:
.stabn 68,0,256,L262
L262:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(256):"
MOV A,0x3F ;返回 R4
.stabn 68,0,257,L263
L263:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(257):"
MOV 0x04,A
.stabn 68,0,258,L264
L264:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(258):"
MOV A,0x3E ;返回 R3
.stabn 68,0,259,L265
L265:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(259):"
MOV 0x03,A
.stabn 68,0,260,L266
L266:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(260):"
SWAP 0x3D  ;返回 A
.stabn 68,0,261,L267
L267:
.cfile "C:\mcuproject\xj\motor0910\PWM.c(261):"
SWAPA 0x3D
.stabn 68,0,263,L268
L268:
.stabn 224,0,0,L269
L269:
L$220:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S7",C_CODE
.SYMDEF ".S7" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L271
L271:
.stabn 68,0,268,L272
L272:
.stabn 68,0,270,L273
L273:
.stabn 224,0,0,L274
L274:
L$270:
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
