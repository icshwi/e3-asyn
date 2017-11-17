
# Get where_am_I before include driver.makefile
# if after driver.makefile where_am_I is the epics base
# 
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include ${REQUIRE_TOOLS}/driver.makefile

EPICS_LIBCOM_ONLY=NO

USR_CFLAGS   += -Wno-unused-variable
USR_CFLAGS   += -Wno-unused-function
USR_CPPFLAGS += -Wno-unused-variable
USR_CPPFLAGS += -Wno-unused-function


ASYN = asyn


# asynRecord.h should be converted first
#

# Order the sources compiling....

DEVGPIB:=$(ASYN)/devGpib
VXI11:=$(ASYN)/vxi11
ASYNRECORD:=$(ASYN)/asynRecord
DEVEPICS:=$(ASYN)/devEpics
ASYNPORTDRIVER:=$(ASYN)/asynPortDriver
MISCELLANEOUS:=$(ASYN)/miscellaneous
INTERFACES:=$(ASYN)/interfaces
DRVASYNSERIAL:=$(ASYN)/drvAsynSerial
ASYNGPIB:=$(ASYN)/asynGpib
ASYNDRIVER:=$(ASYN)/asynDriver


USR_INCLUDES += -I$(where_am_I)/$(DEVGPIB)
USR_INCLUDES += -I$(where_am_I)/$(VXI11)
USR_INCLUDES += -I$(where_am_I)/$(ASYNRECORD)
USR_INCLUDES += -I$(where_am_I)/$(DEVEPICS)
USR_INCLUDES += -I$(where_am_I)/$(ASYNPORTDRIVER)
USR_INCLUDES += -I$(where_am_I)/$(MISCELLANEOUS)
USR_INCLUDES += -I$(where_am_I)/$(INTERFACES)
USR_INCLUDES += -I$(where_am_I)/$(DRVASYNSERIAL)
USR_INCLUDES += -I$(where_am_I)/$(ASYNGPIB)
USR_INCLUDES += -I$(where_am_I)/$(ASYNDRIVER)

HEADERS += $(ASYNDRIVER)/asynDriver.h
HEADERS += $(ASYNDRIVER)/epicsInterruptibleSyscall.h

HEADERS += $(ASYNGPIB)/asynGpibDriver.h
SOURCES += $(ASYNGPIB)/asynGpib.c


HEADERS += $(DRVASYNSERIAL)/drvAsynSerialPort.h
SOURCES += $(DRVASYNSERIAL)/drvAsynSerialPort.c
DBDS     += $(DRVASYNSERIAL)/drvAsynSerialPort.dbd

HEADERS += $(DRVASYNSERIAL)/drvAsynIPPort.h
HEADERS += $(DRVASYNSERIAL)/drvAsynIPServerPort.h

SOURCES += $(DRVASYNSERIAL)/drvAsynIPPort.c
SOURCES += $(DRVASYNSERIAL)/drvAsynIPServerPort.c
DBDS     += $(DRVASYNSERIAL)/drvAsynIPPort.dbd



HEADERS += $(INTERFACES)/asynInt32.h
HEADERS += $(INTERFACES)/asynInt32SyncIO.h
HEADERS += $(INTERFACES)/asynUInt32Digital.h
HEADERS += $(INTERFACES)/asynUInt32DigitalSyncIO.h
HEADERS += $(INTERFACES)/asynFloat64.h
HEADERS += $(INTERFACES)/asynFloat64SyncIO.h
HEADERS += $(INTERFACES)/asynInt8Array.h
HEADERS += $(INTERFACES)/asynInt8ArraySyncIO.h
HEADERS += $(INTERFACES)/asynInt16Array.h
HEADERS += $(INTERFACES)/asynInt16ArraySyncIO.h
HEADERS += $(INTERFACES)/asynInt32Array.h
HEADERS += $(INTERFACES)/asynInt32ArraySyncIO.h
HEADERS += $(INTERFACES)/asynFloat32Array.h
HEADERS += $(INTERFACES)/asynFloat32ArraySyncIO.h
HEADERS += $(INTERFACES)/asynFloat64Array.h
HEADERS += $(INTERFACES)/asynFloat64ArraySyncIO.h
HEADERS += $(INTERFACES)/asynOctet.h
HEADERS += $(INTERFACES)/asynOctetSyncIO.h
HEADERS += $(INTERFACES)/asynGenericPointer.h
HEADERS += $(INTERFACES)/asynGenericPointerSyncIO.h
HEADERS += $(INTERFACES)/asynEnum.h
HEADERS += $(INTERFACES)/asynEnumSyncIO.h
HEADERS += $(INTERFACES)/asynCommonSyncIO.h
HEADERS += $(INTERFACES)/asynOption.h
HEADERS += $(INTERFACES)/asynOptionSyncIO.h
HEADERS += $(INTERFACES)/asynDrvUser.h
HEADERS += $(INTERFACES)/asynStandardInterfaces.h


