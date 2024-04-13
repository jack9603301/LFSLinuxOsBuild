echo "Step 7: Compile M4 1.4.19(From Stage2)"

cd $LFS/sources
tar xvf "./m4-1.4.19.tar.xz"
cd m4-1.4.19
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
cd ..
rm -rfv m4-1.4.19
cd $LFS
