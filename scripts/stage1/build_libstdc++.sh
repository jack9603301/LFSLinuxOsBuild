
. ../pre_scripts.sh

echo "Step 6: Compile LibStdC++ on GCC-13.2.0(From Stage1)"

cd $LFS/sources
tar xvf "./gcc-13.2.0.tar.xz"
cd gcc-13.2.0
mkdir -v build
cd       build
../libstdc++-v3/configure           \
    --host=$LFS_TGT                 \
    --build=$(../config.guess)      \
    --prefix=/usr                   \
    --disable-multilib              \
    --disable-nls                   \
    --disable-libstdcxx-pch         \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/13.2.0
make
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/lib{stdc++{,exp,fs},supc++}.la
cd ../..
rm -rfv gcc-13.2.0
cd $LFS

echo "Step 6-Output: Output gcc version number"

$LFS/tools/bin/$LFS_TGT-gcc -v
