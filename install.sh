#!/bin/sh
workdir=$(pwd)

echo $workdir

#install graphviz 
rpm -ivh graphviz-2.26.0-10.el6.x86_64.rpm

#install doxygen
tar zxf doxygen-1.8.8.src.tar.gz 
cd doxygen-1.8.8
./configure
make 
make install

cd $workdir
rm  doxygen-1.8.8 -rf

cp DoxygenToolkit.vim /usr/share/vim/vim72/plugin/

#install vim --plugin directory
#bak
rm /root/vimbak -rf
mv /root/.vim /root/vimbak 
#install
rm /root/.vim -rf
cp vim /root/.vim  -rf

#install vimrc --configure file
#bak
rm /root/vimrcbak -f
mv /root/.vimrc /root/vimrcbak
#install
rm /root/.vimrc -f
cp vimrc /root/.vimrc -f

#install tags
tar zxf tags.tar.gz -C /root/.vim
