
. ../pre_scripts.sh

echo "Step 15: Compile Grep 3.12(From Stage2)"

cd $LFS/sources
tar xvf "./grep-3.12.tar.xz"
cd grep-3.12
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess)
make
make DESTDIR=$LFS install
cd ..
rm -rfv grep-3.12
cd $LFS
