echo "Step 75: Compile Automake 1.16.5(From Stage3 in chroot)"

cd /sources
tar xvf "./automake-1.16.5.tar.xz"
cd automake-1.16.5
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.5
make
make install
cd ../
rm -rfv automake-1.16.5
cd /
