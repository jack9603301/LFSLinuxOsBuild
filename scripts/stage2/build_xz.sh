
. ../pre_scripts.sh

echo "Step 21: Compile Xz 5.8.1(From Stage2)"

cd $LFS/sources
tar xvf "./xz-5.8.1.tar.xz"
cd xz-5.8.1
./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.8.1
make
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/liblzma.la
cd ..
rm -rfv xz-5.8.1
cd $LFS
