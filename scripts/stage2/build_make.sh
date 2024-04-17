
. ../pre_scripts.sh

echo "Step 17: Compile Make 4.4.1(From Stage2)"

cd $LFS/sources
tar xvf "./make-4.4.1.tar.gz"
cd make-4.4.1
./configure --prefix=/usr   \
            --without-guile \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
cd ..
rm -rfv make-4.4.1
cd $LFS
