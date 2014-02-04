#!../../bin/windows-x64/isisdae

## You may have to change isisdae to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet "IOCNAME" "$(P=$(MYPVPREFIX))DAE"
#epicsEnvSet "IOCSTATS_DB" "$(DEVIOCSTATS)/db/iocAdminSoft.db"

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/fakeisisdae.dbd"
fakeisisdae_registerRecordDeviceDriver pdbbase

#isisdaeConfigure("icp")
#isisdaeConfigure("icp", "ndxchipir", 0, "spudulike", "reliablebeam")

## Load record instances
dbLoadRecords("$(TOP)/db/isisdae.db","P=$(IOCNAME):")
#dbLoadRecords("$(IOCSTATS_DB)","IOC=$(IOCNAME)")

cd ${TOP}/iocBoot/${IOC}
iocInit

