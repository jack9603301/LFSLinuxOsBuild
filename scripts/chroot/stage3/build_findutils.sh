echo "Step 92: Compile Findutils 4.10.0(From Stage3 in chroot)"

cd /sources
tar xvf "./findutils-4.10.0.tar.xz"
cd findutils-4.10.0
./configure --prefix=/usr --localstatedir=/var/lib/locate
make
make install
cd ../
rm -rfv findutils-4.10.0
cd /
