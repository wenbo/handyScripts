sudo echo "deb http://ppa.launchpad.net/chromium-daily/ppa/ubuntu intrepid main" >> /etc/apt/sources.list 
sudo echo "deb-src http://ppa.launchpad.net/chromium-daily/ppa/ubuntu intrepid main" >> /etc/apt/sources.list  
sudo apt-get update
sudo apt-get install chromium-browser

sudo apt-get install git 

sudo apt-get install curl

bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscr)
source ~/.bash_profile

sudo /usr/bin/apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion

sudo apt-get install fglrx-updates fglrx-amdcccle-updates

#install wubi input method
sudo apt-get install scim scim-gtk2-immodule scim-modules-socket scim-modules-table scim-pinyin scim-tables-zh 
sudo sh -c " echo 'export XMODIFIERS=@im=SCIM ; export GTK_IM_MODULE="scim" ; scim -d ' > /etc/X11/Xsession.d/95xinput " 
sudo chmod 755 /etc/X11/Xsession.d/95xinput

for x in  `ps -eo pid,comm|grep scim|awk -F\  '{ print $1 }'`; do echo $x&& kill -s 9 $x; done
