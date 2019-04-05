# e3-asyn

The following options are defined in `configure/CONFIG_OPTIONS`

```
DRV_USBTMC:=NO
TIRPC:=NO
```

They can be overridded via

```
echo "TIRPC:=YES" > configure/CONFIG_OPTIONS.local"

```
Please make sure that option is enable via `make vars`.



## 

Cross compilers complained the follows:

```
In file included from ../asyn/drvAsynSerial/drvAsynSerialPort.c:53:
../asyn/drvAsynSerial//os/Linux/serial_rs485.h:13: warning: "TIOCGRS485" redefined
   #define TIOCGRS485                0x542E
 
In file included from /opt/ifc14xx/2.6-4.14/sysroots/ppc64e6500-fsl-linux/usr/include/bits/ioctls.h:23,
                 from /opt/ifc14xx/2.6-4.14/sysroots/ppc64e6500-fsl-linux/usr/include/sys/ioctl.h:26,
                 from ../asyn/drvAsynSerial//os/Linux/serial_rs485.h:4,
                 from ../asyn/drvAsynSerial/drvAsynSerialPort.c:53:
/opt/ifc14xx/2.6-4.14/sysroots/ppc64e6500-fsl-linux/usr/include/asm/ioctls.h:94: note: this is the location of the previous definition
 #define TIOCGRS485 0x542e
 
In file included from ../asyn/drvAsynSerial/drvAsynSerialPort.c:53:
../asyn/drvAsynSerial//os/Linux/serial_rs485.h:14: warning: "TIOCSRS485" redefined
   #define TIOCSRS485                0x542F
 
In file included from /opt/ifc14xx/2.6-4.14/sysroots/ppc64e6500-fsl-linux/usr/include/bits/ioctls.h:23,
                 from /opt/ifc14xx/2.6-4.14/sysroots/ppc64e6500-fsl-linux/usr/include/sys/ioctl.h:26,
                 from ../asyn/drvAsynSerial//os/Linux/serial_rs485.h:4,
                 from ../asyn/drvAsynSerial/drvAsynSerialPort.c:53:
/opt/ifc14xx/2.6-4.14/sysroots/ppc64e6500-fsl-linux/usr/include/asm/ioctls.h:95: note: this is the location of the previous definition
 #define TIOCSRS485 0x542f
```

Technically, due to the same definition, we simply ignore them now (20190405)
