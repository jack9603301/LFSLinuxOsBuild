echo "Step 78: Compile OpenSSL 3.5.2(From Stage3 in chroot)"

cd /sources
tar xvf "./openssl-3.5.2.tar.gz"
cd openssl-3.5.2
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
mv -v /usr/share/doc/openssl /usr/share/doc/openssl-3.5.2
cp -vfr doc/* /usr/share/doc/openssl-3.5.2
cd ../
rm -rfv openssl-3.5.2
cd /
