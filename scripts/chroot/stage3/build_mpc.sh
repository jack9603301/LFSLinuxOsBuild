echo "Step 53: Compile MPC 1.3.1(From Stage3 in chroot)"

cd $LFS/sources
tar xvf "./mpc-1.3.1.tar.gz"
cd mpc-1.3.1
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.3.1
make
make html
make install
make install-html
cd ../
rm -rfv mpc-1.3.1
cd ..
