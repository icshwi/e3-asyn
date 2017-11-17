Original..


-rw-r--r-- 1 jhlee jhlee 69884 Nov 17 12:57 drvVxi11.c
-rw-r--r-- 1 jhlee jhlee    33 Nov 17 12:57 drvVxi11.dbd
-rw-r--r-- 1 jhlee jhlee  1179 Nov 17 12:57 drvVxi11.h
-rw-r--r-- 1 jhlee jhlee  2889 Nov 17 12:57 drvVxi11Win32.c
-rw-r--r-- 1 jhlee jhlee  1891 Nov 17 12:57 E2050Reboot.c
-rw-r--r-- 1 jhlee jhlee  2343 Nov 17 12:57 E5810Reboot.c
-rw-r--r-- 1 jhlee jhlee  1199 Nov 17 12:57 osiRpc.h
drwxr-xr-x 2 jhlee jhlee  4096 Nov 17 12:57 rpc
-rw-r--r-- 1 jhlee jhlee  1815 Nov 17 12:57 TDS3000Reboot.c
-rw-r--r-- 1 jhlee jhlee  5065 Nov 17 12:57 vxi11core.rpcl
-rw-r--r-- 1 jhlee jhlee  3342 Nov 17 12:57 vxi11.h
-rw-r--r-- 1 jhlee jhlee  1005 Nov 17 12:57 vxi11intr.rpcl


-rw-r--r-- 1 jhlee jhlee 69884 Nov 17 12:57 drvVxi11.c
-rw-r--r-- 1 jhlee jhlee    33 Nov 17 12:57 drvVxi11.dbd
-rw-r--r-- 1 jhlee jhlee  1179 Nov 17 12:57 drvVxi11.h
-rw-r--r-- 1 jhlee jhlee  2889 Nov 17 12:57 drvVxi11Win32.c
-rw-r--r-- 1 jhlee jhlee  1891 Nov 17 12:57 E2050Reboot.c
-rw-r--r-- 1 jhlee jhlee  2343 Nov 17 12:57 E5810Reboot.c
-rw-r--r-- 1 jhlee jhlee  1199 Nov 17 12:57 osiRpc.h
drwxr-xr-x 2 jhlee jhlee  4096 Nov 17 12:57 rpc
-rw-r--r-- 1 jhlee jhlee  1815 Nov 17 12:57 TDS3000Reboot.c
-rw-rw-r-- 1 jhlee jhlee  6177 Nov 17 16:21 vxi11core_clnt.c
-rw-rw-r-- 1 jhlee jhlee  9999 Nov 17 16:21 vxi11core.h
-rw-r--r-- 1 jhlee jhlee  5065 Nov 17 12:57 vxi11core.rpcl
-rw-rw-r-- 1 jhlee jhlee  7135 Nov 17 16:21 vxi11core_svc.c
-rw-rw-r-- 1 jhlee jhlee 11151 Nov 17 16:21 vxi11core_xdr.c
-rw-r--r-- 1 jhlee jhlee  3342 Nov 17 12:57 vxi11.h
-rw-rw-r-- 1 jhlee jhlee   604 Nov 17 16:21 vxi11intr_clnt.c
-rw-rw-r-- 1 jhlee jhlee  1130 Nov 17 16:21 vxi11intr.h
-rw-r--r-- 1 jhlee jhlee  1005 Nov 17 12:57 vxi11intr.rpcl
-rw-rw-r-- 1 jhlee jhlee  2270 Nov 17 16:21 vxi11intr_svc.c
-rw-rw-r-- 1 jhlee jhlee   335 Nov 17 16:21 vxi11intr_xdr.c






Original make file...


