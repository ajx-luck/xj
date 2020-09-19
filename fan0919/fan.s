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
public _keyNub
.align 1
_keyNub:
.SYMDEF "_keyNub" LEN:1
db 0x0
.stabs "keyNub:G10",32,0,0,_keyNub
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
.stabn 68,0,47,L20
L20:
.stabn 68,0,51,L21
L21:
.cfile "C:\mcuproject\xj\fan0919\fan.c(51):"
wdtc
.stabn 68,0,51,L22
L22:
.stabn 68,0,52,L23
L23:
.cfile "C:\mcuproject\xj\fan0919\fan.c(52):"
disi
.stabn 68,0,52,L24
L24:
.stabn 68,0,53,L25
L25:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,55,L26
L26:
call _IO_Init
.stabn 68,0,57,L27
L27:
mov a,@206
STA _TCC,0,0
.stabn 68,0,58,L28
L28:
clr _ISR
.stabn 68,0,59,L29
L29:
mov a,@1
STA _IMR,0,2
.stabn 68,0,61,L30
L30:
.cfile "C:\mcuproject\xj\fan0919\fan.c(61):"
eni
.stabn 68,0,61,L31
L31:
jmp @L$3
L$2:
.stabn 192,0,1,L32
L32:
.stabn 68,0,65,L33
L33:
.stabn 68,0,66,L34
L34:
.cfile "C:\mcuproject\xj\fan0919\fan.c(66):"
wdtc
.stabn 68,0,66,L35
L35:
.stabn 68,0,67,L36
L36:
jbc _IntFlag,0
EXTJMP @L$5
.stabn 68,0,68,L37
L37:
jmp @L$3
L$5:
.stabn 68,0,69,L38
L38:
bc _IntFlag,0
.stabn 68,0,70,L39
L39:
call _keyCtr
.stabn 68,0,71,L40
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
.stabn 68,0,72,L42
L42:
.stabn 68,0,73,L43
L43:
bs _P52,2
.stabn 68,0,74,L44
L44:
call _lvdCheck
.stabn 68,0,75,L45
L45:
.stabn 224,0,2,L46
L46:
jmp @L$8
L$7:
.stabn 192,0,2,L47
L47:
.stabn 68,0,77,L48
L48:
.stabn 68,0,78,L49
L49:
bc _P52,2
.stabn 68,0,79,L50
L50:
bc _P53,3
.stabn 68,0,80,L51
L51:
EQNEPRIB _keyCount,0
jbs STATUS,zf
EXTJMP @L$10
jbs _P66,6
EXTJMP @L$10
.stabn 192,0,3,L52
L52:
.stabn 68,0,81,L53
L53:
.stabn 68,0,82,L54
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
.stabn 68,0,83,L55
L55:
call _gotoSleep
L$12:
.stabn 68,0,84,L56
L56:
.stabn 224,0,3,L57
L57:
L$10:
.stabn 68,0,85,L58
L58:
.stabn 224,0,2,L59
L59:
L$8:
.stabn 68,0,87,L60
L60:
EQNEPRIB _workStep,0
jbs STATUS,zf
EXTJMP @L$14
.stabn 192,0,2,L61
L61:
.stabn 68,0,88,L62
L62:
.stabn 68,0,89,L63
L63:
jbs _P66,6
EXTJMP @L$16
.stabn 192,0,3,L64
L64:
.stabn 68,0,90,L65
L65:
.stabn 68,0,91,L66
L66:
call _PWM_Stop
.stabn 68,0,92,L67
L67:
.stabn 224,0,3,L68
L68:
jmp @L$17
L$16:
.stabn 192,0,3,L69
L69:
.stabn 68,0,94,L70
L70:
.stabn 68,0,95,L71
L71:
call _PWM_Init
.stabn 68,0,96,L72
L72:
.stabn 224,0,3,L73
L73:
L$17:
.stabn 68,0,97,L74
L74:
.stabn 224,0,2,L75
L75:
L$14:
.stabn 68,0,99,L76
L76:
.stabn 224,0,1,L77
L77:
L$3:
.stabn 68,0,64,L78
L78:
jmp @L$2
.stabn 68,0,101,L79
L79:
.stabn 224,0,0,L80
L80:
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
.stabn 192,0,0,L88
L88:
.stabn 68,0,105,L89
L89:
.stabn 68,0,106,L90
L90:
mov a,@138
STA _LVDCON,0,0
.stabn 68,0,107,L91
L91:
mov a,@100
mov delay_bp+0,a
.STACK delay_bp,parameter,1
call _delay
.stabn 68,0,108,L92
L92:
LDA _LVDCON,0,0
mov ecx,a
mov a,@64
and ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$82
.stabn 192,0,1,L93
L93:
.stabn 68,0,109,L94
L94:
.stabn 68,0,111,L95
L95:
bs _lvdFlag,2
.stabn 68,0,112,L96
L96:
INCMW _count5s,0
.stabn 68,0,113,L97
L97:
UGTRIW _count5s,0x32
jbc STATUS, cf
EXTJMP L$84
.stabn 192,0,2,L98
L98:
.stabn 68,0,114,L99
L99:
.stabn 68,0,115,L100
L100:
bs _P53,3
.stabn 68,0,116,L101
L101:
.stabn 224,0,2,L102
L102:
L$84:
.stabn 68,0,117,L103
L103:
UGTRIW _count5s,0x226
jbc STATUS, cf
EXTJMP L$83
.stabn 192,0,2,L104
L104:
.stabn 68,0,118,L105
L105:
.stabn 68,0,119,L106
L106:
clr _count5s+1
clr _count5s
.stabn 68,0,120,L107
L107:
call _cloesAll
.stabn 68,0,121,L108
L108:
.stabn 224,0,2,L109
L109:
.stabn 68,0,122,L110
L110:
.stabn 224,0,1,L111
L111:
jmp @L$83
L$82:
.stabn 192,0,1,L112
L112:
.stabn 68,0,124,L113
L113:
.stabn 68,0,126,L114
L114:
bc _lvdFlag,2
.stabn 68,0,127,L115
L115:
clr _count5s+1
clr _count5s
.stabn 68,0,128,L116
L116:
bc _P53,3
.stabn 68,0,129,L117
L117:
.stabn 224,0,1,L118
L118:
L$83:
.stabn 68,0,130,L119
L119:
.stabn 224,0,0,L120
L120:
L$81:
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
.stabn 192,0,0,L122
L122:
.stabn 68,0,133,L123
L123:
.stabn 68,0,134,L124
L124:
clr _workStep
.stabn 68,0,135,L125
L125:
clr _ledStep
.stabn 68,0,136,L126
L126:
call _PWM_Stop
.stabn 68,0,137,L127
L127:
clr _PORT5
.stabn 68,0,138,L128
L128:
bc _P67,7
.stabn 68,0,139,L129
L129:
.stabn 224,0,0,L130
L130:
L$121:
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
.stabn 192,0,0,L149
L149:
.stabn 68,0,143,L150
L150:
.stabn 68,0,144,L151
L151:
LDA _PORT6,0,0
mov ecx,a
com ecx
mov a,@3
and ecx,a
mov a,ecx
mov keyRead_bp+0,a
.STACK keyRead_bp,parameter,1
call _keyRead
mov a,eax
STA keyCtr_bp-5,0,0
.stabn 68,0,145,L152
L152:
EQNEPRIB keyCtr_bp-5,1
jbs STATUS,zf
EXTJMP @L$132
.stabn 192,0,1,L153
L153:
.stabn 68,0,146,L154
L154:
.stabn 68,0,147,L155
L155:
LDA _keyNub,0,0
mov ecx,a
mov a,@1
and ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$134
.stabn 192,0,2,L156
L156:
.stabn 68,0,148,L157
L157:
.stabn 68,0,150,L158
L158:
LDA _workStep,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _workStep,0,0
UGTRIB ecx,0x2
jbc STATUS, cf
EXTJMP L$136
.stabn 68,0,151,L159
L159:
clr _workStep
L$136:
.stabn 68,0,152,L160
L160:
EQNEPRIB _workStep,0
jbc STATUS,zf
EXTJMP @L$138
.stabn 192,0,3,L161
L161:
.stabn 68,0,153,L162
L162:
.stabn 68,0,154,L163
L163:
bs _P51,1
.stabn 68,0,155,L164
L164:
call _PWM_Init
.stabn 68,0,156,L165
L165:
.stabn 224,0,3,L166
L166:
jmp @L$139
L$138:
.stabn 192,0,3,L167
L167:
.stabn 68,0,158,L168
L168:
.stabn 68,0,159,L169
L169:
call _PWM_Stop
.stabn 68,0,160,L170
L170:
bc _P51,1
.stabn 68,0,161,L171
L171:
.stabn 224,0,3,L172
L172:
L$139:
.stabn 68,0,162,L173
L173:
LDA _workStep,0,0
mov ecx,a
EQNEPRIB ecx,0
jbc STATUS,zf
EXTJMP @L$142
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$143
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$144
jmp @L$135
.stabn 192,0,3,L174
L174:
.stabn 68,0,163,L175
L175:
L$142:
.stabn 68,0,165,L176
L176:
clr _PDC1
.stabn 68,0,166,L177
L177:
jmp @L$135
L$143:
.stabn 68,0,168,L178
L178:
mov a,@17
STA _PDC1,0,0
.stabn 68,0,169,L179
L179:
jmp @L$135
L$144:
.stabn 68,0,171,L180
L180:
mov a,@27
STA _PDC1,0,0
.stabn 68,0,172,L181
L181:
.stabn 68,0,174,L182
L182:
.stabn 224,0,3,L183
L183:
.stabn 68,0,175,L184
L184:
.stabn 224,0,2,L185
L185:
jmp @L$135
L$134:
.stabn 192,0,2,L186
L186:
.stabn 68,0,177,L187
L187:
.stabn 68,0,179,L188
L188:
LDA _ledStep,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _ledStep,0,0
UGTRIB ecx,0x2
jbc STATUS, cf
EXTJMP L$145
.stabn 68,0,180,L189
L189:
clr _ledStep
L$145:
.stabn 68,0,181,L190
L190:
EQNEPRIB _ledStep,0
jbc STATUS,zf
EXTJMP @L$147
.stabn 192,0,3,L191
L191:
.stabn 68,0,182,L192
L192:
.stabn 68,0,183,L193
L193:
bs _P67,7
.stabn 68,0,184,L194
L194:
.stabn 224,0,3,L195
L195:
jmp @L$148
L$147:
.stabn 192,0,3,L196
L196:
.stabn 68,0,186,L197
L197:
.stabn 68,0,187,L198
L198:
bc _P67,7
.stabn 68,0,188,L199
L199:
.stabn 224,0,3,L200
L200:
L$148:
.stabn 68,0,189,L201
L201:
.stabn 224,0,2,L202
L202:
L$135:
.stabn 68,0,190,L203
L203:
.stabn 224,0,1,L204
L204:
L$132:
.stabn 68,0,192,L205
L205:
.stabn 224,0,0,L206
L206:
L$131:
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
.stabn 68,0,195,L209
L209:
.stabn 68,0,196,L210
L210:
clr _count5s+1
clr _count5s
.stabn 68,0,197,L211
L211:
clr _sleepTime
.stabn 68,0,198,L212
L212:
mov a,@0
STA _WDTCR,0,2
.stabn 68,0,199,L213
L213:
mov a,@67
STA _ICIECR,0,0
.stabn 68,0,200,L214
L214:
mov a,@2
STA _IMR,0,2
.stabn 68,0,201,L215
L215:
LDA _ISR,0,0
and a,@240
STA _ISR,0,0
.stabn 68,0,202,L216
L216:
.cfile "C:\mcuproject\xj\fan0919\fan.c(202):"
disi
.stabn 68,0,202,L217
L217:
.stabn 68,0,203,L218
L218:
.cfile "C:\mcuproject\xj\fan0919\fan.c(203):"
slep
.stabn 68,0,203,L219
L219:
.stabn 68,0,204,L220
L220:
.cfile "C:\mcuproject\xj\fan0919\fan.c(204):"
eni
.stabn 68,0,204,L221
L221:
.stabn 68,0,205,L222
L222:
clr _ICIECR
.stabn 68,0,206,L223
L223:
clr _ISR
.stabn 68,0,207,L224
L224:
mov a,@1
STA _IMR,0,2
.stabn 68,0,208,L225
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
.stabn 68,0,212,L235
L235:
.stabn 68,0,213,L236
L236:
EQNEPRIB keyRead_bp+0,0
jbc STATUS,zf
EXTJMP @L$228
.stabn 192,0,1,L237
L237:
.stabn 68,0,214,L238
L238:
.stabn 68,0,215,L239
L239:
LDA keyRead_bp+0,0,0
STA _keyNub,0,0
.stabn 68,0,216,L240
L240:
LDA _keyCount,0,0
add a,@1
STA _keyCount,0,0
.stabn 68,0,217,L241
L241:
ULTRIB _keyCount,0xc8
jbs STATUS, cf
EXTJMP L$229
.stabn 192,0,2,L242
L242:
.stabn 68,0,218,L243
L243:
.stabn 68,0,219,L244
L244:
mov a,@200
STA _keyCount,0,0
.stabn 68,0,220,L245
L245:
.stabn 224,0,2,L246
L246:
.stabn 68,0,221,L247
L247:
.stabn 224,0,1,L248
L248:
jmp @L$229
L$228:
.stabn 192,0,1,L249
L249:
.stabn 68,0,223,L250
L250:
.stabn 68,0,224,L251
L251:
ULTRIB _keyCount,0x8
jbs STATUS, cf
EXTJMP L$232
.stabn 192,0,2,L252
L252:
.stabn 68,0,225,L253
L253:
.stabn 68,0,226,L254
L254:
clr _keyCount
.stabn 68,0,227,L255
L255:
mov a,@1
mov eax,a
jmp @L$227
.stabn 68,0,228,L256
L256:
.stabn 224,0,2,L257
L257:
L$232:
.stabn 68,0,229,L258
L258:
clr _keyCount
.stabn 68,0,230,L259
L259:
clr _keyNub
.stabn 68,0,231,L260
L260:
.stabn 224,0,1,L261
L261:
L$229:
.stabn 68,0,232,L262
L262:
mov a,@0
mov eax,a
.stabn 68,0,233,L263
L263:
.stabn 224,0,0,L264
L264:
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
public _delay
public delay_bp
.stabs "delay:F15",36,0,0,_delay
.section ".S6",C_CODE
.SYMDEF ".S6" 
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
.stabn 192,0,0,L270
L270:
.stabn 68,0,237,L271
L271:
.stabn 68,0,238,L272
L272:
clr delay_bp-5
.stabn 68,0,239,L273
L273:
jmp @L$269
L$266:
.stabn 68,0,240,L274
L274:
.cfile "C:\mcuproject\xj\fan0919\fan.c(240):"
nop
L$267:
.stabn 68,0,239,L275
L275:
LDA delay_bp-5,0,0
add a,@1
STA delay_bp-5,0,0
L$269:
.stabn 68,0,239,L276
L276:
ULTRRB delay_bp-5,delay_bp+0
jbs STATUS,cf
EXTJMP @L$266
.stabn 68,0,240,L277
L277:
.stabn 68,0,241,L278
L278:
.stabn 224,0,0,L279
L279:
L$265:
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
.section ".S7",C_CODE
.SYMDEF ".S7" 
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
.stabn 192,0,0,L281
L281:
.stabn 68,0,245,L282
L282:
.stabn 68,0,247,L283
L283:
mov a,@49
STA _PRD,0,0
.stabn 68,0,248,L284
L284:
mov a,@17
STA _PDC1,0,0
.stabn 68,0,249,L285
L285:
mov a,@64
STA _CPUCON,0,0
.stabn 68,0,250,L286
L286:
mov a,@16
STA _PWMCON,0,0
.stabn 68,0,251,L287
L287:
.stabn 224,0,0,L288
L288:
L$280:
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
.section ".S8",C_CODE
.SYMDEF ".S8" 
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
.stabn 192,0,0,L290
L290:
.stabn 68,0,254,L291
L291:
.stabn 68,0,255,L292
L292:
clr _PWMCON
.stabn 68,0,256,L293
L293:
.stabn 224,0,0,L294
L294:
L$289:
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
.section ".S9",C_CODE
.SYMDEF ".S9" 
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
.stabn 192,0,0,L296
L296:
.stabn 68,0,260,L297
L297:
.stabn 68,0,262,L298
L298:
clr _PORT5
.stabn 68,0,263,L299
L299:
mov a,@0
STA _P5CR,0,2
.stabn 68,0,264,L300
L300:
clr _PORT6
.stabn 68,0,265,L301
L301:
mov a,@67
STA _P6CR,0,2
.stabn 68,0,266,L302
L302:
mov a,@188
STA _PHCR,0,2
.stabn 68,0,268,L303
L303:
.cfile "C:\mcuproject\xj\fan0919\fan.c(268):"
mov	a,@0x03
.stabn 68,0,269,L304
L304:
.cfile "C:\mcuproject\xj\fan0919\fan.c(269):"
contw
.stabn 68,0,271,L305
L305:
.stabn 224,0,0,L306
L306:
L$295:
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
.section ".S10",C_CODE
.SYMDEF ".S10" INT:-1
_interrupt:
.SYMDEF "_interrupt" INT:-1
.stabn 192,0,0,L322
L322:
.stabn 68,0,275,L323
L323:
.stabn 68,0,278,L324
L324:
.cfile "C:\mcuproject\xj\fan0919\fan.c(278):"
MOV 0x3D,A ;保存 A
.stabn 68,0,279,L325
L325:
.cfile "C:\mcuproject\xj\fan0919\fan.c(279):"
MOV A,0x03
.stabn 68,0,280,L326
L326:
.cfile "C:\mcuproject\xj\fan0919\fan.c(280):"
MOV 0x3E,A ;保存 R3
.stabn 68,0,281,L327
L327:
.cfile "C:\mcuproject\xj\fan0919\fan.c(281):"
MOV A,0x04
.stabn 68,0,282,L328
L328:
.cfile "C:\mcuproject\xj\fan0919\fan.c(282):"
MOV 0x3F,A ;保存 R4
.stabn 68,0,285,L329
L329:
jbs _TCIF,0
EXTJMP @L$308
.stabn 192,0,1,L330
L330:
.stabn 68,0,286,L331
L331:
.stabn 68,0,288,L332
L332:
LDA _ISR,0,0
and a,@254
STA _ISR,0,0
.stabn 68,0,289,L333
L333:
LDA _TCC,0,0
add a,@206
STA _TCC,0,0
.stabn 68,0,291,L334
L334:
LDA _intCount,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _intCount,0,0
ULTRIB ecx,0x32
jbs STATUS, cf
EXTJMP L$310
.stabn 192,0,2,L335
L335:
.stabn 68,0,292,L336
L336:
.stabn 68,0,293,L337
L337:
clr _intCount
.stabn 68,0,294,L338
L338:
bs _IntFlag,0
.stabn 68,0,295,L339
L339:
LDA _count500ms,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _count500ms,0,0
ULTRIB ecx,0x32
jbs STATUS, cf
EXTJMP L$312
.stabn 68,0,296,L340
L340:
clr _count500ms
L$312:
.stabn 68,0,297,L341
L341:
.stabn 224,0,2,L342
L342:
L$310:
.stabn 68,0,298,L343
L343:
EQNEPRIB _ledStep,1
jbs STATUS,zf
EXTJMP @L$314
.stabn 192,0,2,L344
L344:
.stabn 68,0,299,L345
L345:
.stabn 68,0,300,L346
L346:
LDA _count64ms,0,0
mov ecx,a
mov a,@1
add ecx,a
mov a,ecx
STA _count64ms,0,0
ULTRIB ecx,0x20
jbs STATUS, cf
EXTJMP L$316
.stabn 192,0,3,L347
L347:
.stabn 68,0,301,L348
L348:
.stabn 68,0,302,L349
L349:
clr _count64ms
.stabn 68,0,303,L350
L350:
.stabn 224,0,3,L351
L351:
L$316:
.stabn 68,0,304,L352
L352:
ULTRIB _count64ms,0x10
jbc STATUS, cf
EXTJMP L$318
.stabn 68,0,305,L353
L353:
bs _P50,0
jmp @L$315
L$318:
.stabn 68,0,307,L354
L354:
bc _P50,0
.stabn 68,0,308,L355
L355:
.stabn 224,0,2,L356
L356:
jmp @L$315
L$314:
.stabn 68,0,309,L357
L357:
EQNEPRIB _ledStep,2
jbs STATUS,zf
EXTJMP @L$320
.stabn 192,0,2,L358
L358:
.stabn 68,0,310,L359
L359:
.stabn 68,0,311,L360
L360:
bs _P50,0
.stabn 68,0,312,L361
L361:
.stabn 224,0,2,L362
L362:
jmp @L$321
L$320:
.stabn 192,0,2,L363
L363:
.stabn 68,0,314,L364
L364:
.stabn 68,0,315,L365
L365:
bc _P50,0
.stabn 68,0,316,L366
L366:
.stabn 224,0,2,L367
L367:
L$321:
L$315:
.stabn 68,0,318,L368
L368:
.stabn 224,0,1,L369
L369:
L$308:
.stabn 68,0,322,L370
L370:
.cfile "C:\mcuproject\xj\fan0919\fan.c(322):"
MOV A,0x3F ;返回 R4
.stabn 68,0,323,L371
L371:
.cfile "C:\mcuproject\xj\fan0919\fan.c(323):"
MOV 0x04,A
.stabn 68,0,324,L372
L372:
.cfile "C:\mcuproject\xj\fan0919\fan.c(324):"
MOV A,0x3E ;返回 R3
.stabn 68,0,325,L373
L373:
.cfile "C:\mcuproject\xj\fan0919\fan.c(325):"
MOV 0x03,A
.stabn 68,0,326,L374
L374:
.cfile "C:\mcuproject\xj\fan0919\fan.c(326):"
SWAP 0x3D  ;返回 A
.stabn 68,0,327,L375
L375:
.cfile "C:\mcuproject\xj\fan0919\fan.c(327):"
SWAPA 0x3D
.stabn 68,0,329,L376
L376:
.stabn 224,0,0,L377
L377:
L$307:
reti
.STACK interrupt_bp,local,0
public _interrupt_l
public interrupt_l_bp
.stabs "interrupt_l:F15",36,0,0,_interrupt_l
.section ".S11",C_CODE
.SYMDEF ".S11" LOWINT:0,8
_interrupt_l:
.SYMDEF "_interrupt_l" LOWINT:0,8
.stabn 192,0,0,L379
L379:
.stabn 68,0,334,L380
L380:
.stabn 68,0,336,L381
L381:
.stabn 224,0,0,L382
L382:
L$378:
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
