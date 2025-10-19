echo "Step 111: Compile libtasn1 4.20.0(From Stage4 in chroot)"

cd /sources
tar xvf "libtasn1-4.20.0.tar.gz"
cd libtasn1-4.20.0
./configure --prefix=/usr --disable-static
make
make install
make -C doc/reference install-data-local
cd ../
rm -rfv libtasn1-4.20.0
cd /
