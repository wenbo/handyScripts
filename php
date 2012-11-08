sudo vi /usr/local/php/lib/php.ini

$ sudo /usr/local/php/sbin/php-fpm restart
$ sudo /opt/nginx/sbin/nginx -s reload
$ tail -f /opt/nginx/logs/access.log 
$ tail -f /opt/nginx/logs/error.log 
$ vi /opt/nginx/conf/nginx.conf


wenbo@li412-168:~/src/tar/php-5.2.13$ ./configure  --prefix=/usr/local/php --enable-fastcgi --enable-fpm  --with-mysql
