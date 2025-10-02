echo "Step 30: Compile Texinfo 7.2(From Stage3 in chroot)"

cd /sources
tar xvf "./texinfo-7.2.tar.xz"
cd texinfo-7.2
./configure --prefix=/usr
make
make install
cd ../
rm -rfv texinfo-7.2
cd /
