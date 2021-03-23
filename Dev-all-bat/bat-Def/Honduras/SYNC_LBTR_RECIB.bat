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
exit

