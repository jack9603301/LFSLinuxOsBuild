echo "Step 25: Compile Gettextn 0.22.4(From Stage3 in chroot)"

cd /sources
tar xvf "./gettext-0.22.4.tar.xz"
cd gettext-0.22.4
./configure --disable-shared
make
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin
cd ../
rm -rfv gettext-0.22.4
cd /
