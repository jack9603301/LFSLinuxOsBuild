echo "Step 31: Compile Util-linux 2.41.1(From Stage3 in chroot)"

cd /sources
tar xvf "./util-linux-2.41.1.tar.xz"
cd util-linux-2.41.1
mkdir -pv /var/lib/hwclock
./configure --libdir=/usr/lib    \
            --runstatedir=/run   \
            --disable-chfn-chsh  \
            --disable-login      \
            --disable-nologin    \
            --disable-su         \
            --disable-setpriv    \
            --disable-runuser    \
            --disable-pylibmount \
            --disable-static     \
            --without-python     \
            ADJTIME_PATH=/var/lib/hwclock/adjtime \
            --docdir=/usr/share/doc/util-linux-2.41.1
make
make install
cd ../
rm -rfv util-linux-2.41.1
cd /
