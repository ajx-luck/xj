.autoimport
EM78P153B EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c",100,0,3,0
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
public _duty
.align 1
_duty:
.SYMDEF "_duty" LEN:2
dw 0x0
.stabs "duty:G13",32,0,0,_duty
public _intCount
.align 1
_intCount:
.SYMDEF "_intCount" LEN:1
db 0x0
.stabs "intCount:G10",32,0,0,_intCount
public _count500ms
.align 1
_count500ms:
.SYMDEF "_count500ms" LEN:1
db 0x0
.stabs "count500ms:G10",32,0,0,_count500ms
public _keyCount
.align 1
_keyCount:
.SYMDEF "_keyCount" LEN:1
db 0x0
.stabs "keyCount:G10",32,0,0,_keyCount
public _workStep
.align 1
_workStep:
.SYMDEF "_workStep" LEN:1
db 0x0
.stabs "workStep:G10",32,0,0,_workStep
public _ledStep
.align 1
_ledStep:
.SYMDEF "_ledStep" LEN:1
db 0x0
.stabs "ledStep:G10",32,0,0,_ledStep
public _main
public main_bp
.section ".code"
.stabs "main:F15",36,0,0,_main
.section ".S0",C_CODE
.SYMDEF ".S0" 
_main:
.SYMDEF "_main" 
.stabs "i:14",128,0,0,main_bp-1
.stabn 192,0,0,L9
L9:
.stabn 68,0,42,L11
L11:
.stabn 68,0,46,L12
L12:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(46):"
wdtc
.stabn 68,0,46,L13
L13:
.stabn 68,0,47,L14
L14:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(47):"
disi
.stabn 68,0,47,L15
L15:
.stabn 68,0,48,L16
L16:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,50,L17
L17:
call _IO_Init
.stabn 68,0,52,L18
L18:
mov a,@6
STA _TCC,0,0
.stabn 68,0,53,L19
L19:
clr _ISR
.stabn 68,0,54,L20
L20:
mov a,@1
STA _IMR,0,2
.stabn 68,0,56,L21
L21:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(56):"
eni
.stabn 68,0,56,L22
L22:
jmp @L$3
L$2:
.stabn 192,0,1,L23
L23:
.stabn 68,0,60,L24
L24:
.stabn 68,0,61,L25
L25:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(61):"
wdtc
.stabn 68,0,61,L26
L26:
.stabn 68,0,62,L27
L27:
jbc _IntFlag,0
EXTJMP @L$5
.stabn 68,0,63,L28
L28:
jmp @L$3
L$5:
.stabn 68,0,64,L29
L29:
bc _IntFlag,0
.stabn 68,0,65,L30
L30:
call _chrgCtr
.stabn 68,0,66,L31
L31:
EQNEPRIB _count500ms,0
jbs STATUS,zf
EXTJMP @L$7
.stabn 192,0,2,L32
L32:
.stabn 68,0,67,L33
L33:
.stabn 68,0,68,L34
L34:
call _ledCtr
.stabn 68,0,69,L35
L35:
.stabn 224,0,2,L36
L36:
L$7:
.stabn 68,0,70,L37
L37:
call _workCtr
.stabn 68,0,71,L38
L38:
.stabn 224,0,1,L39
L39:
L$3:
.stabn 68,0,59,L40
L40:
jmp @L$2
.stabn 68,0,73,L41
L41:
.stabn 224,0,0,L42
L42:
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
.stabn 192,0,0,L48
L48:
.stabn 68,0,77,L49
L49:
.stabn 68,0,78,L50
L50:
LDA _duty,0,0
mov ecx,a
LDA _duty,1,0
mov ecx+1,a
mov a,@.b0.1
add a, ecx
mov ecx, a
jbc STATUS,cf
inc ecx+1
mov a,ecx+1
add a, @.b1.1
mov ecx+1,a
mov a,ecx
STA _duty,0,0
mov a,ecx+1
STA _duty,1,0
UGTRIW ecx,0x78
jbc STATUS, cf
EXTJMP L$44
.stabn 68,0,79,L51
L51:
mov a,@.b0.120
STA _duty,0,0
clr _duty+1
L$44:
.stabn 68,0,80,L52
L52:
ULTRIW _duty,0x78
jbc STATUS, cf
EXTJMP L$46
.stabn 68,0,81,L53
L53:
LDA _duty,0,0
mov ecx,a
LDA _duty,1,0
mov ecx+1,a
mov a,ecx
STA _PDC1,0,0
L$46:
.stabn 68,0,82,L54
L54:
.stabn 224,0,0,L55
L55:
L$43:
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
public _ledCtr
public ledCtr_bp
.stabs "ledCtr:F15",36,0,0,_ledCtr
.section ".S2",C_CODE
.SYMDEF ".S2" 
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
.stabn 192,0,0,L74
L74:
.stabn 68,0,85,L75
L75:
.stabn 68,0,86,L76
L76:
EQNEPRIB _ledStep,0
jbc STATUS,zf
EXTJMP @L$57
.stabn 192,0,1,L77
L77:
.stabn 68,0,87,L78
L78:
.stabn 68,0,89,L79
L79:
EQNEPRIB _ledStep,4
jbs STATUS,zf
EXTJMP @L$59
.stabn 192,0,2,L80
L80:
.stabn 68,0,90,L81
L81:
.stabn 68,0,91,L82
L82:
bs _P61,1
.stabn 68,0,92,L83
L83:
.stabn 224,0,2,L84
L84:
jmp @L$60
L$59:
.stabn 68,0,93,L85
L85:
EQNEPRIB _ledStep,3
jbs STATUS,zf
EXTJMP @L$61
.stabn 192,0,2,L86
L86:
.stabn 68,0,94,L87
L87:
.stabn 68,0,95,L88
L88:
bs _P60,0
.stabn 68,0,96,L89
L89:
.stabn 224,0,2,L90
L90:
jmp @L$62
L$61:
.stabn 68,0,97,L91
L91:
EQNEPRIB _ledStep,2
jbs STATUS,zf
EXTJMP @L$63
.stabn 192,0,2,L92
L92:
.stabn 68,0,98,L93
L93:
.stabn 68,0,99,L94
L94:
bs _P66,6
.stabn 68,0,100,L95
L95:
.stabn 224,0,2,L96
L96:
jmp @L$64
L$63:
.stabn 68,0,101,L97
L97:
EQNEPRIB _ledStep,1
jbs STATUS,zf
EXTJMP @L$65
.stabn 192,0,2,L98
L98:
.stabn 68,0,102,L99
L99:
.stabn 68,0,103,L100
L100:
bs _P65,5
.stabn 68,0,104,L101
L101:
.stabn 224,0,2,L102
L102:
L$65:
L$64:
L$62:
L$60:
.stabn 68,0,105,L103
L103:
DECMB _ledStep,0
.stabn 68,0,107,L104
L104:
.stabn 224,0,1,L105
L105:
jmp @L$58
L$57:
.stabn 192,0,1,L106
L106:
.stabn 68,0,109,L107
L107:
.stabn 68,0,110,L108
L108:
LDA _workStep,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$69
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$70
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$71
EQNEPRIB ecx,3
jbc STATUS,zf
EXTJMP @L$72
EQNEPRIB ecx,4
jbc STATUS,zf
EXTJMP @L$73
jmp @L$67
.stabn 192,0,2,L109
L109:
.stabn 68,0,111,L110
L110:
L$69:
.stabn 68,0,113,L111
L111:
bc _P60,0
.stabn 68,0,114,L112
L112:
bc _P61,1
.stabn 68,0,115,L113
L113:
bc _P65,5
.stabn 68,0,116,L114
L114:
bc _P66,6
.stabn 68,0,117,L115
L115:
jmp @L$68
L$70:
.stabn 68,0,119,L116
L116:
bs _P61,1
.stabn 68,0,120,L117
L117:
bc _P60,0
.stabn 68,0,121,L118
L118:
bc _P66,6
.stabn 68,0,122,L119
L119:
bc _P65,5
.stabn 68,0,123,L120
L120:
jmp @L$68
L$71:
.stabn 68,0,125,L121
L121:
bs _P60,0
.stabn 68,0,126,L122
L122:
jmp @L$68
L$72:
.stabn 68,0,128,L123
L123:
bs _P66,6
.stabn 68,0,129,L124
L124:
jmp @L$68
L$73:
.stabn 68,0,131,L125
L125:
bs _P65,5
.stabn 68,0,132,L126
L126:
.stabn 68,0,133,L127
L127:
.stabn 224,0,2,L128
L128:
L$67:
L$68:
.stabn 68,0,134,L129
L129:
.stabn 224,0,1,L130
L130:
L$58:
.stabn 68,0,136,L131
L131:
.stabn 224,0,0,L132
L132:
L$56:
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
public _keyCtr
public keyCtr_bp
.stabs "keyCtr:F15",36,0,0,_keyCtr
.section ".S3",C_CODE
.SYMDEF ".S3" 
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
.stabn 192,0,0,L142
L142:
.stabn 68,0,140,L143
L143:
.stabn 68,0,141,L144
L144:
call _keyRead
mov a,eax
STA keyCtr_bp-5,0,0
.stabn 68,0,142,L145
L145:
EQNEPRIB keyCtr_bp-5,1
jbs STATUS,zf
EXTJMP @L$134
EQNEPRIB _workStep,0
jbc STATUS, zf
EXTJMP L$134
.stabn 192,0,1,L146
L146:
.stabn 68,0,143,L147
L147:
.stabn 68,0,144,L148
L148:
clr _count500ms
.stabn 68,0,145,L149
L149:
LDA _workStep,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _workStep,0,0
UGTRIB ecx,0x4
jbc STATUS, cf
EXTJMP L$136
.stabn 68,0,146,L150
L150:
mov a,@1
STA _workStep,0,0
L$136:
.stabn 68,0,147,L151
L151:
call _PWM_Init
.stabn 68,0,148,L152
L152:
mov a,@.b0.1
STA _duty,0,0
clr _duty+1
.stabn 68,0,150,L153
L153:
.stabn 224,0,1,L154
L154:
jmp @L$135
L$134:
.stabn 68,0,151,L155
L155:
EQNEPRIB keyCtr_bp-5,2
jbs STATUS,zf
EXTJMP @L$138
.stabn 192,0,1,L156
L156:
.stabn 68,0,152,L157
L157:
.stabn 68,0,153,L158
L158:
EQNEPRIB _workStep,0
jbc STATUS, zf
EXTJMP L$140
.stabn 192,0,2,L159
L159:
.stabn 68,0,154,L160
L160:
.stabn 68,0,155,L161
L161:
clr _workStep
.stabn 68,0,156,L162
L162:
call _PWM_Stop
.stabn 68,0,157,L163
L163:
.stabn 224,0,2,L164
L164:
jmp @L$141
L$140:
.stabn 192,0,2,L165
L165:
.stabn 68,0,159,L166
L166:
.stabn 68,0,160,L167
L167:
mov a,@1
STA _workStep,0,0
.stabn 68,0,161,L168
L168:
mov a,@4
STA _ledStep,0,0
.stabn 68,0,162,L169
L169:
clr _count500ms
.stabn 68,0,163,L170
L170:
call _PWM_Init
.stabn 68,0,164,L171
L171:
mov a,@.b0.1
STA _duty,0,0
clr _duty+1
.stabn 68,0,165,L172
L172:
.stabn 224,0,2,L173
L173:
L$141:
.stabn 68,0,167,L174
L174:
.stabn 224,0,1,L175
L175:
L$138:
L$135:
.stabn 68,0,168,L176
L176:
.stabn 224,0,0,L177
L177:
L$133:
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
.stabn 192,0,0,L189
L189:
.stabn 68,0,172,L190
L190:
.stabn 68,0,173,L191
L191:
jbc _P67,7
EXTJMP @L$179
.stabn 192,0,1,L192
L192:
.stabn 68,0,174,L193
L193:
.stabn 68,0,175,L194
L194:
LDA _keyCount,0,0
add a,@1
STA _keyCount,0,0
.stabn 68,0,176,L195
L195:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$180
.stabn 192,0,2,L196
L196:
.stabn 68,0,177,L197
L197:
.stabn 68,0,178,L198
L198:
mov a,@200
STA _keyCount,0,0
.stabn 68,0,179,L199
L199:
jbc _longPressFlag,1
EXTJMP @L$180
.stabn 192,0,3,L200
L200:
.stabn 68,0,180,L201
L201:
.stabn 68,0,181,L202
L202:
bs _longPressFlag,1
.stabn 68,0,182,L203
L203:
mov a,@2
mov eax,a
jmp @L$178
.stabn 68,0,183,L204
L204:
.stabn 224,0,3,L205
L205:
.stabn 68,0,184,L206
L206:
.stabn 224,0,2,L207
L207:
.stabn 68,0,185,L208
L208:
.stabn 224,0,1,L209
L209:
L$179:
.stabn 192,0,1,L210
L210:
.stabn 68,0,187,L211
L211:
.stabn 68,0,188,L212
L212:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$185
.stabn 192,0,2,L213
L213:
.stabn 68,0,189,L214
L214:
.stabn 68,0,190,L215
L215:
clr _keyCount
.stabn 68,0,191,L216
L216:
bc _longPressFlag,1
.stabn 68,0,192,L217
L217:
mov a,@0
mov eax,a
jmp @L$178
.stabn 68,0,193,L218
L218:
.stabn 224,0,2,L219
L219:
L$185:
.stabn 68,0,194,L220
L220:
ULTRIB _keyCount,0x8
jbs STATUS, cf
EXTJMP L$187
.stabn 192,0,2,L221
L221:
.stabn 68,0,195,L222
L222:
.stabn 68,0,196,L223
L223:
clr _keyCount
.stabn 68,0,197,L224
L224:
mov a,@1
mov eax,a
jmp @L$178
.stabn 68,0,198,L225
L225:
.stabn 224,0,2,L226
L226:
L$187:
.stabn 68,0,199,L227
L227:
clr _keyCount
.stabn 68,0,200,L228
L228:
.stabn 224,0,1,L229
L229:
L$180:
.stabn 68,0,201,L230
L230:
mov a,@0
mov eax,a
.stabn 68,0,202,L231
L231:
.stabn 224,0,0,L232
L232:
L$178:
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
public _chrgCtr
public chrgCtr_bp
.stabs "chrgCtr:F15",36,0,0,_chrgCtr
.section ".S5",C_CODE
.SYMDEF ".S5" 
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
.stabn 192,0,0,L241
L241:
.stabn 68,0,207,L242
L242:
.stabn 68,0,208,L243
L243:
jbs _P50,0
EXTJMP @L$234
.stabn 192,0,1,L244
L244:
.stabn 68,0,209,L245
L245:
.stabn 68,0,211,L246
L246:
jbs _P50,0
EXTJMP @L$236
.stabn 192,0,2,L247
L247:
.stabn 68,0,212,L248
L248:
.stabn 68,0,214,L249
L249:
bs _P51,1
.stabn 68,0,215,L250
L250:
bc _P53,3
.stabn 68,0,216,L251
L251:
.stabn 224,0,2,L252
L252:
jmp @L$235
L$236:
.stabn 192,0,2,L253
L253:
.stabn 68,0,218,L254
L254:
.stabn 68,0,219,L255
L255:
bc _P51,1
.stabn 68,0,221,L256
L256:
jbc _P53,3
EXTJMP @L$239
mov a,@1
STA chrgCtr_bp-5,0,0
jmp @L$240
L$239:
clr chrgCtr_bp-5
L$240:
LDA chrgCtr_bp-5,0,0
mov ecx,a
bc _P53,3
jbc ecx,0
bs _P53,3
.stabn 68,0,222,L257
L257:
.stabn 224,0,2,L258
L258:
.stabn 68,0,223,L259
L259:
.stabn 224,0,1,L260
L260:
jmp @L$235
L$234:
.stabn 192,0,1,L261
L261:
.stabn 68,0,225,L262
L262:
.stabn 68,0,226,L263
L263:
bc _P51,1
.stabn 68,0,227,L264
L264:
bc _P53,3
.stabn 68,0,228,L265
L265:
call _keyCtr
.stabn 68,0,229,L266
L266:
.stabn 224,0,1,L267
L267:
L$235:
.stabn 68,0,230,L268
L268:
.stabn 224,0,0,L269
L269:
L$233:
mov a,chrgCtr_bp-4
mov ecx,a
mov a,chrgCtr_bp-3
mov ecx+1,a
mov a,chrgCtr_bp-2
mov ecx+2,a
mov a,chrgCtr_bp-1
mov ecx+3,a
ret
.STACK chrgCtr_bp,local,5
public _PWM_Init
public PWM_Init_bp
.stabs "PWM_Init:F15",36,0,0,_PWM_Init
.section ".S6",C_CODE
.SYMDEF ".S6" 
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
.stabn 192,0,0,L271
L271:
.stabn 68,0,233,L272
L272:
.stabn 68,0,235,L273
L273:
mov a,@128
STA _PRD,0,0
.stabn 68,0,236,L274
L274:
mov a,@1
STA _PDC1,0,0
.stabn 68,0,237,L275
L275:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,238,L276
L276:
mov a,@25
STA _PWMCON,0,0
.stabn 68,0,239,L277
L277:
.stabn 224,0,0,L278
L278:
L$270:
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
.section ".S7",C_CODE
.SYMDEF ".S7" 
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
.stabn 192,0,0,L280
L280:
.stabn 68,0,242,L281
L281:
.stabn 68,0,243,L282
L282:
clr _PWMCON
.stabn 68,0,244,L283
L283:
.stabn 224,0,0,L284
L284:
L$279:
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
public _IO_Init
public IO_Init_bp
.stabs "IO_Init:F15",36,0,0,_IO_Init
.section ".S8",C_CODE
.SYMDEF ".S8" 
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
.stabn 192,0,0,L286
L286:
.stabn 68,0,248,L287
L287:
.stabn 68,0,250,L288
L288:
clr _PORT5
.stabn 68,0,251,L289
L289:
mov a,@5
STA _P5CR,0,2
.stabn 68,0,252,L290
L290:
clr _PORT6
.stabn 68,0,253,L291
L291:
mov a,@144
STA _P6CR,0,2
.stabn 68,0,254,L292
L292:
mov a,@254
STA _PDCR,0,2
.stabn 68,0,255,L293
L293:
mov a,@127
STA _PHCR,0,2
.stabn 68,0,257,L294
L294:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(257):"
mov	a,@0x03
.stabn 68,0,258,L295
L295:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(258):"
contw
.stabn 68,0,260,L296
L296:
.stabn 224,0,0,L297
L297:
L$285:
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
.section ".S9",C_CODE
.SYMDEF ".S9" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L305
L305:
.stabn 68,0,264,L306
L306:
.stabn 68,0,267,L307
L307:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(267):"
MOV 0x3D,A ;保存 A
.stabn 68,0,268,L308
L308:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(268):"
MOV A,0x03
.stabn 68,0,269,L309
L309:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(269):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,270,L310
L310:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(270):"
MOV A,0x04
.stabn 68,0,271,L311
L311:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(271):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,274,L312
L312:
jbs _TCIF,0
EXTJMP @L$299
.stabn 192,0,1,L313
L313:
.stabn 68,0,275,L314
L314:
.stabn 68,0,277,L315
L315:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,278,L316
L316:
LDA _TCC,0,0
add a,@6
STA _TCC,0,0
.stabn 68,0,279,L317
L317:
LDA _intCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _intCount,0,0
ULTRIB ecx,0xa
jbs STATUS, cf
EXTJMP L$301
.stabn 192,0,2,L318
L318:
.stabn 68,0,280,L319
L319:
.stabn 68,0,281,L320
L320:
clr _intCount
.stabn 68,0,282,L321
L321:
bs _IntFlag,0
.stabn 68,0,283,L322
L322:
LDA _count500ms,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _count500ms,0,0
ULTRIB ecx,0x32
jbs STATUS, cf
EXTJMP L$303
.stabn 68,0,284,L323
L323:
clr _count500ms
L$303:
.stabn 68,0,285,L324
L324:
.stabn 224,0,2,L325
L325:
L$301:
.stabn 68,0,287,L326
L326:
.stabn 224,0,1,L327
L327:
L$299:
.stabn 68,0,291,L328
L328:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(291):"
MOV A,0x3F ;返回 R4
.stabn 68,0,292,L329
L329:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(292):"
MOV 0x04,A
.stabn 68,0,293,L330
L330:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(293):"
MOV A,0x3E ;返回 R3
.stabn 68,0,294,L331
L331:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(294):"
MOV 0x03,A
.stabn 68,0,295,L332
L332:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(295):"
SWAP 0x3D  ;返回 A
.stabn 68,0,296,L333
L333:
.cfile "C:\mcuproject\xj\X8P1101B_PWM_Demo\PWM.c(296):"
SWAPA 0x3D
.stabn 68,0,298,L334
L334:
.stabn 224,0,0,L335
L335:
L$298:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S10",C_CODE
.SYMDEF ".S10" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L337
L337:
.stabn 68,0,303,L338
L338:
.stabn 68,0,305,L339
L339:
.stabn 224,0,0,L340
L340:
L$336:
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
.stabs "u16t:t13",128,0,0,0
.stabs "u8t:t10",128,0,0,0
.section ".code"
end
