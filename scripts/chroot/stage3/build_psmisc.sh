echo "Step 60: Compile Psmisc 23.6(From Stage3 in chroot)"

cd $LFS/sources
tar xvf "./psmisc-23.6.tar.xz"
cd psmisc-23.6
./configure --prefix=/usr
make
make install
cd ../
rm -rfv psmisc-23.6
cd ..
