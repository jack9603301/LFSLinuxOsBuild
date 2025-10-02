echo "Step 26: Compile Gettext 0.22.4(From Stage3 in chroot)"

cd $LFS/sources
tar xvf "./gettext-0.26.tar.xz"
cd gettext-0.26
./configure --disable-shared
make
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin
cd ../
rm -rfv gettext-0.26
cd ..
