echo "Step 84: Compile Wheel 0.46.1(From Stage3 in chroot)"

cd /sources
tar xvf "./wheel-0.46.1.tar.gz"
cd wheel-0.46.1
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links dist wheel
cd ../
rm -rfv wheel-0.46.1
cd /
