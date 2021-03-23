#///
#---Panama
#
open sftp://sgait:Ficohsa2020@10.242.35.31 -hostkey="ssh-rsa 2048 ftKG2531ambTO1jBwojFYK96a1l0WJLtMZAVYHoGIZ4="
synchronize local E:\Regional\PANAMA\ENVIADOS /variosfast7r5/logs/ArchivosOpcon/Swift/Confirmacion
#---
cd /variosfast7r5/logs/ArchivosOpcon/Swift/Confirmacion
rm *
#---
open sftp://SvcCOPSSH:Ficohs@banco2020@172.23.34.3 -hostkey="ssh-ed25519 255 Bmgxd898vQZOVMF0EodVDvhYYrvDYGakYMP94lSTsjk="
cd /cygdrive/e/SCONNECT/CATEGORIA1/TO_SWIFT/Entrada3
put E:\Regional\PANAMA\ENVIADOS\*.sco
#///
open sftp://SvcCOPSSH:Ficohs@banco2020@172.23.34.3 -hostkey="ssh-ed25519 255 Bmgxd898vQZOVMF0EodVDvhYYrvDYGakYMP94lSTsjk="
synchronize local E:\Regional\PANAMA\RECIBIDOS /cygdrive/e/Sconnect/CATEGORIA1/FROM_SWIFT/Salida3
#---
cd /cygdrive/e/Sconnect/CATEGORIA1/FROM_SWIFT/Salida3
rm *
#---
open sftp://sgait:desarrollo@172.23.13.49 -hostkey="ssh-ed25519 255 Bmgxd898vQZOVMF0EodVDvhYYrvDYGakYMP94lSTsjk="
cd /varios/SWIFTPA/IN
put E:\Regional\PANAMA\RECIBIDOS\*.sco
exit