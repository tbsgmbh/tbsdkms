#!/bin/sh

#Update the sources
cd media
git remote update
git pull
cd ../media_build
git remote update
git pull

#Configure and Compile
if [ -z "$kernelver" ]; then kernelver=`uname -r` ; fi
make dir DIR=../media KERNELRELEASE=$kernelver 
make allyesconfig KERNELRELEASE=$kernelver 
make -j4 KERNELRELEASE=$kernelver
