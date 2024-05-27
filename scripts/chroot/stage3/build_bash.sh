echo "Step 64: Compile Bash 5.2.21(From Stage3 in chroot)"

cd /sources
tar xvf "./bash-5.2.21.tar.gz"
cd bash-5.2.21
sed -i "s/echo/#echo/" src/egrep.sh
patch -Np1 -i ../bash-5.2.21-upstream_fixes-1.patch
./configure --prefix=/usr             \
            --without-bash-malloc     \
            --with-installed-readline \
            --docdir=/usr/share/doc/bash-5.2.21
make
make install
cd ../
rm -rfv bash-5.2.21
cd /
