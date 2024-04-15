echo "Step 26: Compile Bison 3.8.2(From Stage3 in chroot)"

cd /sources
tar xvf "./bison-3.8.2.tar.xz"
cd bison-3.8.2
./configure --prefix=/usr \
            --docdir=/usr/share/doc/bison-3.8.2
make
make install
cd ../
rm -rfv bison-3.8.2
cd /
