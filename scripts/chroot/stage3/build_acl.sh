echo "Step 53: Compile Acl 2.3.2(From Stage3 in chroot)"

cd $LFS/sources
tar xvf "./acl-2.3.2.tar.xz"
cd acl-2.3.2
./configure --prefix=/usr         \
            --disable-static      \
            --docdir=/usr/share/doc/acl-2.3.2
make
make install
cd ../
rm -rfv acl-2.3.2
cd ..
