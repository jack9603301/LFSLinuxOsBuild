echo "Step 106: Compile Procps-ng 4.0.5(From Stage3 in chroot)"

cd /sources
tar xvf "./procps-ng-4.0.5.tar.xz"
cd procps-ng-4.0.5
./configure --prefix=/usr                           \
            --docdir=/usr/share/doc/procps-ng-4.0.5 \
            --disable-static                        \
            --disable-kill                          \
            --enable-watch8bit
make
make install
cd ../
rm -rfv procps-ng-4.0.5
cd /
