echo "Step 80: Compile Libffi 3.5.2(From Stage3 in chroot)"

cd /sources
tar xvf "./libffi-3.5.2.tar.gz"
cd libffi-3.5.2
./configure --prefix=/usr          \
            --disable-static       \
            --with-gcc-arch=native
make
make install
cd ../
rm -rfv libffi-3.5.2
cd /
