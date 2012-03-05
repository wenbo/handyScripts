sudo echo "deb http://ppa.launchpad.net/chromium-daily/ppa/ubuntu intrepid main" >> /etc/apt/sources.list 
sudo echo "deb-src http://ppa.launchpad.net/chromium-daily/ppa/ubuntu intrepid main" >> /etc/apt/sources.list  
sudo apt-get update
sudo apt-get install chromium-browser

sudo apt-get install git 

sudo apt-get install curl

bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscr)
source ~/.bash_profile

sudo /usr/bin/apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion


