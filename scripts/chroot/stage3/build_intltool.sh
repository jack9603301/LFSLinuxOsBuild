echo "Step 73: Compile Intltool 0.51.0(From Stage3 in chroot)"

cd /sources
tar xvf "./intltool-0.51.0.tar.gz"
cd intltool-0.51.0
sed -i 's:\\\${:\\\$\\{:' intltool-update.in
./configure --prefix=/usr
make
make install
install -v -Dm644 doc/I18N-HOWTO /usr/share/doc/intltool-0.51.0/I18N-HOWTO
cd ../
rm -rfv intltool-0.51.0
cd /
