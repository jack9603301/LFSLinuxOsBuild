echo "Step 74: Compile XML::Parser 2.47(From Stage3 in chroot)"

cd /sources
tar xvf "./XML-Parser-2.47.tar.gz"
cd XML-Parser-2.47
perl Makefile.PL
make
make install
cd ../
rm -rfv XML-Parser-2.47
cd /
