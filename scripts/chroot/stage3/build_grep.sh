echo "Step 65: Compile Grep 3.12(From Stage3 in chroot)"

cd /sources
tar xvf "./grep-3.12.tar.xz"
cd grep-3.12
sed -i "s/echo/#echo/" src/egrep.sh
./configure --prefix=/usr
make
make install
cd ../
rm -rfv grep-3.12
cd /
