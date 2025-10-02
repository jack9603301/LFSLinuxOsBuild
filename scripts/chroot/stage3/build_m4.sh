echo "Step 43: Compile M4 1.4.20(From Stage3 in chroot)"

cd /sources
tar xvf "./m4-1.4.20.tar.xz"
cd m4-1.4.20
./configure --prefix=/usr
make
make install
cd ../
rm -rfv m4-1.4.20
cd /
