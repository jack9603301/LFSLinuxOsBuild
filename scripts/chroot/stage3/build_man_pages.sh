echo "Step 33: Compile Man pages 6.15(From Stage3 in chroot)"

cd /sources
tar xvf "./man-pages-6.15.tar.xz"
cd man-pages-6.15
rm -v man3/crypt*
make prefix=/usr install
cd ../
rm -rfv man-pages-6.15
cd /