SOURCES += $(INTERFACES)/asynInt32Base.c
SOURCES += $(INTERFACES)/asynInt32SyncIO.c
SOURCES += $(INTERFACES)/asynInt8ArrayBase.c
SOURCES += $(INTERFACES)/asynInt8ArraySyncIO.c
SOURCES += $(INTERFACES)/asynInt16ArrayBase.c
SOURCES += $(INTERFACES)/asynInt16ArraySyncIO.c
SOURCES += $(INTERFACES)/asynInt32ArrayBase.c
SOURCES += $(INTERFACES)/asynInt32ArraySyncIO.c
SOURCES += $(INTERFACES)/asynUInt32DigitalBase.c
SOURCES += $(INTERFACES)/asynUInt32DigitalSyncIO.c
SOURCES += $(INTERFACES)/asynFloat64Base.c
SOURCES += $(INTERFACES)/asynFloat64SyncIO.c
SOURCES += $(INTERFACES)/asynFloat32ArrayBase.c
SOURCES += $(INTERFACES)/asynFloat32ArraySyncIO.c
SOURCES += $(INTERFACES)/asynFloat64ArrayBase.c
SOURCES += $(INTERFACES)/asynFloat64ArraySyncIO.c
SOURCES += $(INTERFACES)/asynOctetBase.c
SOURCES += $(INTERFACES)/asynOctetSyncIO.c
SOURCES += $(INTERFACES)/asynGenericPointerBase.c
SOURCES += $(INTERFACES)/asynGenericPointerSyncIO.c
SOURCES += $(INTERFACES)/asynEnumBase.c
SOURCES += $(INTERFACES)/asynEnumSyncIO.c
SOURCES += $(INTERFACES)/asynCommonSyncIO.c
SOURCES += $(INTERFACES)/asynOptionSyncIO.c
SOURCES += $(INTERFACES)/asynStandardInterfacesBase.c



HEADERS += $(MISCELLANEOUS)/asynShellCommands.h
HEADERS += $(MISCELLANEOUS)/asynInterposeCom.h
HEADERS += $(MISCELLANEOUS)/asynInterposeEos.h
HEADERS += $(MISCELLANEOUS)/asynInterposeFlush.h
SOURCES += $(MISCELLANEOUS)/asynShellCommands.c
SOURCES += $(MISCELLANEOUS)/asynInterposeCom.c
SOURCES += $(MISCELLANEOUS)/asynInterposeEos.c
SOURCES += $(MISCELLANEOUS)/asynInterposeFlush.c

DBDS     += $(MISCELLANEOUS)/asyn.dbd




HEADERS += $(ASYNPORTDRIVER)/exceptions/ParamListInvalidIndex.h
HEADERS += $(ASYNPORTDRIVER)/exceptions/ParamListParamNotFound.h
HEADERS += $(ASYNPORTDRIVER)/exceptions/ParamValNotDefined.h
HEADERS += $(ASYNPORTDRIVER)/exceptions/ParamValStringSizeRequestTooBig.h
HEADERS += $(ASYNPORTDRIVER)/exceptions/ParamValWrongType.h
HEADERS += $(ASYNPORTDRIVER)/exceptions/ParamValValueNotChanged.h

SOURCES += $(ASYNPORTDRIVER)/exceptions/ParamListInvalidIndex.cpp
SOURCES += $(ASYNPORTDRIVER)/exceptions/ParamListParamNotFound.cpp
SOURCES += $(ASYNPORTDRIVER)/exceptions/ParamValNotDefined.cpp
SOURCES += $(ASYNPORTDRIVER)/exceptions/ParamValStringSizeRequestTooBig.cpp
SOURCES += $(ASYNPORTDRIVER)/exceptions/ParamValWrongType.cpp
SOURCES += $(ASYNPORTDRIVER)/exceptions/ParamValValueNotChanged.cpp




DBDS       += $(DEVEPICS)/devAsynInt8Array.dbd
DBDS       += $(DEVEPICS)/devAsynInt16Array.dbd
DBDS       += $(DEVEPICS)/devAsynInt32Array.dbd
DBDS       += $(DEVEPICS)/devAsynFloat32Array.dbd
DBDS       += $(DEVEPICS)/devAsynFloat64Array.dbd

DBDS       += $(DEVEPICS)/devAsynOctet.dbd
DBDS       += $(DEVEPICS)/devAsynInt32.dbd
DBDS       += $(DEVEPICS)/devAsynFloat64.dbd
DBDS       += $(DEVEPICS)/devAsynUInt32Digital.dbd
DBDS       += $(DEVEPICS)/devAsynFloat64TimeSeries.dbd
DBDS       += $(DEVEPICS)/devAsynInt32TimeSeries.dbd
DBDS       += $(DEVEPICS)/devEpics.dbd


