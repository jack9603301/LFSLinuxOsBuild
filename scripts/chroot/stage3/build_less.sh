echo "Step 72: Compile Less 679(From Stage3 in chroot)"

cd /sources
tar xvf "./less-679.tar.gz"
cd less-679
./configure --prefix=/usr --sysconfdir=/etc
make
make install
cd ../
rm -rfv less-679
cd /
