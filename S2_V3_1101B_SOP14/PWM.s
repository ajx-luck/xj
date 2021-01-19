.autoimport
EM78P153B EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c",100,0,3,0
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
.stabn 192,0,0,L24
L24:
.stabn 68,0,51,L26
L26:
.stabn 68,0,55,L27
L27:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(55):"
wdtc
.stabn 68,0,55,L28
L28:
.stabn 68,0,56,L29
L29:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(56):"
disi
.stabn 68,0,56,L30
L30:
.stabn 68,0,57,L31
L31:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,58,L32
L32:
clr _workStep
.stabn 68,0,60,L33
L33:
call _IO_Init
.stabn 68,0,61,L34
L34:
mov a,@206
STA _TCC,0,0
.stabn 68,0,62,L35
L35:
clr _ISR
.stabn 68,0,63,L36
L36:
mov a,@1
STA _IMR,0,2
.stabn 68,0,64,L37
L37:
clr _duty
.stabn 68,0,65,L38
L38:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(65):"
eni
.stabn 68,0,65,L39
L39:
.stabn 68,0,68,L40
L40:
L$2:
.stabn 192,0,1,L41
L41:
.stabn 68,0,69,L42
L42:
.stabn 68,0,70,L43
L43:
bc _P50,0
.stabn 68,0,71,L44
L44:
ULTRIB _workStep,0x4
jbc STATUS, cf
EXTJMP L$6
.stabn 192,0,2,L45
L45:
.stabn 68,0,72,L46
L46:
.stabn 68,0,73,L47
L47:
bc _P50,0
.stabn 68,0,74,L48
L48:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(74):"
nop
.stabn 68,0,74,L49
L49:
.stabn 68,0,75,L50
L50:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(75):"
nop
.stabn 68,0,75,L51
L51:
.stabn 68,0,76,L52
L52:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(76):"
nop
.stabn 68,0,76,L53
L53:
.stabn 68,0,77,L54
L54:
.stabn 224,0,2,L55
L55:
L$6:
.stabn 68,0,78,L56
L56:
clr main_bp-1
jmp @L$11
L$8:
.stabn 192,0,2,L57
L57:
.stabn 68,0,79,L58
L58:
.stabn 68,0,80,L59
L59:
bs _P50,0
.stabn 68,0,81,L60
L60:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(81):"
nop
.stabn 68,0,81,L61
L61:
.stabn 68,0,82,L62
L62:
.stabn 224,0,2,L63
L63:
L$9:
.stabn 68,0,78,L64
L64:
LDA main_bp-1,0,0
add a,@1
STA main_bp-1,0,0
L$11:
.stabn 68,0,78,L65
L65:
ULTRRB main_bp-1,_duty
jbs STATUS,cf
EXTJMP @L$8
.stabn 68,0,83,L66
L66:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(83):"
wdtc
.stabn 68,0,83,L67
L67:
.stabn 68,0,84,L68
L68:
jbc _IntFlag,0
EXTJMP @L$12
.stabn 68,0,85,L69
L69:
jmp @L$2
L$12:
.stabn 68,0,86,L70
L70:
bc _IntFlag,0
.stabn 68,0,87,L71
L71:
jbc _P64,4
EXTJMP @L$14
.stabn 68,0,88,L72
L72:
call _keyCtr
jmp @L$15
L$14:
.stabn 192,0,2,L73
L73:
.stabn 68,0,90,L74
L74:
.stabn 68,0,91,L75
L75:
bc _P50,0
.stabn 68,0,92,L76
L76:
clr _duty
.stabn 68,0,93,L77
L77:
clr _workStep
.stabn 68,0,94,L78
L78:
clr _count900s
.stabn 68,0,95,L79
L79:
.stabn 224,0,2,L80
L80:
L$15:
.stabn 68,0,96,L81
L81:
call _workCtr
.stabn 68,0,97,L82
L82:
EQNEPRIB _workStep,0
jbc STATUS,zf
EXTJMP @L$2
.stabn 192,0,2,L83
L83:
.stabn 68,0,98,L84
L84:
.stabn 68,0,99,L85
L85:
LDA _count1s,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _count1s,0,0
ULTRIB ecx,0x64
jbs STATUS, cf
EXTJMP L$18
.stabn 192,0,3,L86
L86:
.stabn 68,0,100,L87
L87:
.stabn 68,0,101,L88
L88:
clr _count1s
.stabn 68,0,102,L89
L89:
LDA _count1min,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _count1min,0,0
ULTRIB ecx,0x3c
jbs STATUS, cf
EXTJMP L$20
.stabn 192,0,4,L90
L90:
.stabn 68,0,103,L91
L91:
.stabn 68,0,104,L92
L92:
clr _count1min
.stabn 68,0,105,L93
L93:
LDA _count900s,0,0
add a,@1
STA _count900s,0,0
.stabn 68,0,106,L94
L94:
.stabn 224,0,4,L95
L95:
L$20:
.stabn 68,0,108,L96
L96:
.stabn 224,0,3,L97
L97:
L$18:
.stabn 68,0,110,L98
L98:
ULTRIB _count900s,0xf
jbs STATUS, cf
EXTJMP L$2
EQNEPRIB _keyCount,0
jbs STATUS,zf
EXTJMP @L$2
.stabn 68,0,111,L99
L99:
call _gotoSleep
.stabn 68,0,112,L100
L100:
.stabn 224,0,2,L101
L101:
.stabn 68,0,115,L102
L102:
.stabn 224,0,1,L103
L103:
.stabn 68,0,68,L104
L104:
.stabn 68,0,68,L105
L105:
jmp @L$2
.stabn 68,0,117,L106
L106:
.stabn 224,0,0,L107
L107:
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
.stabn 192,0,0,L115
L115:
.stabn 68,0,121,L116
L116:
.stabn 68,0,122,L117
L117:
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
.stabn 68,0,124,L118
L118:
EQNEPRIB keyCtr_bp-5,1
jbs STATUS,zf
EXTJMP @L$109
.stabn 192,0,1,L119
L119:
.stabn 68,0,125,L120
L120:
.stabn 68,0,128,L121
L121:
LDA _workStep,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _workStep,0,0
ULTRIB ecx,0x6
jbs STATUS, cf
EXTJMP L$110
.stabn 68,0,129,L122
L122:
clr _workStep
.stabn 68,0,131,L123
L123:
.stabn 224,0,1,L124
L124:
jmp @L$110
L$109:
.stabn 68,0,132,L125
L125:
EQNEPRIB keyCtr_bp-5,2
jbs STATUS,zf
EXTJMP @L$113
.stabn 192,0,1,L126
L126:
.stabn 68,0,133,L127
L127:
.stabn 68,0,134,L128
L128:
clr _workStep
.stabn 68,0,135,L129
L129:
.stabn 224,0,1,L130
L130:
L$113:
L$110:
.stabn 68,0,139,L131
L131:
.stabn 224,0,0,L132
L132:
L$108:
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
.stabn 192,0,0,L144
L144:
.stabn 68,0,142,L145
L145:
.stabn 68,0,143,L146
L146:
LDA _workStep,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$136
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$139
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$140
EQNEPRIB ecx,3
jbc STATUS,zf
EXTJMP @L$141
EQNEPRIB ecx,4
jbc STATUS,zf
EXTJMP @L$142
EQNEPRIB ecx,5
jbc STATUS,zf
EXTJMP @L$143
jmp @L$134
.stabn 192,0,1,L147
L147:
.stabn 68,0,144,L148
L148:
L$136:
.stabn 68,0,146,L149
L149:
clr _duty
.stabn 68,0,147,L150
L150:
LDA _PORT5,0,0
and a,@241
STA _PORT5,0,0
.stabn 68,0,148,L151
L151:
LDA _PORT6,0,0
and a,@248
STA _PORT6,0,0
.stabn 68,0,149,L152
L152:
bc _P50,0
.stabn 68,0,150,L153
L153:
EQNEPRIB _keyCount,0
jbs STATUS,zf
EXTJMP @L$135
.stabn 68,0,151,L154
L154:
call _gotoSleep
.stabn 68,0,152,L155
L155:
jmp @L$135
L$139:
.stabn 68,0,154,L156
L156:
mov a,@9
STA _duty,0,0
.stabn 68,0,155,L157
L157:
bs _P51,1
.stabn 68,0,156,L158
L158:
jmp @L$135
L$140:
.stabn 68,0,158,L159
L159:
mov a,@11
STA _duty,0,0
.stabn 68,0,159,L160
L160:
bs _P52,2
.stabn 68,0,160,L161
L161:
jmp @L$135
L$141:
.stabn 68,0,162,L162
L162:
mov a,@14
STA _duty,0,0
.stabn 68,0,163,L163
L163:
bs _P53,3
.stabn 68,0,164,L164
L164:
jmp @L$135
L$142:
.stabn 68,0,166,L165
L165:
mov a,@19
STA _duty,0,0
.stabn 68,0,167,L166
L166:
bs _P60,0
.stabn 68,0,168,L167
L167:
jmp @L$135
L$143:
.stabn 68,0,170,L168
L168:
mov a,@45
STA _duty,0,0
.stabn 68,0,171,L169
L169:
bs _P61,1
.stabn 68,0,172,L170
L170:
.stabn 68,0,174,L171
L171:
.stabn 224,0,1,L172
L172:
L$134:
L$135:
.stabn 68,0,176,L173
L173:
.stabn 224,0,0,L174
L174:
L$133:
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
.stabn 192,0,0,L186
L186:
.stabn 68,0,180,L187
L187:
.stabn 68,0,181,L188
L188:
EQNEPRIB keyRead_bp+0,0
jbc STATUS,zf
EXTJMP @L$176
.stabn 192,0,1,L189
L189:
.stabn 68,0,182,L190
L190:
.stabn 68,0,183,L191
L191:
LDA _keyCount,0,0
add a,@1
STA _keyCount,0,0
.stabn 68,0,184,L192
L192:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$177
.stabn 192,0,2,L193
L193:
.stabn 68,0,185,L194
L194:
.stabn 68,0,186,L195
L195:
mov a,@200
STA _keyCount,0,0
.stabn 68,0,187,L196
L196:
jbc _longPressFlag,1
EXTJMP @L$177
.stabn 192,0,3,L197
L197:
.stabn 68,0,188,L198
L198:
.stabn 68,0,189,L199
L199:
bs _longPressFlag,1
.stabn 68,0,190,L200
L200:
mov a,@2
mov eax,a
jmp @L$175
.stabn 68,0,191,L201
L201:
.stabn 224,0,3,L202
L202:
.stabn 68,0,192,L203
L203:
.stabn 224,0,2,L204
L204:
.stabn 68,0,193,L205
L205:
.stabn 224,0,1,L206
L206:
L$176:
.stabn 192,0,1,L207
L207:
.stabn 68,0,195,L208
L208:
.stabn 68,0,196,L209
L209:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$182
.stabn 192,0,2,L210
L210:
.stabn 68,0,197,L211
L211:
.stabn 68,0,198,L212
L212:
clr _keyCount
.stabn 68,0,199,L213
L213:
bc _longPressFlag,1
.stabn 68,0,200,L214
L214:
mov a,@0
mov eax,a
jmp @L$175
.stabn 68,0,201,L215
L215:
.stabn 224,0,2,L216
L216:
L$182:
.stabn 68,0,202,L217
L217:
ULTRIB _keyCount,0x8
jbs STATUS, cf
EXTJMP L$184
.stabn 192,0,2,L218
L218:
.stabn 68,0,203,L219
L219:
.stabn 68,0,204,L220
L220:
clr _keyCount
.stabn 68,0,205,L221
L221:
mov a,@1
mov eax,a
jmp @L$175
.stabn 68,0,206,L222
L222:
.stabn 224,0,2,L223
L223:
L$184:
.stabn 68,0,207,L224
L224:
clr _keyCount
.stabn 68,0,208,L225
L225:
.stabn 224,0,1,L226
L226:
L$177:
.stabn 68,0,209,L227
L227:
mov a,@0
mov eax,a
.stabn 68,0,210,L228
L228:
.stabn 224,0,0,L229
L229:
L$175:
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
.stabn 192,0,0,L231
L231:
.stabn 68,0,213,L232
L232:
.stabn 68,0,214,L233
L233:
bc _P65,5
.stabn 68,0,215,L234
L234:
bc _P50,0
.stabn 68,0,216,L235
L235:
LDA _PORT5,0,0
and a,@241
STA _PORT5,0,0
.stabn 68,0,217,L236
L236:
LDA _PORT6,0,0
and a,@248
STA _PORT6,0,0
.stabn 68,0,218,L237
L237:
clr _count900s
.stabn 68,0,219,L238
L238:
clr _workStep
.stabn 68,0,220,L239
L239:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,221,L240
L240:
mov a,@128
STA _ICIECR,0,0
.stabn 68,0,222,L241
L241:
mov a,@2
STA _IMR,0,2
.stabn 68,0,223,L242
L242:
LDA _ISR,0,0
and a,@240
STA _ISR,0,0
.stabn 68,0,224,L243
L243:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(224):"
disi
.stabn 68,0,224,L244
L244:
.stabn 68,0,225,L245
L245:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(225):"
slep
.stabn 68,0,225,L246
L246:
.stabn 68,0,226,L247
L247:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(226):"
eni
.stabn 68,0,226,L248
L248:
.stabn 68,0,227,L249
L249:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,228,L250
L250:
clr _ICIECR
.stabn 68,0,229,L251
L251:
clr _ISR
.stabn 68,0,230,L252
L252:
mov a,@1
STA _IMR,0,2
.stabn 68,0,231,L253
L253:
.stabn 224,0,0,L254
L254:
L$230:
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
.stabn 192,0,0,L256
L256:
.stabn 68,0,235,L257
L257:
.stabn 68,0,237,L258
L258:
clr _PORT5
.stabn 68,0,238,L259
L259:
mov a,@0
STA _P5CR,0,2
.stabn 68,0,239,L260
L260:
clr _PORT6
.stabn 68,0,240,L261
L261:
mov a,@144
STA _P6CR,0,2
.stabn 68,0,241,L262
L262:
mov a,@127
STA _PHCR,0,2
.stabn 68,0,242,L263
L263:
mov a,@255
STA _PHDCR,0,2
.stabn 68,0,244,L264
L264:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(244):"
mov	a,@0x02
.stabn 68,0,245,L265
L265:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(245):"
contw
.stabn 68,0,247,L266
L266:
.stabn 224,0,0,L267
L267:
L$255:
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
.stabn 192,0,0,L273
L273:
.stabn 68,0,251,L274
L274:
.stabn 68,0,254,L275
L275:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(254):"
MOV 0x3D,A ;保存 A
.stabn 68,0,255,L276
L276:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(255):"
MOV A,0x03
.stabn 68,0,256,L277
L277:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(256):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,257,L278
L278:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(257):"
MOV A,0x04
.stabn 68,0,258,L279
L279:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(258):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,261,L280
L280:
jbs _TCIF,0
EXTJMP @L$269
.stabn 192,0,1,L281
L281:
.stabn 68,0,262,L282
L282:
.stabn 68,0,264,L283
L283:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,265,L284
L284:
LDA _TCC,0,0
add a,@206
STA _TCC,0,0
.stabn 68,0,267,L285
L285:
LDA _intCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _intCount,0,0
ULTRIB ecx,0x64
jbs STATUS, cf
EXTJMP L$271
.stabn 192,0,2,L286
L286:
.stabn 68,0,268,L287
L287:
.stabn 68,0,269,L288
L288:
clr _intCount
.stabn 68,0,270,L289
L289:
bs _IntFlag,0
.stabn 68,0,274,L290
L290:
.stabn 224,0,2,L291
L291:
L$271:
.stabn 68,0,277,L292
L292:
.stabn 224,0,1,L293
L293:
L$269:
.stabn 68,0,281,L294
L294:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(281):"
MOV A,0x3F ;返回 R4
.stabn 68,0,282,L295
L295:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(282):"
MOV 0x04,A
.stabn 68,0,283,L296
L296:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(283):"
MOV A,0x3E ;返回 R3
.stabn 68,0,284,L297
L297:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(284):"
MOV 0x03,A
.stabn 68,0,285,L298
L298:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(285):"
SWAP 0x3D  ;返回 A
.stabn 68,0,286,L299
L299:
.cfile "C:\mcuproject\xj\S2_V3_1101B_SOP14\PWM.c(286):"
SWAPA 0x3D
.stabn 68,0,288,L300
L300:
.stabn 224,0,0,L301
L301:
L$268:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S7",C_CODE
.SYMDEF ".S7" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L303
L303:
.stabn 68,0,293,L304
L304:
.stabn 68,0,295,L305
L305:
.stabn 224,0,0,L306
L306:
L$302:
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
