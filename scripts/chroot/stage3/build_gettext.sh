echo "Step 61: Compile Gettext 0.22.4(From Stage3 in chroot)"

cd $LFS/sources
tar xvf "./gettext-0.22.4.tar.xz"
cd gettext-0.22.4
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.22.4
make
make install
chmod -v 0755 /usr/lib/preloadable_libintl.so
cd ../
rm -rfv gettext-0.22.4
cd ..
