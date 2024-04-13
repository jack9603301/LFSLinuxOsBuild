echo "Step 18: Compile Patch 2.7.6(From Stage2)"

cd $LFS/sources
tar xvf "./patch-2.7.6.tar.xz"
cd patch-2.7.6
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
cd ..
rm -rfv patch-2.7.6
cd $LFS
