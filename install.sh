打开/etc/bash.bashrc（需要root权限）或者~/.bashrc文件加入如下内容：

# Set colors for man pages
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

wenbo@hp:~$ sudo su
wenbo@hp:~$ usb-creator-gtk
sudo echo "deb http://ppa.launchpad.net/chromium-daily/ppa/ubuntu intrepid main" >> /etc/apt/sources.list 
sudo echo "deb-src http://ppa.launchpad.net/chromium-daily/ppa/ubuntu intrepid main" >> /etc/apt/sources.list  
sudo apt-get update
sudo apt-get install chromium-browser

sudo apt-get install git 
sudo apt-get install curl
sudo apt-get install cloc
sudo apt-get install vsftpd
netstat -na --ip 

curl -L get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
source ~/.bash_profile

$ usermod -a -G rvm bob

sudo /usr/bin/apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion

sudo apt-get install libpq-dev 
sudo apt-get install fglrx-updates fglrx-amdcccle-updates

sudo apt-get install libmysql-ruby libmysqlclient-dev

#install wubi input method
sudo apt-get install scim scim-gtk2-immodule scim-modules-socket scim-modules-table scim-pinyin scim-tables-zh 

------------------------- ibus -----------------------------
sudo apt-get install ibus-mozc
sudo apt-get install ibus-table-wubi
默认情况下，ibus-table不开启直接上屏模式（即敲完四个码，没有重码时，直接显示到屏幕上），在五笔输入法下
Ctrl + / 即可。
开机自动启动ibus
System - Preferences - Startup Applications - Add
Name: ibus daemon
Command: /usr/bin/ibus-daemon -d
Comment: start ibus daemon when gnome start
------------------------- ibus -----------------------------


sudo apt-get install scim-tables-ja
sudo apt-get  install uim-anthy

sudo sh -c " echo 'export XMODIFIERS=@im=SCIM ; export GTK_IM_MODULE="scim" ; scim -d ' > /etc/X11/Xsession.d/95xinput " 
sudo chmod 755 /etc/X11/Xsession.d/95xinput

for x in  `ps -eo pid,comm|grep scim|awk -F\  '{ print $1 }'`; do echo $x&& kill -s 9 $x; done

dpkg --get-selections > myselections
dpkg --set-selections < myselections

打开外接显示器，同时关闭笔记本液晶屏幕（只用外接显示器工作）
xrandr --output VGA1 --auto --output LVDS1 --off
xrandr --output VGA1 --right-of LVDS1 --auto
xrandr --output LVDS1 --brightness 0.5

sudo apt-get install xnoise


xmodmap ~/.xmodmap
