echo "Step 66: Compile Bash 5.3(From Stage3 in chroot)"

cd /sources
tar xvf "./bash-5.3.tar.gz"
cd bash-5.3
sed -i "s/echo/#echo/" src/egrep.sh
patch -Np1 -i ../bash-5.3-upstream_fixes-1.patch
./configure --prefix=/usr             \
            --without-bash-malloc     \
            --with-installed-readline \
            --docdir=/usr/share/doc/bash-5.3
make
make install
cd ../
rm -rfv bash-5.3
cd /
