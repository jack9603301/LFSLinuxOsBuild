echo "Step 33: Compile Iana Etc 20240125(From Stage3 in chroot)"

cd /sources
tar xvf "./iana-etc-20240125.tar.gz"
cd iana-etc-20240125
cp services protocols /etc
cd ../
rm -rfv iana-etc-20240125
cd /
