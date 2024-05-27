echo "Step 70: Compile Less 643(From Stage3 in chroot)"

cd /sources
tar xvf "./less-643.tar.gz"
cd less-643
./configure --prefix=/usr --sysconfdir=/etc
make
make install
cd ../
rm -rfv less-643
cd /
