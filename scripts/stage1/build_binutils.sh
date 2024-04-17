
. ../pre_scripts.sh

echo "Step 4: Compile Binutils-2.42(From Stage1)"

cd $LFS/sources
tar xvf "./binutils-2.42.tar.xz"
cd binutils-2.42
mkdir -v build
cd       build
../configure --prefix=$LFS/tools \
             --with-sysroot=$LFS \
             --target=$LFS_TGT   \
             --disable-nls       \
             --enable-gprofng=no \
             --disable-werror    \
             --enable-default-hash-style=gnu

make
make install
cd ../..
rm -rfv binutils-2.42
cd $LFS

echo "Step 4-Output: Output tools tool directory file"

tree --dirsfirst $LFS/tools
