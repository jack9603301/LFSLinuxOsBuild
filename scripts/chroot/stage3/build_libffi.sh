echo "Step 78: Compile Libffi 3.4.4(From Stage3 in chroot)"

cd /sources
tar xvf "./libffi-3.4.4.tar.gz"
cd libffi-3.4.4
./configure --prefix=/usr          \
            --disable-static       \
            --with-gcc-arch=native
make
make install
cd ../
rm -rfv libffi-3.4.4
cd /
