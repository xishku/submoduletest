#! /bin/bash

echo "begin"

export CC=arm-linux-gnueabihf-gcc

cd libpcap
./configure --prefix=/root/libpcap --host=arm-linux CC=arm-linux-gnueabihf-gcc
#./configure --host=arm-linux-gnueabihf-gcc --with-pcap=linux

make clean 
make -j32

cd ..
