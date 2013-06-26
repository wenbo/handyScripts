LoadModule perl_module modules/mod_perl.so

http://www.movabletype.org/documentation/installation/install-movable-type.html

bob-Vostro-320:apr-util-1.3.8$ ./configure  --with-apr=/usr/local/apr

Configuring Apache/2.4.4 mod_perl/2.0.7 Perl/v5.14.2
bob@bob-Vostro-320:mod_perl-2.0.7$ perl Makefile.PL MP_APR_CONFIG=/usr/local/apr/bin/apr-1-config
/usr/local/apache2/bin/apxs
modperl_interp.c:503:35: error: ‘conn_rec’ has no member named ‘remote_ip’

sudo apt-get purge apache2.2-common

sudo apt-get install apache2 apache2-mpm-prefork 
sudo apt-get install libapache2-mod-perl2 libapache2-mod-apreq2 

bob@bob-Vostro-320:cgi-bin$ dpkg -S /usr/sbin/apache2
find /usr/lib/apache2/mpm-prefork/

dpkg -p apache2-mpm-prefork
dpkg -P apache2-mpm-prefork
