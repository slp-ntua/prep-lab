#!/usr/bin/env bash

NUM_CPUS=`cat /proc/cpuinfo | grep proc | wc -l`
OPENFST_VERSION=1.6.1
# max number of jobs is ncpus - 1
NUM_JOBS=$(($NUM_CPUS - 1))

sudo apt-get install -y wget make gcc g++ checkinstall python-dev libz-dev

wget http://www.openfst.org/twiki/pub/FST/FstDownload/openfst-${OPENFST_VERSION}.tar.gz
tar -xvf openfst-${OPENFST_VERSION}.tar.gz openfst-${OPENFST_VERSION}
cd openfst-${OPENFST_VERSION}
./configure --enable-static=yes --enable-shared=no --with-pic=yes --enable-far
make -j${NUM_JOBS}
sudo make install
