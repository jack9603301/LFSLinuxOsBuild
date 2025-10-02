echo "Step 85: Compile Setuptools 80.9.0(From Stage3 in chroot)"

cd /sources
tar xvf "./setuptools-80.9.0.tar.gz"
cd setuptools-80.9.0
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links dist setuptools
cd ../
rm -rfv setuptools-80.9.0
cd /
