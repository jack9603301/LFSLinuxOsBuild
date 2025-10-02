echo "Step 41: Compile File 5.46(From Stage3 in chroot)"

cd /sources
tar xvf "./file-5.46.tar.gz"
cd file-5.46
./configure --prefix=/usr
make
make install
cd ../
rm -rfv file-5.46
cd /
