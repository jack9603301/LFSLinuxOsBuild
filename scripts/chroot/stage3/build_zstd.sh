echo "Step 40: Compile Zstd 1.5.7(From Stage3 in chroot)"

cd /sources
tar xvf "./zstd-1.5.7.tar.gz"
cd zstd-1.5.7
make prefix=/usr
make prefix=/usr install
rm -v /usr/lib/libzstd.a
cd ../
rm -rfv zstd-1.5.7
cd /
