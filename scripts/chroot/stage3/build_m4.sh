echo "Step 41: Compile M4 1.4.19(From Stage3 in chroot)"

cd /sources
tar xvf "./m4-1.4.19.tar.xz"
cd m4-1.4.19
./configure --prefix=/usr
make
make install
cd ../
rm -rfv m4-1.4.19
cd /
