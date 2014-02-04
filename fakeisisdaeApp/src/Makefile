TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = fakeisisdae
# fakeisisdae.dbd will be created and installed
DBD += fakeisisdae.dbd

# fakeisisdae.dbd will be made up from these files:
fakeisisdae_DBD += base.dbd

# Include dbd files from all support applications:
#fakeisisdae_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#fakeisisdae_LIBS += xxx

# fakeisisdae_registerRecordDeviceDriver.cpp derives from fakeisisdae.dbd
fakeisisdae_SRCS += fakeisisdae_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
fakeisisdae_SRCS_DEFAULT += fakeisisdaeMain.cpp
fakeisisdae_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#fakeisisdae_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
fakeisisdae_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

