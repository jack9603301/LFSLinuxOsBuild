echo "Step 35: Compile Zlib 1.3.1(From Stage3 in chroot)"

cd /sources
tar xvf "./zlib-1.3.1.tar.gz"
cd zlib-1.3.1
./configure --prefix=/usr
make
make install
cd ../
rm -rfv zlib-1.3.1
cd /
