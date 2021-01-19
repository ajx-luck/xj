# SONIX DSP Makefile Version:1.0.0.2
# Defination
COMPILER = "c:\sonix\SN8_C_~1.209\bin\build\sn8pc.exe"
GMA = "C:\Sonix\SN8_C_~1.209\Bin\Build\gma.exe"
LINKER = "C:\Sonix\SN8_C_~1.209\Bin\Build\slink.exe"
CONVERT = "C:\Sonix\SN8_C_~1.209\Bin\Build\RcvSN8.exe"

# Define Path Macro
PRJ_PATH=.
OBJ_PATH=.\Obj
INC_PATH=.\Include
LIB_PATH=.\Lib
C_INC_PATH=C:\Sonix\SN8_C_~1.209\C\include
OUT_PATH=.\Bin
VPATH=.\:$(OBJ_PATH):$(LIB_PATH):$(INC_PATH):$(C_INC_PATH):$(OUT_PATH)

# Define Option Flags
COMPILER_FLAGS = -target=SN8P2711B -INI="C:\Sonix\SN8_C_~1.209\Bin\Build\SN8P2700A.ini" -PROJECTNAME=".\AD_NTC_PROJECT.prj" -WL=3 -Chip_Series=2 -A -g -I.\Include -IC:\Sonix\SN8_C_~1.209\C\include -NoCALLHL -NoMUL -NoHL -NoX -PUSH2 -NoGlobalOpt -tempdir="$(OBJ_PATH)"  -cpp_skip_asm -DICE_Mode=0
GMA_FLAGS = /INI:"SN8P2700A.ini" /ID1:0 /ID2:0  /MACHINE:SN8P2711B  /Chip_Series:2 /NOPeephole: /PATH:".\Include" /PROJECTNAME:".\AD_NTC_PROJECT.prj" /WL:3 /DEFINE:ICE_Mode=0 /DEFINE:SN8P2711B=1  /OutputPath:"$(OBJ_PATH)" 
LINK_FLAGS = /MACHINE:SN8P2711B /Chip_Series:2 /INI:"SN8P2700A.ini" /WL:3 /OutputFile:"$(OUT_PATH)/AD_NTC_PROJECT.out"  /MAP:"$(OBJ_PATH)\AD_NTC_PROJECT.map"   /LISTFILE:  /STDLIB:".\Obj"    /PATH:"$(LIB_PATH)" /STACK: /PROJECTNAME:".\AD_NTC_PROJECT.prj"
CONV_FLAGS = /MACHINE:SN8P2711B /INI:"SN8P2700A.ini" /WL:3 /OutputFile:"$(OUT_PATH)/AD_NTC_PROJECT.sn8"  /PROJECTNAME:".\AD_NTC_PROJECT.prj" /IDSVersion:V1.20.219.209n /Chip_Series:2 /OSLIB:".\Obj"  
LINK_DEP_FILES = $(OBJ_PATH)\main.o   \

# Define Rule
$(OBJ_PATH)\main.asm: .\Src\main.c $(C_INC_PATH)\SN8P2711B.h $(PRJ_PATH)\AD_NTC_PROJECT.cfg .\Include\define.h
	@$(COMPILER) $(COMPILER_FLAGS) -o $@ $^ 

$(OBJ_PATH)\main.o: $(OBJ_PATH)\main.asm $(PRJ_PATH)\AD_NTC_PROJECT.cfg
	@$(GMA) $(GMA_FLAGS) /CSource: /CASE: $< 

$(OUT_PATH)\AD_NTC_PROJECT.out: $(LINK_DEP_FILES) $(PRJ_PATH)\AD_NTC_PROJECT.cop
	@$(LINKER) $(LINK_FLAGS) /CSource: /CASE: $(LINK_DEP_FILES) 

$(OUT_PATH)\AD_NTC_PROJECT.sn8: $(OUT_PATH)\AD_NTC_PROJECT.out $(PRJ_PATH)\AD_NTC_PROJECT.cop
	@$(CONVERT) $(CONV_FLAGS) $^ 


# Define Clean Rule
Clean:
	@del /F /Q $(OBJ_PATH)\*.*;
	@if EXIST .\AD_NTC_PROJECT.prj.stb del .\AD_NTC_PROJECT.prj.stb;
	@if EXIST .\AD_NTC_PROJECT.out del .\AD_NTC_PROJECT.out;
	@if EXIST .\AD_NTC_PROJECT.sn8 del .\AD_NTC_PROJECT.sn8;
	@if EXIST .\AD_NTC_PROJECT.sn8.dep del .\AD_NTC_PROJECT.sn8.dep;
	@if EXIST $(OUT_PATH)\AD_NTC_PROJECT.out del $(OUT_PATH)\AD_NTC_PROJECT.out;
	@if EXIST $(OUT_PATH)\AD_NTC_PROJECT.sn8 del $(OUT_PATH)\AD_NTC_PROJECT.sn8;
	@if EXIST $(OUT_PATH)\AD_NTC_PROJECT.sn8.dep del $(OUT_PATH)\AD_NTC_PROJECT.sn8.dep;

# Don't keep invalid files, command line must return non-zero(1 or 2) value 
# to validate delete on error mechanism 
# else return 0 for success

.DELETE_ON_ERROR:

Begin: 

Build: Begin All 

Rebuild: Clean Build 

All:$(OUT_PATH)\AD_NTC_PROJECT.out $(OUT_PATH)\AD_NTC_PROJECT.sn8
