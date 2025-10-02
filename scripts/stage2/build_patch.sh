
. ../pre_scripts.sh

echo "Step 18: Compile Patch 2.8(From Stage2)"

cd $LFS/sources
tar xvf "./patch-2.8.tar.xz"
cd patch-2.8
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
cd ..
rm -rfv patch-2.8
cd $LFS
