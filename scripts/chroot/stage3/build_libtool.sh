echo "Step 65: Compile Libtool 2.4.7(From Stage3 in chroot)"

cd /sources
tar xvf "./libtool-2.4.7.tar.xz"
cd libtool-2.4.7
./configure --prefix=/usr
make
make install
rm -fv /usr/lib/libltdl.a
cd ../
rm -rfv libtool-2.4.7
cd /
