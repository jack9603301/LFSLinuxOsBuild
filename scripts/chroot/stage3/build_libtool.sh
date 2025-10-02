echo "Step 67: Compile Libtool 2.5.4(From Stage3 in chroot)"

cd /sources
tar xvf "./libtool-2.5.4.tar.xz"
cd libtool-2.5.4
./configure --prefix=/usr
make
make install
rm -fv /usr/lib/libltdl.a
cd ../
rm -rfv libtool-2.5.4
cd /
