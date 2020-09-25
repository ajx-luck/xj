.autoimport
EM78P153B EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "C:\mcuproject\xj\fan0919\fan.c",100,0,3,0
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
public _keyCount2
.align 1
_keyCount2:
.SYMDEF "_keyCount2" LEN:1
db 0x0
.stabs "keyCount2:G10",32,0,0,_keyCount2
public _count64ms
.align 1
_count64ms:
.SYMDEF "_count64ms" LEN:1
db 0x0
.stabs "count64ms:G10",32,0,0,_count64ms
public _count5s
.align 1
_count5s:
.SYMDEF "_count5s" LEN:2
dw 0x0
.stabs "count5s:G13",32,0,0,_count5s
public _sleepTime
.align 1
_sleepTime:
.SYMDEF "_sleepTime" LEN:1
db 0x0
.stabs "sleepTime:G10",32,0,0,_sleepTime
public _highCheckTime
.align 1
_highCheckTime:
.SYMDEF "_highCheckTime" LEN:1
db 0x0
.stabs "highCheckTime:G10",32,0,0,_highCheckTime
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
.stabn 68,0,49,L20
L20:
.stabn 68,0,53,L21
L21:
.cfile "C:\mcuproject\xj\fan0919\fan.c(53):"
wdtc
.stabn 68,0,53,L22
L22:
.stabn 68,0,54,L23
L23:
.cfile "C:\mcuproject\xj\fan0919\fan.c(54):"
disi
.stabn 68,0,54,L24
L24:
.stabn 68,0,55,L25
L25:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,57,L26
L26:
call _IO_Init
.stabn 68,0,59,L27
L27:
mov a,@206
STA _TCC,0,0
.stabn 68,0,60,L28
L28:
clr _ISR
.stabn 68,0,61,L29
L29:
mov a,@1
STA _IMR,0,2
.stabn 68,0,63,L30
L30:
.cfile "C:\mcuproject\xj\fan0919\fan.c(63):"
eni
.stabn 68,0,63,L31
L31:
jmp @L$3
L$2:
.stabn 192,0,1,L32
L32:
.stabn 68,0,67,L33
L33:
.stabn 68,0,68,L34
L34:
.cfile "C:\mcuproject\xj\fan0919\fan.c(68):"
wdtc
.stabn 68,0,68,L35
L35:
.stabn 68,0,69,L36
L36:
jbc _IntFlag,0
EXTJMP @L$5
.stabn 68,0,70,L37
L37:
jmp @L$3
L$5:
.stabn 68,0,71,L38
L38:
bc _IntFlag,0
.stabn 68,0,72,L39
L39:
call _keyCtr
.stabn 68,0,73,L40
L40:
EQNEPRIB _ledStep,0
jbs STATUS,zf
EXTJMP @L$9
EQNEPRIB _workStep,0
jbc STATUS,zf
EXTJMP @L$7
L$9:
.stabn 192,0,2,L41
L41:
.stabn 68,0,74,L42
L42:
.stabn 68,0,75,L43
L43:
bs _P52,2
.stabn 68,0,76,L44
L44:
call _lvdCheck
.stabn 68,0,77,L45
L45:
.stabn 224,0,2,L46
L46:
jmp @L$8
L$7:
.stabn 192,0,2,L47
L47:
.stabn 68,0,79,L48
L48:
.stabn 68,0,80,L49
L49:
bc _P52,2
.stabn 68,0,81,L50
L50:
bc _P53,3
.stabn 68,0,82,L51
L51:
EQNEPRIB _keyCount,0
jbs STATUS,zf
EXTJMP @L$10
jbc _P66,6
EXTJMP @L$10
.stabn 192,0,3,L52
L52:
.stabn 68,0,83,L53
L53:
.stabn 68,0,84,L54
L54:
LDA _sleepTime,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _sleepTime,0,0
ULTRIB ecx,0xc8
jbs STATUS, cf
EXTJMP L$12
.stabn 68,0,85,L55
L55:
call _gotoSleep
L$12:
.stabn 68,0,86,L56
L56:
.stabn 224,0,3,L57
L57:
L$10:
.stabn 68,0,87,L58
L58:
.stabn 224,0,2,L59
L59:
L$8:
.stabn 68,0,89,L60
L60:
jbs _P66,6
EXTJMP @L$14
.stabn 192,0,2,L61
L61:
.stabn 68,0,90,L62
L62:
.stabn 68,0,91,L63
L63:
LDA _highCheckTime,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _highCheckTime,0,0
ULTRIB ecx,0x14
jbs STATUS, cf
EXTJMP L$15
.stabn 192,0,3,L64
L64:
.stabn 68,0,92,L65
L65:
.stabn 68,0,93,L66
L66:
mov a,@20
STA _highCheckTime,0,0
.stabn 68,0,94,L67
L67:
call _PWM_Stop
.stabn 68,0,95,L68
L68:
bc _P51,1
.stabn 68,0,96,L69
L69:
clr _workStep
.stabn 68,0,97,L70
L70:
.stabn 224,0,3,L71
L71:
.stabn 68,0,98,L72
L72:
.stabn 224,0,2,L73
L73:
jmp @L$15
L$14:
.stabn 192,0,2,L74
L74:
.stabn 68,0,100,L75
L75:
.stabn 68,0,101,L76
L76:
clr _highCheckTime
.stabn 68,0,102,L77
L77:
.stabn 224,0,2,L78
L78:
L$15:
.stabn 68,0,104,L79
L79:
.stabn 224,0,1,L80
L80:
L$3:
.stabn 68,0,66,L81
L81:
jmp @L$2
.stabn 68,0,106,L82
L82:
.stabn 224,0,0,L83
L83:
L$1:
ret
.STACK main_bp,local,1
public _lvdCheck
public lvdCheck_bp
.stabs "lvdCheck:F15",36,0,0,_lvdCheck
.section ".S1",C_CODE
.SYMDEF ".S1" 
_lvdCheck:
.SYMDEF "_lvdCheck" 
mov a,ecx
mov lvdCheck_bp-4,a
mov a,ecx+1
mov lvdCheck_bp-3,a
mov a,ecx+2
mov lvdCheck_bp-2,a
mov a,ecx+3
mov lvdCheck_bp-1,a
.stabn 192,0,0,L91
L91:
.stabn 68,0,110,L92
L92:
.stabn 68,0,111,L93
L93:
mov a,@138
STA _LVDCON,0,0
.stabn 68,0,112,L94
L94:
mov a,@100
mov delay_bp+0,a
.STACK delay_bp,parameter,1
call _delay
.stabn 68,0,113,L95
L95:
LDA _LVDCON,0,0
mov ecx,a
mov a,@64
and ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$85
.stabn 192,0,1,L96
L96:
.stabn 68,0,114,L97
L97:
.stabn 68,0,116,L98
L98:
bs _lvdFlag,2
.stabn 68,0,117,L99
L99:
INCMW _count5s,0
.stabn 68,0,118,L100
L100:
UGTRIW _count5s,0x32
jbc STATUS, cf
EXTJMP L$87
.stabn 192,0,2,L101
L101:
.stabn 68,0,119,L102
L102:
.stabn 68,0,120,L103
L103:
bs _P53,3
.stabn 68,0,121,L104
L104:
.stabn 224,0,2,L105
L105:
L$87:
.stabn 68,0,122,L106
L106:
UGTRIW _count5s,0x226
jbc STATUS, cf
EXTJMP L$86
.stabn 192,0,2,L107
L107:
.stabn 68,0,123,L108
L108:
.stabn 68,0,124,L109
L109:
clr _count5s+1
clr _count5s
.stabn 68,0,125,L110
L110:
call _cloesAll
.stabn 68,0,126,L111
L111:
.stabn 224,0,2,L112
L112:
.stabn 68,0,127,L113
L113:
.stabn 224,0,1,L114
L114:
jmp @L$86
L$85:
.stabn 192,0,1,L115
L115:
.stabn 68,0,129,L116
L116:
.stabn 68,0,131,L117
L117:
bc _lvdFlag,2
.stabn 68,0,132,L118
L118:
clr _count5s+1
clr _count5s
.stabn 68,0,133,L119
L119:
bc _P53,3
.stabn 68,0,134,L120
L120:
.stabn 224,0,1,L121
L121:
L$86:
.stabn 68,0,135,L122
L122:
.stabn 224,0,0,L123
L123:
L$84:
mov a,lvdCheck_bp-4
mov ecx,a
mov a,lvdCheck_bp-3
mov ecx+1,a
mov a,lvdCheck_bp-2
mov ecx+2,a
mov a,lvdCheck_bp-1
mov ecx+3,a
ret
.STACK lvdCheck_bp,local,4
public _cloesAll
public cloesAll_bp
.stabs "cloesAll:F15",36,0,0,_cloesAll
.section ".S2",C_CODE
.SYMDEF ".S2" 
_cloesAll:
.SYMDEF "_cloesAll" 
mov a,ecx
mov cloesAll_bp-4,a
mov a,ecx+1
mov cloesAll_bp-3,a
mov a,ecx+2
mov cloesAll_bp-2,a
mov a,ecx+3
mov cloesAll_bp-1,a
.stabn 192,0,0,L125
L125:
.stabn 68,0,138,L126
L126:
.stabn 68,0,139,L127
L127:
clr _workStep
.stabn 68,0,140,L128
L128:
clr _ledStep
.stabn 68,0,141,L129
L129:
call _PWM_Stop
.stabn 68,0,142,L130
L130:
clr _PORT5
.stabn 68,0,143,L131
L131:
bc _P67,7
.stabn 68,0,144,L132
L132:
.stabn 224,0,0,L133
L133:
L$124:
mov a,cloesAll_bp-4
mov ecx,a
mov a,cloesAll_bp-3
mov ecx+1,a
mov a,cloesAll_bp-2
mov ecx+2,a
mov a,cloesAll_bp-1
mov ecx+3,a
ret
.STACK cloesAll_bp,local,4
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
.stabs "kclick2:2",128,0,0,keyCtr_bp-6
.stabn 192,0,0,L152
L152:
.stabn 68,0,148,L153
L153:
.stabn 68,0,149,L154
L154:
LDA _PORT6,0,0
mov ecx,a
com ecx
mov a,@2
and ecx,a
mov a,ecx
mov keyRead_bp+0,a
.STACK keyRead_bp,parameter,1
call _keyRead
mov a,eax
STA keyCtr_bp-5,0,0
.stabn 68,0,151,L155
L155:
LDA _PORT6,0,0
mov ecx,a
com ecx
mov a,@1
and ecx,a
mov a,ecx
mov keyRead2_bp+0,a
.STACK keyRead2_bp,parameter,1
call _keyRead2
mov a,eax
STA keyCtr_bp-6,0,0
.stabn 68,0,152,L156
L156:
EQNEPRIB keyCtr_bp-5,1
jbs STATUS,zf
EXTJMP @L$135
.stabn 192,0,1,L157
L157:
.stabn 68,0,153,L158
L158:
.stabn 68,0,156,L159
L159:
LDA _ledStep,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _ledStep,0,0
UGTRIB ecx,0x2
jbc STATUS, cf
EXTJMP L$137
.stabn 68,0,157,L160
L160:
clr _ledStep
L$137:
.stabn 68,0,158,L161
L161:
EQNEPRIB _ledStep,0
jbc STATUS,zf
EXTJMP @L$139
.stabn 192,0,2,L162
L162:
.stabn 68,0,159,L163
L163:
.stabn 68,0,160,L164
L164:
bs _P67,7
.stabn 68,0,161,L165
L165:
.stabn 224,0,2,L166
L166:
jmp @L$140
L$139:
.stabn 192,0,2,L167
L167:
.stabn 68,0,163,L168
L168:
.stabn 68,0,164,L169
L169:
bc _P67,7
.stabn 68,0,165,L170
L170:
.stabn 224,0,2,L171
L171:
L$140:
.stabn 68,0,167,L172
L172:
.stabn 224,0,1,L173
L173:
L$135:
.stabn 68,0,169,L174
L174:
EQNEPRIB keyCtr_bp-6,1
jbs STATUS,zf
EXTJMP @L$141
.stabn 192,0,1,L175
L175:
.stabn 68,0,170,L176
L176:
.stabn 68,0,172,L177
L177:
LDA _workStep,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _workStep,0,0
UGTRIB ecx,0x2
jbc STATUS, cf
EXTJMP L$143
.stabn 68,0,173,L178
L178:
clr _workStep
L$143:
.stabn 68,0,174,L179
L179:
EQNEPRIB _workStep,0
jbc STATUS,zf
EXTJMP @L$145
jbc _P66,6
EXTJMP @L$145
.stabn 192,0,2,L180
L180:
.stabn 68,0,175,L181
L181:
.stabn 68,0,176,L182
L182:
bs _P51,1
.stabn 68,0,177,L183
L183:
call _PWM_Init
.stabn 68,0,178,L184
L184:
.stabn 224,0,2,L185
L185:
jmp @L$146
L$145:
.stabn 192,0,2,L186
L186:
.stabn 68,0,180,L187
L187:
.stabn 68,0,181,L188
L188:
call _PWM_Stop
.stabn 68,0,182,L189
L189:
bc _P51,1
.stabn 68,0,183,L190
L190:
.stabn 224,0,2,L191
L191:
L$146:
.stabn 68,0,184,L192
L192:
LDA _workStep,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$149
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$150
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$151
jmp @L$147
.stabn 192,0,2,L193
L193:
.stabn 68,0,185,L194
L194:
L$149:
.stabn 68,0,187,L195
L195:
clr _PDC1
.stabn 68,0,188,L196
L196:
jmp @L$148
L$150:
.stabn 68,0,190,L197
L197:
mov a,@14
STA _PDC1,0,0
.stabn 68,0,191,L198
L198:
jmp @L$148
L$151:
.stabn 68,0,193,L199
L199:
mov a,@24
STA _PDC1,0,0
.stabn 68,0,194,L200
L200:
.stabn 68,0,196,L201
L201:
.stabn 224,0,2,L202
L202:
L$147:
L$148:
.stabn 68,0,198,L203
L203:
.stabn 224,0,1,L204
L204:
L$141:
.stabn 68,0,200,L205
L205:
.stabn 224,0,0,L206
L206:
L$134:
mov a,keyCtr_bp-4
mov ecx,a
mov a,keyCtr_bp-3
mov ecx+1,a
mov a,keyCtr_bp-2
mov ecx+2,a
mov a,keyCtr_bp-1
mov ecx+3,a
ret
.STACK keyCtr_bp,local,6
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
.stabn 192,0,0,L208
L208:
.stabn 68,0,203,L209
L209:
.stabn 68,0,204,L210
L210:
clr _count5s+1
clr _count5s
.stabn 68,0,205,L211
L211:
clr _sleepTime
.stabn 68,0,206,L212
L212:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,207,L213
L213:
mov a,@67
STA _ICIECR,0,0
.stabn 68,0,208,L214
L214:
mov a,@2
STA _IMR,0,2
.stabn 68,0,209,L215
L215:
LDA _ISR,0,0
and a,@240
STA _ISR,0,0
.stabn 68,0,210,L216
L216:
.cfile "C:\mcuproject\xj\fan0919\fan.c(210):"
disi
.stabn 68,0,210,L217
L217:
.stabn 68,0,211,L218
L218:
.cfile "C:\mcuproject\xj\fan0919\fan.c(211):"
slep
.stabn 68,0,211,L219
L219:
.stabn 68,0,212,L220
L220:
.cfile "C:\mcuproject\xj\fan0919\fan.c(212):"
eni
.stabn 68,0,212,L221
L221:
.stabn 68,0,213,L222
L222:
clr _ICIECR
.stabn 68,0,214,L223
L223:
clr _ISR
.stabn 68,0,215,L224
L224:
mov a,@1
STA _IMR,0,2
.stabn 68,0,216,L225
L225:
.stabn 224,0,0,L226
L226:
L$207:
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
public _keyRead
public keyRead_bp
.stabs "keyRead:F2",36,0,0,_keyRead
.section ".S5",C_CODE
.SYMDEF ".S5" 
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
.stabn 192,0,0,L234
L234:
.stabn 68,0,220,L235
L235:
.stabn 68,0,221,L236
L236:
EQNEPRIB keyRead_bp+0,0
jbc STATUS,zf
EXTJMP @L$228
.stabn 192,0,1,L237
L237:
.stabn 68,0,222,L238
L238:
.stabn 68,0,223,L239
L239:
LDA _keyCount2,0,0
add a,@1
STA _keyCount2,0,0
.stabn 68,0,224,L240
L240:
ULTRIB _keyCount2,0xc8
jbs STATUS, cf
EXTJMP L$229
.stabn 192,0,2,L241
L241:
.stabn 68,0,225,L242
L242:
.stabn 68,0,226,L243
L243:
mov a,@200
STA _keyCount2,0,0
.stabn 68,0,227,L244
L244:
.stabn 224,0,2,L245
L245:
.stabn 68,0,228,L246
L246:
.stabn 224,0,1,L247
L247:
jmp @L$229
L$228:
.stabn 192,0,1,L248
L248:
.stabn 68,0,230,L249
L249:
.stabn 68,0,231,L250
L250:
ULTRIB _keyCount2,0x8
jbs STATUS, cf
EXTJMP L$232
.stabn 192,0,2,L251
L251:
.stabn 68,0,232,L252
L252:
.stabn 68,0,233,L253
L253:
clr _keyCount2
.stabn 68,0,234,L254
L254:
mov a,@1
mov eax,a
jmp @L$227
.stabn 68,0,235,L255
L255:
.stabn 224,0,2,L256
L256:
L$232:
.stabn 68,0,236,L257
L257:
clr _keyCount2
.stabn 68,0,237,L258
L258:
.stabn 224,0,1,L259
L259:
L$229:
.stabn 68,0,238,L260
L260:
mov a,@0
mov eax,a
.stabn 68,0,239,L261
L261:
.stabn 224,0,0,L262
L262:
L$227:
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
public _keyRead2
public keyRead2_bp
.stabs "keyRead2:F2",36,0,0,_keyRead2
.section ".S6",C_CODE
.SYMDEF ".S6" 
_keyRead2:
.SYMDEF "_keyRead2" 
mov a,ecx
mov keyRead2_bp-4,a
mov a,ecx+1
mov keyRead2_bp-3,a
mov a,ecx+2
mov keyRead2_bp-2,a
mov a,ecx+3
mov keyRead2_bp-1,a
.stabs "keyStatus:10",160,0,0,keyRead2_bp+0
.stabn 192,0,0,L270
L270:
.stabn 68,0,242,L271
L271:
.stabn 68,0,243,L272
L272:
EQNEPRIB keyRead2_bp+0,0
jbc STATUS,zf
EXTJMP @L$264
.stabn 192,0,1,L273
L273:
.stabn 68,0,244,L274
L274:
.stabn 68,0,245,L275
L275:
LDA _keyCount,0,0
add a,@1
STA _keyCount,0,0
.stabn 68,0,246,L276
L276:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$265
.stabn 192,0,2,L277
L277:
.stabn 68,0,247,L278
L278:
.stabn 68,0,248,L279
L279:
mov a,@200
STA _keyCount,0,0
.stabn 68,0,249,L280
L280:
.stabn 224,0,2,L281
L281:
.stabn 68,0,250,L282
L282:
.stabn 224,0,1,L283
L283:
jmp @L$265
L$264:
.stabn 192,0,1,L284
L284:
.stabn 68,0,252,L285
L285:
.stabn 68,0,253,L286
L286:
ULTRIB _keyCount,0x8
jbs STATUS, cf
EXTJMP L$268
.stabn 192,0,2,L287
L287:
.stabn 68,0,254,L288
L288:
.stabn 68,0,255,L289
L289:
clr _keyCount
.stabn 68,0,256,L290
L290:
mov a,@1
mov eax,a
jmp @L$263
.stabn 68,0,257,L291
L291:
.stabn 224,0,2,L292
L292:
L$268:
.stabn 68,0,258,L293
L293:
clr _keyCount
.stabn 68,0,259,L294
L294:
.stabn 224,0,1,L295
L295:
L$265:
.stabn 68,0,260,L296
L296:
mov a,@0
mov eax,a
.stabn 68,0,261,L297
L297:
.stabn 224,0,0,L298
L298:
L$263:
mov a,keyRead2_bp-4
mov ecx,a
mov a,keyRead2_bp-3
mov ecx+1,a
mov a,keyRead2_bp-2
mov ecx+2,a
mov a,keyRead2_bp-1
mov ecx+3,a
ret
.STACK keyRead2_bp,local,4
public _delay
public delay_bp
.stabs "delay:F15",36,0,0,_delay
.section ".S7",C_CODE
.SYMDEF ".S7" 
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
.stabs "time:10",160,0,0,delay_bp+0
.stabs "i:10",128,0,0,delay_bp-5
.stabn 192,0,0,L304
L304:
.stabn 68,0,266,L305
L305:
.stabn 68,0,267,L306
L306:
clr delay_bp-5
.stabn 68,0,268,L307
L307:
jmp @L$303
L$300:
.stabn 68,0,269,L308
L308:
.cfile "C:\mcuproject\xj\fan0919\fan.c(269):"
nop
L$301:
.stabn 68,0,268,L309
L309:
LDA delay_bp-5,0,0
add a,@1
STA delay_bp-5,0,0
L$303:
.stabn 68,0,268,L310
L310:
ULTRRB delay_bp-5,delay_bp+0
jbs STATUS,cf
EXTJMP @L$300
.stabn 68,0,269,L311
L311:
.stabn 68,0,270,L312
L312:
.stabn 224,0,0,L313
L313:
L$299:
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
public _PWM_Init
public PWM_Init_bp
.stabs "PWM_Init:F15",36,0,0,_PWM_Init
.section ".S8",C_CODE
.SYMDEF ".S8" 
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
.stabn 192,0,0,L315
L315:
.stabn 68,0,274,L316
L316:
.stabn 68,0,276,L317
L317:
mov a,@49
STA _PRD,0,0
.stabn 68,0,277,L318
L318:
mov a,@17
STA _PDC1,0,0
.stabn 68,0,278,L319
L319:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,279,L320
L320:
mov a,@16
STA _PWMCON,0,0
.stabn 68,0,280,L321
L321:
.stabn 224,0,0,L322
L322:
L$314:
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
.section ".S9",C_CODE
.SYMDEF ".S9" 
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
.stabn 192,0,0,L324
L324:
.stabn 68,0,283,L325
L325:
.stabn 68,0,284,L326
L326:
clr _PWMCON
.stabn 68,0,285,L327
L327:
.stabn 224,0,0,L328
L328:
L$323:
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
.section ".S10",C_CODE
.SYMDEF ".S10" 
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
.stabn 192,0,0,L330
L330:
.stabn 68,0,289,L331
L331:
.stabn 68,0,291,L332
L332:
clr _PORT5
.stabn 68,0,292,L333
L333:
mov a,@0
STA _P5CR,0,2
.stabn 68,0,293,L334
L334:
clr _PORT6
.stabn 68,0,294,L335
L335:
mov a,@67
STA _P6CR,0,2
.stabn 68,0,295,L336
L336:
mov a,@252
STA _PHCR,0,2
.stabn 68,0,296,L337
L337:
mov a,@191
STA _PHDCR,0,2
.stabn 68,0,297,L338
L338:
mov a,@191
STA _PRD,0,0
.stabn 68,0,299,L339
L339:
.cfile "C:\mcuproject\xj\fan0919\fan.c(299):"
mov	a,@0x03
.stabn 68,0,300,L340
L340:
.cfile "C:\mcuproject\xj\fan0919\fan.c(300):"
contw
.stabn 68,0,302,L341
L341:
.stabn 224,0,0,L342
L342:
L$329:
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
.section ".S11",C_CODE
.SYMDEF ".S11" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L358
L358:
.stabn 68,0,306,L359
L359:
.stabn 68,0,309,L360
L360:
.cfile "C:\mcuproject\xj\fan0919\fan.c(309):"
MOV 0x3D,A ;保存 A
.stabn 68,0,310,L361
L361:
.cfile "C:\mcuproject\xj\fan0919\fan.c(310):"
MOV A,0x03
.stabn 68,0,311,L362
L362:
.cfile "C:\mcuproject\xj\fan0919\fan.c(311):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,312,L363
L363:
.cfile "C:\mcuproject\xj\fan0919\fan.c(312):"
MOV A,0x04
.stabn 68,0,313,L364
L364:
.cfile "C:\mcuproject\xj\fan0919\fan.c(313):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,316,L365
L365:
jbs _TCIF,0
EXTJMP @L$344
.stabn 192,0,1,L366
L366:
.stabn 68,0,317,L367
L367:
.stabn 68,0,319,L368
L368:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,320,L369
L369:
LDA _TCC,0,0
add a,@206
STA _TCC,0,0
.stabn 68,0,322,L370
L370:
LDA _intCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _intCount,0,0
ULTRIB ecx,0x32
jbs STATUS, cf
EXTJMP L$346
.stabn 192,0,2,L371
L371:
.stabn 68,0,323,L372
L372:
.stabn 68,0,324,L373
L373:
clr _intCount
.stabn 68,0,325,L374
L374:
bs _IntFlag,0
.stabn 68,0,326,L375
L375:
LDA _count500ms,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _count500ms,0,0
ULTRIB ecx,0x32
jbs STATUS, cf
EXTJMP L$348
.stabn 68,0,327,L376
L376:
clr _count500ms
L$348:
.stabn 68,0,328,L377
L377:
.stabn 224,0,2,L378
L378:
L$346:
.stabn 68,0,329,L379
L379:
EQNEPRIB _ledStep,1
jbs STATUS,zf
EXTJMP @L$350
.stabn 192,0,2,L380
L380:
.stabn 68,0,330,L381
L381:
.stabn 68,0,331,L382
L382:
LDA _count64ms,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _count64ms,0,0
ULTRIB ecx,0x20
jbs STATUS, cf
EXTJMP L$352
.stabn 192,0,3,L383
L383:
.stabn 68,0,332,L384
L384:
.stabn 68,0,333,L385
L385:
clr _count64ms
.stabn 68,0,334,L386
L386:
.stabn 224,0,3,L387
L387:
L$352:
.stabn 68,0,335,L388
L388:
ULTRIB _count64ms,0x10
jbc STATUS, cf
EXTJMP L$354
.stabn 68,0,336,L389
L389:
bs _P50,0
jmp @L$351
L$354:
.stabn 68,0,338,L390
L390:
bc _P50,0
.stabn 68,0,339,L391
L391:
.stabn 224,0,2,L392
L392:
jmp @L$351
L$350:
.stabn 68,0,340,L393
L393:
EQNEPRIB _ledStep,2
jbs STATUS,zf
EXTJMP @L$356
.stabn 192,0,2,L394
L394:
.stabn 68,0,341,L395
L395:
.stabn 68,0,342,L396
L396:
bs _P50,0
.stabn 68,0,343,L397
L397:
.stabn 224,0,2,L398
L398:
jmp @L$357
L$356:
.stabn 192,0,2,L399
L399:
.stabn 68,0,345,L400
L400:
.stabn 68,0,346,L401
L401:
bc _P50,0
.stabn 68,0,347,L402
L402:
.stabn 224,0,2,L403
L403:
L$357:
L$351:
.stabn 68,0,349,L404
L404:
.stabn 224,0,1,L405
L405:
L$344:
.stabn 68,0,353,L406
L406:
.cfile "C:\mcuproject\xj\fan0919\fan.c(353):"
MOV A,0x3F ;返回 R4
.stabn 68,0,354,L407
L407:
.cfile "C:\mcuproject\xj\fan0919\fan.c(354):"
MOV 0x04,A
.stabn 68,0,355,L408
L408:
.cfile "C:\mcuproject\xj\fan0919\fan.c(355):"
MOV A,0x3E ;返回 R3
.stabn 68,0,356,L409
L409:
.cfile "C:\mcuproject\xj\fan0919\fan.c(356):"
MOV 0x03,A
.stabn 68,0,357,L410
L410:
.cfile "C:\mcuproject\xj\fan0919\fan.c(357):"
SWAP 0x3D  ;返回 A
.stabn 68,0,358,L411
L411:
.cfile "C:\mcuproject\xj\fan0919\fan.c(358):"
SWAPA 0x3D
.stabn 68,0,360,L412
L412:
.stabn 224,0,0,L413
L413:
L$343:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S12",C_CODE
.SYMDEF ".S12" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L415
L415:
.stabn 68,0,365,L416
L416:
.stabn 68,0,367,L417
L417:
.stabn 224,0,0,L418
L418:
L$414:
reti
.STACK interrupt_l_bp,local,0
.section ".bss"
.align 1
_lvdFlag:
.SYMDEF "_lvdFlag" BANK:0,BIT:2,32,LEN:1
ds 1
.stabs "lvdFlag:S16",40,0,0,_lvdFlag
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
.stabs "u16t:t13",128,0,0,0
.stabs "u8t:t10",128,0,0,0
.section ".code"
end
