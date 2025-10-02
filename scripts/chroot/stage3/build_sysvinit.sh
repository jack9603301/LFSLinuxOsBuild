echo "Step 108: Compile SysVinit 3.14(From Stage3 in chroot)"

cd /sources
tar xvf "./sysvinit-3.14.tar.xz"
cd sysvinit-3.14
patch -Np1 -i ../sysvinit-3.14-consolidated-1.patch
make
make install
cd ../
rm -rfv sysvinit-3.14
cd /
