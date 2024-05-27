echo "Step 74: Compile Autoconf 2.72(From Stage3 in chroot)"

cd /sources
tar xvf "./autoconf-2.72.tar.xz"
cd autoconf-2.72
./configure --prefix=/usr
make
make install
cd ../
rm -rfv autoconf-2.72
cd /
