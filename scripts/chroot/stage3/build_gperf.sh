echo "Step 67: Compile Gperf 3.1(From Stage3 in chroot)"

cd /sources
tar xvf "./gperf-3.1.tar.gz"
cd gperf-3.1
./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1
make
make install
cd ../
rm -rfv gperf-3.1
cd /
