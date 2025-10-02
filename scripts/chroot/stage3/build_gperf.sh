echo "Step 69: Compile Gperf 3.3(From Stage3 in chroot)"

cd /sources
tar xvf "./gperf-3.3.tar.gz"
cd gperf-3.3
./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.3
make
make install
cd ../
rm -rfv gperf-3.3
cd /
