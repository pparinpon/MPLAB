#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/16F18346_Link_IC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/16F18346_Link_IC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=D:/programdata/16F18346_Link_IC.X/main.c D:/programdata/16F18346_Link_IC.X/spiControl.c D:/programdata/16F18346_Link_IC.X/util.c D:/programdata/16F18346_Link_IC.X/command.c D:/programdata/16F18346_Link_IC.X/calibrate_mode.c D:/programdata/16F18346_Link_IC.X/comu_type.c D:/programdata/16F18346_Link_IC.X/normal_mode.c D:/programdata/16F18346_Link_IC.X/IO_control.c D:/programdata/16F18346_Link_IC.X/cal_position.c D:/programdata/16F18346_Link_IC.X/auto_conrtol.c D:/programdata/16F18346_Link_IC.X/iterative_method.c D:/programdata/16F18346_Link_IC.X/compute_mode.c struct.c eeprom.c cargo_index.c D:/programdata/16F18346_Link_IC.X/trigonometric.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1140681021/main.p1 ${OBJECTDIR}/_ext/1140681021/spiControl.p1 ${OBJECTDIR}/_ext/1140681021/util.p1 ${OBJECTDIR}/_ext/1140681021/command.p1 ${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1 ${OBJECTDIR}/_ext/1140681021/comu_type.p1 ${OBJECTDIR}/_ext/1140681021/normal_mode.p1 ${OBJECTDIR}/_ext/1140681021/IO_control.p1 ${OBJECTDIR}/_ext/1140681021/cal_position.p1 ${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1 ${OBJECTDIR}/_ext/1140681021/iterative_method.p1 ${OBJECTDIR}/_ext/1140681021/compute_mode.p1 ${OBJECTDIR}/struct.p1 ${OBJECTDIR}/eeprom.p1 ${OBJECTDIR}/cargo_index.p1 ${OBJECTDIR}/_ext/1140681021/trigonometric.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1140681021/main.p1.d ${OBJECTDIR}/_ext/1140681021/spiControl.p1.d ${OBJECTDIR}/_ext/1140681021/util.p1.d ${OBJECTDIR}/_ext/1140681021/command.p1.d ${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1.d ${OBJECTDIR}/_ext/1140681021/comu_type.p1.d ${OBJECTDIR}/_ext/1140681021/normal_mode.p1.d ${OBJECTDIR}/_ext/1140681021/IO_control.p1.d ${OBJECTDIR}/_ext/1140681021/cal_position.p1.d ${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1.d ${OBJECTDIR}/_ext/1140681021/iterative_method.p1.d ${OBJECTDIR}/_ext/1140681021/compute_mode.p1.d ${OBJECTDIR}/struct.p1.d ${OBJECTDIR}/eeprom.p1.d ${OBJECTDIR}/cargo_index.p1.d ${OBJECTDIR}/_ext/1140681021/trigonometric.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1140681021/main.p1 ${OBJECTDIR}/_ext/1140681021/spiControl.p1 ${OBJECTDIR}/_ext/1140681021/util.p1 ${OBJECTDIR}/_ext/1140681021/command.p1 ${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1 ${OBJECTDIR}/_ext/1140681021/comu_type.p1 ${OBJECTDIR}/_ext/1140681021/normal_mode.p1 ${OBJECTDIR}/_ext/1140681021/IO_control.p1 ${OBJECTDIR}/_ext/1140681021/cal_position.p1 ${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1 ${OBJECTDIR}/_ext/1140681021/iterative_method.p1 ${OBJECTDIR}/_ext/1140681021/compute_mode.p1 ${OBJECTDIR}/struct.p1 ${OBJECTDIR}/eeprom.p1 ${OBJECTDIR}/cargo_index.p1 ${OBJECTDIR}/_ext/1140681021/trigonometric.p1

