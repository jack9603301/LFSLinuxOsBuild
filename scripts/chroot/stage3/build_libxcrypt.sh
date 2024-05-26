echo "Step 55: Compile Libxcrypt 4.4.36(From Stage3 in chroot)"

cd $LFS/sources
tar xvf "./libxcrypt-4.4.36.tar.xz"
cd libxcrypt-4.4.36
./configure --prefix=/usr                \
            --enable-hashes=strong,glibc \
            --enable-obsolete-api=no     \
            --disable-static             \
            --disable-failure-tokens
make
make install
cd ../
rm -rfv libxcrypt-4.4.36
cd ..