TEMPLATES += $(DEVEPICS)/asynInt32TimeSeries.db
TEMPLATES += $(DEVEPICS)/asynFloat64TimeSeries.db


HEADERS   += $(DEVEPICS)/asynEpicsUtils.h
SOURCES   += $(DEVEPICS)/devAsynOctet.c
SOURCES   += $(DEVEPICS)/asynEpicsUtils.c
SOURCES   += $(DEVEPICS)/devAsynInt32.c
SOURCES   += $(DEVEPICS)/devAsynInt8Array.c
SOURCES   += $(DEVEPICS)/devAsynInt16Array.c
SOURCES   += $(DEVEPICS)/devAsynInt32Array.c
SOURCES   += $(DEVEPICS)/devAsynInt32TimeSeries.c
SOURCES   += $(DEVEPICS)/devAsynUInt32Digital.c
SOURCES   += $(DEVEPICS)/devAsynFloat64.c
SOURCES   += $(DEVEPICS)/devAsynFloat32Array.c
SOURCES   += $(DEVEPICS)/devAsynFloat64Array.c
SOURCES   += $(DEVEPICS)/devAsynFloat64TimeSeries.c



# Should check it...

#DBDS      += $(ASYNRECORD)/asynRecord.dbd
DBDS      += $(ASYNRECORD)/devAsynRecord.dbd
SOURCES   += $(ASYNRECORD)/asynRecord.c
SOURCES   += $(ASYNRECORD)/drvAsyn.c

TEMPLATES += $(ASYNRECORD)/asynRecord.db





DBDS += $(VXI11)/drvVxi11.dbd

HEADERS += $(VXI11)/drvVxi11.h
HEADERS += $(VXI11)/osiRpc.h
HEADERS += $(VXI11)/vxi11core.h
HEADERS += $(VXI11)/vxi11intr.h
HEADERS += $(VXI11)/vxi11.h

SOURCES += $(VXI11)/E5810Reboot.c

#SOURCES += $(VXI11)/vxi11intr_xdr.c
SOURCES += $(VXI11)/vxi11core_xdr.c


SOURCES += $(VXI11)/drvVxi11.c

SOURCES += $(VXI11)/E5810Reboot.c
SOURCES += $(VXI11)/E2050Reboot.c
SOURCES += $(VXI11)/TDS3000Reboot.c


DBDS     += $(DEVGPIB)/devGpib.dbd

HEADERS += $(DEVGPIB)/devGpib.h
HEADERS += $(DEVGPIB)/devSupportGpib.h
HEADERS += $(DEVGPIB)/devCommonGpib.h

SOURCES += $(DEVGPIB)/devCommonGpib.c
SOURCES += $(DEVGPIB)/devSupportGpib.c
SOURCES += $(DEVGPIB)/boSRQonOff.c



# For 3.14
#drvVxi11$(OBJ): ../$(VXI11)/vxi11intr.h
# For 3.15
drvVxi11$(DEP): ../$(VXI11)/vxi11intr.h ../$(VXI11)/vxi11core.h
vxi11core_xdr.c$(DEP): ../$(VXI11)/vxi11core.h

ifdef T_A

.SECONDARY: ../$(VXI11)/vxi11core_xdr.c ../$(VXI11)/vxi11intr_xdr.c

%.h %_xdr.c: %.rpcl
	@echo "@ $@"
	@echo "EPICS MSI $(MSI3_15)"
	@echo "EPICS PERL $(PERL)"
	@echo "$(DBTORECORDTYPEH)"
	cp $< .
	rpcgen $*.rpcl

endif


# It is weird to generate a tentative header in asynRecord directory
# in order to compile other files,
# at the end of driver.Makefile it will be replaced with asynRecord.dbd (from driver.makefile)
# I think, however, I have to check them later..
#
asynRecord$(DEP): ../$(ASYNRECORD)/asynRecord.h

ifdef T_A

.SECONDARY: ../$(ASYNRECORD)/asynRecord.c

%.h %.c: %.dbd
	@echo "@ $@"
	@echo "% $%"
	@echo "< $<"
	@echo "? $?"
	@echo "^ $^"
	@echo "+ $+"
	@echo "| $|"
	@echo "* $*"
	@echo "EPICS MSI $(MSI3_15)"
	@echo "EPICS PERL $(PERL)"
	@echo "$(DBTORECORDTYPEH)"
	$(DBTORECORDTYPEH)  $(USR_INCLUDES) -I$(EPICS_BASE)/dbd -o $@ $<
endif
