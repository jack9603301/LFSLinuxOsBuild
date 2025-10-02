echo "Step 39: Compile Lz4 1.10.0(From Stage3 in chroot)"

cd /sources
tar xvf "./lz4-1.10.0.tar.gz"
cd lz4-1.10.0
make BUILD_STATIC=no PREFIX=/usr
make BUILD_STATIC=no PREFIX=/usr install
cd ../
rm -rfv lz4-1.10.0
cd /
