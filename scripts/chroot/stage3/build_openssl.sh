echo "Step 76: Compile OpenSSL 3.2.1(From Stage3 in chroot)"

cd /sources
tar xvf "./openssl-3.2.1.tar.gz"
cd openssl-3.2.1
./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic          \
         enable-ssl3           \
         enable-ssl3-method    \
         enable-zstd           \
         enable-zstd-dynamic
make
sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install
mv -v /usr/share/doc/openssl /usr/share/doc/openssl-3.2.1
cp -vfr doc/* /usr/share/doc/openssl-3.2.1
cd ../
rm -rfv openssl-3.2.1
cd /
