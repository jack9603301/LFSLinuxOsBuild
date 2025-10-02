
. ../pre_scripts.sh

echo "Step 16: Compile Gzip 1.14(From Stage2)"

cd $LFS/sources
tar xvf "./gzip-1.14.tar.xz"
cd gzip-1.14
./configure --prefix=/usr --host=$LFS_TGT
make
make DESTDIR=$LFS install
cd ..
rm -rfv gzip-1.14
cd $LFS
