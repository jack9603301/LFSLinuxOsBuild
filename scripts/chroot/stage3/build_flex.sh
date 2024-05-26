echo "Step 43: Compile Flex 2.6.4(From Stage3 in chroot)"

cd /sources
tar xvf "./flex-2.6.4.tar.gz"
cd flex-2.6.4
./configure --prefix=/usr \
            --docdir=/usr/share/doc/flex-2.6.4 \
            --disable-static
make
make install
ln -sv flex   /usr/bin/lex
ln -sv flex.1 /usr/share/man/man1/lex.1
cd ../
rm -rfv flex-2.6.4
cd /
