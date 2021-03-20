#Resources Can be Found here - https://winscp.net/eng/docs/scripting
#---
option batch abort
option confirm off
#---
open sftp://narteaga:felipe052014@192.168.0.100 -hostkey="ssh-ed25519 255 tYP4m0MRm37p/Fj+45/ZPgbuiLZ06d9wX/v9TggMqJQ="
#synchronize both C:\Incoming4 /home/narteaga/Source
synchronize local C:\Incoming4 /home/narteaga/Source
#---
cd /home/narteaga/Source
rm *
#---
open sftp://vagrant:vagrant@192.168.0.134 -hostkey="TbimmhFrmabkBW8sXquaksAhngR5h52lG4EkWnWkAeM="
cd /home/vagrant/Incomig-Remoto
put C:\Incoming4\*
exit