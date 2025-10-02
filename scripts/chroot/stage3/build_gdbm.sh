echo "Step 68: Compile GDBM 1.26(From Stage3 in chroot)"

cd /sources
tar xvf "./gdbm-1.26.tar.gz"
cd gdbm-1.26
./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat
make
make install
cd ../
rm -rfv gdbm-1.26
cd /
