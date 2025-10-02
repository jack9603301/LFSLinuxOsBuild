echo "Step 29: Compile Python 3.13.7(From Stage3 in chroot)"

cd /sources
tar xvf "./Python-3.13.7.tar.xz"
cd Python-3.13.7
./configure --prefix=/usr   \
            --enable-shared \
            --without-ensurepip
make
make install
cd ../
rm -rfv Python-3.13.7
cd /
