echo "Step 62: Compile Psmisc 23.7(From Stage3 in chroot)"

cd $LFS/sources
tar xvf "./psmisc-23.7.tar.xz"
cd psmisc-23.7
./configure --prefix=/usr
make
make install
cd ../
rm -rfv psmisc-23.7
cd ..
