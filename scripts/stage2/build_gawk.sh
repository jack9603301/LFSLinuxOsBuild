
. ../pre_scripts.sh

echo "Step 14: Compile Gawk 5.3.0(From Stage2)"

cd $LFS/sources
tar xvf "./gawk-5.3.0.tar.xz"
cd gawk-5.3.0
sed -i 's/extras//' Makefile.in
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
cd ..
rm -rfv gawk-5.3.0
cd $LFS
