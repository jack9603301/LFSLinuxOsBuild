echo "Step 39: Compile File 5.45(From Stage3 in chroot)"

cd /sources
tar xvf "./file-5.45.tar.gz"
cd file-5.45
./configure --prefix=/usr
make
make install
cd ../
rm -rfv file-5.45
cd /
