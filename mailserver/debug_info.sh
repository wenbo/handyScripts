http://wiki2.dovecot.org/TestInstallation
http://wiki2.dovecot.org/RunningDovecot
doveadm log find
$ sudo doveadm log find

$ tail -f  /var/log/mail.log
Feb 21 14:36:03 bob-Inspiron-3420 postfix/smtpd[7664]: connect from
ludy.com[192.168.1.92]
Feb 21 14:36:03 bob-Inspiron-3420 postfix/smtpd[7664]: disconnect from
ludy.com[192.168.1.92]
Feb 21 14:36:03 bob-Inspiron-3420 dovecot: config: Warning: NOTE: You can get a
new clean config file with: doveconf -n > dovecot-new.conf
Feb 21 14:36:03 bob-Inspiron-3420 dovecot: config: Warning: Obsolete setting in
/etc/dovecot/conf.d/01-mail-stack-delivery.conf:2: 'imaps' protocol is no longer
necessary, remove it
Feb 21 14:36:03 bob-Inspiron-3420 dovecot: config: Warning: Obsolete setting in
/etc/dovecot/conf.d/01-mail-stack-delivery.conf:2: 'pop3s' protocol is no longer
necessary, remove it
Feb 21 14:36:03 bob-Inspiron-3420 dovecot: config: Warning: Obsolete setting in
/etc/dovecot/conf.d/01-mail-stack-delivery.conf:5: ssl_cert_file has been
replaced by ssl_cert = <file
Feb 21 14:36:03 bob-Inspiron-3420 dovecot: config: Warning: Obsolete setting in
/etc/dovecot/conf.d/01-mail-stack-delivery.conf:6: ssl_key_file has been
replaced by ssl_key = <file
Feb 21 14:36:03 bob-Inspiron-3420 dovecot: config: Warning: Obsolete setting in
/etc/dovecot/conf.d/01-mail-stack-delivery.conf:13:
imap_client_workarounds=outlook-idle is no longer necessary
Feb 21 14:36:03 bob-Inspiron-3420 dovecot: pop3-login: Aborted login (no auth
attempts in 0 secs): user=<>, rip=192.168.1.92, lip=192.168.1.92, TLS,
session=<j4fnSTbWqADAqAFc>

$ doveconf -n

$ testsaslauthd -u username -p password
bob@linux:dovecot$ sudo testsaslauthd -u bob -p update
0: OK "Success."

bob@linux:~$ telnet  127.0.0.1  25
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.
220 mail.ludy.com ESMTP Postfix (Ubuntu)
ehlo 163.com
250-mail.ludy.com
250-PIPELINING
250-SIZE 10240000
250-VRFY
250-ETRN
250-STARTTLS
250-ENHANCEDSTATUSCODES
250-8BITMIME
250 DSN

bob@linux:dovecot$ postconf readme_directory
readme_directory = no
bob@linux:dovecot$ postconf config_directory
config_directory = /etc/postfix

bob@linux:dovecot$ dovecot --build-options | tail -n4
Mail storages: shared mdbox sdbox maildir mbox cydir imapc pop3c raw
SQL driver plugins: mysql postgresql sqlite
Passdb: checkpassword ldap pam passwd passwd-file shadow sql
Userdb: checkpassword ldap(plugin) nss passwd prefetch passwd-file sql