```
/usr/bin/gcc  -D_GNU_SOURCE -D_DEFAULT_SOURCE            -D_X86_64_  -DUNIX  -Dlinux     -O3 -g   -Wall      -mtune=generic     -m64 -fPIC -I. -I../O.Common -I. -I. -I../../asyn/drvAsynSerial/os/Linux -I../../asyn/drvAsynSerial/os/default -I.. -I../../asyn/asynDriver -I../../asyn/asynGpib -I../../asyn/drvAsynSerial -I../../asyn/interfaces -I../../asyn/miscellaneous -I../../asyn/asynPortDriver/exceptions -I../../asyn/asynPortDriver -I../../asyn/asynPortClient -I../../asyn/devEpics -I../../asyn/asynRecord -I../../asyn/vxi11 -I../../asyn/ni1014 -I../../asyn/devGpib -I/epics/bases/base-3.15.5/epics-modules/asyn/include/compiler/gcc -I/epics/bases/base-3.15.5/epics-modules/asyn/include/os/Linux -I/epics/bases/base-3.15.5/epics-modules/asyn/include -I/epics/bases/base-3.15.5/include/compiler/gcc -I/epics/bases/base-3.15.5/include/os/Linux -I/epics/bases/base-3.15.5/include        -MM -MF E2050Reboot.d  ../../asyn/vxi11/E2050Reboot.c

/usr/bin/gcc  -D_GNU_SOURCE -D_DEFAULT_SOURCE            -D_X86_64_  -DUNIX  -Dlinux     -O3 -g   -Wall      -mtune=generic     -m64 -fPIC -I. -I../O.Common -I. -I. -I../../asyn/drvAsynSerial/os/Linux -I../../asyn/drvAsynSerial/os/default -I.. -I../../asyn/asynDriver -I../../asyn/asynGpib -I../../asyn/drvAsynSerial -I../../asyn/interfaces -I../../asyn/miscellaneous -I../../asyn/asynPortDriver/exceptions -I../../asyn/asynPortDriver -I../../asyn/asynPortClient -I../../asyn/devEpics -I../../asyn/asynRecord -I../../asyn/vxi11 -I../../asyn/ni1014 -I../../asyn/devGpib -I/epics/bases/base-3.15.5/epics-modules/asyn/include/compiler/gcc -I/epics/bases/base-3.15.5/epics-modules/asyn/include/os/Linux -I/epics/bases/base-3.15.5/epics-modules/asyn/include -I/epics/bases/base-3.15.5/include/compiler/gcc -I/epics/bases/base-3.15.5/include/os/Linux -I/epics/bases/base-3.15.5/include        -MM -MF E5810Reboot.d  ../../asyn/vxi11/E5810Reboot.c
cp ../vxi11/vxi11intr.rpcl .
rpcgen  vxi11intr.rpcl
cp ../vxi11/vxi11core.rpcl .
rpcgen  vxi11core.rpcl

/usr/bin/gcc  -D_GNU_SOURCE -D_DEFAULT_SOURCE            -D_X86_64_  -DUNIX  -Dlinux     -O3 -g   -Wall      -mtune=generic     -m64 -fPIC -I. -I../O.Common -I. -I. -I../../asyn/drvAsynSerial/os/Linux -I../../asyn/drvAsynSerial/os/default -I.. -I../../asyn/asynDriver -I../../asyn/asynGpib -I../../asyn/drvAsynSerial -I../../asyn/interfaces -I../../asyn/miscellaneous -I../../asyn/asynPortDriver/exceptions -I../../asyn/asynPortDriver -I../../asyn/asynPortClient -I../../asyn/devEpics -I../../asyn/asynRecord -I../../asyn/vxi11 -I../../asyn/ni1014 -I../../asyn/devGpib -I/epics/bases/base-3.15.5/epics-modules/asyn/include/compiler/gcc -I/epics/bases/base-3.15.5/epics-modules/asyn/include/os/Linux -I/epics/bases/base-3.15.5/epics-modules/asyn/include -I/epics/bases/base-3.15.5/include/compiler/gcc -I/epics/bases/base-3.15.5/include/os/Linux -I/epics/bases/base-3.15.5/include        -MM -MF drvVxi11.d  ../../asyn/vxi11/drvVxi11.c


/usr/bin/gcc  -D_GNU_SOURCE -D_DEFAULT_SOURCE            -D_X86_64_  -DUNIX  -Dlinux     -O3 -g   -Wall      -mtune=generic     -m64 -fPIC -I. -I../O.Common -I. -I. -I../../asyn/drvAsynSerial/os/Linux -I../../asyn/drvAsynSerial/os/default -I.. -I../../asyn/asynDriver -I../../asyn/asynGpib -I../../asyn/drvAsynSerial -I../../asyn/interfaces -I../../asyn/miscellaneous -I../../asyn/asynPortDriver/exceptions -I../../asyn/asynPortDriver -I../../asyn/asynPortClient -I../../asyn/devEpics -I../../asyn/asynRecord -I../../asyn/vxi11 -I../../asyn/ni1014 -I../../asyn/devGpib -I/epics/bases/base-3.15.5/epics-modules/asyn/include/compiler/gcc -I/epics/bases/base-3.15.5/epics-modules/asyn/include/os/Linux -I/epics/bases/base-3.15.5/epics-modules/asyn/include -I/epics/bases/base-3.15.5/include/compiler/gcc -I/epics/bases/base-3.15.5/include/os/Linux -I/epics/bases/base-3.15.5/include        -MM -MF vxi11core_xdr.d  vxi11core_xdr.c


```




