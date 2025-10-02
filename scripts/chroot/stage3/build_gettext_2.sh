echo "Step 63: Compile Gettext 0.22.4(From Stage3 in chroot)"

cd $LFS/sources
tar xvf "./gettext-0.26.tar.xz"
cd gettext-0.26
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.26
make
make install
chmod -v 0755 /usr/lib/preloadable_libintl.so
cd ../
rm -rfv gettext-0.26
cd ..
