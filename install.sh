#!/bin/sh
if [ -z "$kernelver" ]; then kernelver=`uname -r` ; fi

sudo rm -R /lib/modules/$kernelver/kernel/drivers/media/

cd media_build
sudo make install KERNELRELEASE=$kernelver

wget -N http://www.tbsdtv.com/download/document/linux/tbs-tuner-firmwares_v1.0.tar.bz2
tar jxvf tbs-tuner-firmwares_v1.0.tar.bz2 -C /lib/firmware/


sudo reboot


