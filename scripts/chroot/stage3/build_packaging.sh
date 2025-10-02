echo "Step 83: Compile Packaging 25.0(From Stage3 in chroot)"

cd /sources
tar xvf "./packaging-25.0.tar.gz"
cd packaging-25.0
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links dist packaging
cd ../
rm -rfv packaging-25.0
cd /
