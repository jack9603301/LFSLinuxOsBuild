echo "Step 42: Compile Bc 6.7.5(From Stage3 in chroot)"

cd /sources
tar xvf "./bc-6.7.5.tar.xz"
cd bc-6.7.5
CC=gcc ./configure --prefix=/usr -G -O3 -r
make
make install
cd ../
rm -rfv bc-6.7.5
cd /