cd /home/jhlee/e3/e3-asyn/asyn/asyn/vxi11

rm vxi11intr_* vxi11core_* vxi11intr.h  vxi11core.h


make clean
make build






E3 makefile

```
/usr/bin/gcc  -D_GNU_SOURCE -D_DEFAULT_SOURCE                        -Wno-unused-variable -Wno-unused-function   -D_X86_64_  -DUNIX  -Dlinux                 -MD   -O3 -g   -Wall                   -Wno-unused-variable -Wno-unused-function  -mtune=generic     -m64 -fPIC                -I. -I../asyn/vxi11/ -I../asyn/devGpib/  -I/epics/modules/require/0.0.1/R3.15.5/include  -I/epics/modules/mrfioc2/2.2.0/R3.15.5/include    -I/epics/modules/autosave/5.8.0/R3.15.5/include  -I/epics/modules/devlib2/2.9.0/R3.15.5/include -I/epics/bases/base-3.15.5/include  -I/epics/bases/base-3.15.5/include/compiler/gcc -I/epics/bases/base-3.15.5/include/os/Linux                   -I/home/jhlee/e3/e3-asyn/asyn//asyn/devGpib -I/home/jhlee/e3/e3-asyn/asyn//asyn/vxi11 -I/home/jhlee/e3/e3-asyn/asyn//asyn/devEpics -I/home/jhlee/e3/e3-asyn/asyn//asyn/asynPortDriver -I/home/jhlee/e3/e3-asyn/asyn//asyn/miscellaneous -I/home/jhlee/e3/e3-asyn/asyn//asyn/interfaces -I/home/jhlee/e3/e3-asyn/asyn//asyn/drvAsynSerial -I/home/jhlee/e3/e3-asyn/asyn//asyn/asynGpib -I/home/jhlee/e3/e3-asyn/asyn//asyn/asynDriver                  -c  ../asyn/vxi11/E5810Reboot.c
cp ../asyn/vxi11/vxi11intr.rpcl .
rpcgen ../asyn/vxi11/vxi11intr.rpcl
cp ../asyn/vxi11/vxi11core.rpcl .
rpcgen ../asyn/vxi11/vxi11core.rpcl
/usr/bin/gcc  -D_GNU_SOURCE -D_DEFAULT_SOURCE                        -Wno-unused-variable -Wno-unused-function   -D_X86_64_  -DUNIX  -Dlinux                 -MD   -O3 -g   -Wall                   -Wno-unused-variable -Wno-unused-function  -mtune=generic     -m64 -fPIC                -I. -I../asyn/vxi11/ -I../asyn/devGpib/  -I/epics/modules/require/0.0.1/R3.15.5/include  -I/epics/modules/mrfioc2/2.2.0/R3.15.5/include    -I/epics/modules/autosave/5.8.0/R3.15.5/include  -I/epics/modules/devlib2/2.9.0/R3.15.5/include -I/epics/bases/base-3.15.5/include  -I/epics/bases/base-3.15.5/include/compiler/gcc -I/epics/bases/base-3.15.5/include/os/Linux                   -I/home/jhlee/e3/e3-asyn/asyn//asyn/devGpib -I/home/jhlee/e3/e3-asyn/asyn//asyn/vxi11 -I/home/jhlee/e3/e3-asyn/asyn//asyn/devEpics -I/home/jhlee/e3/e3-asyn/asyn//asyn/asynPortDriver -I/home/jhlee/e3/e3-asyn/asyn//asyn/miscellaneous -I/home/jhlee/e3/e3-asyn/asyn//asyn/interfaces -I/home/jhlee/e3/e3-asyn/asyn//asyn/drvAsynSerial -I/home/jhlee/e3/e3-asyn/asyn//asyn/asynGpib -I/home/jhlee/e3/e3-asyn/asyn//asyn/asynDriver                  -c  ../asyn/vxi11/drvVxi11.c
../asyn/vxi11/drvVxi11.c: In function ‘vxiCreateDeviceLink’:
../asyn/vxi11/drvVxi11.c:294:13: warning: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 8 has type ‘u_int’ [-Wformat=]
             asynPrint(pasynUser,ASYN_TRACE_ERROR,
             ^
../asyn/vxi11/drvVxi11.c: In function ‘vxi11Configure’:
../asyn/vxi11/drvVxi11.c:1714:8: warning: suggest parentheses around operand of ‘!’ or change ‘&’ to ‘&&’ or ‘!’ to ‘~’ [-Wparentheses]
     if(!flags & FLAG_NO_SRQ) pvxiPort->hasSRQ = TRUE;
        ^
/usr/bin/gcc  -D_GNU_SOURCE -D_DEFAULT_SOURCE                        -Wno-unused-variable -Wno-unused-function   -D_X86_64_  -DUNIX  -Dlinux                 -MD   -O3 -g   -Wall                   -Wno-unused-variable -Wno-unused-function  -mtune=generic     -m64 -fPIC                -I. -I../asyn/vxi11/ -I../asyn/devGpib/  -I/epics/modules/require/0.0.1/R3.15.5/include  -I/epics/modules/mrfioc2/2.2.0/R3.15.5/include    -I/epics/modules/autosave/5.8.0/R3.15.5/include  -I/epics/modules/devlib2/2.9.0/R3.15.5/include -I/epics/bases/base-3.15.5/include  -I/epics/bases/base-3.15.5/include/compiler/gcc -I/epics/bases/base-3.15.5/include/os/Linux                   -I/home/jhlee/e3/e3-asyn/asyn//asyn/devGpib -I/home/jhlee/e3/e3-asyn/asyn//asyn/vxi11 -I/home/jhlee/e3/e3-asyn/asyn//asyn/devEpics -I/home/jhlee/e3/e3-asyn/asyn//asyn/asynPortDriver -I/home/jhlee/e3/e3-asyn/asyn//asyn/miscellaneous -I/home/jhlee/e3/e3-asyn/asyn//asyn/interfaces -I/home/jhlee/e3/e3-asyn/asyn//asyn/drvAsynSerial -I/home/jhlee/e3/e3-asyn/asyn//asyn/asynGpib -I/home/jhlee/e3/e3-asyn/asyn//asyn/asynDriver                  -c  ../asyn/vxi11/vxi11intr_xdr.c
/usr/bin/gcc  -D_GNU_SOURCE -D_DEFAULT_SOURCE                        -Wno-unused-variable -Wno-unused-function   -D_X86_64_  -DUNIX  -Dlinux                 -MD   -O3 -g   -Wall                   -Wno-unused-variable -Wno-unused-function  -mtune=generic     -m64 -fPIC                -I. -I../asyn/vxi11/ -I../asyn/devGpib/  -I/epics/modules/require/0.0.1/R3.15.5/include  -I/epics/modules/mrfioc2/2.2.0/R3.15.5/include    -I/epics/modules/autosave/5.8.0/R3.15.5/include  -I/epics/modules/devlib2/2.9.0/R3.15.5/include -I/epics/bases/base-3.15.5/include  -I/epics/bases/base-3.15.5/include/compiler/gcc -I/epics/bases/base-3.15.5/include/os/Linux                   -I/home/jhlee/e3/e3-asyn/asyn//asyn/devGpib -I/home/jhlee/e3/e3-asyn/asyn//asyn/vxi11 -I/home/jhlee/e3/e3-asyn/asyn//asyn/devEpics -I/home/jhlee/e3/e3-asyn/asyn//asyn/asynPortDriver -I/home/jhlee/e3/e3-asyn/asyn//asyn/miscellaneous -I/home/jhlee/e3/e3-asyn/asyn//asyn/interfaces -I/home/jhlee/e3/e3-asyn/asyn//asyn/drvAsynSerial -I/home/jhlee/e3/e3-asyn/asyn//asyn/asynGpib -I/home/jhlee/e3/e3-asyn/asyn//asyn/asynDriver                  -c  ../asyn/vxi11/vxi11core_xdr.c

```



Why we see vxillintr_xdr.c? 

It isn't in the Makefile (epics) either, so I excluded it from asyn.makefile also...
