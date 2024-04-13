echo "Step 9: Compile Bash 5.2.21(From Stage2)"

cd $LFS/sources
tar xvf "./bash-5.2.21.tar.gz"
cd bash-5.2.21
./configure --prefix=/usr                      \
            --build=$(sh support/config.guess) \
            --host=$LFS_TGT                    \
            --without-bash-malloc
make
make DESTDIR=$LFS install
ln -sv bash $LFS/bin/sh
cd ..
rm -rfv bash-5.2.21
cd $LFS