# Source Files
SOURCEFILES=D:/programdata/16F18346_Link_IC.X/main.c D:/programdata/16F18346_Link_IC.X/spiControl.c D:/programdata/16F18346_Link_IC.X/util.c D:/programdata/16F18346_Link_IC.X/command.c D:/programdata/16F18346_Link_IC.X/calibrate_mode.c D:/programdata/16F18346_Link_IC.X/comu_type.c D:/programdata/16F18346_Link_IC.X/normal_mode.c D:/programdata/16F18346_Link_IC.X/IO_control.c D:/programdata/16F18346_Link_IC.X/cal_position.c D:/programdata/16F18346_Link_IC.X/auto_conrtol.c D:/programdata/16F18346_Link_IC.X/iterative_method.c D:/programdata/16F18346_Link_IC.X/compute_mode.c struct.c eeprom.c cargo_index.c D:/programdata/16F18346_Link_IC.X/trigonometric.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/16F18346_Link_IC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F18346
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1140681021/main.p1: D:/programdata/16F18346_Link_IC.X/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/main.p1  D:/programdata/16F18346_Link_IC.X/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/main.d ${OBJECTDIR}/_ext/1140681021/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/spiControl.p1: D:/programdata/16F18346_Link_IC.X/spiControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/spiControl.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/spiControl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/spiControl.p1  D:/programdata/16F18346_Link_IC.X/spiControl.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/spiControl.d ${OBJECTDIR}/_ext/1140681021/spiControl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/spiControl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/util.p1: D:/programdata/16F18346_Link_IC.X/util.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/util.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/util.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/util.p1  D:/programdata/16F18346_Link_IC.X/util.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/util.d ${OBJECTDIR}/_ext/1140681021/util.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/util.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/command.p1: D:/programdata/16F18346_Link_IC.X/command.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/command.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/command.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/command.p1  D:/programdata/16F18346_Link_IC.X/command.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/command.d ${OBJECTDIR}/_ext/1140681021/command.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/command.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1: D:/programdata/16F18346_Link_IC.X/calibrate_mode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1  D:/programdata/16F18346_Link_IC.X/calibrate_mode.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/calibrate_mode.d ${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/comu_type.p1: D:/programdata/16F18346_Link_IC.X/comu_type.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/comu_type.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/comu_type.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/comu_type.p1  D:/programdata/16F18346_Link_IC.X/comu_type.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/comu_type.d ${OBJECTDIR}/_ext/1140681021/comu_type.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/comu_type.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/normal_mode.p1: D:/programdata/16F18346_Link_IC.X/normal_mode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/normal_mode.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/normal_mode.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/normal_mode.p1  D:/programdata/16F18346_Link_IC.X/normal_mode.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/normal_mode.d ${OBJECTDIR}/_ext/1140681021/normal_mode.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/normal_mode.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/IO_control.p1: D:/programdata/16F18346_Link_IC.X/IO_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/IO_control.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/IO_control.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/IO_control.p1  D:/programdata/16F18346_Link_IC.X/IO_control.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/IO_control.d ${OBJECTDIR}/_ext/1140681021/IO_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/IO_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/cal_position.p1: D:/programdata/16F18346_Link_IC.X/cal_position.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/cal_position.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/cal_position.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/cal_position.p1  D:/programdata/16F18346_Link_IC.X/cal_position.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/cal_position.d ${OBJECTDIR}/_ext/1140681021/cal_position.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/cal_position.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1: D:/programdata/16F18346_Link_IC.X/auto_conrtol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1  D:/programdata/16F18346_Link_IC.X/auto_conrtol.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/auto_conrtol.d ${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/iterative_method.p1: D:/programdata/16F18346_Link_IC.X/iterative_method.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/iterative_method.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/iterative_method.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/iterative_method.p1  D:/programdata/16F18346_Link_IC.X/iterative_method.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/iterative_method.d ${OBJECTDIR}/_ext/1140681021/iterative_method.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/iterative_method.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/compute_mode.p1: D:/programdata/16F18346_Link_IC.X/compute_mode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/compute_mode.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/compute_mode.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/compute_mode.p1  D:/programdata/16F18346_Link_IC.X/compute_mode.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/compute_mode.d ${OBJECTDIR}/_ext/1140681021/compute_mode.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/compute_mode.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/struct.p1: struct.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/struct.p1.d 
	@${RM} ${OBJECTDIR}/struct.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/struct.p1  struct.c 
	@-${MV} ${OBJECTDIR}/struct.d ${OBJECTDIR}/struct.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/struct.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/eeprom.p1: eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/eeprom.p1  eeprom.c 
	@-${MV} ${OBJECTDIR}/eeprom.d ${OBJECTDIR}/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/cargo_index.p1: cargo_index.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cargo_index.p1.d 
	@${RM} ${OBJECTDIR}/cargo_index.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/cargo_index.p1  cargo_index.c 
	@-${MV} ${OBJECTDIR}/cargo_index.d ${OBJECTDIR}/cargo_index.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/cargo_index.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/trigonometric.p1: D:/programdata/16F18346_Link_IC.X/trigonometric.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/trigonometric.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/trigonometric.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/trigonometric.p1  D:/programdata/16F18346_Link_IC.X/trigonometric.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/trigonometric.d ${OBJECTDIR}/_ext/1140681021/trigonometric.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/trigonometric.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1140681021/main.p1: D:/programdata/16F18346_Link_IC.X/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/main.p1  D:/programdata/16F18346_Link_IC.X/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/main.d ${OBJECTDIR}/_ext/1140681021/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/spiControl.p1: D:/programdata/16F18346_Link_IC.X/spiControl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/spiControl.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/spiControl.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/spiControl.p1  D:/programdata/16F18346_Link_IC.X/spiControl.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/spiControl.d ${OBJECTDIR}/_ext/1140681021/spiControl.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/spiControl.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/util.p1: D:/programdata/16F18346_Link_IC.X/util.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/util.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/util.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/util.p1  D:/programdata/16F18346_Link_IC.X/util.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/util.d ${OBJECTDIR}/_ext/1140681021/util.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/util.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/command.p1: D:/programdata/16F18346_Link_IC.X/command.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/command.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/command.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/command.p1  D:/programdata/16F18346_Link_IC.X/command.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/command.d ${OBJECTDIR}/_ext/1140681021/command.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/command.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1: D:/programdata/16F18346_Link_IC.X/calibrate_mode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1  D:/programdata/16F18346_Link_IC.X/calibrate_mode.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/calibrate_mode.d ${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/calibrate_mode.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/comu_type.p1: D:/programdata/16F18346_Link_IC.X/comu_type.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/comu_type.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/comu_type.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/comu_type.p1  D:/programdata/16F18346_Link_IC.X/comu_type.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/comu_type.d ${OBJECTDIR}/_ext/1140681021/comu_type.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/comu_type.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/normal_mode.p1: D:/programdata/16F18346_Link_IC.X/normal_mode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/normal_mode.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/normal_mode.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/normal_mode.p1  D:/programdata/16F18346_Link_IC.X/normal_mode.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/normal_mode.d ${OBJECTDIR}/_ext/1140681021/normal_mode.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/normal_mode.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/IO_control.p1: D:/programdata/16F18346_Link_IC.X/IO_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/IO_control.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/IO_control.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/IO_control.p1  D:/programdata/16F18346_Link_IC.X/IO_control.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/IO_control.d ${OBJECTDIR}/_ext/1140681021/IO_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/IO_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/cal_position.p1: D:/programdata/16F18346_Link_IC.X/cal_position.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/cal_position.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/cal_position.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/cal_position.p1  D:/programdata/16F18346_Link_IC.X/cal_position.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/cal_position.d ${OBJECTDIR}/_ext/1140681021/cal_position.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/cal_position.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1: D:/programdata/16F18346_Link_IC.X/auto_conrtol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1  D:/programdata/16F18346_Link_IC.X/auto_conrtol.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/auto_conrtol.d ${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/auto_conrtol.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/iterative_method.p1: D:/programdata/16F18346_Link_IC.X/iterative_method.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/iterative_method.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/iterative_method.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/iterative_method.p1  D:/programdata/16F18346_Link_IC.X/iterative_method.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/iterative_method.d ${OBJECTDIR}/_ext/1140681021/iterative_method.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/iterative_method.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/compute_mode.p1: D:/programdata/16F18346_Link_IC.X/compute_mode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/compute_mode.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/compute_mode.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/compute_mode.p1  D:/programdata/16F18346_Link_IC.X/compute_mode.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/compute_mode.d ${OBJECTDIR}/_ext/1140681021/compute_mode.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/compute_mode.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/struct.p1: struct.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/struct.p1.d 
	@${RM} ${OBJECTDIR}/struct.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/struct.p1  struct.c 
	@-${MV} ${OBJECTDIR}/struct.d ${OBJECTDIR}/struct.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/struct.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/eeprom.p1: eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/eeprom.p1  eeprom.c 
	@-${MV} ${OBJECTDIR}/eeprom.d ${OBJECTDIR}/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/cargo_index.p1: cargo_index.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cargo_index.p1.d 
	@${RM} ${OBJECTDIR}/cargo_index.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/cargo_index.p1  cargo_index.c 
	@-${MV} ${OBJECTDIR}/cargo_index.d ${OBJECTDIR}/cargo_index.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/cargo_index.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1140681021/trigonometric.p1: D:/programdata/16F18346_Link_IC.X/trigonometric.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1140681021" 
	@${RM} ${OBJECTDIR}/_ext/1140681021/trigonometric.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1140681021/trigonometric.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1140681021/trigonometric.p1  D:/programdata/16F18346_Link_IC.X/trigonometric.c 
	@-${MV} ${OBJECTDIR}/_ext/1140681021/trigonometric.d ${OBJECTDIR}/_ext/1140681021/trigonometric.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1140681021/trigonometric.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/16F18346_Link_IC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/16F18346_Link_IC.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/16F18346_Link_IC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/16F18346_Link_IC.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/16F18346_Link_IC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/16F18346_Link_IC.X.${IMAGE_TYPE}.map  --double=24 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/16F18346_Link_IC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
