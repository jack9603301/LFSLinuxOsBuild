echo "Step 97: Compile Libpipeline 1.5.8(From Stage3 in chroot)"

cd /sources
tar xvf "./libpipeline-1.5.8.tar.gz"
cd libpipeline-1.5.8
./configure --prefix=/usr
make
make install
cd ../
rm -rfv libpipeline-1.5.8
cd /
