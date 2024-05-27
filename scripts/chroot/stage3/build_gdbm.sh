echo "Step 66: Compile GDBM 1.23(From Stage3 in chroot)"

cd /sources
tar xvf "./gdbm-1.23.tar.gz"
cd gdbm-1.23
./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat
make
make install
cd ../
rm -rfv gdbm-1.23
cd /
