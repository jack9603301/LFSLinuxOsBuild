echo "Step 69: Compile Inetutils 2.5(From Stage3 in chroot)"

cd /sources
tar xvf "./inetutils-2.5.tar.xz"
cd inetutils-2.5
./configure --prefix=/usr        \
            --bindir=/usr/bin    \
            --localstatedir=/var \
            --disable-logger     \
            --disable-whois      \
            --disable-rcp        \
            --disable-rexec      \
            --disable-rlogin     \
            --disable-rsh        \
            --disable-servers
make
make install
mv -v /usr/{,s}bin/ifconfig
cd ../
rm -rfv inetutils-2.5
cd /
