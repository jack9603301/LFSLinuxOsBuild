
. ../pre_scripts.sh

echo "Step 6: Compile Linux Headers(From Stage1)"

cd $LFS/sources
tar xvf "./linux-6.16.1.tar.xz"
cd linux-6.16.1
make mrproper
make headers
find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr
cd ../
rm -rfv linux-6.16.1
cd $LFS

echo "Step 6-Output: Build completed"
