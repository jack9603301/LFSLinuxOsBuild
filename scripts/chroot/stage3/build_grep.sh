echo "Step 63: Compile Grep 3.11(From Stage3 in chroot)"

cd /sources
tar xvf "./grep-3.11.tar.xz"
cd grep-3.11
sed -i "s/echo/#echo/" src/egrep.sh
./configure --prefix=/usr
make
make install
cd ../
rm -rfv grep-3.11
cd /
