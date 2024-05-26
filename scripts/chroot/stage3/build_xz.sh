echo "Step 37: Compile Xz 5.4.6(From Stage3 in chroot)"

cd /sources
tar xvf "./xz-5.4.6.tar.xz"
cd xz-5.4.6
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.4.6
make
make install
cd ../
rm -rfv xz-5.4.6
cd /
