echo "Step 91: Compile Gawk 5.3.2(From Stage3 in chroot)"

cd /sources
tar xvf "./gawk-5.3.2.tar.xz"
cd gawk-5.3.2
sed -i 's/extras//' Makefile.in
./configure --prefix=/usr
make
rm -f /usr/bin/gawk-5.3.2
make install
cd ../
rm -rfv gawk-5.3.2
cd /
