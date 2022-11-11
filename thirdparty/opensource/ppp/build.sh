#! /bin/bash

echo "begin"

export CC=arm-linux-gnueabihf-gcc

cd ppp

./configure #--prefix=/root/libpcap --host=arm-linux CC=arm-linux-gnueabihf-gcc
#./configure --host=arm-linux-gnueabihf-gcc --with-pcap=linux

cp ../pppd.Makefile pppd/Makefile

make clean 
make cc=arm-linux-gnueabihf-gcc
cd ..
