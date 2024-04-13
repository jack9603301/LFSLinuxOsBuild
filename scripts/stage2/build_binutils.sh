echo "Step 22: Compile Binutils-2.42(From Stage2)"

cd $LFS/sources
tar xvf "./binutils-2.42.tar.xz"
cd binutils-2.42
mkdir -v build
cd       build
sed '6009s/$add_dir//' -i ltmain.sh
mkdir -v build
cd       build
../configure                   \
    --prefix=/usr              \
    --build=$(../config.guess) \
    --host=$LFS_TGT            \
    --disable-nls              \
    --enable-shared            \
    --enable-gprofng=no        \
    --disable-werror           \
    --enable-64-bit-bfd        \
    --enable-default-hash-style=gnu
make
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/lib{bfd,ctf,ctf-nobfd,opcodes,sframe}.{a,la}
cd ../
rm -rfv binutils-2.42
cd $LFS
