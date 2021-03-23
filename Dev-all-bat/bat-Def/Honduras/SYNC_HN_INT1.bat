#Resources Can be Found here - https://winscp.net/eng/docs/scripting
#
option batch abort
option confirm off
#---HN Internacionales
#
open sftp://sgait:desarrollo@172.23.13.49 -hostkey="ssh-ed25519 255 Bmgxd898vQZOVMF0EodVDvhYYrvDYGakYMP94lSTsjk="
synchronize local C:\ARCHIVOS_SGA\SWIFT_CUENTAS_T24\IN /varios/ACHLBTR/Procesados/LBTR/INT
#---
cd /varios/ACHLBTR/Procesados/LBTR/INT
rm * 
#---
open sftp://SvcCOPSSH:Ficohs@banco2020@172.23.34.3 -hostkey="ssh-ed25519 255 Bmgxd898vQZOVMF0EodVDvhYYrvDYGakYMP94lSTsjk="
cd /cygdrive/e/T24_Swift/fromT24inicio/
put C:\ARCHIVOS_SGA\SWIFT_CUENTAS_T24\OUT_ENCRYPTED\*.sco
open sftp://SvcCOPSSH:Ficohs@banco2020@172.23.34.3 -hostkey="ssh-ed25519 255 Bmgxd898vQZOVMF0EodVDvhYYrvDYGakYMP94lSTsjk="
cd /cygdrive/e/SCONNECT/LBTR/TO_SWIFT/
put C:\ARCHIVOS_SGA\ARCHIVOS_ARGOS\CONCILIACION\ENVIO\*
#
exit



