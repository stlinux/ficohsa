#Resources Can be Found here - https://winscp.net/eng/docs/scripting

option batch abort
option confirm off
#---HN Internacioanles
#
open sftp://SvcCOPSSH:Ficohs@banco2020@172.23.34.3 -hostkey="ssh-ed25519 255 Bmgxd898vQZOVMF0EodVDvhYYrvDYGakYMP94lSTsjk="
synchronize local E:\Regional\HONDURAS\LBTR\RECIBIDO /cygdrive/e/Sconnect/LBTR/FROM_SWIFT/Salida1
#---
cd /cygdrive/e/Sconnect/LBTR/FROM_SWIFT/Salida1
rm * 
#---
open sftp://sgait:desarrollo@172.23.13.49 -hostkey="ssh-ed25519 255 Bmgxd898vQZOVMF0EodVDvhYYrvDYGakYMP94lSTsjk="
cd /varios/ACHLBTR/Recibidos/LBTR/IN
put E:\Regional\HONDURAS\LBTR\RECIBIDO\*.sco
#///
open sftp://sgait:desarrollo@172.23.13.49 -hostkey="ssh-ed25519 255 Bmgxd898vQZOVMF0EodVDvhYYrvDYGakYMP94lSTsjk="
synchronize local E:\Regional\HONDURAS\LBTR\ENVIADO /varios/ACHLBTR/Procesados/LBTR/IN
#---
cd /varios/ACHLBTR/Procesados/LBTR/IN
rm * 
#---
open sftp://SvcCOPSSH:Ficohs@banco2020@172.23.34.3 -hostkey="ssh-ed25519 255 Bmgxd898vQZOVMF0EodVDvhYYrvDYGakYMP94lSTsjk="
cd /cygdrive/e/SCONNECT/LBTR/FROM_SWIFT/Entrada1
put E:\Regional\HONDURAS\LBTR\ENVIADO\*.sco
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

