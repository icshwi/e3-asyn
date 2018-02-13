# e3-asyn

## SUPPORT
### DRV_USBTMC

* Initialize repository
```
make init
```
* Enable it via editing configure/CONFIG_OPTIONS
```
DRV_USBTMC:=YES
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
