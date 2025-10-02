echo "Step 49: Compile PkgConf 2.11(From Stage3 in chroot)"

cd /sources
tar xvf "./pkgconf-2.5.1.tar.xz"
cd pkgconf-2.5.1
./configure --prefix=/usr              \
            --disable-static           \
            --docdir=/usr/share/doc/pkgconf-2.5.1
make
make install
ln -sv pkgconf   /usr/bin/pkg-config
ln -sv pkgconf.1 /usr/share/man/man1/pkg-config.1
cd ../
rm -rfv pkgconf-2.5.1
cd /
