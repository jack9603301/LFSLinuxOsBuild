echo "Step 38: Compile Xz 5.8.1(From Stage3 in chroot)"

cd /sources
tar xvf "./xz-5.8.1.tar.xz"
cd xz-5.8.1
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.8.1
make
make install
cd ../
rm -rfv xz-5.8.1
cd /
