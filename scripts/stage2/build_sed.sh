echo "Step 19: Compile Sed 4.9(From Stage2)"

cd $LFS/sources
tar xvf "./sed-4.9.tar.xz"
cd sed-4.9
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
cd ..
rm -rfv sed-4.9
cd $LFS
