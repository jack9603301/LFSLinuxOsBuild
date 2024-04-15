echo "Step 29: Compile Texinfo 7.1(From Stage3 in chroot)"

cd /sources
tar xvf "./texinfo-7.1.tar.xz"
cd texinfo-7.1
./configure --prefix=/usr
make
make install
cd ../
rm -rfv texinfo-7.1
cd /
