.autoimport
EM78P153B EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\mcuproject\xj\s18_1001B_sop8\PWM.c",100,0,3,0
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
public _chrgFlag
.align 1
_chrgFlag:
.SYMDEF "_chrgFlag" LEN:1
db 0x0
.stabs "chrgFlag:G10",32,0,0,_chrgFlag
public _motorFlag
.align 1
_motorFlag:
.SYMDEF "_motorFlag" LEN:1
db 0x0
.stabs "motorFlag:G10",32,0,0,_motorFlag
public _motorCount
.align 1
_motorCount:
.SYMDEF "_motorCount" LEN:1
db 0x0
.stabs "motorCount:G10",32,0,0,_motorCount
public _duty
.align 1
_duty:
.SYMDEF "_duty" LEN:1
db 0x0
.stabs "duty:G10",32,0,0,_duty
public _breathCount
.align 1
_breathCount:
.SYMDEF "_breathCount" LEN:2
dw 0x0
.stabs "breathCount:G13",32,0,0,_breathCount
public _main
public main_bp
.section ".code"
.stabs "main:F15",36,0,0,_main
.section ".S0",C_CODE
.SYMDEF ".S0" 
_main:
.SYMDEF "_main" 
.stabs "i:14",128,0,0,main_bp-1
.stabn 192,0,0,L15
L15:
.stabn 68,0,43,L17
L17:
.stabn 68,0,47,L18
L18:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(47):"
wdtc
.stabn 68,0,47,L19
L19:
.stabn 68,0,48,L20
L20:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(48):"
disi
.stabn 68,0,48,L21
L21:
.stabn 68,0,49,L22
L22:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,51,L23
L23:
call _IO_Init
.stabn 68,0,53,L24
L24:
mov a,@206
STA _TCC,0,0
.stabn 68,0,54,L25
L25:
clr _ISR
.stabn 68,0,55,L26
L26:
mov a,@1
STA _IMR,0,2
.stabn 68,0,57,L27
L27:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(57):"
eni
.stabn 68,0,57,L28
L28:
jmp @L$3
L$2:
.stabn 192,0,1,L29
L29:
.stabn 68,0,62,L30
L30:
.stabn 68,0,63,L31
L31:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(63):"
wdtc
.stabn 68,0,63,L32
L32:
.stabn 68,0,64,L33
L33:
EQNEPRIB _chrgFlag,0
jbc STATUS,zf
EXTJMP @L$5
.stabn 68,0,65,L34
L34:
call _ledBreath
L$5:
.stabn 68,0,66,L35
L35:
EQNEPRIB _motorFlag,0
jbc STATUS,zf
EXTJMP @L$7
.stabn 192,0,2,L36
L36:
.stabn 68,0,67,L37
L37:
.stabn 68,0,68,L38
L38:
call _motorWork2
.stabn 68,0,69,L39
L39:
.stabn 224,0,2,L40
L40:
L$7:
.stabn 68,0,70,L41
L41:
jbc _IntFlag,0
EXTJMP @L$9
.stabn 68,0,71,L42
L42:
jmp @L$3
L$9:
.stabn 68,0,72,L43
L43:
bc _IntFlag,0
.stabn 68,0,73,L44
L44:
call _keyCtr
.stabn 68,0,74,L45
L45:
jbs _P62,2
EXTJMP @L$11
.stabn 68,0,75,L46
L46:
call _chrgCtr
jmp @L$12
L$11:
.stabn 192,0,2,L47
L47:
.stabn 68,0,77,L48
L48:
.stabn 68,0,78,L49
L49:
clr _chrgFlag
.stabn 68,0,79,L50
L50:
call _workCtr
.stabn 68,0,80,L51
L51:
.stabn 224,0,2,L52
L52:
L$12:
.stabn 68,0,81,L53
L53:
EQNEPRIB _chrgFlag,0
jbc STATUS,zf
EXTJMP @L$13
.stabn 68,0,82,L54
L54:
call _breathCtr
L$13:
.stabn 68,0,84,L55
L55:
.stabn 224,0,1,L56
L56:
L$3:
.stabn 68,0,61,L57
L57:
jmp @L$2
.stabn 68,0,85,L58
L58:
.stabn 224,0,0,L59
L59:
L$1:
ret
.STACK main_bp,local,1
public _ledBreath
public ledBreath_bp
.stabs "ledBreath:F15",36,0,0,_ledBreath
.section ".S1",C_CODE
.SYMDEF ".S1" 
_ledBreath:
.SYMDEF "_ledBreath" 
mov a,ecx
mov ledBreath_bp-4,a
mov a,ecx+1
mov ledBreath_bp-3,a
mov a,ecx+2
mov ledBreath_bp-2,a
mov a,ecx+3
mov ledBreath_bp-1,a
.stabn 192,0,0,L65
L65:
.stabn 68,0,90,L66
L66:
.stabn 68,0,91,L67
L67:
ULTRRB _ledCount,_duty
jbs STATUS,cf
EXTJMP @L$61
.stabn 192,0,1,L68
L68:
.stabn 68,0,92,L69
L69:
.stabn 68,0,93,L70
L70:
bs _P63,3
.stabn 68,0,94,L71
L71:
.stabn 224,0,1,L72
L72:
jmp @L$62
L$61:
.stabn 192,0,1,L73
L73:
.stabn 68,0,96,L74
L74:
.stabn 68,0,97,L75
L75:
bc _P63,3
.stabn 68,0,98,L76
L76:
.stabn 224,0,1,L77
L77:
L$62:
.stabn 68,0,99,L78
L78:
LDA _ledCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _ledCount,0,0
UGTRIB ecx,0x64
jbc STATUS, cf
EXTJMP L$63
.stabn 68,0,100,L79
L79:
clr _ledCount
L$63:
.stabn 68,0,101,L80
L80:
.stabn 224,0,0,L81
L81:
L$60:
mov a,ledBreath_bp-4
mov ecx,a
mov a,ledBreath_bp-3
mov ecx+1,a
mov a,ledBreath_bp-2
mov ecx+2,a
mov a,ledBreath_bp-1
mov ecx+3,a
ret
.STACK ledBreath_bp,local,4
public _breathCtr
public breathCtr_bp
.stabs "breathCtr:F15",36,0,0,_breathCtr
.section ".S2",C_CODE
.SYMDEF ".S2" 
_breathCtr:
.SYMDEF "_breathCtr" 
mov a,ecx
mov breathCtr_bp-4,a
mov a,ecx+1
mov breathCtr_bp-3,a
mov a,ecx+2
mov breathCtr_bp-2,a
mov a,ecx+3
mov breathCtr_bp-1,a
.stabn 192,0,0,L97
L97:
.stabn 68,0,106,L98
L98:
.stabn 68,0,107,L99
L99:
ULTRIW _breathCount,0xa
jbc STATUS, cf
EXTJMP L$83
.stabn 192,0,1,L100
L100:
.stabn 68,0,108,L101
L101:
.stabn 68,0,109,L102
L102:
clr _duty
.stabn 68,0,110,L103
L103:
.stabn 224,0,1,L104
L104:
jmp @L$84
L$83:
.stabn 68,0,111,L105
L105:
ULTRIW _breathCount,0xc8
jbc STATUS, cf
EXTJMP L$85
.stabn 192,0,1,L106
L106:
.stabn 68,0,112,L107
L107:
.stabn 68,0,113,L108
L108:
LDA _breathCount,0,0
mov ecx,a
LDA _breathCount,1,0
mov ecx+1,a
mov a,@.b0.1
and ecx,a
mov a,@.b1.1
and ecx+1,a
NEPRIW ecx,0,@L$86
ULTRIB _duty,0x64
jbc STATUS, cf
EXTJMP L$86
.stabn 68,0,114,L109
L109:
LDA _duty,0,0
add a,@1
STA _duty,0,0
.stabn 68,0,115,L110
L110:
.stabn 224,0,1,L111
L111:
jmp @L$86
L$85:
.stabn 68,0,116,L112
L112:
ULTRIW _breathCount,0xd2
jbc STATUS, cf
EXTJMP L$89
.stabn 192,0,1,L113
L113:
.stabn 68,0,117,L114
L114:
.stabn 68,0,118,L115
L115:
mov a,@101
STA _duty,0,0
.stabn 68,0,119,L116
L116:
.stabn 224,0,1,L117
L117:
jmp @L$90
L$89:
.stabn 68,0,120,L118
L118:
ULTRIW _breathCount,0x19a
jbc STATUS, cf
EXTJMP L$91
.stabn 192,0,1,L119
L119:
.stabn 68,0,121,L120
L120:
.stabn 68,0,122,L121
L121:
LDA _breathCount,0,0
mov ecx,a
LDA _breathCount,1,0
mov ecx+1,a
mov a,@.b0.1
and ecx,a
mov a,@.b1.1
and ecx+1,a
NEPRIW ecx,0,@L$93
EQNEPRIB _duty,0
jbc STATUS, zf
EXTJMP L$93
.stabn 68,0,123,L122
L122:
DECMB _duty,0
L$93:
.stabn 68,0,124,L123
L123:
.stabn 224,0,1,L124
L124:
L$91:
L$90:
L$86:
L$84:
.stabn 68,0,125,L125
L125:
LDA _breathCount,0,0
mov ecx,a
LDA _breathCount,1,0
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
STA _breathCount,0,0
mov a,ecx+1
STA _breathCount,1,0
UGTRIW ecx,0x19a
jbc STATUS, cf
EXTJMP L$95
.stabn 192,0,1,L126
L126:
.stabn 68,0,126,L127
L127:
.stabn 68,0,127,L128
L128:
clr _breathCount+1
clr _breathCount
.stabn 68,0,128,L129
L129:
.stabn 224,0,1,L130
L130:
L$95:
.stabn 68,0,129,L131
L131:
.stabn 224,0,0,L132
L132:
L$82:
mov a,breathCtr_bp-4
mov ecx,a
mov a,breathCtr_bp-3
mov ecx+1,a
mov a,breathCtr_bp-2
mov ecx+2,a
mov a,breathCtr_bp-1
mov ecx+3,a
ret
.STACK breathCtr_bp,local,4
public _chrgCtr
public chrgCtr_bp
.stabs "chrgCtr:F15",36,0,0,_chrgCtr
.section ".S3",C_CODE
.SYMDEF ".S3" 
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
.stabn 192,0,0,L136
L136:
.stabn 68,0,133,L137
L137:
.stabn 68,0,134,L138
L138:
clr _workStep
.stabn 68,0,135,L139
L139:
jbs _P65,5
EXTJMP @L$134
.stabn 192,0,1,L140
L140:
.stabn 68,0,136,L141
L141:
.stabn 68,0,137,L142
L142:
clr _chrgFlag
.stabn 68,0,138,L143
L143:
bs _P63,3
.stabn 68,0,139,L144
L144:
.stabn 224,0,1,L145
L145:
jmp @L$135
L$134:
.stabn 192,0,1,L146
L146:
.stabn 68,0,141,L147
L147:
.stabn 68,0,142,L148
L148:
mov a,@1
STA _chrgFlag,0,0
.stabn 68,0,143,L149
L149:
.stabn 224,0,1,L150
L150:
L$135:
.stabn 68,0,145,L151
L151:
.stabn 224,0,0,L152
L152:
L$133:
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
public _motorWork2
public motorWork2_bp
.stabs "motorWork2:F15",36,0,0,_motorWork2
.section ".S4",C_CODE
.SYMDEF ".S4" 
_motorWork2:
.SYMDEF "_motorWork2" 
mov a,ecx
mov motorWork2_bp-4,a
mov a,ecx+1
mov motorWork2_bp-3,a
mov a,ecx+2
mov motorWork2_bp-2,a
mov a,ecx+3
mov motorWork2_bp-1,a
.stabn 192,0,0,L158
L158:
.stabn 68,0,149,L159
L159:
.stabn 68,0,150,L160
L160:
UGTRIB _motorCount,0x1e
jbc STATUS, cf
EXTJMP L$154
.stabn 192,0,1,L161
L161:
.stabn 68,0,151,L162
L162:
.stabn 68,0,152,L163
L163:
bc _P60,0
.stabn 68,0,153,L164
L164:
.stabn 224,0,1,L165
L165:
jmp @L$155
L$154:
.stabn 192,0,1,L166
L166:
.stabn 68,0,155,L167
L167:
.stabn 68,0,156,L168
L168:
bs _P60,0
.stabn 68,0,157,L169
L169:
.stabn 224,0,1,L170
L170:
L$155:
.stabn 68,0,159,L171
L171:
LDA _motorCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _motorCount,0,0
UGTRIB ecx,0x64
jbc STATUS, cf
EXTJMP L$156
.stabn 68,0,160,L172
L172:
clr _motorCount
L$156:
.stabn 68,0,161,L173
L173:
.stabn 224,0,0,L174
L174:
L$153:
mov a,motorWork2_bp-4
mov ecx,a
mov a,motorWork2_bp-3
mov ecx+1,a
mov a,motorWork2_bp-2
mov ecx+2,a
mov a,motorWork2_bp-1
mov ecx+3,a
ret
.STACK motorWork2_bp,local,4
public _motorWork
public motorWork_bp
.stabs "motorWork:F15",36,0,0,_motorWork
.section ".S5",C_CODE
.SYMDEF ".S5" 
_motorWork:
.SYMDEF "_motorWork" 
mov a,ecx
mov motorWork_bp-4,a
mov a,ecx+1
mov motorWork_bp-3,a
mov a,ecx+2
mov motorWork_bp-2,a
mov a,ecx+3
mov motorWork_bp-1,a
.stabn 192,0,0,L180
L180:
.stabn 68,0,165,L181
L181:
.stabn 68,0,166,L182
L182:
UGTRIB _motorCount,0xc
jbc STATUS, cf
EXTJMP L$176
.stabn 192,0,1,L183
L183:
.stabn 68,0,167,L184
L184:
.stabn 68,0,168,L185
L185:
bc _P60,0
.stabn 68,0,169,L186
L186:
.stabn 224,0,1,L187
L187:
jmp @L$177
L$176:
.stabn 192,0,1,L188
L188:
.stabn 68,0,171,L189
L189:
.stabn 68,0,172,L190
L190:
bs _P60,0
.stabn 68,0,173,L191
L191:
.stabn 224,0,1,L192
L192:
L$177:
.stabn 68,0,175,L193
L193:
LDA _motorCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _motorCount,0,0
UGTRIB ecx,0x16
jbc STATUS, cf
EXTJMP L$178
.stabn 68,0,176,L194
L194:
clr _motorCount
L$178:
.stabn 68,0,177,L195
L195:
.stabn 224,0,0,L196
L196:
L$175:
mov a,motorWork_bp-4
mov ecx,a
mov a,motorWork_bp-3
mov ecx+1,a
mov a,motorWork_bp-2
mov ecx+2,a
mov a,motorWork_bp-1
mov ecx+3,a
ret
.STACK motorWork_bp,local,4
public _workCtr
public workCtr_bp
.stabs "workCtr:F15",36,0,0,_workCtr
.section ".S6",C_CODE
.SYMDEF ".S6" 
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
.stabn 192,0,0,L207
L207:
.stabn 68,0,181,L208
L208:
.stabn 68,0,182,L209
L209:
LDA _workStep,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$200
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$203
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$204
EQNEPRIB ecx,3
jbc STATUS,zf
EXTJMP @L$205
EQNEPRIB ecx,4
jbc STATUS,zf
EXTJMP @L$206
jmp @L$198
.stabn 192,0,1,L210
L210:
.stabn 68,0,183,L211
L211:
L$200:
.stabn 68,0,185,L212
L212:
clr _motorFlag
.stabn 68,0,186,L213
L213:
bs _P63,3
.stabn 68,0,187,L214
L214:
mov a,@15
STA _PWMCON,0,0
.stabn 68,0,188,L215
L215:
bc _P60,0
.stabn 68,0,189,L216
L216:
bc _P61,1
.stabn 68,0,190,L217
L217:
EQNEPRIB _keyCount,0
jbs STATUS,zf
EXTJMP @L$199
.stabn 68,0,191,L218
L218:
call _gotoSleep
.stabn 68,0,192,L219
L219:
jmp @L$199
L$203:
.stabn 68,0,194,L220
L220:
mov a,@1
STA _motorFlag,0,0
.stabn 68,0,195,L221
L221:
bc _P61,1
.stabn 68,0,196,L222
L222:
bc _P63,3
.stabn 68,0,197,L223
L223:
jmp @L$199
L$204:
.stabn 68,0,199,L224
L224:
clr _motorFlag
.stabn 68,0,200,L225
L225:
call _motorWork
.stabn 68,0,201,L226
L226:
bc _P61,1
.stabn 68,0,202,L227
L227:
bc _P63,3
.stabn 68,0,203,L228
L228:
jmp @L$199
L$205:
.stabn 68,0,205,L229
L229:
bc _P60,0
.stabn 68,0,206,L230
L230:
bs _P61,1
.stabn 68,0,207,L231
L231:
bc _P63,3
.stabn 68,0,208,L232
L232:
jmp @L$199
L$206:
.stabn 68,0,210,L233
L233:
bs _P60,0
.stabn 68,0,211,L234
L234:
bs _P61,1
.stabn 68,0,212,L235
L235:
bc _P63,3
.stabn 68,0,213,L236
L236:
.stabn 68,0,214,L237
L237:
.stabn 224,0,1,L238
L238:
L$198:
L$199:
.stabn 68,0,216,L239
L239:
.stabn 224,0,0,L240
L240:
L$197:
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
.section ".S7",C_CODE
.SYMDEF ".S7" 
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
.stabn 192,0,0,L242
L242:
.stabn 68,0,223,L243
L243:
.stabn 68,0,225,L244
L244:
mov a,@250
STA _PRD,0,0
.stabn 68,0,226,L245
L245:
mov a,@100
STA _PDC1,0,0
.stabn 68,0,227,L246
L246:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,228,L247
L247:
mov a,@207
STA _PWMCON,0,0
.stabn 68,0,229,L248
L248:
.stabn 224,0,0,L249
L249:
L$241:
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
.stabn 192,0,0,L251
L251:
.stabn 68,0,235,L252
L252:
.stabn 68,0,237,L253
L253:
clr _PORT6
.stabn 68,0,238,L254
L254:
mov a,@52
STA _P6CR,0,2
.stabn 68,0,239,L255
L255:
mov a,@239
STA _PHCR,0,2
.stabn 68,0,241,L256
L256:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(241):"
mov	a,@0x02
.stabn 68,0,242,L257
L257:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(242):"
contw
.stabn 68,0,244,L258
L258:
.stabn 224,0,0,L259
L259:
L$250:
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
.section ".S9",C_CODE
.SYMDEF ".S9" 
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
.stabn 192,0,0,L271
L271:
.stabn 68,0,247,L272
L272:
.stabn 68,0,248,L273
L273:
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
.stabn 68,0,250,L274
L274:
EQNEPRIB keyCtr_bp-5,1
jbs STATUS,zf
EXTJMP @L$261
.stabn 192,0,1,L275
L275:
.stabn 68,0,251,L276
L276:
.stabn 68,0,254,L277
L277:
EQNEPRIB _workStep,0
jbc STATUS, zf
EXTJMP L$262
.stabn 192,0,2,L278
L278:
.stabn 68,0,255,L279
L279:
.stabn 68,0,256,L280
L280:
LDA _workStep,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _workStep,0,0
UGTRIB ecx,0x4
jbc STATUS, cf
EXTJMP L$262
.stabn 68,0,257,L281
L281:
mov a,@1
STA _workStep,0,0
.stabn 68,0,258,L282
L282:
.stabn 224,0,2,L283
L283:
.stabn 68,0,260,L284
L284:
.stabn 224,0,1,L285
L285:
jmp @L$262
L$261:
.stabn 68,0,261,L286
L286:
EQNEPRIB keyCtr_bp-5,2
jbs STATUS,zf
EXTJMP @L$267
.stabn 192,0,1,L287
L287:
.stabn 68,0,262,L288
L288:
.stabn 68,0,263,L289
L289:
EQNEPRIB _workStep,0
jbs STATUS,zf
EXTJMP @L$269
.stabn 68,0,264,L290
L290:
mov a,@1
STA _workStep,0,0
jmp @L$270
L$269:
.stabn 68,0,266,L291
L291:
clr _workStep
L$270:
.stabn 68,0,268,L292
L292:
.stabn 224,0,1,L293
L293:
L$267:
L$262:
.stabn 68,0,272,L294
L294:
.stabn 224,0,0,L295
L295:
L$260:
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
.section ".S10",C_CODE
.SYMDEF ".S10" 
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
.stabn 192,0,0,L307
L307:
.stabn 68,0,275,L308
L308:
.stabn 68,0,276,L309
L309:
EQNEPRIB keyRead_bp+0,0
jbc STATUS,zf
EXTJMP @L$297
.stabn 192,0,1,L310
L310:
.stabn 68,0,277,L311
L311:
.stabn 68,0,278,L312
L312:
LDA _keyCount,0,0
add a,@1
STA _keyCount,0,0
.stabn 68,0,279,L313
L313:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$298
.stabn 192,0,2,L314
L314:
.stabn 68,0,280,L315
L315:
.stabn 68,0,281,L316
L316:
mov a,@200
STA _keyCount,0,0
.stabn 68,0,282,L317
L317:
jbc _longPressFlag,1
EXTJMP @L$298
.stabn 192,0,3,L318
L318:
.stabn 68,0,283,L319
L319:
.stabn 68,0,284,L320
L320:
bs _longPressFlag,1
.stabn 68,0,285,L321
L321:
mov a,@2
mov eax,a
jmp @L$296
.stabn 68,0,286,L322
L322:
.stabn 224,0,3,L323
L323:
.stabn 68,0,287,L324
L324:
.stabn 224,0,2,L325
L325:
.stabn 68,0,288,L326
L326:
.stabn 224,0,1,L327
L327:
L$297:
.stabn 192,0,1,L328
L328:
.stabn 68,0,290,L329
L329:
.stabn 68,0,291,L330
L330:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$303
.stabn 192,0,2,L331
L331:
.stabn 68,0,292,L332
L332:
.stabn 68,0,293,L333
L333:
clr _keyCount
.stabn 68,0,294,L334
L334:
bc _longPressFlag,1
.stabn 68,0,295,L335
L335:
mov a,@0
mov eax,a
jmp @L$296
.stabn 68,0,296,L336
L336:
.stabn 224,0,2,L337
L337:
L$303:
.stabn 68,0,297,L338
L338:
ULTRIB _keyCount,0x8
jbs STATUS, cf
EXTJMP L$305
.stabn 192,0,2,L339
L339:
.stabn 68,0,298,L340
L340:
.stabn 68,0,299,L341
L341:
clr _keyCount
.stabn 68,0,300,L342
L342:
mov a,@1
mov eax,a
jmp @L$296
.stabn 68,0,301,L343
L343:
.stabn 224,0,2,L344
L344:
L$305:
.stabn 68,0,302,L345
L345:
clr _keyCount
.stabn 68,0,303,L346
L346:
.stabn 224,0,1,L347
L347:
L$298:
.stabn 68,0,304,L348
L348:
mov a,@0
mov eax,a
.stabn 68,0,305,L349
L349:
.stabn 224,0,0,L350
L350:
L$296:
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
.section ".S11",C_CODE
.SYMDEF ".S11" 
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
.stabn 192,0,0,L352
L352:
.stabn 68,0,308,L353
L353:
.stabn 68,0,309,L354
L354:
clr _motorFlag
.stabn 68,0,310,L355
L355:
clr _chrgFlag
.stabn 68,0,311,L356
L356:
clr _workStep
.stabn 68,0,312,L357
L357:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,313,L358
L358:
mov a,@20
STA _ICIECR,0,0
.stabn 68,0,314,L359
L359:
mov a,@2
STA _IMR,0,2
.stabn 68,0,315,L360
L360:
LDA _ISR,0,0
and a,@240
STA _ISR,0,0
.stabn 68,0,316,L361
L361:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(316):"
disi
.stabn 68,0,316,L362
L362:
.stabn 68,0,317,L363
L363:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(317):"
slep
.stabn 68,0,317,L364
L364:
.stabn 68,0,318,L365
L365:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(318):"
eni
.stabn 68,0,318,L366
L366:
.stabn 68,0,319,L367
L367:
mov a,@128
STA _WDTCR,0,2
.stabn 68,0,320,L368
L368:
clr _ICIECR
.stabn 68,0,321,L369
L369:
clr _ISR
.stabn 68,0,322,L370
L370:
mov a,@1
STA _IMR,0,2
.stabn 68,0,323,L371
L371:
.stabn 224,0,0,L372
L372:
L$351:
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
.section ".S12",C_CODE
.SYMDEF ".S12" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L378
L378:
.stabn 68,0,328,L379
L379:
.stabn 68,0,331,L380
L380:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(331):"
MOV 0x3D,A ;保存 A
.stabn 68,0,332,L381
L381:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(332):"
MOV A,0x03
.stabn 68,0,333,L382
L382:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(333):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,334,L383
L383:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(334):"
MOV A,0x04
.stabn 68,0,335,L384
L384:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(335):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,338,L385
L385:
jbs _TCIF,0
EXTJMP @L$374
.stabn 192,0,1,L386
L386:
.stabn 68,0,339,L387
L387:
.stabn 68,0,341,L388
L388:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,342,L389
L389:
LDA _TCC,0,0
add a,@206
STA _TCC,0,0
.stabn 68,0,344,L390
L390:
LDA _intCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _intCount,0,0
ULTRIB ecx,0x64
jbs STATUS, cf
EXTJMP L$376
.stabn 192,0,2,L391
L391:
.stabn 68,0,345,L392
L392:
.stabn 68,0,346,L393
L393:
clr _intCount
.stabn 68,0,347,L394
L394:
bs _IntFlag,0
.stabn 68,0,350,L395
L395:
.stabn 224,0,2,L396
L396:
L$376:
.stabn 68,0,351,L397
L397:
.stabn 224,0,1,L398
L398:
L$374:
.stabn 68,0,355,L399
L399:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(355):"
MOV A,0x3F ;返回 R4
.stabn 68,0,356,L400
L400:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(356):"
MOV 0x04,A
.stabn 68,0,357,L401
L401:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(357):"
MOV A,0x3E ;返回 R3
.stabn 68,0,358,L402
L402:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(358):"
MOV 0x03,A
.stabn 68,0,359,L403
L403:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(359):"
SWAP 0x3D  ;返回 A
.stabn 68,0,360,L404
L404:
.cfile "C:\mcuproject\xj\s18_1001B_sop8\PWM.c(360):"
SWAPA 0x3D
.stabn 68,0,362,L405
L405:
.stabn 224,0,0,L406
L406:
L$373:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S13",C_CODE
.SYMDEF ".S13" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L408
L408:
.stabn 68,0,367,L409
L409:
.stabn 68,0,369,L410
L410:
.stabn 224,0,0,L411
L411:
L$407:
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
