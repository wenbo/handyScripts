#!/bin/bash 

# pwd=`pwd`
production_path="/var/www/test.yyy.cn/staging/current/"

for i in app/views/home/index.html.erb  \
app/views/home/video.html.erb  \
app/views/home/video_10.html.erb \
app/views/home/video_11.html.erb \
app/views/home/video_12.html.erb \
app/views/home/video_13.html.erb \
public/2014/video/cm0324.flv  \
public/2014/video/cm0323.flv   
do 
		# echo $i
		file=$i
		cp ${file} ${production_path}${file}
done
