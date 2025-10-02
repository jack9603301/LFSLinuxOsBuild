echo "Step 34: Compile Iana Etc 20250807(From Stage3 in chroot)"

cd /sources
tar xvf "./iana-etc-20250807.tar.gz"
cd iana-etc-20250807
cp services protocols /etc
cd ../
rm -rfv iana-etc-20250807
cd /
