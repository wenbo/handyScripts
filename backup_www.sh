#可以在每天的 2:00am 主動的以 rsync 配合 ssh 取得 www.centos.vbird (192.168.100.254) 的 /etc, /root, /home 三個目錄的鏡像到 clientlinux.centos.vbird 的 /backups/

#!/bin/bash
localdir=/backups
remotedir="/etc /root /home"
remoteip="192.168.100.254"

[ -d ${localdir} ] || mkdir ${localdir}
for dir in ${remotedir}
do
  rsync -av -e ssh root@${remoteip}:${dir} ${localdir}
done

# 4. 建立 crontab 工作
#[vbirdtsai@clientlinux ~]$ crontab -e
#0 2 * * * /home/vbirdtsai/bin/backup_www.sh
