echo "Step 38: Compile Zstd 1.5.5(From Stage3 in chroot)"

cd /sources
tar xvf "./zstd-1.5.5.tar.gz"
cd zstd-1.5.5
make prefix=/usr
make prefix=/usr install
rm -v /usr/lib/libzstd.a
cd ../
rm -rfv zstd-1.5.5
cd /
