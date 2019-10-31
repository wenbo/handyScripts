
c765A_UE20Ap spec/api/requests_spec.rb{,bk}
sudo chown -R `whoami` /var/log/cassandra 
linux-2.6.32.59$ find -name *defconfig* 
linux-2.6.32.59$ grep ".arch.info.init" * -nR
$su - #  (注意有- ，这和su是不同的，在用命令"su"的时候只是切换到root，但没有把root的环境变量传过去
type cd # cd is a shell builtin
~$ netstat -nap |grep 7001
Firefox plugin: autoproxy
pmap pid

ssh -qTfnN -D 7070 root@520gsjt.com
ssh-keygen -t rsa 
scp .ssh/id_rsa.pub wenbo@0371zhong.com:~/.ssh/authorized_keys

以 root 执行： cd /home chmod 700 * 
ps -ef |grep  httpd| grep -v grep| cut -c 9-15| sudo xargs kill -9
ps -ef |grep  nginx| grep -v grep| cut -c 9-15| sudo xargs kill -9
fme ".txt~"|xargs rm -rfind . -type d -name ".svn"|xargs rm -rf
find . -name "*.txt~"|xargs rm -rf
# Emacsのバックアップファイルを削除する
find . -name '*~' -print | xargs rm


################# LXR @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
./configure --prefix=/usr/local/apache2
LoadModule perl_module modules/mod_perl.so
cpan -l | grep File::MMagic
/etc/postgresql/9.1/main
wenbo@hp:mod_perl-2.0.6$ perl Makefile.PL MP_APXS=/usr/local/apache2/bin/apxs
MP_APR_CONFIG=/usr/local/apr/bin/apr-1-config #wenbo@hp:httpd-2.2.9
################# LXR @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

################# Server @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
iostat
iostat -x 1 10
lsof
################# Server @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


################# Network @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
sudo apt-get install wireshark
sudo tcpdump -i eth0
sudo tcpdump -i eth0 'tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) -
 ((tcp[12]&0xf0)>>2)) != 0)'
lsof -i :25 #:25和-i选项组合可以让lsof列出占用TCP或UDP的25端口的进程。
bob@hp:production$ lsof -i:3000
[kembo@51idc-02 ~]$ netstat -anp | grep 3000
pmap pid
bob@linux:ruby-china$ nslookup -type=mx 0371zhong.com
################# Network @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 echo 4 > /sys/class/backlight/acpi_video0/brightness

 wenbo@hp:~$ ls -l `locate libc.so.6`

chkconfig --list            # 列出所有系统服务
chkconfig --list | grep on  # 列出所有启动的系统服务程序
grep Mem /proc/meminfo 
du -sh <目录名>             # 查看指定目录的大小
cat /proc/loadavg           # 查看系统负载磁盘和分区
dpkg --list
dpkg -S file――这个文件属于哪个已安装软件包。 
dpkg -L package――列出软件包中的所有文件。 
iptables -L                          # 查看防火墙设置
route -n                               # 查看路由表
netstat -lntp                       # 查看所有监听端口
netstat -antp                      # 查看所有已经建立的连接
netstat -s                           # 查看网络统计信息进程
wenbo@hp:~$ service vsftpd restart
sudo mount -t nfs -o resvport 192.168.1.115:/home/bob/nfs /private/nfs
sudo wget -r -p -np -k http://jquery-in-place-editor.googlecode.com/svn/trunk/demo/index.html
axel  -n 10  -vo .  http://xxx/xx.tar.gz 
tmux -S /tmp/pair attach 

sudo dpkg-reconfigure gdm
find . -name "._*" 
htpasswd -b .htpasswd wenbo wenbo2008
sed -i "s/原字符串/新字符串/g" `grep 原字符串 -rl 所在目录`
$ sed -i '' -e '1i #encoding: utf-8' ./app/models/*.rb

## on mac
$ sed -i '' "s/user_type/role/g" `grep user_type -rl app/controllers/`
$ sed -i '' "s/user_type/role/g" `grep user_type -rl app/models/`
$ sed -i '' "s/JWTCheck/errorCheckJWT/g" `grep JWTCheck -rl app/`
$ sed -i '' "s/begin_at/start_at/g" `grep begin_at -rl app/`
$ sed -i '' "s/beginAt/startAt/g" `grep beginAt -rl ./`
$ sed -i '' "s/global_id/auth_id/g" `grep global_id -rl ./`


sed -n '650,655p' 1000.log
egrep -r '.+?07/Aug/2014.+?\/refrigerator\/technology\/ HTTP' .  | wc -l


sudo apt-get install traceroute
sudo traceroute -d  www.com.cn 
du -S | sort -n

count directories:  

split -b 4000m 20141126.sql.tar.gz 20141126_splitted.sql.tar.gz_

sudo apt-get install htop
