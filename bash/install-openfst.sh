OPENFST_VERSION=1.6.1

# Install dependencies
sudo apt-get install -y wget make gcc g++ checkinstall python-dev libz-dev

# Get the source code
wget http://www.openfst.org/twiki/pub/FST/FstDownload/openfst-${OPENFST_VERSION}.tar.gz
tar -xvf openfst-${OPENFST_VERSION}.tar.gz openfst-${OPENFST_VERSION}
cd openfst-${OPENFST_VERSION}


# Compile the library
./configure --enable-static=yes --enable-shared=no --with-pic=yes --enable-far
make -j${NUM_JOBS}
