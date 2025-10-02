echo "Step 56: Compile Libcap 2.76(From Stage3 in chroot)"

cd $LFS/sources
tar xvf "./libcap-2.76.tar.xz"
cd libcap-2.76
sed -i '/install -m.*STA/d' libcap/Makefile
make prefix=/usr lib=lib
make prefix=/usr lib=lib install
cd ../
rm -rfv libcap-2.76
cd ..
