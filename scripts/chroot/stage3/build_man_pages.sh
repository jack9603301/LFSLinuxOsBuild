echo "Step 32: Compile Man pages 6.06(From Stage3 in chroot)"

cd /sources
tar xvf "./man-pages-6.06.tar.xz"
cd man-pages-6.06
rm -v man3/crypt*
make prefix=/usr install
cd ../
rm -rfv man-pages-6.06
cd /
