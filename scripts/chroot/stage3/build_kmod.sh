echo "Step 88: Compile Kmod 34.2(From Stage3 in chroot)"

cd /sources
tar xvf "./kmod-34.2.tar.xz"
cd kmod-34.2
./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --with-openssl         \
            --with-xz              \
            --with-zstd            \
            --with-zlib
make
make install

for target in depmod insmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod /usr/sbin/$target
done

ln -sfv kmod /usr/bin/lsmod
cd ../
rm -rfv kmod-34.2
cd /
