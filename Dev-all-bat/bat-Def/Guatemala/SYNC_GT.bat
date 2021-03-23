#///
#---Guatemala
#
open sftp://sgait:desarrollo@172.23.13.71 -hostkey="ssh-rsa 2048 ftKG2531ambTO1jBwojFYK96a1l0WJLtMZAVYHoGIZ4="
synchronize local E:\Regional\GUATEMALA\ENVIADOS /variosfast7r5/logs/ArchivosOpcon/Swift/Confirmacion
#---
cd /variosfast7r5/logs/ArchivosOpcon/Swift/Confirmacion
rm *
#---
open sftp://SvcCOPSSH:Ficohs@banco2020@172.23.34.3 -hostkey="ssh-ed25519 255 Bmgxd898vQZOVMF0EodVDvhYYrvDYGakYMP94lSTsjk="
cd /cygdrive/e/SCONNECT/CATEGORIA1/TO_SWIFT/Entrada2
put E:\Regional\GUATEMALA\ENVIADOS\*.sco
#///
open sftp://SvcCOPSSH:Ficohs@banco2020@172.23.34.3 -hostkey="ssh-ed25519 255 Bmgxd898vQZOVMF0EodVDvhYYrvDYGakYMP94lSTsjk="
synchronize local E:\Regional\GUATEMALA\RECIBIDOS /cygdrive/e/Sconnect/CATEGORIA1/FROM_SWIFT/Salida2
#---
cd /cygdrive/e/Sconnect/CATEGORIA1/FROM_SWIFT/Salida2
rm * 
#---
open sftp://sgait:desarrollo@172.23.13.49 -hostkey="ssh-ed25519 255 ssh-rsa 2048 ftKG2531ambTO1jBwojFYK96a1l0WJLtMZAVYHoGIZ4="
cd /varios/SWIFTGT/IN
put E:\Regional\GUATEMALA\RECIBIDOS\*.sco
exit