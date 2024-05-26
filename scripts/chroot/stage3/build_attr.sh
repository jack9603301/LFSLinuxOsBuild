echo "Step 52: Compile Attr 2.5.2(From Stage3 in chroot)"

cd $LFS/sources
tar xvf "./attr-2.5.2.tar.gz"
cd attr-2.5.2
./configure --prefix=/usr     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.5.2
make
make install
cd ../
rm -rfv attr-2.5.2
cd ..
