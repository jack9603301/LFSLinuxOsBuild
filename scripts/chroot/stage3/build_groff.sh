echo "Step 93: Compile Groff 1.23.0(From Stage3 in chroot)"

cd /sources
tar xvf "./groff-1.23.0.tar.gz"
cd groff-1.23.0
PAGE=A4 ./configure --prefix=/usr
make
make install
cd ../
rm -rfv groff-1.23.0
cd /
