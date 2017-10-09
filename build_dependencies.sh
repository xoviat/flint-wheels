#! /bin/sh

if [ -n $IS_OSX ]; then
    wget http://mpir.org/mpir-2.7.0.tar.bz2
    tar -xf mpir-2.7.0.tar.bz2
    cd mpir-2.7.0
    ./configure --enable-gmpcompat --prefix=$HOME/deps --disable-static --host=x86_64-darwin-none
    make -j4 > /dev/null 2>&1
    make install
    cd ..
else
    wget http://mpir.org/mpir-2.7.0.tar.bz2
    tar -xf mpir-2.7.0.tar.bz2
    cd mpir-2.7.0
    ./configure --enable-gmpcompat --prefix=$HOME/deps --disable-static --enable-fat
    make -j4 > /dev/null 2>&1
    make install
    cd ..
fi

wget http://www.mpfr.org/mpfr-3.1.4/mpfr-3.1.4.tar.bz2
tar -xf mpfr-3.1.4.tar.bz2
cd mpfr-3.1.4
./configure --with-gmp=$HOME/deps --prefix=$HOME/deps --disable-static
make -j4 > /dev/null 2>&1
make install
cd ..

wget http://flintlib.org/flint-2.5.2.tar.gz
tar -xf flint-2.5.2.tar.gz
cd flint-2.5.2
./configure --with-gmp=$HOME/deps --with-mpfr=$HOME/deps --prefix=$HOME/deps --disable-static
make -j4 > /dev/null 2>&1
make install
cd ..
