echo "Step 111: Install LFS-Bootscripts 20250827(From Stage3 in chroot)"

cd /sources
tar xvf "./lfs-bootscripts-20250827.tar.xz"
cd lfs-bootscripts-20250827
make install
cd ../
rm -rfv lfs-bootscripts-20250827
cd /
