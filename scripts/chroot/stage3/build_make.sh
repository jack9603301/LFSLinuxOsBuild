echo "Step 98: Compile Make 4.4.1(From Stage3 in chroot)"

cd /sources
tar xvf "./make-4.4.1.tar.gz"
cd make-4.4.1
./configure --prefix=/usr
make
make install
cd ../
rm -rfv make-4.4.1
cd /
