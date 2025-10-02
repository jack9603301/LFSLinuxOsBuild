echo "Step 70: Compile Expat 2.7.1(From Stage3 in chroot)"

cd /sources
tar xvf "./expat-2.7.1.tar.xz"
cd expat-2.7.1
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/expat-2.7.1
make
make install
install -v -m644 doc/*.{html,css} /usr/share/doc/expat-2.7.1
cd ../
rm -rfv expat-2.7.1
cd /
