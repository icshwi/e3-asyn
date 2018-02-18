# e3-asyn

## SUPPORT

### DRV_USBTMC

* Initialize repository
```
make init
```
* USBTMC support
Note that Ubuntu OS (LTS, and 17.10) are not supported. If one would like to use USBTMC, please use CentOS or Debian.

Enable it via editing configure/CONFIG_OPTIONS
```
DRV_USBTMC:=YES
```
However, this option is vaild only for linux-x86_64 architecture. If your arch is not linux-x86_64, it will be ignored within asyn.Makefile. The libusb-1.0.0 should be installed on host system, for Debian system, one could use the following option:
```
$ apt-get install libusb-1.0-0-dev
```

For Redhat system, the following package should be installed

```
$ yum install libusbx-dev
```

And USR_INCLUDES and USR_LDFLAGS can be extracted via
```
$ pkg-config --cflags libusb-1.0
-I/usr/include/libusb-1.0

$ pkg-config --libs libusb-1.0
$ -lusb-1.0
```


* build
```
make env
make build
make install
```

## NON SUPPORTS 
### NI1014 : NI GPIB-1014
* http://www.ni.com/pdf/manuals/370945a.pdf
* The GPIB-1014 is a IEEE 488 interface for the VMEbus

### Linux GPIB
* http://linux-gpib.sourceforge.net/doc_html/t1.html

### IPAC

### RTEMS and VxWorks
