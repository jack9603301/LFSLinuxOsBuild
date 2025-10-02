echo "Step 99: Compile Patch 2.8(From Stage3 in chroot)"

cd /sources
tar xvf "./patch-2.8.tar.xz"
cd patch-2.8
./configure --prefix=/usr
make
make install
cd ../
rm -rfv patch-2.8
cd /
