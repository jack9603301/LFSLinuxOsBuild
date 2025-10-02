echo "Step 44: Compile Bc 7.0.3(From Stage3 in chroot)"

cd /sources
tar xvf "./bc-7.0.3.tar.xz"
cd bc-7.0.3
CC=gcc ./configure --prefix=/usr -G -O3 -r
make
make install
cd ../
rm -rfv bc-7.0.3
cd /
