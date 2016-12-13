https://help.ubuntu.com/community/Apache2WebDavDigestAUTH

bob@bob-OptiPlex-3020:~$ vi /etc/apache2/sites-enabled/000-default.conf

sudo htdigest -c /var/www/.htdigest webdav pointer pointer2016

bob@bob-OptiPlex-3020:/var/www/webdav$ df -h
bob@bob-OptiPlex-3020:/var/www/webdav$ sudo umount /media/bob/My\ Passport
sudo mount   /dev/sdb1  ./pointer/

cadaver http://192.168.0.102/webdav/

av:/webdav/> help
Available commands: 
ls         cd         pwd        put        get        mget       mput       
edit       less       mkcol      cat        delete     rmcol      copy       
move       lock       unlock     discover   steal      showlocks  version    
checkin    checkout   uncheckout history    label      propnames  chexec     
propget    propdel    propset    search     set        open       close      
echo       quit       unset      lcd        lls        lpwd       logout     
help       describe   about      
