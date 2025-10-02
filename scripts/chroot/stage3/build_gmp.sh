echo "Step 51: Compile GMP 6.3.0(From Stage3 in chroot)"

cd $LFS/sources
tar xvf "./gmp-6.3.0.tar.xz"
cd gmp-6.3.0
./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.3.0
make
make html
make install
make install-html
cd ../
rm -rfv gmp-6.3.0
cd ..
