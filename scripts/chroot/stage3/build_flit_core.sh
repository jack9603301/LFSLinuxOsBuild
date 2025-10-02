echo "Step 82: Compile Flit-Core 3.12.0(From Stage3 in chroot)"

cd /sources
tar xvf "./flit_core-3.12.0.tar.gz"
cd flit_core-3.12.0
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links dist flit_core
cd ../
rm -rfv flit_core-3.12.0
cd /
