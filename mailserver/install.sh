sudo apt-get install postfix
#changing /etc/mailname to example.com
#/etc/postfix/main.cf (and others) as needed.  To view Postfix configuration values, see postconf(1).
#After modifying main.cf, be sure to run '/etc/init.d/postfix reload'.

$ sudo apt-get install postfix-mysql
#Adding mysql map entry to /etc/postfix/dynamicmaps.cf

$ sudo apt-get install sasl2-bin
# * To enable saslauthd, edit /etc/default/saslauthd and set START=yes

$ sudo apt-get install libsasl2-2
$ sudo apt-get install  libsasl2-modules

$ sudo apt-get install  libsasl2-modules-sql
$ sudo apt-get install  libpam-mysql
$ sudo apt-get install dovecot-common dovecot-imapd dovecot-pop3d dovecot-postfix
apt-get install dovecot-postfix

bob@linux:~$ sudo apt-get install apache2 libapache2-mod-php5 php5 php5-gd php5-mysql php5-imap
#Creating config file /etc/php5/mods-available/gd.ini with new version
#Creating config file /etc/php5/mods-available/mysqli.ini with new version
#Creating config file /etc/php5/mods-available/pdo_mysql.ini with new version
#Creating config file /etc/php5/apache2/php.ini with new version

$ sudo doveadm reload

http://localhost/postfix/login.php
yiyun6674@gmail.com
asdfasdf

http://localhost/postfixadmin-2.3.6/create-mailbox.php
bob@example.com
asdfasdf

$ sudo apt-get install mail-stack-delivery
#Old values are stored in /var/backups/mail-stack-delivery/main.cf-backup.

$ apt-get install bind9

bob@linux:ruby-china$ nslookup -type=mx 0371zhong.com
bob@linux:ruby-china$ nslookup -type=mx ludy.com
bob@linux:ruby-china$ nslookup
> set type=mx
> gmail.com
