include ${REQUIRE_TOOLS}/driver.makefile


EPICS_LIBCOM_ONLY=NO

USR_CFLAGS   += -Wno-unused-variable
USR_CFLAGS   += -Wno-unused-function
USR_CPPFLAGS += -Wno-unused-variable
USR_CPPFLAGS += -Wno-unused-function


ASYN = asyn


ifneq ($(EPICS_LIBCOM_ONLY),YES)

  ASYNRECORD += $(ASYN)/asynRecord
#  DBDINC += asynRecord
  USR_CFLAGS += -I$(COMMON_DIR)/
  DBDS       += $(ASYNRECORD)/asynRecord.dbd
  DBDS        += $(ASYNRECORD)/devAsynRecord.dbd
  SOURCES    += $(ASYNRECORD)/asynRecord.c
  SOURCES    += $(ASYNRECORD)/drvAsyn.c
  TEMPLATES  += $(ASYNRECORD)/asynRecord.db

  DEVEPICS = $(ASYN)/devEpics

  DBDS       += $(DEVEPICS)/devAsynInt32.dbd
  DBDS       += $(DEVEPICS)/devAsynInt8Array.dbd
  DBDS       += $(DEVEPICS)/devAsynInt16Array.dbd
  DBDS       += $(DEVEPICS)/devAsynInt32Array.dbd
  DBDS       += $(DEVEPICS)/devAsynInt32TimeSeries.dbd
  DBDS       += $(DEVEPICS)/devAsynUInt32Digital.dbd
  DBDS       += $(DEVEPICS)/devAsynFloat64.dbd
  DBDS       += $(DEVEPICS)/devAsynFloat32Array.dbd
  DBDS       += $(DEVEPICS)/devAsynFloat64Array.dbd
  DBDS       += $(DEVEPICS)/devAsynFloat64TimeSeries.dbd
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


endif



ASYNDRIVER = $(ASYN)/asynDriver
HEADERS += $(ASYNDRIVER)/asynDriver.h
HEADERS += $(ASYNDRIVER)/epicsInterruptibleSyscall.h

SOURCES += $(ASYNDRIVER)/asynManager.c
SOURCES += $(ASYNDRIVER)/epicsInterruptibleSyscall.c


ASYNGPIB = $(ASYN)/asynGpib
HEADERS += $(ASYNGPIB)/asynGpibDriver.h
SOURCES += $(ASYNGPIB)/asynGpib.c

DRVASYNSERIAL = $(ASYN)/drvAsynSerial

HEADERS += $(DRVASYNSERIAL)/drvAsynSerialPort.h
SOURCES += $(DRVASYNSERIAL)/drvAsynSerialPort.c
DBDS     += $(DRVASYNSERIAL)/drvAsynSerialPort.dbd

HEADERS += $(DRVASYNSERIAL)/drvAsynIPPort.h
HEADERS += $(DRVASYNSERIAL)/drvAsynIPServerPort.h

SOURCES += $(DRVASYNSERIAL)/drvAsynIPPort.c
SOURCES += $(DRVASYNSERIAL)/drvAsynIPServerPort.c
DBDS     += $(DRVASYNSERIAL)/drvAsynIPPort.dbd


INTERFACES = $(ASYN)/interfaces

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





MISCELLANEOUS = asyn/miscellaneous

HEADERS += $(MISCELLANEOUS)/asynShellCommands.h
HEADERS += $(MISCELLANEOUS)/asynInterposeCom.h
HEADERS += $(MISCELLANEOUS)/asynInterposeEos.h
HEADERS += $(MISCELLANEOUS)/asynInterposeFlush.h
# EPICS_LIBCOM_ONLY=YES
ifneq ($(EPICS_LIBCOM_ONLY),YES)
  SOURCES += $(MISCELLANEOUS)/asynShellCommands.c
endif
SOURCES += $(MISCELLANEOUS)/asynInterposeCom.c
SOURCES += $(MISCELLANEOUS)/asynInterposeEos.c
SOURCES += $(MISCELLANEOUS)/asynInterposeFlush.c

DBDS     += $(MISCELLANEOUS)/asyn.dbd




ASYNPORTDRIVER = $(ASYN)/asynPortDriver


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

ifeq ($(EPICS_LIBCOM_ONLY),YES)
   USR_CXXFLAGS += -DEPICS_LIBCOM_ONLY
   USR_CFLAGS   += -DEPICS_LIBCOM_ONLY
endif


HEADERS += $(ASYNPORTDRIVER)/asynParamType.h
HEADERS += $(ASYNPORTDRIVER)/paramErrors.h
HEADERS += $(ASYNPORTDRIVER)/asynPortDriver.h

SOURCES += $(ASYNPORTDRIVER)/paramVal.cpp
SOURCES += $(ASYNPORTDRIVER)/asynPortDriver.cpp


ASYNPORTCLIENT = $(ASYN)/asynPortClient

HEADERS += $(ASYNPORTCLIENT)/asynPortClient.h
SOURCES += $(ASYNPORTCLIENT)/asynPortClient.cpp





VXI11 =  $(ASYN)/vxi11


#USR_CFLAGS += -I../../$(VXI11)/
#USR_CFLAGS += -I../../$(VXI11)/rpc/

HEADERS += $(VXI11)/drvVxi11.h
HEADERS += $(VXI11)/osiRpc.h
HEADERS += $(VXI11)/rpc/vxi11core.h
HEADERS += $(VXI11)/rpc/vxi11intr.h
HEADERS += $(VXI11)/vxi11.h

SOURCES += $(VXI11)/rpc/vxi11core_xdr.c
SOURCES += $(VXI11)/drvVxi11.c

#SOURCES += ${VXI11}/rpc/vxi11intr_xdr.c

SOURCES += $(VXI11)/E5810Reboot.c
SOURCES += $(VXI11)/E2050Reboot.c
SOURCES += $(VXI11)/TDS3000Reboot.c

DBDS += $(VXI11)/drvVxi11.dbd 


# # We have to define where we want to install this..
# #
# DRV_USBTMC=NO
# ifeq ($(DRV_USBTMC),YES)
#   DRVASYNUSBTMC = $(ASYN)/drvAsynUSBTMC
#   SOURCES +=$(DRVASYNUSBTMC)/drvAsynUSBTMC.c
# #  asyn_SYS_LIBS += usb-1.0
#  # USR_LDFLAGS += -L /opt/etherlab/lib
# # # USR_LDFLAGS += -lethercat
# # # USR_LDFLAGS += -Wl,-rpath=/opt/etherlab/lib
#   DBDS    += drvAsynUSBTMC.dbd
# endif



# vxWorks and RTEMS
# NI1014 = $(ASYN)/ni1014
# SOURCES += $(NI1014)/drvNi1014.c
# DBDS     += $(NI1014)/drvNi1014.dbd




DEVGPIB = $(ASYN)/devGpib
HEADERS += $(DEVGPIB)/devGpib.h
HEADERS += $(DEVGPIB)/devSupportGpib.h
HEADERS += $(DEVGPIB)/devCommonGpib.h
DBDS     += $(DEVGPIB)/devGpib.dbd
ifneq ($(EPICS_LIBCOM_ONLY),YES)
  SOURCES += $(DEVGPIB)/devCommonGpib.c
  SOURCES += $(DEVGPIB)/devSupportGpib.c
endif
SOURCES += $(DEVGPIB)/boSRQonOff.c





# The following rule should be executed once,
# However, driver.makefile has no idea how to handle this. Or
# I don't know where I can do this within driver.makefile.
#
# If not, drvVxi11$(DEP) (drvVxi11.d) is triggered infinitely

# ifdef CATEGORY
#     ifdef TEST
#         CATEGORY_TEST_DEFINED = 1
#     else
#          echo "TEST not defined"
#     endif
# else
#     echo "CATEGORY not defined"
# endif


drvVxi11$(DEP): ../$(VXI11)/vxi11intr.h ../$(VXI11)/vxi11core.h


vxi11core_xdr.$(DEP): ../$(VXI11)/vxi11core.h

ifdef T_A
ifneq ($(findstring $(OS_CLASS),vxWorks RTEMS),)

vxi11core.h vxi11core_xdr.c vxi11intr.h vxi11intr_xdr.c : \
% : ../vxi11/rpc/%
	cp $< $@
vxi11core_xdr.o: vxi11core.h
vxi11intr_xrd.o: vxi11intr.h

else

.SECONDARY: vxi11core_xdr.c vxi11intr_xdr.c

ifneq ($(COMPILE),YES)
%.h %_xdr.c: ../vxi11/%.rpcl
	@echo "@ $@"
	@echo "% $%"
	@echo "< $<"
	@echo "? $?"
	@echo "^ $^"
	@echo "+ $+"
	@echo "| $|"
	@echo "* $*"
	@echo "*F $(*F)"
	cp $< .
	rpcgen $(RPCGEN_FLAGS_$(OS_CLASS)) $(*F).rpcl
	rm drvVxi11$(DEP)

COMPILE=YES
endif

endif

endif


