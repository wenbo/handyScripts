#!/bin/bash 

from_path="/home/bob/workspace/xxx/git/yyy/repos/"
staging_path="/home/bob/workspace/xxx/git/yyy/work/2015/0325/"
public_path="/var/www/test.yyy.cn/staging/current/"

for i in app/views/home/index.html.erb  \
public/assets/images/vedio.jpg \
public/assets/images/vedio_15.jpg \
public/pci_files/images/KC-CE50-N_movie.png \
public/pci_files/images/KC-CE50-W_movie.png \
public/pci_files/images/KC-CE60-N_movie.png \
public/2014/video/cm0324.flv  \
public/2014/video/cm0323.flv   
do 
		# echo $i
		file=$i
		dir=${file%/*}
		abs_staging_dir=${staging_path}${dir}
		if [ ! -d ${abs_staging_dir} ]; then
				mkdir -p ${abs_staging_dir}
		fi 
		cp ${from_path}${i} ${abs_staging_dir}
done
