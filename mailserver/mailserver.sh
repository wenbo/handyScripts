wenbo@hp:~$ sudo apt-get install postfix sasl2-bin libsasl2-modules procmail
sudo vi /etc/postfix/main.cf
wenbo@hp:~$ sudo /etc/init.d/postfix restart

sudo apt-get install courier-pop
sudo apt-get install courier-imap
apt-get install dovecot-imapd dovecot-pop3d
sudo apt-get install libsasl2-2 sasl2-bin libsasl2-modules

wenbo@hp:~$ host -t mx 0371zhong.com
wenbo@hp:~$ netstat -tl | grep smtp 
echo "test" | mail yiyun6674@hotmail.com
