echo "Step 28: Compile Python 3.12.2(From Stage3 in chroot)"

cd /sources
tar xvf "./Python-3.12.2.tar.xz"
cd Python-3.12.2
./configure --prefix=/usr   \
            --enable-shared \
            --without-ensurepip
make
make install
cd ../
rm -rfv Python-3.12.2
cd /
