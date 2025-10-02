echo "Step 90: Compile Diffutils 3.12(From Stage3 in chroot)"

cd /sources
tar xvf "./diffutils-3.12.tar.xz"
cd diffutils-3.12
./configure --prefix=/usr
make
make install
cd ../
rm -rfv diffutils-3.12
cd /
