echo "Step 77: Compile Automake 1.18.1(From Stage3 in chroot)"

cd /sources
tar xvf "./automake-1.18.1.tar.xz"
cd automake-1.18.1
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.18.1
make
make install
cd ../
rm -rfv automake-1.18.1
cd /
