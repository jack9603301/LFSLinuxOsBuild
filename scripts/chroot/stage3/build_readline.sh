echo "Step 42: Compile Readline 8.3(From Stage3 in chroot)"

cd /sources
tar xvf "./readline-8.3.tar.gz"
cd readline-8.3
sed -i '/MV.*old/d' Makefile.in
sed -i '/{OLDSUFF}/c:' support/shlib-install
patch -Np1 -i ../readline-8.3-upstream_fixes-3.patch
./configure --prefix=/usr    \
            --disable-static \
            --with-curses    \
            --docdir=/usr/share/doc/readline-8.3
make SHLIB_LIBS="-lncursesw"
make SHLIB_LIBS="-lncursesw" install
install -v -m644 doc/*.{ps,pdf,html,dvi} /usr/share/doc/readline-8.3
cd ../
rm -rfv readline-8.3
cd /
