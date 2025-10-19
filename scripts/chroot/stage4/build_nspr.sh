echo "Step 113: Compile NSPR 4.37(From Stage4 in chroot)"

cd /sources
tar xvf "nspr-4.37.tar.gz"
cd nspr-4.37
cd nspr &&

sed -i '/^RELEASE/s|^|#|' pr/src/misc/Makefile.in &&
sed -i 's|$(LIBRARY) ||'  config/rules.mk         &&

./configure --prefix=/usr   \
            --with-mozilla  \
            --with-pthreads \
            $([ $(uname -m) = x86_64 ] && echo --enable-64bit) &&
make
make install
cd ../
rm -rfv nspr-4.37
cd /
