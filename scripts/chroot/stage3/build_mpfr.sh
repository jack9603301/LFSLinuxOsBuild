echo "Step 50: Compile MPFR 4.2.1(From Stage3 in chroot)"

cd $LFS/sources
tar xvf "./mpfr-4.2.1.tar.xz"
cd mpfr-4.2.1
./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.2.1
make
make html
make install
make install-html
cd ../
rm -rfv mpfr-4.2.1
cd ..
