.autoimport
EM78P153B EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\mcuproject\xj\太阳能大花\main.c",100,0,3,0
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
public _lvdFlag
.align 1
_lvdFlag:
.SYMDEF "_lvdFlag" LEN:1
db 0x0
.stabs "lvdFlag:G10",32,0,0,_lvdFlag
public _timeCount
.align 1
_timeCount:
.SYMDEF "_timeCount" LEN:1
db 0x0
.stabs "timeCount:G10",32,0,0,_timeCount
public _timeStep
.align 1
_timeStep:
.SYMDEF "_timeStep" LEN:1
db 0x0
.stabs "timeStep:G10",32,0,0,_timeStep
public _count7s
.align 1
_count7s:
.SYMDEF "_count7s" LEN:1
db 0xbc
.stabs "count7s:G14",32,0,0,_count7s
public _lvdCount
.align 1
_lvdCount:
.SYMDEF "_lvdCount" LEN:1
db 0x0
.stabs "lvdCount:G10",32,0,0,_lvdCount
public _main
public main_bp
.section ".code"
.stabs "main:F15",36,0,0,_main
.section ".S0",C_CODE
.SYMDEF ".S0" 
_main:
.SYMDEF "_main" 
.stabs "i:14",128,0,0,main_bp-1
.stabn 192,0,0,L10
L10:
.stabn 68,0,31,L12
L12:
.stabn 68,0,35,L13
L13:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(35):"
wdtc
.stabn 68,0,35,L14
L14:
.stabn 68,0,36,L15
L15:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(36):"
disi
.stabn 68,0,36,L16
L16:
.stabn 68,0,37,L17
L17:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,39,L18
L18:
call _IO_Init
.stabn 68,0,40,L19
L19:
mov a,@206
STA _TCC,0,0
.stabn 68,0,41,L20
L20:
clr _ISR
.stabn 68,0,42,L21
L21:
mov a,@1
STA _IMR,0,2
.stabn 68,0,43,L22
L22:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(43):"
eni
.stabn 68,0,43,L23
L23:
.stabn 68,0,46,L24
L24:
L$2:
.stabn 192,0,1,L25
L25:
.stabn 68,0,47,L26
L26:
.stabn 68,0,48,L27
L27:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(48):"
wdtc
.stabn 68,0,48,L28
L28:
.stabn 68,0,49,L29
L29:
jbc _IntFlag,0
EXTJMP @L$6
.stabn 68,0,50,L30
L30:
jmp @L$2
L$6:
.stabn 68,0,51,L31
L31:
bc _IntFlag,0
.stabn 68,0,52,L32
L32:
clr _lvdFlag
.stabn 68,0,54,L33
L33:
EQNEPRIB _lvdFlag,0
jbc STATUS,zf
EXTJMP @L$8
.stabn 192,0,2,L34
L34:
.stabn 68,0,55,L35
L35:
.stabn 68,0,56,L36
L36:
call _gotoSleep
.stabn 68,0,57,L37
L37:
.stabn 224,0,2,L38
L38:
jmp @L$2
L$8:
.stabn 192,0,2,L39
L39:
.stabn 68,0,59,L40
L40:
.stabn 68,0,60,L41
L41:
call _workCtr
.stabn 68,0,61,L42
L42:
.stabn 224,0,2,L43
L43:
.stabn 68,0,64,L44
L44:
.stabn 224,0,1,L45
L45:
.stabn 68,0,46,L46
L46:
.stabn 68,0,46,L47
L47:
jmp @L$2
.stabn 68,0,66,L48
L48:
.stabn 224,0,0,L49
L49:
L$1:
ret
.STACK main_bp,local,1
public _workCtr
public workCtr_bp
.stabs "workCtr:F15",36,0,0,_workCtr
.section ".S1",C_CODE
.SYMDEF ".S1" 
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
.stabn 192,0,0,L65
L65:
.stabn 68,0,69,L66
L66:
.stabn 68,0,70,L67
L67:
LDA _PORT6,0,0
mov ecx,a
mov a,@2
and ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$51
.stabn 192,0,1,L68
L68:
.stabn 68,0,71,L69
L69:
.stabn 68,0,73,L70
L70:
LDA _timeCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _timeCount,0,0
UGTRIB ecx,0xc8
jbc STATUS, cf
EXTJMP L$53
.stabn 192,0,2,L71
L71:
.stabn 68,0,74,L72
L72:
.stabn 68,0,75,L73
L73:
EQNEPRIB _timeStep,0
jbs STATUS,zf
EXTJMP @L$55
.stabn 192,0,3,L74
L74:
.stabn 68,0,76,L75
L75:
.stabn 68,0,77,L76
L76:
mov a,@.b0.700
mov ecx,a
mov a,@.b1.700
mov ecx+1,a
mov a,ecx
STA _count7s,0,0
.stabn 68,0,78,L77
L77:
.stabn 224,0,3,L78
L78:
L$55:
.stabn 68,0,79,L79
L79:
mov a,@1
STA _timeStep,0,0
.stabn 68,0,80,L80
L80:
mov a,@200
STA _timeCount,0,0
.stabn 68,0,81,L81
L81:
.stabn 224,0,2,L82
L82:
jmp @L$52
L$53:
.stabn 192,0,2,L83
L83:
.stabn 68,0,83,L84
L84:
.stabn 68,0,84,L85
L85:
LDA _PORT6,0,0
and a,@239
STA _PORT6,0,0
.stabn 68,0,85,L86
L86:
jmp @L$50
.stabn 68,0,86,L87
L87:
.stabn 224,0,2,L88
L88:
.stabn 68,0,87,L89
L89:
.stabn 224,0,1,L90
L90:
L$51:
.stabn 192,0,1,L91
L91:
.stabn 68,0,89,L92
L92:
.stabn 68,0,91,L93
L93:
EQNEPRIB _timeStep,1
jbs STATUS,zf
EXTJMP @L$57
.stabn 192,0,2,L94
L94:
.stabn 68,0,92,L95
L95:
.stabn 68,0,93,L96
L96:
mov a,@.b0.700
mov ecx,a
mov a,@.b1.700
mov ecx+1,a
mov a,ecx
STA _count7s,0,0
.stabn 68,0,94,L97
L97:
.stabn 224,0,2,L98
L98:
L$57:
.stabn 68,0,95,L99
L99:
clr _timeStep
.stabn 68,0,96,L100
L100:
clr _timeCount
.stabn 68,0,97,L101
L101:
.stabn 224,0,1,L102
L102:
L$52:
.stabn 68,0,99,L103
L103:
EQNEPRIB _timeStep,0
jbc STATUS,zf
EXTJMP @L$59
.stabn 192,0,1,L104
L104:
.stabn 68,0,100,L105
L105:
.stabn 68,0,101,L106
L106:
EQNEPRIB _count7s,0
jbc STATUS, zf
EXTJMP L$61
.stabn 192,0,2,L107
L107:
.stabn 68,0,102,L108
L108:
.stabn 68,0,103,L109
L109:
DECMB _count7s,0
.stabn 68,0,104,L110
L110:
LDA _PORT6,0,0
or a,@32
STA _PORT6,0,0
.stabn 68,0,105,L111
L111:
.stabn 224,0,2,L112
L112:
jmp @L$62
L$61:
.stabn 192,0,2,L113
L113:
.stabn 68,0,107,L114
L114:
.stabn 68,0,108,L115
L115:
LDA _PORT6,0,0
and a,@223
STA _PORT6,0,0
.stabn 68,0,109,L116
L116:
.stabn 224,0,2,L117
L117:
L$62:
.stabn 68,0,110,L118
L118:
LDA _PORT6,0,0
or a,@4
STA _PORT6,0,0
.stabn 68,0,111,L119
L119:
LDA _PORT6,0,0
and a,@239
STA _PORT6,0,0
.stabn 68,0,112,L120
L120:
.stabn 224,0,1,L121
L121:
jmp @L$60
L$59:
.stabn 192,0,1,L122
L122:
.stabn 68,0,114,L123
L123:
.stabn 68,0,115,L124
L124:
EQNEPRIB _count7s,0
jbc STATUS, zf
EXTJMP L$63
.stabn 192,0,2,L125
L125:
.stabn 68,0,116,L126
L126:
.stabn 68,0,117,L127
L127:
DECMB _count7s,0
.stabn 68,0,118,L128
L128:
LDA _PORT6,0,0
or a,@16
STA _PORT6,0,0
.stabn 68,0,119,L129
L129:
.stabn 224,0,2,L130
L130:
jmp @L$64
L$63:
.stabn 192,0,2,L131
L131:
.stabn 68,0,121,L132
L132:
.stabn 68,0,122,L133
L133:
LDA _PORT6,0,0
and a,@239
STA _PORT6,0,0
.stabn 68,0,124,L134
L134:
call _gotoSleep
.stabn 68,0,125,L135
L135:
.stabn 224,0,2,L136
L136:
L$64:
.stabn 68,0,126,L137
L137:
LDA _PORT6,0,0
and a,@219
STA _PORT6,0,0
.stabn 68,0,127,L138
L138:
.stabn 224,0,1,L139
L139:
L$60:
.stabn 68,0,128,L140
L140:
.stabn 224,0,0,L141
L141:
L$50:
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
public _checkLVD
public checkLVD_bp
.stabs "checkLVD:F15",36,0,0,_checkLVD
.section ".S2",C_CODE
.SYMDEF ".S2" 
_checkLVD:
.SYMDEF "_checkLVD" 
mov a,ecx
mov checkLVD_bp-4,a
mov a,ecx+1
mov checkLVD_bp-3,a
mov a,ecx+2
mov checkLVD_bp-2,a
mov a,ecx+3
mov checkLVD_bp-1,a
.stabn 192,0,0,L147
L147:
.stabn 68,0,132,L148
L148:
.stabn 68,0,133,L149
L149:
mov a,@136
STA _LVDCON,0,0
.stabn 68,0,134,L150
L150:
mov a,@80
mov delay_bp+0,a
.STACK delay_bp,parameter,1
call _delay
.stabn 68,0,136,L151
L151:
LDA _LVDCON,0,0
mov ecx,a
RSHUMIB ecx,6,0
mov a,@1
and ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$143
.stabn 192,0,1,L152
L152:
.stabn 68,0,137,L153
L153:
.stabn 68,0,139,L154
L154:
EQNEPRIB _lvdFlag,0
jbs STATUS,zf
EXTJMP @L$144
LDA _lvdCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _lvdCount,0,0
ULTRIB ecx,0xc8
jbs STATUS, cf
EXTJMP L$144
.stabn 192,0,2,L155
L155:
.stabn 68,0,140,L156
L156:
.stabn 68,0,141,L157
L157:
mov a,@1
STA _lvdFlag,0,0
.stabn 68,0,142,L158
L158:
clr _lvdCount
.stabn 68,0,143,L159
L159:
.stabn 224,0,2,L160
L160:
.stabn 68,0,144,L161
L161:
.stabn 224,0,1,L162
L162:
jmp @L$144
L$143:
.stabn 192,0,1,L163
L163:
.stabn 68,0,146,L164
L164:
.stabn 68,0,147,L165
L165:
clr _lvdCount
.stabn 68,0,149,L166
L166:
.stabn 224,0,1,L167
L167:
L$144:
.stabn 68,0,151,L168
L168:
.stabn 224,0,0,L169
L169:
L$142:
mov a,checkLVD_bp-4
mov ecx,a
mov a,checkLVD_bp-3
mov ecx+1,a
mov a,checkLVD_bp-2
mov ecx+2,a
mov a,checkLVD_bp-1
mov ecx+3,a
ret
.STACK checkLVD_bp,local,4
public _delay
public delay_bp
.stabs "delay:F15",36,0,0,_delay
.section ".S3",C_CODE
.SYMDEF ".S3" 
_delay:
.SYMDEF "_delay" 
mov a,ecx
mov delay_bp-4,a
mov a,ecx+1
mov delay_bp-3,a
mov a,ecx+2
mov delay_bp-2,a
mov a,ecx+3
mov delay_bp-1,a
.stabs "time:14",160,0,0,delay_bp+0
.stabs "i:14",128,0,0,delay_bp-5
.stabn 192,0,0,L175
L175:
.stabn 68,0,155,L176
L176:
.stabn 68,0,157,L177
L177:
clr delay_bp-5
jmp @L$174
L$171:
.stabn 68,0,157,L178
L178:
L$172:
.stabn 68,0,157,L179
L179:
LDA delay_bp-5,0,0
add a,@1
STA delay_bp-5,0,0
L$174:
.stabn 68,0,157,L180
L180:
ULTRRB delay_bp-5,delay_bp+0
jbs STATUS,cf
EXTJMP @L$171
.stabn 68,0,158,L181
L181:
.stabn 224,0,0,L182
L182:
L$170:
mov a,delay_bp-4
mov ecx,a
mov a,delay_bp-3
mov ecx+1,a
mov a,delay_bp-2
mov ecx+2,a
mov a,delay_bp-1
mov ecx+3,a
ret
.STACK delay_bp,local,5
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
.stabn 192,0,0,L184
L184:
.stabn 68,0,162,L185
L185:
.stabn 68,0,163,L186
L186:
clr _lvdFlag
.stabn 68,0,164,L187
L187:
clr _lvdCount
.stabn 68,0,165,L188
L188:
mov a,@.b0.700
mov ecx,a
mov a,@.b1.700
mov ecx+1,a
mov a,ecx
STA _count7s,0,0
.stabn 68,0,166,L189
L189:
clr _PORT6
.stabn 68,0,167,L190
L190:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,168,L191
L191:
mov a,@2
STA _ICIECR,0,0
.stabn 68,0,169,L192
L192:
mov a,@2
STA _IMR,0,2
.stabn 68,0,170,L193
L193:
LDA _ISR,0,0
and a,@240
STA _ISR,0,0
.stabn 68,0,171,L194
L194:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(171):"
disi
.stabn 68,0,171,L195
L195:
.stabn 68,0,172,L196
L196:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(172):"
slep
.stabn 68,0,172,L197
L197:
.stabn 68,0,173,L198
L198:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(173):"
eni
.stabn 68,0,173,L199
L199:
.stabn 68,0,174,L200
L200:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,175,L201
L201:
clr _ICIECR
.stabn 68,0,176,L202
L202:
clr _ISR
.stabn 68,0,177,L203
L203:
mov a,@1
STA _IMR,0,2
.stabn 68,0,178,L204
L204:
.stabn 224,0,0,L205
L205:
L$183:
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
.stabn 192,0,0,L207
L207:
.stabn 68,0,182,L208
L208:
.stabn 68,0,184,L209
L209:
clr _PORT5
.stabn 68,0,185,L210
L210:
mov a,@0
STA _P5CR,0,2
.stabn 68,0,186,L211
L211:
clr _PORT6
.stabn 68,0,187,L212
L212:
mov a,@2
STA _P6CR,0,2
.stabn 68,0,188,L213
L213:
mov a,@253
STA _PHCR,0,2
.stabn 68,0,190,L214
L214:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(190):"
mov	a,@0x02
.stabn 68,0,191,L215
L215:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(191):"
contw
.stabn 68,0,193,L216
L216:
.stabn 224,0,0,L217
L217:
L$206:
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
.stabn 192,0,0,L223
L223:
.stabn 68,0,197,L224
L224:
.stabn 68,0,200,L225
L225:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(200):"
MOV 0x3D,A ;保存 A
.stabn 68,0,201,L226
L226:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(201):"
MOV A,0x03
.stabn 68,0,202,L227
L227:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(202):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,203,L228
L228:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(203):"
MOV A,0x04
.stabn 68,0,204,L229
L229:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(204):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,207,L230
L230:
jbs _TCIF,0
EXTJMP @L$219
.stabn 192,0,1,L231
L231:
.stabn 68,0,208,L232
L232:
.stabn 68,0,210,L233
L233:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,211,L234
L234:
LDA _TCC,0,0
add a,@206
STA _TCC,0,0
.stabn 68,0,213,L235
L235:
LDA _intCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _intCount,0,0
ULTRIB ecx,0x64
jbs STATUS, cf
EXTJMP L$221
.stabn 192,0,2,L236
L236:
.stabn 68,0,214,L237
L237:
.stabn 68,0,215,L238
L238:
clr _intCount
.stabn 68,0,216,L239
L239:
bs _IntFlag,0
.stabn 68,0,220,L240
L240:
.stabn 224,0,2,L241
L241:
L$221:
.stabn 68,0,223,L242
L242:
.stabn 224,0,1,L243
L243:
L$219:
.stabn 68,0,227,L244
L244:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(227):"
MOV A,0x3F ;返回 R4
.stabn 68,0,228,L245
L245:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(228):"
MOV 0x04,A
.stabn 68,0,229,L246
L246:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(229):"
MOV A,0x3E ;返回 R3
.stabn 68,0,230,L247
L247:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(230):"
MOV 0x03,A
.stabn 68,0,231,L248
L248:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(231):"
SWAP 0x3D  ;返回 A
.stabn 68,0,232,L249
L249:
.cfile "C:\mcuproject\xj\太阳能大花\main.c(232):"
SWAPA 0x3D
.stabn 68,0,234,L250
L250:
.stabn 224,0,0,L251
L251:
L$218:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S7",C_CODE
.SYMDEF ".S7" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L253
L253:
.stabn 68,0,239,L254
L254:
.stabn 68,0,241,L255
L255:
.stabn 224,0,0,L256
L256:
L$252:
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
