echo "Step 94: Compile Gzip 1.14(From Stage3 in chroot)"

cd /sources
tar xvf "./gzip-1.14.tar.xz"
cd gzip-1.14
./configure --prefix=/usr
make
make install
cd ../
rm -rfv gzip-1.14
cd /
