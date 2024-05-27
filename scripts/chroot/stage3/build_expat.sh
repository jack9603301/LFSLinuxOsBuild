echo "Step 68: Compile Expat 2.6.0(From Stage3 in chroot)"

cd /sources
tar xvf "./expat-2.6.0.tar.xz"
cd expat-2.6.0
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/expat-2.6.0
make
make install
install -v -m644 doc/*.{html,css} /usr/share/doc/expat-2.6.0
cd ../
rm -rfv expat-2.6.0
cd /
