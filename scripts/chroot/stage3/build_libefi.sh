echo "Step 77: Compile Libelf 0.190(From Stage3 in chroot)"

cd /sources
tar xvf "./elfutils-0.190.tar.bz2"
cd elfutils-0.190
./configure --prefix=/usr                \
            --disable-debuginfod         \
            --enable-libdebuginfod=dummy
make
make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /usr/lib/libelf.a
cd ../
rm -rfv elfutils-0.190
cd /
